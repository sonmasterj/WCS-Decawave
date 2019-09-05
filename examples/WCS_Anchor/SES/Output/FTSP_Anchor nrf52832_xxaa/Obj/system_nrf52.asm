	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"system_nrf52.c"
	.text
.Ltext0:
	.section	.text.__NVIC_SystemReset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	__NVIC_SystemReset, %function
__NVIC_SystemReset:
.LFB117:
	.file 1 "C:/Users/Admin/AppData/Local/SEGGER/SEGGER Embedded Studio/v3/packages/CMSIS_5/CMSIS/Core/Include/core_cm4.h"
	.loc 1 1940 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LBB10:
.LBB11:
	.file 2 "C:/Users/Admin/AppData/Local/SEGGER/SEGGER Embedded Studio/v3/packages/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h"
	.loc 2 879 0
	.syntax unified
@ 879 "C:/Users/Admin/AppData/Local/SEGGER/SEGGER Embedded Studio/v3/packages/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.LBE11:
.LBE10:
	.loc 1 1944 0
	ldr	r3, .L3
	ldr	r3, [r3, #12]
	and	r2, r3, #1792
	.loc 1 1943 0
	ldr	r1, .L3
	.loc 1 1944 0
	ldr	r3, .L3+4
	orrs	r3, r3, r2
	.loc 1 1943 0
	str	r3, [r1, #12]
.LBB12:
.LBB13:
	.loc 2 879 0
	.syntax unified
@ 879 "C:/Users/Admin/AppData/Local/SEGGER/SEGGER Embedded Studio/v3/packages/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.L2:
.LBE13:
.LBE12:
	.loc 1 1950 0 discriminator 1
	.syntax unified
@ 1950 "C:/Users/Admin/AppData/Local/SEGGER/SEGGER Embedded Studio/v3/packages/CMSIS_5/CMSIS/Core/Include/core_cm4.h" 1
	nop
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L2
.L4:
	.align	2
.L3:
	.word	-536810240
	.word	100270084
.LFE117:
	.size	__NVIC_SystemReset, .-__NVIC_SystemReset
	.global	SystemCoreClock
	.section	.data.SystemCoreClock,"aw",%progbits
	.align	2
	.type	SystemCoreClock, %object
	.size	SystemCoreClock, 4
SystemCoreClock:
	.word	64000000
	.section	.text.SystemCoreClockUpdate,"ax",%progbits
	.align	1
	.global	SystemCoreClockUpdate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SystemCoreClockUpdate, %function
SystemCoreClockUpdate:
.LFB131:
	.file 3 "E:\\WSC_FTSP_ver_onemess\\WSC_FTSP\\code\\WCS\\nRF5_SDK_14.2.0\\components\\toolchain\\system_nrf52.c"
	.loc 3 56 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 57 0
	ldr	r3, .L6
	ldr	r2, .L6+4
	str	r2, [r3]
	.loc 3 58 0
	nop
	bx	lr
.L7:
	.align	2
.L6:
	.word	SystemCoreClock
	.word	64000000
.LFE131:
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.section	.text.SystemInit,"ax",%progbits
	.align	1
	.global	SystemInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SystemInit, %function
SystemInit:
.LFB132:
	.loc 3 61 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI0:
	.loc 3 84 0
	bl	errata_12
	mov	r3, r0
	cmp	r3, #0
	beq	.L9
	.loc 3 85 0
	ldr	r3, .L25
	ldr	r3, [r3]
	lsrs	r3, r3, #8
	ldr	r2, .L25+4
	and	r3, r3, #31
	str	r3, [r2]
.L9:
	.loc 3 90 0
	bl	errata_16
	mov	r3, r0
	cmp	r3, #0
	beq	.L10
	.loc 3 91 0
	ldr	r3, .L25+8
	ldr	r2, .L25+12
	str	r2, [r3]
.L10:
	.loc 3 96 0
	bl	errata_31
	mov	r3, r0
	cmp	r3, #0
	beq	.L11
	.loc 3 97 0
	ldr	r3, .L25+16
	ldr	r3, [r3]
	lsrs	r3, r3, #13
	ldr	r2, .L25+20
	and	r3, r3, #7
	str	r3, [r2]
.L11:
	.loc 3 102 0
	bl	errata_32
	mov	r3, r0
	cmp	r3, #0
	beq	.L12
	.loc 3 103 0
	ldr	r3, .L25+24
	ldr	r3, [r3, #12]
	ldr	r2, .L25+24
	bic	r3, r3, #16777216
	str	r3, [r2, #12]
.L12:
	.loc 3 108 0
	bl	errata_36
	mov	r3, r0
	cmp	r3, #0
	beq	.L13
	.loc 3 109 0
	mov	r3, #1073741824
	movs	r2, #0
	str	r2, [r3, #268]
	.loc 3 110 0
	mov	r3, #1073741824
	movs	r2, #0
	str	r2, [r3, #272]
	.loc 3 111 0
	mov	r3, #1073741824
	movs	r2, #0
	str	r2, [r3, #1336]
.L13:
	.loc 3 116 0
	bl	errata_37
	mov	r3, r0
	cmp	r3, #0
	beq	.L14
	.loc 3 117 0
	ldr	r3, .L25+28
	movs	r2, #3
	str	r2, [r3]
.L14:
	.loc 3 122 0
	bl	errata_57
	mov	r3, r0
	cmp	r3, #0
	beq	.L15
	.loc 3 123 0
	ldr	r3, .L25+32
	movs	r2, #5
	str	r2, [r3]
	.loc 3 124 0
	ldr	r3, .L25+36
	movs	r2, #1
	str	r2, [r3]
	.loc 3 125 0
	ldr	r3, .L25+40
	movs	r2, #0
	str	r2, [r3]
	.loc 3 126 0
	ldr	r3, .L25+44
	movs	r2, #63
	str	r2, [r3]
.L15:
	.loc 3 131 0
	bl	errata_66
	mov	r3, r0
	cmp	r3, #0
	beq	.L16
	.loc 3 132 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1028]
	str	r3, [r2, #1312]
	.loc 3 133 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1032]
	str	r3, [r2, #1316]
	.loc 3 134 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1036]
	str	r3, [r2, #1320]
	.loc 3 135 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1040]
	str	r3, [r2, #1324]
	.loc 3 136 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1044]
	str	r3, [r2, #1328]
	.loc 3 137 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1048]
	str	r3, [r2, #1332]
	.loc 3 138 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1052]
	str	r3, [r2, #1344]
	.loc 3 139 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1056]
	str	r3, [r2, #1348]
	.loc 3 140 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1060]
	str	r3, [r2, #1352]
	.loc 3 141 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1064]
	str	r3, [r2, #1356]
	.loc 3 142 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1068]
	str	r3, [r2, #1360]
	.loc 3 143 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1072]
	str	r3, [r2, #1364]
	.loc 3 144 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1076]
	str	r3, [r2, #1376]
	.loc 3 145 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1080]
	str	r3, [r2, #1380]
	.loc 3 146 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1084]
	str	r3, [r2, #1384]
	.loc 3 147 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1088]
	str	r3, [r2, #1388]
	.loc 3 148 0
	mov	r3, #268435456
	ldr	r2, .L25+48
	ldr	r3, [r3, #1092]
	str	r3, [r2, #1392]
.L16:
	.loc 3 153 0
	bl	errata_108
	mov	r3, r0
	cmp	r3, #0
	beq	.L17
	.loc 3 154 0
	ldr	r3, .L25+52
	ldr	r3, [r3]
	ldr	r2, .L25+56
	and	r3, r3, #79
	str	r3, [r2]
.L17:
	.loc 3 159 0
	bl	errata_136
	mov	r3, r0
	cmp	r3, #0
	beq	.L18
	.loc 3 160 0
	mov	r3, #1073741824
	ldr	r3, [r3, #1024]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L18
	.loc 3 161 0
	mov	r3, #1073741824
	mvn	r2, #1
	str	r2, [r3, #1024]
.L18:
	.loc 3 169 0
	ldr	r3, .L25+60
	ldr	r3, [r3, #136]
	ldr	r2, .L25+60
	orr	r3, r3, #15728640
	str	r3, [r2, #136]
.LBB14:
.LBB15:
	.loc 2 879 0
	.syntax unified
@ 879 "C:/Users/Admin/AppData/Local/SEGGER/SEGGER Embedded Studio/v3/packages/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	.loc 2 868 0
	.syntax unified
@ 868 "C:/Users/Admin/AppData/Local/SEGGER/SEGGER Embedded Studio/v3/packages/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h" 1
	isb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.LBE17:
.LBE16:
	.loc 3 193 0
	mov	r3, #268439552
	ldr	r3, [r3, #512]
	cmp	r3, #0
	blt	.L19
	.loc 3 194 0 discriminator 1
	mov	r3, #268439552
	ldr	r3, [r3, #516]
	.loc 3 193 0 discriminator 1
	cmp	r3, #0
	bge	.L20
.L19:
	.loc 3 195 0
	ldr	r3, .L25+64
	movs	r2, #1
	str	r2, [r3, #1284]
	.loc 3 196 0
	nop
.L21:
	.loc 3 196 0 is_stmt 0 discriminator 1
	ldr	r3, .L25+64
	ldr	r3, [r3, #1024]
	cmp	r3, #0
	beq	.L21
	.loc 3 197 0 is_stmt 1
	mov	r3, #268439552
	movs	r2, #21
	str	r2, [r3, #512]
	.loc 3 198 0
	nop
.L22:
	.loc 3 198 0 is_stmt 0 discriminator 1
	ldr	r3, .L25+64
	ldr	r3, [r3, #1024]
	cmp	r3, #0
	beq	.L22
	.loc 3 199 0 is_stmt 1
	mov	r3, #268439552
	movs	r2, #21
	str	r2, [r3, #516]
	.loc 3 200 0
	nop
.L23:
	.loc 3 200 0 is_stmt 0 discriminator 1
	ldr	r3, .L25+64
	ldr	r3, [r3, #1024]
	cmp	r3, #0
	beq	.L23
	.loc 3 201 0 is_stmt 1
	ldr	r3, .L25+64
	movs	r2, #0
	str	r2, [r3, #1284]
	.loc 3 202 0
	nop
.L24:
	.loc 3 202 0 is_stmt 0 discriminator 1
	ldr	r3, .L25+64
	ldr	r3, [r3, #1024]
	cmp	r3, #0
	beq	.L24
	.loc 3 203 0 is_stmt 1
	bl	__NVIC_SystemReset
.L20:
	.loc 3 207 0
	bl	SystemCoreClockUpdate
	.loc 3 208 0
	nop
	pop	{r3, pc}
.L26:
	.align	2
.L25:
	.word	268436260
	.word	1073820992
	.word	1074249844
	.word	-1163005939
	.word	268436036
	.word	1073743164
	.word	-536810000
	.word	1073743264
	.word	1073763856
	.word	1073763976
	.word	1073763864
	.word	1073763860
	.word	1073790976
	.word	268436056
	.word	1073745636
	.word	-536810240
	.word	1073864704
.LFE132:
	.size	SystemInit, .-SystemInit
	.section	.text.errata_12,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_12, %function
errata_12:
.LFB133:
	.loc 3 212 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 213 0
	ldr	r3, .L32
	ldr	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #6
	bne	.L28
	.loc 3 213 0 is_stmt 0 discriminator 1
	ldr	r3, .L32+4
	ldr	r3, [r3]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L28
	.loc 3 214 0 is_stmt 1
	ldr	r3, .L32+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #48
	bne	.L29
	.loc 3 215 0
	movs	r3, #1
	b	.L30
.L29:
	.loc 3 217 0
	ldr	r3, .L32+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #64
	bne	.L31
	.loc 3 218 0
	movs	r3, #1
	b	.L30
.L31:
	.loc 3 220 0
	ldr	r3, .L32+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #80
	bne	.L28
	.loc 3 221 0
	movs	r3, #1
	b	.L30
.L28:
	.loc 3 225 0
	movs	r3, #0
.L30:
	.loc 3 226 0
	mov	r0, r3
	bx	lr
.L33:
	.align	2
.L32:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE133:
	.size	errata_12, .-errata_12
	.section	.text.errata_16,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_16, %function
errata_16:
.LFB134:
	.loc 3 229 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 230 0
	ldr	r3, .L37
	ldr	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #6
	bne	.L35
	.loc 3 230 0 is_stmt 0 discriminator 1
	ldr	r3, .L37+4
	ldr	r3, [r3]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L35
	.loc 3 231 0 is_stmt 1
	ldr	r3, .L37+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #48
	bne	.L35
	.loc 3 232 0
	movs	r3, #1
	b	.L36
.L35:
	.loc 3 236 0
	movs	r3, #0
.L36:
	.loc 3 237 0
	mov	r0, r3
	bx	lr
.L38:
	.align	2
.L37:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE134:
	.size	errata_16, .-errata_16
	.section	.text.errata_31,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_31, %function
errata_31:
.LFB135:
	.loc 3 240 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 241 0
	ldr	r3, .L44
	ldr	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #6
	bne	.L40
	.loc 3 241 0 is_stmt 0 discriminator 1
	ldr	r3, .L44+4
	ldr	r3, [r3]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L40
	.loc 3 242 0 is_stmt 1
	ldr	r3, .L44+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #48
	bne	.L41
	.loc 3 243 0
	movs	r3, #1
	b	.L42
.L41:
	.loc 3 245 0
	ldr	r3, .L44+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #64
	bne	.L43
	.loc 3 246 0
	movs	r3, #1
	b	.L42
.L43:
	.loc 3 248 0
	ldr	r3, .L44+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #80
	bne	.L40
	.loc 3 249 0
	movs	r3, #1
	b	.L42
.L40:
	.loc 3 253 0
	movs	r3, #0
.L42:
	.loc 3 254 0
	mov	r0, r3
	bx	lr
.L45:
	.align	2
.L44:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE135:
	.size	errata_31, .-errata_31
	.section	.text.errata_32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_32, %function
errata_32:
.LFB136:
	.loc 3 257 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 258 0
	ldr	r3, .L49
	ldr	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #6
	bne	.L47
	.loc 3 258 0 is_stmt 0 discriminator 1
	ldr	r3, .L49+4
	ldr	r3, [r3]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L47
	.loc 3 259 0 is_stmt 1
	ldr	r3, .L49+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #48
	bne	.L47
	.loc 3 260 0
	movs	r3, #1
	b	.L48
.L47:
	.loc 3 264 0
	movs	r3, #0
.L48:
	.loc 3 265 0
	mov	r0, r3
	bx	lr
.L50:
	.align	2
.L49:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE136:
	.size	errata_32, .-errata_32
	.section	.text.errata_36,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_36, %function
errata_36:
.LFB137:
	.loc 3 268 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 269 0
	ldr	r3, .L56
	ldr	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #6
	bne	.L52
	.loc 3 269 0 is_stmt 0 discriminator 1
	ldr	r3, .L56+4
	ldr	r3, [r3]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L52
	.loc 3 270 0 is_stmt 1
	ldr	r3, .L56+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #48
	bne	.L53
	.loc 3 271 0
	movs	r3, #1
	b	.L54
.L53:
	.loc 3 273 0
	ldr	r3, .L56+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #64
	bne	.L55
	.loc 3 274 0
	movs	r3, #1
	b	.L54
.L55:
	.loc 3 276 0
	ldr	r3, .L56+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #80
	bne	.L52
	.loc 3 277 0
	movs	r3, #1
	b	.L54
.L52:
	.loc 3 281 0
	movs	r3, #0
.L54:
	.loc 3 282 0
	mov	r0, r3
	bx	lr
.L57:
	.align	2
.L56:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE137:
	.size	errata_36, .-errata_36
	.section	.text.errata_37,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_37, %function
errata_37:
.LFB138:
	.loc 3 285 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 286 0
	ldr	r3, .L61
	ldr	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #6
	bne	.L59
	.loc 3 286 0 is_stmt 0 discriminator 1
	ldr	r3, .L61+4
	ldr	r3, [r3]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L59
	.loc 3 287 0 is_stmt 1
	ldr	r3, .L61+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #48
	bne	.L59
	.loc 3 288 0
	movs	r3, #1
	b	.L60
.L59:
	.loc 3 292 0
	movs	r3, #0
.L60:
	.loc 3 293 0
	mov	r0, r3
	bx	lr
.L62:
	.align	2
.L61:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE138:
	.size	errata_37, .-errata_37
	.section	.text.errata_57,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_57, %function
errata_57:
.LFB139:
	.loc 3 296 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 297 0
	ldr	r3, .L66
	ldr	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #6
	bne	.L64
	.loc 3 297 0 is_stmt 0 discriminator 1
	ldr	r3, .L66+4
	ldr	r3, [r3]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L64
	.loc 3 298 0 is_stmt 1
	ldr	r3, .L66+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #48
	bne	.L64
	.loc 3 299 0
	movs	r3, #1
	b	.L65
.L64:
	.loc 3 303 0
	movs	r3, #0
.L65:
	.loc 3 304 0
	mov	r0, r3
	bx	lr
.L67:
	.align	2
.L66:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE139:
	.size	errata_57, .-errata_57
	.section	.text.errata_66,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_66, %function
errata_66:
.LFB140:
	.loc 3 307 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 308 0
	ldr	r3, .L71
	ldr	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #6
	bne	.L69
	.loc 3 308 0 is_stmt 0 discriminator 1
	ldr	r3, .L71+4
	ldr	r3, [r3]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L69
	.loc 3 309 0 is_stmt 1
	ldr	r3, .L71+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #80
	bne	.L69
	.loc 3 310 0
	movs	r3, #1
	b	.L70
.L69:
	.loc 3 314 0
	movs	r3, #0
.L70:
	.loc 3 315 0
	mov	r0, r3
	bx	lr
.L72:
	.align	2
.L71:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE140:
	.size	errata_66, .-errata_66
	.section	.text.errata_108,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_108, %function
errata_108:
.LFB141:
	.loc 3 319 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 320 0
	ldr	r3, .L78
	ldr	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #6
	bne	.L74
	.loc 3 320 0 is_stmt 0 discriminator 1
	ldr	r3, .L78+4
	ldr	r3, [r3]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L74
	.loc 3 321 0 is_stmt 1
	ldr	r3, .L78+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #48
	bne	.L75
	.loc 3 322 0
	movs	r3, #1
	b	.L76
.L75:
	.loc 3 324 0
	ldr	r3, .L78+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #64
	bne	.L77
	.loc 3 325 0
	movs	r3, #1
	b	.L76
.L77:
	.loc 3 327 0
	ldr	r3, .L78+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #80
	bne	.L74
	.loc 3 328 0
	movs	r3, #1
	b	.L76
.L74:
	.loc 3 332 0
	movs	r3, #0
.L76:
	.loc 3 333 0
	mov	r0, r3
	bx	lr
.L79:
	.align	2
.L78:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE141:
	.size	errata_108, .-errata_108
	.section	.text.errata_136,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_136, %function
errata_136:
.LFB142:
	.loc 3 337 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 338 0
	ldr	r3, .L85
	ldr	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #6
	bne	.L81
	.loc 3 338 0 is_stmt 0 discriminator 1
	ldr	r3, .L85+4
	ldr	r3, [r3]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L81
	.loc 3 339 0 is_stmt 1
	ldr	r3, .L85+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #48
	bne	.L82
	.loc 3 340 0
	movs	r3, #1
	b	.L83
.L82:
	.loc 3 342 0
	ldr	r3, .L85+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #64
	bne	.L84
	.loc 3 343 0
	movs	r3, #1
	b	.L83
.L84:
	.loc 3 345 0
	ldr	r3, .L85+8
	ldr	r3, [r3]
	and	r3, r3, #240
	cmp	r3, #80
	bne	.L81
	.loc 3 346 0
	movs	r3, #1
	b	.L83
.L81:
	.loc 3 350 0
	movs	r3, #0
.L83:
	.loc 3 351 0
	mov	r0, r3
	bx	lr
.L86:
	.align	2
.L85:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE142:
	.size	errata_136, .-errata_136
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.byte	0x4
	.4byte	.LCFI0-.LFB132
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.align	2
.LEFDE24:
	.text
.Letext0:
	.file 4 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.12/include/stdint.h"
	.file 5 "C:/Users/Admin/AppData/Local/SEGGER/SEGGER Embedded Studio/v3/packages/nRF/CMSIS/Device/Include/system_nrf52.h"
	.file 6 "C:/Users/Admin/AppData/Local/SEGGER/SEGGER Embedded Studio/v3/packages/nRF/CMSIS/Device/Include/nrf52.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x105b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0xc
	.4byte	.LASF144
	.4byte	.LASF145
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x30
	.4byte	0x3c
	.uleb128 0x4
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x37
	.4byte	0x66
	.uleb128 0x4
	.4byte	0x51
	.uleb128 0x5
	.4byte	0x5c
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x38
	.4byte	0x82
	.uleb128 0x4
	.4byte	0x6d
	.uleb128 0x5
	.4byte	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x8c
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x1b2
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x7d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x78
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x78
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x78
	.byte	0xc
	.uleb128 0x9
	.ascii	"SCR\000"
	.byte	0x1
	.2byte	0x1be
	.4byte	0x78
	.byte	0x10
	.uleb128 0x9
	.ascii	"CCR\000"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x78
	.byte	0x14
	.uleb128 0x9
	.ascii	"SHP\000"
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x1c2
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x78
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x78
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x78
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x78
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x78
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x78
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x78
	.byte	0x3c
	.uleb128 0x9
	.ascii	"PFR\000"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x1dc
	.byte	0x40
	.uleb128 0x9
	.ascii	"DFR\000"
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x7d
	.byte	0x48
	.uleb128 0x9
	.ascii	"ADR\000"
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x7d
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x219
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x242
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x24c
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x78
	.byte	0x88
	.byte	0
	.uleb128 0xa
	.4byte	0x37
	.4byte	0x1c2
	.uleb128 0xb
	.4byte	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.4byte	0x1b2
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x1d7
	.uleb128 0xb
	.4byte	0x82
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x1c7
	.uleb128 0x4
	.4byte	0x1d7
	.uleb128 0x4
	.4byte	0x1d7
	.uleb128 0x4
	.4byte	0x1d7
	.uleb128 0x4
	.4byte	0x1d7
	.uleb128 0x4
	.4byte	0x1d7
	.uleb128 0x4
	.4byte	0x1d7
	.uleb128 0x4
	.4byte	0x1d7
	.uleb128 0x4
	.4byte	0x1d7
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x214
	.uleb128 0xb
	.4byte	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0x204
	.uleb128 0x4
	.4byte	0x214
	.uleb128 0x4
	.4byte	0x214
	.uleb128 0x4
	.4byte	0x214
	.uleb128 0x4
	.4byte	0x214
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x23d
	.uleb128 0xb
	.4byte	0x82
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x22d
	.uleb128 0x4
	.4byte	0x23d
	.uleb128 0x4
	.4byte	0x23d
	.uleb128 0xa
	.4byte	0x6d
	.4byte	0x25c
	.uleb128 0xb
	.4byte	0x82
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x97
	.uleb128 0x7
	.byte	0x10
	.byte	0x1
	.2byte	0x591
	.4byte	0x2a6
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x593
	.4byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x594
	.4byte	0x78
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x595
	.4byte	0x78
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x596
	.4byte	0x78
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x597
	.4byte	0x268
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x804
	.4byte	0x5c
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x5
	.byte	0x21
	.4byte	0x6d
	.uleb128 0xf
	.byte	0x20
	.byte	0x6
	.byte	0xa8
	.4byte	0x31a
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x6
	.byte	0xa9
	.4byte	0x7d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x6
	.byte	0xaa
	.4byte	0x7d
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x6
	.byte	0xab
	.4byte	0x7d
	.byte	0x8
	.uleb128 0x11
	.ascii	"RAM\000"
	.byte	0x6
	.byte	0xac
	.4byte	0x7d
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x6
	.byte	0xad
	.4byte	0x7d
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x6
	.byte	0xae
	.4byte	0x32a
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.4byte	0x78
	.4byte	0x32a
	.uleb128 0xb
	.4byte	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	0x31a
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0xaf
	.4byte	0x2c9
	.uleb128 0xf
	.byte	0x44
	.byte	0x6
	.byte	0xb1
	.4byte	0x3fe
	.uleb128 0x11
	.ascii	"A0\000"
	.byte	0x6
	.byte	0xb2
	.4byte	0x7d
	.byte	0
	.uleb128 0x11
	.ascii	"A1\000"
	.byte	0x6
	.byte	0xb3
	.4byte	0x7d
	.byte	0x4
	.uleb128 0x11
	.ascii	"A2\000"
	.byte	0x6
	.byte	0xb4
	.4byte	0x7d
	.byte	0x8
	.uleb128 0x11
	.ascii	"A3\000"
	.byte	0x6
	.byte	0xb5
	.4byte	0x7d
	.byte	0xc
	.uleb128 0x11
	.ascii	"A4\000"
	.byte	0x6
	.byte	0xb6
	.4byte	0x7d
	.byte	0x10
	.uleb128 0x11
	.ascii	"A5\000"
	.byte	0x6
	.byte	0xb7
	.4byte	0x7d
	.byte	0x14
	.uleb128 0x11
	.ascii	"B0\000"
	.byte	0x6
	.byte	0xb8
	.4byte	0x7d
	.byte	0x18
	.uleb128 0x11
	.ascii	"B1\000"
	.byte	0x6
	.byte	0xb9
	.4byte	0x7d
	.byte	0x1c
	.uleb128 0x11
	.ascii	"B2\000"
	.byte	0x6
	.byte	0xba
	.4byte	0x7d
	.byte	0x20
	.uleb128 0x11
	.ascii	"B3\000"
	.byte	0x6
	.byte	0xbb
	.4byte	0x7d
	.byte	0x24
	.uleb128 0x11
	.ascii	"B4\000"
	.byte	0x6
	.byte	0xbc
	.4byte	0x7d
	.byte	0x28
	.uleb128 0x11
	.ascii	"B5\000"
	.byte	0x6
	.byte	0xbd
	.4byte	0x7d
	.byte	0x2c
	.uleb128 0x11
	.ascii	"T0\000"
	.byte	0x6
	.byte	0xbe
	.4byte	0x7d
	.byte	0x30
	.uleb128 0x11
	.ascii	"T1\000"
	.byte	0x6
	.byte	0xbf
	.4byte	0x7d
	.byte	0x34
	.uleb128 0x11
	.ascii	"T2\000"
	.byte	0x6
	.byte	0xc0
	.4byte	0x7d
	.byte	0x38
	.uleb128 0x11
	.ascii	"T3\000"
	.byte	0x6
	.byte	0xc1
	.4byte	0x7d
	.byte	0x3c
	.uleb128 0x11
	.ascii	"T4\000"
	.byte	0x6
	.byte	0xc2
	.4byte	0x7d
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0xc3
	.4byte	0x33a
	.uleb128 0xf
	.byte	0x10
	.byte	0x6
	.byte	0xc5
	.4byte	0x442
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x6
	.byte	0xc6
	.4byte	0x7d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x6
	.byte	0xc8
	.4byte	0x7d
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x6
	.byte	0xca
	.4byte	0x7d
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x6
	.byte	0xcc
	.4byte	0x7d
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0xce
	.4byte	0x409
	.uleb128 0xf
	.byte	0x10
	.byte	0x6
	.byte	0xd0
	.4byte	0x486
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x6
	.byte	0xd1
	.4byte	0x78
	.byte	0
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x6
	.byte	0xd2
	.4byte	0x78
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x6
	.byte	0xd3
	.4byte	0x78
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x6
	.byte	0xd4
	.4byte	0x7d
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x6
	.byte	0xd5
	.4byte	0x44d
	.uleb128 0x12
	.2byte	0x460
	.byte	0x6
	.2byte	0x1d6
	.4byte	0x56f
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x1d7
	.4byte	0x21e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x1d8
	.4byte	0x7d
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x1d9
	.4byte	0x7d
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x1da
	.4byte	0x584
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x1db
	.4byte	0x1e1
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x1dc
	.4byte	0x59e
	.byte	0x68
	.uleb128 0x9
	.ascii	"ER\000"
	.byte	0x6
	.2byte	0x1dd
	.4byte	0x223
	.byte	0x80
	.uleb128 0x9
	.ascii	"IR\000"
	.byte	0x6
	.2byte	0x1de
	.4byte	0x228
	.byte	0x90
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x1df
	.4byte	0x7d
	.byte	0xa0
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x1e0
	.4byte	0x1e6
	.byte	0xa4
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x1e1
	.4byte	0x5b8
	.byte	0xac
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x1e2
	.4byte	0x32f
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x1e3
	.4byte	0x5d2
	.2byte	0x120
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x1e4
	.4byte	0x3fe
	.2byte	0x404
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x1e5
	.4byte	0x1eb
	.2byte	0x448
	.uleb128 0x14
	.ascii	"NFC\000"
	.byte	0x6
	.2byte	0x1e6
	.4byte	0x442
	.2byte	0x450
	.byte	0
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x57f
	.uleb128 0xb
	.4byte	0x82
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.4byte	0x56f
	.uleb128 0x4
	.4byte	0x57f
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x599
	.uleb128 0xb
	.4byte	0x82
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x589
	.uleb128 0x4
	.4byte	0x599
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x5b3
	.uleb128 0xb
	.4byte	0x82
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	0x5a3
	.uleb128 0x4
	.4byte	0x5b3
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x5cd
	.uleb128 0xb
	.4byte	0x82
	.byte	0xb8
	.byte	0
	.uleb128 0x5
	.4byte	0x5bd
	.uleb128 0x4
	.4byte	0x5cd
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x1e7
	.4byte	0x491
	.uleb128 0x12
	.2byte	0x210
	.byte	0x6
	.2byte	0x1f3
	.4byte	0x68e
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x1f4
	.4byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x1f5
	.4byte	0x78
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x1f6
	.4byte	0x78
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x1f7
	.4byte	0x7d
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x1f8
	.4byte	0x78
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x1f9
	.4byte	0x69e
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x1fa
	.4byte	0x6b3
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x1fb
	.4byte	0x6c8
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x1fc
	.4byte	0x6e2
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x1fd
	.4byte	0x6fc
	.2byte	0x200
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x1ff
	.4byte	0x78
	.2byte	0x208
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x200
	.4byte	0x78
	.2byte	0x20c
	.byte	0
	.uleb128 0xa
	.4byte	0x78
	.4byte	0x69e
	.uleb128 0xb
	.4byte	0x82
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	0x68e
	.uleb128 0xa
	.4byte	0x78
	.4byte	0x6b3
	.uleb128 0xb
	.4byte	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.4byte	0x6a3
	.uleb128 0xa
	.4byte	0x78
	.4byte	0x6c8
	.uleb128 0xb
	.4byte	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	0x6b8
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x6dd
	.uleb128 0xb
	.4byte	0x82
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	0x6cd
	.uleb128 0x4
	.4byte	0x6dd
	.uleb128 0x4
	.4byte	0x6dd
	.uleb128 0xa
	.4byte	0x78
	.4byte	0x6fc
	.uleb128 0xb
	.4byte	0x82
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	0x6ec
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x202
	.4byte	0x5e3
	.uleb128 0x12
	.2byte	0x980
	.byte	0x6
	.2byte	0x222
	.4byte	0x8aa
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x223
	.4byte	0x8bf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x224
	.4byte	0x78
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x225
	.4byte	0x78
	.byte	0x7c
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x226
	.4byte	0x8d9
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x227
	.4byte	0x78
	.2byte	0x108
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x228
	.4byte	0x1f0
	.2byte	0x10c
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x229
	.4byte	0x78
	.2byte	0x114
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x22a
	.4byte	0x78
	.2byte	0x118
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x22b
	.4byte	0x8f3
	.2byte	0x11c
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x22c
	.4byte	0x78
	.2byte	0x304
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x22d
	.4byte	0x78
	.2byte	0x308
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x22e
	.4byte	0x90d
	.2byte	0x30c
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x22f
	.4byte	0x78
	.2byte	0x400
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x230
	.4byte	0x927
	.2byte	0x404
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x231
	.4byte	0x7d
	.2byte	0x428
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x232
	.4byte	0x941
	.2byte	0x42c
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x233
	.4byte	0x78
	.2byte	0x500
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x234
	.4byte	0x95b
	.2byte	0x504
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x235
	.4byte	0x78
	.2byte	0x510
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x236
	.4byte	0x1f5
	.2byte	0x514
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x237
	.4byte	0x78
	.2byte	0x51c
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x238
	.4byte	0x78
	.2byte	0x520
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x239
	.4byte	0x78
	.2byte	0x524
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x23b
	.4byte	0x975
	.2byte	0x528
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x23c
	.4byte	0x78
	.2byte	0x554
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x23e
	.4byte	0x98f
	.2byte	0x558
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x23f
	.4byte	0x78
	.2byte	0x578
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x240
	.4byte	0x9ae
	.2byte	0x57c
	.uleb128 0x14
	.ascii	"RAM\000"
	.byte	0x6
	.2byte	0x241
	.4byte	0x9b3
	.2byte	0x900
	.byte	0
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x8ba
	.uleb128 0xb
	.4byte	0x82
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.4byte	0x8aa
	.uleb128 0x4
	.4byte	0x8ba
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x8d4
	.uleb128 0xb
	.4byte	0x82
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.4byte	0x8c4
	.uleb128 0x4
	.4byte	0x8d4
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x8ee
	.uleb128 0xb
	.4byte	0x82
	.byte	0x79
	.byte	0
	.uleb128 0x5
	.4byte	0x8de
	.uleb128 0x4
	.4byte	0x8ee
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x908
	.uleb128 0xb
	.4byte	0x82
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.4byte	0x8f8
	.uleb128 0x4
	.4byte	0x908
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x922
	.uleb128 0xb
	.4byte	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x912
	.uleb128 0x4
	.4byte	0x922
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x93c
	.uleb128 0xb
	.4byte	0x82
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.4byte	0x92c
	.uleb128 0x4
	.4byte	0x93c
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x956
	.uleb128 0xb
	.4byte	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0x946
	.uleb128 0x4
	.4byte	0x956
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x970
	.uleb128 0xb
	.4byte	0x82
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.4byte	0x960
	.uleb128 0x4
	.4byte	0x970
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x98a
	.uleb128 0xb
	.4byte	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x97a
	.uleb128 0x4
	.4byte	0x98a
	.uleb128 0x4
	.4byte	0x98a
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0x9a9
	.uleb128 0xb
	.4byte	0x82
	.byte	0xe0
	.byte	0
	.uleb128 0x5
	.4byte	0x999
	.uleb128 0x4
	.4byte	0x9a9
	.uleb128 0xa
	.4byte	0x486
	.4byte	0x9c3
	.uleb128 0xb
	.4byte	0x82
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x242
	.4byte	0x70d
	.uleb128 0x12
	.2byte	0x560
	.byte	0x6
	.2byte	0x24e
	.4byte	0xb68
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x24f
	.4byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x250
	.4byte	0x78
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x251
	.4byte	0x78
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x252
	.4byte	0x78
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x253
	.4byte	0x78
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x254
	.4byte	0x78
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x255
	.4byte	0x78
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x256
	.4byte	0xb7d
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x257
	.4byte	0x78
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x258
	.4byte	0x78
	.2byte	0x104
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x259
	.4byte	0x7d
	.2byte	0x108
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x25a
	.4byte	0x78
	.2byte	0x10c
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x25b
	.4byte	0x78
	.2byte	0x110
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x25c
	.4byte	0xb97
	.2byte	0x114
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x25d
	.4byte	0x78
	.2byte	0x304
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x25e
	.4byte	0x78
	.2byte	0x308
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x25f
	.4byte	0xbb1
	.2byte	0x30c
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x260
	.4byte	0x7d
	.2byte	0x408
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x261
	.4byte	0x7d
	.2byte	0x40c
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x262
	.4byte	0x7d
	.2byte	0x410
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x263
	.4byte	0x7d
	.2byte	0x414
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x264
	.4byte	0x7d
	.2byte	0x418
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x265
	.4byte	0x7d
	.2byte	0x41c
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x266
	.4byte	0xbcb
	.2byte	0x420
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x267
	.4byte	0x78
	.2byte	0x518
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x268
	.4byte	0xbea
	.2byte	0x51c
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x269
	.4byte	0x78
	.2byte	0x538
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x26a
	.4byte	0x994
	.2byte	0x53c
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x26b
	.4byte	0x78
	.2byte	0x55c
	.byte	0
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0xb78
	.uleb128 0xb
	.4byte	0x82
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.4byte	0xb68
	.uleb128 0x4
	.4byte	0xb78
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0xb92
	.uleb128 0xb
	.4byte	0x82
	.byte	0x7b
	.byte	0
	.uleb128 0x5
	.4byte	0xb82
	.uleb128 0x4
	.4byte	0xb92
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0xbac
	.uleb128 0xb
	.4byte	0x82
	.byte	0x3e
	.byte	0
	.uleb128 0x5
	.4byte	0xb9c
	.uleb128 0x4
	.4byte	0xbac
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0xbc6
	.uleb128 0xb
	.4byte	0x82
	.byte	0x3d
	.byte	0
	.uleb128 0x5
	.4byte	0xbb6
	.uleb128 0x4
	.4byte	0xbc6
	.uleb128 0x4
	.4byte	0xbc6
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0xbe5
	.uleb128 0xb
	.4byte	0x82
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0xbd5
	.uleb128 0x4
	.4byte	0xbe5
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x26c
	.4byte	0x9cf
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0xc0b
	.uleb128 0xb
	.4byte	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0xbfb
	.uleb128 0x4
	.4byte	0xc0b
	.uleb128 0x12
	.2byte	0x574
	.byte	0x6
	.2byte	0x52b
	.4byte	0xda2
	.uleb128 0x8
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x52c
	.4byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x52d
	.4byte	0x78
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x52e
	.4byte	0xbd0
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x52f
	.4byte	0x78
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x530
	.4byte	0xdb7
	.2byte	0x104
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x531
	.4byte	0x78
	.2byte	0x304
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x532
	.4byte	0x78
	.2byte	0x308
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x533
	.4byte	0xdd1
	.2byte	0x30c
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x534
	.4byte	0x61
	.2byte	0x508
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x535
	.4byte	0x247
	.2byte	0x50c
	.uleb128 0x14
	.ascii	"A0\000"
	.byte	0x6
	.2byte	0x536
	.4byte	0x78
	.2byte	0x520
	.uleb128 0x14
	.ascii	"A1\000"
	.byte	0x6
	.2byte	0x537
	.4byte	0x78
	.2byte	0x524
	.uleb128 0x14
	.ascii	"A2\000"
	.byte	0x6
	.2byte	0x538
	.4byte	0x78
	.2byte	0x528
	.uleb128 0x14
	.ascii	"A3\000"
	.byte	0x6
	.2byte	0x539
	.4byte	0x78
	.2byte	0x52c
	.uleb128 0x14
	.ascii	"A4\000"
	.byte	0x6
	.2byte	0x53a
	.4byte	0x78
	.2byte	0x530
	.uleb128 0x14
	.ascii	"A5\000"
	.byte	0x6
	.2byte	0x53b
	.4byte	0x78
	.2byte	0x534
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x53c
	.4byte	0x1ff
	.2byte	0x538
	.uleb128 0x14
	.ascii	"B0\000"
	.byte	0x6
	.2byte	0x53d
	.4byte	0x78
	.2byte	0x540
	.uleb128 0x14
	.ascii	"B1\000"
	.byte	0x6
	.2byte	0x53e
	.4byte	0x78
	.2byte	0x544
	.uleb128 0x14
	.ascii	"B2\000"
	.byte	0x6
	.2byte	0x53f
	.4byte	0x78
	.2byte	0x548
	.uleb128 0x14
	.ascii	"B3\000"
	.byte	0x6
	.2byte	0x540
	.4byte	0x78
	.2byte	0x54c
	.uleb128 0x14
	.ascii	"B4\000"
	.byte	0x6
	.2byte	0x541
	.4byte	0x78
	.2byte	0x550
	.uleb128 0x14
	.ascii	"B5\000"
	.byte	0x6
	.2byte	0x542
	.4byte	0x78
	.2byte	0x554
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x543
	.4byte	0x1fa
	.2byte	0x558
	.uleb128 0x14
	.ascii	"T0\000"
	.byte	0x6
	.2byte	0x544
	.4byte	0x78
	.2byte	0x560
	.uleb128 0x14
	.ascii	"T1\000"
	.byte	0x6
	.2byte	0x545
	.4byte	0x78
	.2byte	0x564
	.uleb128 0x14
	.ascii	"T2\000"
	.byte	0x6
	.2byte	0x546
	.4byte	0x78
	.2byte	0x568
	.uleb128 0x14
	.ascii	"T3\000"
	.byte	0x6
	.2byte	0x547
	.4byte	0x78
	.2byte	0x56c
	.uleb128 0x14
	.ascii	"T4\000"
	.byte	0x6
	.2byte	0x548
	.4byte	0x78
	.2byte	0x570
	.byte	0
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0xdb2
	.uleb128 0xb
	.4byte	0x82
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.4byte	0xda2
	.uleb128 0x4
	.4byte	0xdb2
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0xdcc
	.uleb128 0xb
	.4byte	0x82
	.byte	0x7e
	.byte	0
	.uleb128 0x5
	.4byte	0xdbc
	.uleb128 0x4
	.4byte	0xdcc
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x549
	.4byte	0xc15
	.uleb128 0x15
	.byte	0x4
	.byte	0x6
	.2byte	0x6e2
	.4byte	0xe04
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x6e3
	.4byte	0x78
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x6e5
	.4byte	0x78
	.byte	0
	.uleb128 0x12
	.2byte	0x550
	.byte	0x6
	.2byte	0x6dc
	.4byte	0xebd
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x6dd
	.4byte	0xed2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x6de
	.4byte	0x7d
	.2byte	0x400
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x6df
	.4byte	0x6e7
	.2byte	0x404
	.uleb128 0x13
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x6e0
	.4byte	0x78
	.2byte	0x504
	.uleb128 0x17
	.4byte	0xde2
	.2byte	0x508
	.uleb128 0x13
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x6e7
	.4byte	0x78
	.2byte	0x50c
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x6e8
	.4byte	0x78
	.2byte	0x510
	.uleb128 0x13
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x6ea
	.4byte	0x78
	.2byte	0x514
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x6eb
	.4byte	0xc10
	.2byte	0x518
	.uleb128 0x13
	.4byte	.LASF126
	.byte	0x6
	.2byte	0x6ec
	.4byte	0x78
	.2byte	0x540
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x6ed
	.4byte	0x7d
	.2byte	0x544
	.uleb128 0x13
	.4byte	.LASF127
	.byte	0x6
	.2byte	0x6ee
	.4byte	0x78
	.2byte	0x548
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x6
	.2byte	0x6ef
	.4byte	0x78
	.2byte	0x54c
	.byte	0
	.uleb128 0xa
	.4byte	0x7d
	.4byte	0xecd
	.uleb128 0xb
	.4byte	0x82
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.4byte	0xebd
	.uleb128 0x4
	.4byte	0xecd
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x6
	.2byte	0x6f0
	.4byte	0xe04
	.uleb128 0x18
	.4byte	0x2be
	.byte	0x3
	.byte	0x34
	.uleb128 0x5
	.byte	0x3
	.4byte	SystemCoreClock
	.uleb128 0x19
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x150
	.4byte	0xf06
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF130
	.uleb128 0x19
	.4byte	.LASF132
	.byte	0x3
	.2byte	0x13e
	.4byte	0xf06
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF133
	.byte	0x3
	.2byte	0x132
	.4byte	0xf06
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF134
	.byte	0x3
	.2byte	0x127
	.4byte	0xf06
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF135
	.byte	0x3
	.2byte	0x11c
	.4byte	0xf06
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF136
	.byte	0x3
	.2byte	0x10b
	.4byte	0xf06
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x100
	.4byte	0xf06
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF138
	.byte	0x3
	.byte	0xef
	.4byte	0xf06
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF139
	.byte	0x3
	.byte	0xe4
	.4byte	0xf06
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF140
	.byte	0x3
	.byte	0xd3
	.4byte	0xf06
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x3
	.byte	0x3c
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1004
	.uleb128 0x1c
	.4byte	0x104c
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x3
	.byte	0xaa
	.uleb128 0x1c
	.4byte	0x1055
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x3
	.byte	0xab
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x3
	.byte	0x37
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x793
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104c
	.uleb128 0x1f
	.4byte	0x104c
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.2byte	0x795
	.uleb128 0x1f
	.4byte	0x104c
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.2byte	0x79a
	.byte	0
	.uleb128 0x20
	.4byte	.LASF141
	.byte	0x2
	.2byte	0x36d
	.byte	0x3
	.uleb128 0x20
	.4byte	.LASF142
	.byte	0x2
	.2byte	0x362
	.byte	0x3
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2134
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x104
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x105f
	.4byte	0xee3
	.ascii	"SystemCoreClock\000"
	.4byte	0xef0
	.ascii	"errata_136\000"
	.4byte	0xf0d
	.ascii	"errata_108\000"
	.4byte	0xf23
	.ascii	"errata_66\000"
	.4byte	0xf39
	.ascii	"errata_57\000"
	.4byte	0xf4f
	.ascii	"errata_37\000"
	.4byte	0xf65
	.ascii	"errata_36\000"
	.4byte	0xf7b
	.ascii	"errata_32\000"
	.4byte	0xf91
	.ascii	"errata_31\000"
	.4byte	0xfa6
	.ascii	"errata_16\000"
	.4byte	0xfbb
	.ascii	"errata_12\000"
	.4byte	0xfd0
	.ascii	"SystemInit\000"
	.4byte	0x1004
	.ascii	"SystemCoreClockUpdate\000"
	.4byte	0x1015
	.ascii	"__NVIC_SystemReset\000"
	.4byte	0x104c
	.ascii	"__DSB\000"
	.4byte	0x1055
	.ascii	"__ISB\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1a3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x105f
	.4byte	0x25
	.ascii	"signed char\000"
	.4byte	0x3c
	.ascii	"unsigned char\000"
	.4byte	0x2c
	.ascii	"uint8_t\000"
	.4byte	0x43
	.ascii	"short int\000"
	.4byte	0x4a
	.ascii	"short unsigned int\000"
	.4byte	0x66
	.ascii	"int\000"
	.4byte	0x51
	.ascii	"int32_t\000"
	.4byte	0x82
	.ascii	"unsigned int\000"
	.4byte	0x6d
	.ascii	"uint32_t\000"
	.4byte	0x89
	.ascii	"long long int\000"
	.4byte	0x90
	.ascii	"long long unsigned int\000"
	.4byte	0x25c
	.ascii	"SCB_Type\000"
	.4byte	0x2a6
	.ascii	"CoreDebug_Type\000"
	.4byte	0x32f
	.ascii	"FICR_INFO_Type\000"
	.4byte	0x3fe
	.ascii	"FICR_TEMP_Type\000"
	.4byte	0x442
	.ascii	"FICR_NFC_Type\000"
	.4byte	0x486
	.ascii	"POWER_RAM_Type\000"
	.4byte	0x5d7
	.ascii	"NRF_FICR_Type\000"
	.4byte	0x701
	.ascii	"NRF_UICR_Type\000"
	.4byte	0x9c3
	.ascii	"NRF_POWER_Type\000"
	.4byte	0xbef
	.ascii	"NRF_CLOCK_Type\000"
	.4byte	0xdd6
	.ascii	"NRF_TEMP_Type\000"
	.4byte	0xed7
	.ascii	"NRF_NVMC_Type\000"
	.4byte	0xf06
	.ascii	"_Bool\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LFB131
	.4byte	.LFE131
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB134
	.4byte	.LFE134
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	.LFB136
	.4byte	.LFE136
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LFB141
	.4byte	.LFE141
	.4byte	.LFB142
	.4byte	.LFE142
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"CPACR\000"
.LASF129:
	.ascii	"NRF_NVMC_Type\000"
.LASF49:
	.ascii	"CODEPAGESIZE\000"
.LASF109:
	.ascii	"LFCLKSTAT\000"
.LASF46:
	.ascii	"POWERSET\000"
.LASF7:
	.ascii	"unsigned int\000"
.LASF29:
	.ascii	"DEMCR\000"
.LASF74:
	.ascii	"EVENTS_POFWARN\000"
.LASF96:
	.ascii	"TASKS_HFCLKSTOP\000"
.LASF17:
	.ascii	"DFSR\000"
.LASF110:
	.ascii	"LFCLKSRCCOPY\000"
.LASF127:
	.ascii	"IHIT\000"
.LASF142:
	.ascii	"__ISB\000"
.LASF132:
	.ascii	"errata_108\000"
.LASF140:
	.ascii	"errata_12\000"
.LASF139:
	.ascii	"errata_16\000"
.LASF122:
	.ascii	"CONFIG\000"
.LASF117:
	.ascii	"EVENTS_DATARDY\000"
.LASF47:
	.ascii	"POWERCLR\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF21:
	.ascii	"MMFR\000"
.LASF37:
	.ascii	"UNUSED0\000"
.LASF62:
	.ascii	"UNUSED1\000"
.LASF63:
	.ascii	"UNUSED2\000"
.LASF64:
	.ascii	"UNUSED3\000"
.LASF52:
	.ascii	"DEVICEID\000"
.LASF106:
	.ascii	"HFCLKRUN\000"
.LASF98:
	.ascii	"TASKS_LFCLKSTOP\000"
.LASF99:
	.ascii	"TASKS_CAL\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF83:
	.ascii	"RESERVED7\000"
.LASF135:
	.ascii	"errata_37\000"
.LASF138:
	.ascii	"errata_31\000"
.LASF137:
	.ascii	"errata_32\000"
.LASF136:
	.ascii	"errata_36\000"
.LASF124:
	.ascii	"ERASEPCR0\000"
.LASF119:
	.ascii	"ERASEPCR1\000"
.LASF120:
	.ascii	"ERASEPAGE\000"
.LASF34:
	.ascii	"VARIANT\000"
.LASF148:
	.ascii	"__NVIC_SystemReset\000"
.LASF57:
	.ascii	"INFO\000"
.LASF70:
	.ascii	"NFCPINS\000"
.LASF10:
	.ascii	"CPUID\000"
.LASF97:
	.ascii	"TASKS_LFCLKSTART\000"
.LASF130:
	.ascii	"_Bool\000"
.LASF20:
	.ascii	"AFSR\000"
.LASF112:
	.ascii	"CTIV\000"
.LASF116:
	.ascii	"TASKS_STOP\000"
.LASF134:
	.ascii	"errata_57\000"
.LASF16:
	.ascii	"HFSR\000"
.LASF90:
	.ascii	"RAMONB\000"
.LASF39:
	.ascii	"FICR_TEMP_Type\000"
.LASF128:
	.ascii	"IMISS\000"
.LASF13:
	.ascii	"AIRCR\000"
.LASF75:
	.ascii	"EVENTS_SLEEPENTER\000"
.LASF95:
	.ascii	"TASKS_HFCLKSTART\000"
.LASF115:
	.ascii	"TASKS_START\000"
.LASF87:
	.ascii	"GPREGRET2\000"
.LASF76:
	.ascii	"EVENTS_SLEEPEXIT\000"
.LASF102:
	.ascii	"EVENTS_HFCLKSTARTED\000"
.LASF68:
	.ascii	"PSELRESET\000"
.LASF100:
	.ascii	"TASKS_CTSTART\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF133:
	.ascii	"errata_66\000"
.LASF118:
	.ascii	"NRF_TEMP_Type\000"
.LASF144:
	.ascii	"E:\\WSC_FTSP_ver_onemess\\WSC_FTSP\\code\\WCS\\nRF5"
	.ascii	"_SDK_14.2.0\\components\\toolchain\\system_nrf52.c\000"
.LASF8:
	.ascii	"long long int\000"
.LASF79:
	.ascii	"RESETREAS\000"
.LASF101:
	.ascii	"TASKS_CTSTOP\000"
.LASF15:
	.ascii	"CFSR\000"
.LASF121:
	.ascii	"READY\000"
.LASF66:
	.ascii	"NRFHW\000"
.LASF131:
	.ascii	"errata_136\000"
.LASF65:
	.ascii	"NRFFW\000"
.LASF59:
	.ascii	"TEMP\000"
.LASF86:
	.ascii	"GPREGRET\000"
.LASF44:
	.ascii	"FICR_NFC_Type\000"
.LASF114:
	.ascii	"NRF_CLOCK_Type\000"
.LASF123:
	.ascii	"ERASEALL\000"
.LASF30:
	.ascii	"CoreDebug_Type\000"
.LASF125:
	.ascii	"ERASEUICR\000"
.LASF141:
	.ascii	"__DSB\000"
.LASF61:
	.ascii	"NRF_FICR_Type\000"
.LASF108:
	.ascii	"LFCLKRUN\000"
.LASF84:
	.ascii	"POFCON\000"
.LASF32:
	.ascii	"SystemCoreClock\000"
.LASF82:
	.ascii	"SYSTEMOFF\000"
.LASF18:
	.ascii	"MMFAR\000"
.LASF23:
	.ascii	"RESERVED0\000"
.LASF51:
	.ascii	"RESERVED1\000"
.LASF14:
	.ascii	"SHCSR\000"
.LASF56:
	.ascii	"RESERVED3\000"
.LASF58:
	.ascii	"RESERVED4\000"
.LASF60:
	.ascii	"RESERVED5\000"
.LASF81:
	.ascii	"RESERVED6\000"
.LASF2:
	.ascii	"short int\000"
.LASF85:
	.ascii	"RESERVED8\000"
.LASF89:
	.ascii	"RESERVED9\000"
.LASF126:
	.ascii	"ICACHECNF\000"
.LASF88:
	.ascii	"RAMON\000"
.LASF145:
	.ascii	"E:\\WSC_FTSP_ver_onemess\\WSC_FTSP\\code\\WCS\\exam"
	.ascii	"ples\\WCS_Anchor\\SES\000"
.LASF31:
	.ascii	"ITM_RxBuffer\000"
.LASF55:
	.ascii	"DEVICEADDR\000"
.LASF36:
	.ascii	"FLASH\000"
.LASF54:
	.ascii	"DEVICEADDRTYPE\000"
.LASF69:
	.ascii	"APPROTECT\000"
.LASF25:
	.ascii	"SCB_Type\000"
.LASF19:
	.ascii	"BFAR\000"
.LASF143:
	.ascii	"GNU C99 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -fmessage-length=0 -mcpu=cort"
	.ascii	"ex-m4 -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-s"
	.ascii	"p-d16 -mthumb -mtp=soft -munaligned-access -std=gnu"
	.ascii	"99 -g2 -gpubnames -fomit-frame-pointer -fno-dwarf2-"
	.ascii	"cfi-asm -fno-builtin -ffunction-sections -fdata-sec"
	.ascii	"tions -fshort-enums -fno-common\000"
.LASF103:
	.ascii	"EVENTS_LFCLKSTARTED\000"
.LASF94:
	.ascii	"NRF_POWER_Type\000"
.LASF92:
	.ascii	"DCDCEN\000"
.LASF12:
	.ascii	"VTOR\000"
.LASF45:
	.ascii	"POWER\000"
.LASF50:
	.ascii	"CODESIZE\000"
.LASF48:
	.ascii	"POWER_RAM_Type\000"
.LASF11:
	.ascii	"ICSR\000"
.LASF80:
	.ascii	"RAMSTATUS\000"
.LASF5:
	.ascii	"int32_t\000"
.LASF111:
	.ascii	"LFCLKSRC\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF72:
	.ascii	"TASKS_CONSTLAT\000"
.LASF91:
	.ascii	"RESERVED10\000"
.LASF93:
	.ascii	"RESERVED11\000"
.LASF77:
	.ascii	"INTENSET\000"
.LASF67:
	.ascii	"CUSTOMER\000"
.LASF71:
	.ascii	"NRF_UICR_Type\000"
.LASF26:
	.ascii	"DHCSR\000"
.LASF107:
	.ascii	"HFCLKSTAT\000"
.LASF0:
	.ascii	"signed char\000"
.LASF35:
	.ascii	"PACKAGE\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF73:
	.ascii	"TASKS_LOWPWR\000"
.LASF113:
	.ascii	"TRACECONFIG\000"
.LASF38:
	.ascii	"FICR_INFO_Type\000"
.LASF22:
	.ascii	"ISAR\000"
.LASF53:
	.ascii	"RESERVED2\000"
.LASF105:
	.ascii	"EVENTS_CTTO\000"
.LASF27:
	.ascii	"DCRSR\000"
.LASF33:
	.ascii	"PART\000"
.LASF146:
	.ascii	"SystemInit\000"
.LASF78:
	.ascii	"INTENCLR\000"
.LASF147:
	.ascii	"SystemCoreClockUpdate\000"
.LASF28:
	.ascii	"DCRDR\000"
.LASF104:
	.ascii	"EVENTS_DONE\000"
.LASF40:
	.ascii	"TAGHEADER0\000"
.LASF41:
	.ascii	"TAGHEADER1\000"
.LASF42:
	.ascii	"TAGHEADER2\000"
.LASF43:
	.ascii	"TAGHEADER3\000"
	.ident	"GCC: (GNU) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
