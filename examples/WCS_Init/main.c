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
static uint8 tx_beacon_msg[] = {0x41, 0x88, 0, 0xCA, 0xDE, 'W', 'A', 'V', 'E', 0xE0,0,0,0,0, 0, 0};
/* index beacon frame */
#define ALL_MSG_SN_IDX 2
#define BEACON_MSG_TX_TS_IDX 10
#define BEACON_MSG_TX_LEN 4
/* Frame count*/
static uint8 frame_seq_nb = 0;
//--------------dw1000---end---------------
#define TASK_DELAY        200           /**< Task delay. Delays a LED0 task for 200 ms */
#define TIMER_PERIOD      2000          /**< Timer period. LED1 timer will expire after 1000 ms */
#define RED_LED_PIN LED_0

#define TIMER_STAMP NRF_TIMER1
#define TIMER_CC_CHANNEL NRF_TIMER_CC_CHANNEL2
uint32 beacon_tx_ts;
void timer1_init()
{
    NVIC_DisableIRQ(TIMER1_IRQn); // use "sd_nvic" prefix with softdevice
    
    nrf_timer_task_trigger(NRF_TIMER1, NRF_TIMER_TASK_STOP);
    nrf_timer_task_trigger(NRF_TIMER1, NRF_TIMER_TASK_CLEAR);
    
    nrf_timer_mode_set(NRF_TIMER1, NRF_TIMER_MODE_TIMER); 
    nrf_timer_bit_width_set(NRF_TIMER1, NRF_TIMER_BIT_WIDTH_32);
    nrf_timer_frequency_set(NRF_TIMER1, NRF_TIMER_FREQ_16MHz);
    nrf_timer_cc_write(NRF_TIMER1, NRF_TIMER_CC_CHANNEL0, 1600000);
    nrf_timer_int_enable(NRF_TIMER1, NRF_TIMER_INT_COMPARE0_MASK);
    nrf_timer_shorts_enable(NRF_TIMER1, NRF_TIMER_SHORT_COMPARE0_CLEAR_MASK); // self running
    
    NVIC_SetPriority(TIMER1_IRQn, 7); // use "sd_nvic" prefix with softdevice
    NVIC_EnableIRQ(TIMER1_IRQn); // use "sd_nvic" prefix with softdevice

    nrf_timer_task_trigger(NRF_TIMER1, NRF_TIMER_TASK_START);

}
uint32 timestamp()
{
    nrf_timer_task_trigger(TIMER_STAMP,NRF_TIMER_TASK_CAPTURE2);
    return (nrf_timer_cc_read(TIMER_STAMP,TIMER_CC_CHANNEL));
}
static void beacon_msg_set_ts(uint8 *ts_field, const uint32 ts)
{
  int i;
  for (i = 0; i < BEACON_MSG_TX_LEN; i++)
  {
    ts_field[i] = (ts >> (i * 8)) & 0xFF;
  }
}
void beacon_send()
{

    tx_beacon_msg[ALL_MSG_SN_IDX] = frame_seq_nb;
    beacon_tx_ts=timestamp();
    beacon_msg_set_ts(&tx_beacon_msg[BEACON_MSG_TX_TS_IDX],beacon_tx_ts);
    dwt_write32bitreg(SYS_STATUS_ID, SYS_STATUS_TXFRS);
    dwt_writetxdata(sizeof(tx_beacon_msg), tx_beacon_msg, 0); /* Zero offset in TX buffer. */
    dwt_writetxfctrl(sizeof(tx_beacon_msg), 0, 1); /* Zero offset in TX buffer, ranging. */
    dwt_starttx(DWT_START_TX_IMMEDIATE);
    frame_seq_nb ++;
   // printf("send success: %d\n",beacon_tx_ts);
   //writetospi()
}
void dw1000_init()
{
   /* Setup DW1000 IRQ pin */  
  nrf_gpio_cfg_input(DW1000_IRQ, NRF_GPIO_PIN_NOPULL); 		//irq
  //printf("Singled Sided Two Way Ranging Initiator Example \r\n");
  /* Reset DW1000 */
  reset_DW1000(); 

  /* Set SPI clock to 2MHz */
  port_set_dw1000_slowrate();			
  
  /* Init the DW1000 */
  if (dwt_initialise(DWT_LOADUCODE) == DWT_ERROR)
  {
    //Init of DW1000 Failed
    while (1) {};
  }

  // Set SPI to 8MHz clock
  port_set_dw1000_fastrate();

  /* Configure DW1000. */
  dwt_configure(&config);

  /* Apply default antenna delay value. See NOTE 2 below. */
  dwt_setrxantennadelay(RX_ANT_DLY);
  dwt_settxantennadelay(TX_ANT_DLY);

  /* Set preamble timeout for expected frames. See NOTE 3 below. */
  dwt_setpreambledetecttimeout(0); // PRE_TIMEOUT
          
  /* Set expected response's delay and timeout. */
  //dwt_setrxaftertxdelay(POLL_TX_TO_RESP_RX_DLY_UUS);
  dwt_setrxtimeout(65000); // Maximum value timeout with DW1000 is 65ms  

  //-------------dw1000  ini------end---------------------------	
}
int main(void)
{
    /*Initialization UART*/
    boUART_Init ();
    nrf_gpio_cfg_output(RED_LED_PIN);
    timer1_init();
    dw1000_init();

    while (1)
    { 
     // ss_init_run();
    // beacon_send();
    }
}
void TIMER1_IRQHandler(void)
{
    if(NRF_TIMER1->EVENTS_COMPARE[0] == 1)
    {
        NRF_TIMER1->EVENTS_COMPARE[0] = 0;
        nrf_gpio_pin_toggle(RED_LED_PIN);   
        nrf_timer_task_trigger(NRF_TIMER1,NRF_TIMER_TASK_CLEAR);
        beacon_send();
    }
}