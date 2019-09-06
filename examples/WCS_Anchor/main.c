/* Copyright (c) 2015 Nordic Semiconductor. All Rights Reserved.
 *
 * The information contained herein is property of Nordic Semiconductor ASA.
 * Terms and conditions of usage are described in detail in NORDIC
 * SEMICONDUCTOR STANDARD SOFTWARE LICENSE AGREEMENT.
 *
 * Licensees are granted free, non-transferable use of the information. NO
 * WARRANTY of ANY KIND is provided. This heading must NOT be removed from
 * the file.
 *
 */

#include "sdk_config.h"
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "bsp.h"
#include "boards.h"
#include "nordic_common.h"
#include "nrf_drv_clock.h"
#include "nrf_drv_spi.h"
#include "nrf_uart.h"
#include "app_util_platform.h"
#include "nrf_gpio.h"
#include "nrf_delay.h"
#include "nrf_log.h"
#include "nrf.h"
#include "app_error.h"
#include "app_util_platform.h"
#include "app_error.h"
#include <string.h>
#include "port_platform.h"
#include "deca_types.h"
#include "deca_param_types.h"
#include "deca_regs.h"
#include "deca_device_api.h"
#include "nrf_drv_timer.h"
#include "nrf_drv_gpiote.h"
#include "SEGGER_RTT.h"
#include "uart.h"
	
//-----------------dw1000----------------------------

static dwt_config_t config = {
    5,                /* Channel number. */
    DWT_PRF_64M,      /* Pulse repetition frequency. */
    DWT_PLEN_128,     /* Preamble length. Used in TX only. */
    DWT_PAC8,         /* Preamble acquisition chunk size. Used in RX only. */
    10,               /* TX preamble code. Used in TX only. */
    10,               /* RX preamble code. Used in RX only. */
    0,                /* 0 to use standard SFD, 1 to use non-standard SFD. */
    DWT_BR_6M8,       /* Data rate. */
    DWT_PHRMODE_STD,  /* PHY header mode. */
    (128+1 + 8 - 8)     /* SFD timeout (preamble length + 1 + SFD length - PAC size). Used in RX only. */
};

/* Preamble timeout, in multiple of PAC size. See NOTE 3 below. */
#define PRE_TIMEOUT 1000

/* Delay between frames, in UWB microseconds. See NOTE 1 below. */
#define POLL_TX_TO_RESP_RX_DLY_UUS 100 

/*Should be accurately calculated during calibration*/
#define TX_ANT_DLY 16300
#define RX_ANT_DLY 16456	

/* beacon frame message*/
static uint8 rx_beacon_msg[] ={0x41, 0x88, 0, 0xCA, 0xDE, 'V', 'E', 'W', 'A', 0xE1, 0, 0,0,0,0,0};
/* index beacon frame */
#define ALL_MSG_SN_IDX 2
#define BEACON_MSG_RX_TS_IDX 10
#define BEACON_MSG_RX_LEN 4
#define ALL_MSG_COMMON_LEN 10
/* Buffer to store received response message*/
#define RX_BUF_LEN 20
static uint8 rx_buffer[RX_BUF_LEN];
/*frame count*/
static uint8 frame_seq_nb = 0;
/* Hold copy of status register state here for reference so that it can be examined at a debug breakpoint. */
static uint32 status_reg = 0;

//--------------dw1000---end---------------
#define TASK_DELAY        200           /**< Task delay. Delays a LED0 task for 200 ms */
#define TIMER_PERIOD      2000          /**< Timer period. LED1 timer will expire after 1000 ms */
#define RED_LED_PIN LED_0
#define PPI_CHANNEL 0
uint32_t beacon_tx_ts=0,beacon_rx_ts=0;
uint16_t cnt=0,last_cnt=0,flag=1;
#define TIMER_STAMP NRF_TIMER1
#define TIMER_CC_CHANNEL NRF_TIMER_CC_CHANNEL2
volatile uint32_t time[2],offset,offset_sum=0, offset_mean=0;
uint32_t last_rx,cnt_interrupt=0;
static void rx_ok_cb(const dwt_cb_data_t *cb_data);
//timestamp dw1000 reiceve good frame with timer 1 , channel capure 2
volatile uint32 timestamp()
{
    nrf_timer_task_trigger(TIMER_STAMP,NRF_TIMER_TASK_CAPTURE2);
    return (nrf_timer_cc_read(TIMER_STAMP,NRF_TIMER_CC_CHANNEL2));
}
//gpioe interrupt for dw1000 reiceve, 
void in_pin_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action)
{
       cnt++;
       time[cnt-1]=NRF_TIMER1->CC[0];
      // dwt_isr(); 
       if(cnt>=4)
       {
         
         flag=0;
         NVIC_DisableIRQ(GPIOTE_IRQn);
         offset=time[cnt-1]-time[cnt-2];
         //printf("%d\n",offset);
         cnt=0;
         nrf_timer_task_trigger(NRF_TIMER1, NRF_TIMER_TASK_STOP);
         nrf_timer_cc_write(NRF_TIMER1, NRF_TIMER_CC_CHANNEL3, timestamp()+offset-200);
         nrf_timer_int_enable(NRF_TIMER1, NRF_TIMER_INT_COMPARE3_MASK);
         nrf_timer_shorts_enable(NRF_TIMER1, NRF_TIMER_SHORT_COMPARE3_CLEAR_MASK); 
    
         NVIC_SetPriority(TIMER1_IRQn, 7); 
         NVIC_EnableIRQ(TIMER1_IRQn);
         nrf_timer_task_trigger(NRF_TIMER1, NRF_TIMER_TASK_START);

       }
}
//init timer 1 for timestamp dw1000 receive good frame, mode timer, 32 bit, 16Mhz
void timer1_init()
{
    NVIC_DisableIRQ(TIMER1_IRQn); 
    
    nrf_timer_task_trigger(NRF_TIMER1, NRF_TIMER_TASK_STOP);
    nrf_timer_task_trigger(NRF_TIMER1, NRF_TIMER_TASK_CLEAR);
    
    nrf_timer_mode_set(NRF_TIMER1, NRF_TIMER_MODE_TIMER); 
    nrf_timer_bit_width_set(NRF_TIMER1, NRF_TIMER_BIT_WIDTH_32);
    nrf_timer_frequency_set(NRF_TIMER1, NRF_TIMER_FREQ_16MHz);

    nrf_timer_task_trigger(NRF_TIMER1, NRF_TIMER_TASK_START);

}
//init timer 2 in mode timer, width 32 bit, 16Mhz, interrupt in 100ms 
void timer2_init()
{
    NVIC_DisableIRQ(TIMER2_IRQn); 
    
    nrf_timer_task_trigger(NRF_TIMER2, NRF_TIMER_TASK_STOP);
    nrf_timer_task_trigger(NRF_TIMER2, NRF_TIMER_TASK_CLEAR);
    
    nrf_timer_mode_set(NRF_TIMER2, NRF_TIMER_MODE_TIMER); 
    nrf_timer_bit_width_set(NRF_TIMER2, NRF_TIMER_BIT_WIDTH_32);
    nrf_timer_frequency_set(NRF_TIMER2, NRF_TIMER_FREQ_16MHz);
    nrf_timer_cc_write(NRF_TIMER2, NRF_TIMER_CC_CHANNEL0, 1600000);
    nrf_timer_int_enable(NRF_TIMER2, NRF_TIMER_INT_COMPARE0_MASK);
    nrf_timer_shorts_enable(NRF_TIMER2, NRF_TIMER_SHORT_COMPARE0_CLEAR_MASK); 
    
    NVIC_SetPriority(TIMER2_IRQn, 6);
    NVIC_EnableIRQ(TIMER2_IRQn); 

}
//init gpio interrupt: dw1000 interrupt pin connect with pin 19 of nrf52
static void gpio_init(void)
{
    nrf_drv_gpiote_init();
    nrf_drv_gpiote_in_config_t in_config = GPIOTE_CONFIG_IN_SENSE_LOTOHI(true);
    in_config.pull = NRF_GPIO_PIN_NOPULL;
    nrf_drv_gpiote_in_init(DW1000_IRQ, &in_config, in_pin_handler);
    nrf_drv_gpiote_in_event_enable(DW1000_IRQ, true);
}

void dw1000_init()
{

  /* Reset DW1000 */
  
  reset_DW1000(); 

  /* Set SPI clock to 2MHz */
  port_set_dw1000_slowrate();			

  /* Init the DW1000 */
  if (dwt_initialise(DWT_LOADUCODE) == DWT_ERROR)
  {
    //Init of DW1000 Failed
    while (1)
    {};
  }

  // Set SPI to 8MHz clock
  port_set_dw1000_fastrate();  

  /* Configure DW1000. */
  dwt_configure(&config);

  /* Apply default antenna delay value. Defined in port platform.h */
  dwt_setrxantennadelay(RX_ANT_DLY);
  dwt_settxantennadelay(TX_ANT_DLY);
  
  /* Set preamble timeout for expected frames.  */
 // dwt_setpreambledetecttimeout(1);

    dwt_setrxtimeout(5000);    // set to NO receive timeout for this simple example 
    //dwt_setdelayedtrxtime()
   // dwt_setinterrupt( DWT_INT_RFCG | DWT_INT_RFCE , 1);
    dwt_setinterrupt(DWT_INT_RFCG, 1);
    dwt_setcallbacks(NULL, &rx_ok_cb, NULL, NULL);
    dwt_rxenable( DWT_START_RX_DELAYED );
}
void ppi_timestamp()
{
   //config envent gpio interrupt -> active timer capute in channel 0
   NRF_PPI->CH[PPI_CHANNEL].EEP=nrf_drv_gpiote_in_event_addr_get(DW1000_IRQ);
   NRF_PPI->CH[PPI_CHANNEL].TEP=(uint32_t)&NRF_TIMER1->TASKS_CAPTURE[0];
   NRF_PPI->CHENSET=(1UL<<PPI_CHANNEL);
   //config event timer 1 interrupt-> active timer 2 in channel 1
   NRF_PPI->CH[1].EEP=(uint32_t)&NRF_TIMER1->EVENTS_COMPARE[3];
   NRF_PPI->CH[1].TEP=(uint32_t)&NRF_TIMER2->TASKS_START;
   NRF_PPI->CHENSET=(1UL<<1);
}
int main(void)
{
    /*Initialization UART*/
    boUART_Init ();
    nrf_gpio_cfg_output(RED_LED_PIN);
    timer1_init();
    timer2_init();
    gpio_init();
    dw1000_init();
    ppi_timestamp();
    while (1)
    {
     if(flag==1)
     {
      dwt_rxenable( DWT_START_RX_DELAYED );
      nrf_delay_ms(2);
     }
    }
}
void TIMER2_IRQHandler(void)
{
    if(NRF_TIMER2->EVENTS_COMPARE[0] == 1)
    {
       NRF_TIMER2->EVENTS_COMPARE[0] = 0;
       nrf_gpio_pin_toggle(RED_LED_PIN);  
    }
}
static void rx_ok_cb(const dwt_cb_data_t *cb_data)
{
   //printf("isr good frame\n");
    if (cb_data->datalength <= RX_BUFFER_LEN)
    {
        /* A frame of correct length to be a wake-up message has been received, copy it to our local buffer. */
        dwt_readrxdata(rx_buffer, cb_data->datalength, 0);
        
        /* Validate the frame is addressed to us from the expected sender and has the encoding of one of the wake-up sequence messages we expect.
         * Then signal the arrival of the wake-up message to the background main loop by setting the rx_frame event flag. */
//        if ((rx_buffer[DATA_FRAME_PAN_ID_IDX + 1] == 0xDE) && (rx_buffer[DATA_FRAME_PAN_ID_IDX] == 0xCA)
//            && (rx_buffer[DATA_FRAME_SRC_ADDR_IDX + 1] == 'T') && (rx_buffer[DATA_FRAME_SRC_ADDR_IDX] == 'X')
//            && (rx_buffer[DATA_FRAME_APP_FCODE_IDX] == 0xE0))
//        {
//            rx_frame = 1;
//        }
    }

}