	.arch armv8.5-a
	.build_version macos,  14, 0
	.text
Ltext0:
	.file 1 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_files.adb"
	.align	2
_smc_files__read_file_content__B_2__B_4___finalizer.0:
LFB3:
	stp	x29, x30, [sp, -32]!
LCFI0:
	mov	x29, sp
LCFI1:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI2:
	ret
LFE3:
	.const
	.align	3
lC29:
	.space	1
	.align	3
lC30:
	.ascii "smc_files.adb"
	.space 1
	.text
	.align	2
_smc_files__read_file_content:
LFB2:
	.loc 1 12 4
	stp	x29, x30, [sp, -368]!
LCFI3:
	mov	x29, sp
LCFI4:
LEHB0:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI5:
	stp	x0, x1, [x29, 208]
	stp	x2, x3, [x29, 192]
	.loc 1 12 4
	add	x0, x29, 368
	.loc 1 12 4 is_stmt 0 discriminator 1
	str	x0, [x29, 264]
	ldr	x0, [x29, 216]
	ldr	w2, [x0]
	ldr	x0, [x29, 216]
	ldr	w3, [x0, 4]
LBB2:
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	sxtw	x0, w0
	str	x0, [x29, 152]
	ldr	x0, [x29, 200]
	ldr	w1, [x0, 4]
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	cmp	w1, w0
	.loc 1 12 4 discriminator 5
	ldr	x0, [x29, 200]
	ldr	w1, [x0, 4]
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L7
	.loc 1 12 4 discriminator 6
	ldr	x0, [x29, 200]
	ldr	w0, [x0, 4]
	sxtw	x1, w0
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x4, x0
	mov	x5, 0
	lsr	x1, x4, 61
	lsl	x11, x5, 3
	mov	x0, x11
	add	x0, x1, x0
	mov	x11, x0
	lsl	x10, x4, 3
L7:
	.loc 1 12 4 discriminator 9
	ldr	x0, [x29, 200]
	ldr	w1, [x0, 4]
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	cmp	w1, w0
	.loc 1 12 4 discriminator 13
	cmp	w3, w2
	.loc 1 12 4 discriminator 17
	cmp	w3, w2
	blt	L13
	.loc 1 12 4 discriminator 18
	sxtw	x1, w3
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x6, x0
	mov	x7, 0
	lsr	x0, x6, 61
	lsl	x9, x7, 3
	mov	x1, x9
	add	x0, x0, x1
	mov	x9, x0
	lsl	x8, x6, 3
L13:
	.loc 1 12 4 discriminator 21
	cmp	w3, w2
	.loc 1 14 7 is_stmt 1
	str	xzr, [x29, 232]
	.loc 1 16 14
	str	wzr, [x29, 276]
	.loc 1 17 15
	strb	wzr, [x29, 275]
	.loc 1 18 29
	ldp	x0, x1, [x29, 208]
	bl	_ada__directories__exists
LEHE0:
	.loc 1 18 29 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 18 7 is_stmt 1 discriminator 2
	cmp	w0, 0
	bne	L102
LBB3:
LBB4:
	.loc 1 23 10
	ldr	x6, [x29, 232]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 128]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 136]
	ldp	x4, x5, [x29, 128]
	ldp	x2, x3, [x29, 208]
	mov	w1, 0
	mov	x0, x6
LEHB1:
	bl	_ada__text_io__open
LEHE1:
	.loc 1 23 10 is_stmt 0 discriminator 2
	str	x0, [x29, 232]
L79:
LBE4:
LBE3:
LBB5:
	.loc 1 30 20 is_stmt 1
	ldr	x0, [x29, 232]
LEHB2:
	bl	_ada__text_io__end_of_file
LEHE2:
	.loc 1 30 16 discriminator 2
	cmp	w0, 0
	bne	L18
LBB6:
	add	x0, x29, 240
	mov	x8, x0
LEHB3:
	bl	_system__secondary_stack__ss_mark
	.loc 1 32 42
	ldr	x0, [x29, 232]
	bl	_ada__text_io__get_line__3
	.loc 1 32 42 is_stmt 0 discriminator 2
	mov	x2, x0
	mov	x3, x1
	mov	x0, x3
	ldr	w0, [x0]
	str	w0, [x29, 364]
	mov	x0, x3
	ldr	w0, [x0, 4]
	str	w0, [x29, 360]
	.loc 1 32 16 is_stmt 1 discriminator 2
	ldrsw	x0, [x29, 364]
	str	x0, [x29, 352]
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L19
	.loc 1 32 16 is_stmt 0 discriminator 3
	ldrsw	x0, [x29, 360]
	str	x0, [x29, 344]
	b	L20
L19:
	.loc 1 32 16 discriminator 4
	ldrsw	x0, [x29, 364]
	sub	x0, x0, #1
	str	x0, [x29, 344]
L20:
	.loc 1 32 16 discriminator 6
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L22
	.loc 1 32 16 discriminator 7
	ldrsw	x1, [x29, 360]
	ldrsw	x0, [x29, 364]
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x20, x0
	mov	x21, 0
	lsr	x0, x20, 61
	lsl	x28, x21, 3
	mov	x1, x28
	add	x0, x0, x1
	mov	x28, x0
	lsl	x27, x20, 3
L22:
	.loc 1 32 16 discriminator 10
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	.loc 1 32 42 is_stmt 1 discriminator 14
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L25
	.loc 1 32 42 is_stmt 0 discriminator 15
	ldr	w0, [x29, 364]
	cmp	w0, 0
	bgt	L25
	.loc 1 32 42 discriminator 17
	mov	w1, 32
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
LEHE3:
L25:
	.loc 1 32 42 discriminator 18
	mov	x0, x3
	ldr	w0, [x0]
	mov	x1, x3
	ldr	w1, [x1, 4]
	cmp	w1, w0
	.loc 1 32 42 discriminator 23
	cmp	w1, w0
	blt	L29
	.loc 1 32 42 discriminator 24
	sxtw	x5, w1
	sxtw	x4, w0
	sub	x4, x5, x4
	add	x4, x4, 1
	mov	x22, x4
	mov	x23, 0
	lsr	x4, x22, 61
	lsl	x5, x23, 3
	str	x5, [x29, 184]
	ldr	x5, [x29, 184]
	add	x4, x4, x5
	str	x4, [x29, 184]
	lsl	x4, x22, 3
	str	x4, [x29, 176]
L29:
	.loc 1 32 42 discriminator 27
	cmp	w1, w0
	.loc 1 32 16 is_stmt 1 discriminator 31
	mov	x0, x2
	str	x0, [x29, 336]
	.loc 1 34 32
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L32
	.loc 1 34 32 is_stmt 0 discriminator 1
	ldrsw	x1, [x29, 360]
	ldrsw	x0, [x29, 364]
	sub	x0, x1, x0
	add	x0, x0, 1
	b	L33
L32:
	.loc 1 34 32 discriminator 2
	mov	x0, 0
L33:
	.loc 1 34 32 discriminator 4
	mov	x1, 2147483647
	cmp	x0, x1
	ble	L34
	.loc 1 34 32 discriminator 5
	mov	w1, 34
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
LEHB4:
	bl	___gnat_rcheck_CE_Range_Check
L34:
	.loc 1 34 26 is_stmt 1 discriminator 6
	ldr	w1, [x29, 276]
	mov	w4, 0
	adds	w0, w1, w0
	bvc	L35
	mov	w4, 1
L35:
	mov	w1, w0
	.loc 1 34 26 is_stmt 0 discriminator 8
	mov	w0, w4
	cmp	w0, 0
	beq	L37
	.loc 1 34 26 discriminator 9
	mov	w1, 34
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L37:
	.loc 1 34 26 discriminator 10
	mov	w0, w1
	.loc 1 34 40 is_stmt 1 discriminator 13
	mov	w1, 2147483647
	cmp	w0, w1
	bne	L38
	.loc 1 34 40 is_stmt 0 discriminator 14
	mov	w1, 34
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L38:
	.loc 1 34 40 discriminator 15
	add	w1, w0, 1
	.loc 1 34 44 is_stmt 1 discriminator 18
	ldr	x0, [x29, 200]
	ldr	w0, [x0, 4]
	.loc 1 34 16 discriminator 18
	cmp	w1, w0
	bgt	L39
	.loc 1 35 55
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L40
	.loc 1 35 55 is_stmt 0 discriminator 1
	ldrsw	x1, [x29, 360]
	ldrsw	x0, [x29, 364]
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x1, x0
	b	L41
L40:
	.loc 1 35 55 discriminator 2
	mov	x1, 0
L41:
	.loc 1 35 55 discriminator 4
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L42
	.loc 1 35 55 discriminator 5
	mov	w1, 35
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L42:
	.loc 1 35 35 is_stmt 1 discriminator 6
	ldr	w4, [x29, 276]
	mov	w0, 2147483647
	cmp	w4, w0
	bne	L43
	.loc 1 35 35 is_stmt 0 discriminator 8
	mov	w1, 35
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L43:
	.loc 1 35 35 discriminator 9
	ldr	w0, [x29, 276]
	add	w0, w0, 1
	.loc 1 35 49 is_stmt 1 discriminator 12
	ldr	w4, [x29, 276]
	mov	w5, 0
	adds	w1, w4, w1
	bvc	L44
	mov	w5, 1
L44:
	mov	w4, w1
	.loc 1 35 49 is_stmt 0 discriminator 13
	mov	w1, w5
	cmp	w1, 0
	beq	L46
	.loc 1 35 49 discriminator 14
	mov	w1, 35
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L46:
	.loc 1 35 49 discriminator 15
	mov	w1, w4
	.loc 1 35 39 is_stmt 1 discriminator 18
	cmp	w1, w0
	blt	L47
	.loc 1 35 39 is_stmt 0 discriminator 19
	ldr	x4, [x29, 200]
	ldr	w4, [x4]
	cmp	w0, w4
	blt	L48
	.loc 1 35 39 discriminator 22
	ldr	x4, [x29, 200]
	ldr	w4, [x4, 4]
	cmp	w1, w4
	ble	L47
L48:
	.loc 1 35 39 discriminator 23
	mov	w1, 35
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L47:
	.loc 1 35 19 is_stmt 1 discriminator 24
	cmp	w1, w0
	.loc 1 35 19 is_stmt 0 discriminator 29
	cmp	w1, w0
	blt	L52
	.loc 1 35 19 discriminator 30
	sxtw	x5, w1
	sxtw	x4, w0
	sub	x4, x5, x4
	add	x4, x4, 1
	mov	x24, x4
	mov	x25, 0
	lsr	x4, x24, 61
	lsl	x5, x25, 3
	str	x5, [x29, 168]
	ldr	x5, [x29, 168]
	add	x4, x4, x5
	str	x4, [x29, 168]
	lsl	x4, x24, 3
	str	x4, [x29, 160]
L52:
	.loc 1 35 19 discriminator 33
	cmp	w1, w0
	.loc 1 35 67 is_stmt 1 discriminator 37
	cmp	w1, w0
	blt	L55
	.loc 1 35 67 is_stmt 0 discriminator 38
	sxtw	x5, w1
	sxtw	x4, w0
	sub	x4, x5, x4
	add	x4, x4, 1
	mov	x5, x4
	b	L56
L55:
	.loc 1 35 67 discriminator 39
	mov	x5, 0
L56:
	.loc 1 35 67 discriminator 41
	ldr	w6, [x29, 360]
	ldr	w4, [x29, 364]
	cmp	w6, w4
	blt	L57
	.loc 1 35 67 discriminator 42
	ldrsw	x6, [x29, 360]
	ldrsw	x4, [x29, 364]
	sub	x4, x6, x4
	add	x4, x4, 1
	b	L58
L57:
	.loc 1 35 67 discriminator 43
	mov	x4, 0
L58:
	.loc 1 35 67 discriminator 45
	cmp	x5, x4
	beq	L59
	.loc 1 35 67 discriminator 46
	mov	w1, 35
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Length_Check
L59:
	.loc 1 35 64 is_stmt 1 discriminator 47
	ldr	x5, [x29, 192]
	sxtw	x4, w0
	ldr	x6, [x29, 152]
	sub	x4, x4, x6
	add	x4, x5, x4
	mov	x3, x2
	cmp	w1, w0
	blt	L60
	.loc 1 35 64 is_stmt 0 discriminator 49
	sxtw	x1, w1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	b	L61
L60:
	.loc 1 35 64 discriminator 50
	mov	x0, 0
L61:
	.loc 1 35 64 discriminator 52
	mov	x2, x0
	mov	x1, x3
	mov	x0, x4
	bl	_memmove
	.loc 1 36 42 is_stmt 1
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L62
	.loc 1 36 42 is_stmt 0 discriminator 1
	ldrsw	x1, [x29, 360]
	ldrsw	x0, [x29, 364]
	sub	x0, x1, x0
	add	x0, x0, 1
	b	L63
L62:
	.loc 1 36 42 discriminator 2
	mov	x0, 0
L63:
	.loc 1 36 42 discriminator 4
	mov	x1, 2147483647
	cmp	x0, x1
	ble	L64
	.loc 1 36 42 discriminator 5
	mov	w1, 36
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L64:
	.loc 1 36 36 is_stmt 1 discriminator 6
	ldr	w1, [x29, 276]
	mov	w2, 0
	adds	w0, w1, w0
	bvc	L65
	mov	w2, 1
L65:
	mov	w1, w0
	.loc 1 36 36 is_stmt 0 discriminator 8
	mov	w0, w2
	cmp	w0, 0
	beq	L67
	.loc 1 36 36 discriminator 9
	mov	w1, 36
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L67:
	.loc 1 36 36 discriminator 10
	mov	w0, w1
	.loc 1 36 26 is_stmt 1 discriminator 13
	str	w0, [x29, 276]
	.loc 1 37 36
	ldr	w1, [x29, 276]
	mov	w0, 2147483647
	cmp	w1, w0
	bne	L68
	.loc 1 37 36 is_stmt 0 discriminator 1
	mov	w1, 37
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L68:
	.loc 1 37 36 discriminator 2
	ldr	w0, [x29, 276]
	add	w0, w0, 1
	.loc 1 37 26 is_stmt 1 discriminator 5
	str	w0, [x29, 276]
	.loc 1 38 19
	ldr	x0, [x29, 200]
	ldr	w1, [x0]
	ldr	w0, [x29, 276]
	cmp	w1, w0
	bgt	L69
	.loc 1 38 19 is_stmt 0 discriminator 2
	ldr	x0, [x29, 200]
	ldr	w1, [x0, 4]
	ldr	w0, [x29, 276]
	cmp	w1, w0
	bge	L70
L69:
	.loc 1 38 19 discriminator 3
	mov	w1, 38
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L70:
	.loc 1 38 28 is_stmt 1 discriminator 4
	ldr	w0, [x29, 276]
	cmp	w0, 0
	bge	L71
	.loc 1 38 28 is_stmt 0 discriminator 6
	mov	w1, 38
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Invalid_Data
L71:
	.loc 1 38 36 is_stmt 1 discriminator 7
	ldr	x1, [x29, 192]
	sxtw	x0, w0
	ldr	x2, [x29, 152]
	sub	x0, x0, x2
	mov	w2, 10
	strb	w2, [x1, x0]
LEHE4:
	b	L99
L39:
	.loc 1 40 19
	mov	w19, 0
	b	L73
L99:
	.loc 1 45 0
	mov	w19, 2
L73:
	.loc 1 45 0 is_stmt 0 discriminator 1
	add	x0, x29, 240
	mov	x16, x0
LEHB5:
	bl	_smc_files__read_file_content__B_2__B_4___finalizer.0
LEHE5:
	.loc 1 45 0 discriminator 3
	cmp	w19, 1
	beq	L74
	cmp	w19, 2
	beq	L100
	mov	w0, 0
	b	L77
L100:
	.loc 1 45 16 is_stmt 1
	mov	w0, 2
L77:
	.loc 1 45 16 is_stmt 0 discriminator 4
	cmp	w0, 1
	beq	L78
	cmp	w0, 2
	bne	L18
LBE6:
	.loc 1 46 18 is_stmt 1
	b	L79
L18:
	.loc 1 47 10
	add	x0, x29, 232
LEHB6:
	bl	_ada__text_io__close
LEHE6:
	.loc 1 48 18
	mov	w0, 1
	strb	w0, [x29, 275]
LBE5:
	.loc 1 55 8
	nop
	b	L80
L102:
	.loc 1 19 10
	nop
L80:
LBE2:
	.loc 1 55 8 discriminator 1
	ldr	w0, [x29, 276]
	bfi	x26, x0, 0, 32
	ldrb	w0, [x29, 275]
	bfi	x26, x0, 32, 8
	.loc 1 55 8 is_stmt 0 discriminator 3
	mov	x0, x26
	.loc 1 55 8
	b	L101
L93:
	.loc 1 25 10 is_stmt 1
	cmp	x1, 1
	beq	L83
LEHB7:
	bl	__Unwind_Resume
L83:
LBB12:
LBB8:
	.loc 1 25 10 is_stmt 0 discriminator 1
	str	x0, [x29, 288]
	.loc 1 25 10 discriminator 2
	ldr	x0, [x29, 288]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 280]
	.loc 1 26 13 is_stmt 1
	nop
	.loc 1 25 10 discriminator 4
	mov	x2, 0
	ldr	x1, [x29, 280]
	ldr	x0, [x29, 288]
	bl	___gnat_end_handler_v1
LEHE7:
	b	L80
L96:
LBE8:
LBE12:
	.loc 1 43 16
	mov	x2, x1
	mov	x1, x2
	cmp	x1, 3
	beq	L85
	str	x0, [x29, 144]
	str	x2, [x29, 120]
	b	L86
L85:
LBB13:
LBB9:
LBB7:
	.loc 1 43 16 is_stmt 0 discriminator 1
	str	x0, [x29, 328]
	.loc 1 43 16 discriminator 2
	ldr	x0, [x29, 328]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 320]
	.loc 1 44 19 is_stmt 1
	nop
	.loc 1 43 16 discriminator 4
	mov	x2, 0
	ldr	x1, [x29, 320]
	ldr	x0, [x29, 328]
LEHB8:
	bl	___gnat_end_handler_v1
LEHE8:
	mov	w19, 0
	b	L73
L95:
	str	x0, [x29, 144]
	str	x1, [x29, 120]
L86:
	mov	w19, 1
	.loc 1 31 13
	b	L73
L74:
	ldr	x0, [x29, 144]
	str	x0, [x29, 112]
	ldr	x0, [x29, 120]
	str	x0, [x29, 104]
	b	L87
L97:
	str	x0, [x29, 112]
	str	x1, [x29, 104]
L87:
	mov	w0, 1
	b	L77
L78:
	ldr	x0, [x29, 112]
	ldr	x1, [x29, 104]
	b	L88
L94:
L88:
LBE7:
LBE9:
LBE13:
	.loc 1 50 10
	cmp	x1, 2
	beq	L89
LEHB9:
	bl	__Unwind_Resume
LEHE9:
L89:
LBB14:
LBB10:
	.loc 1 50 10 is_stmt 0 discriminator 1
	str	x0, [x29, 312]
	.loc 1 50 10 discriminator 2
	ldr	x0, [x29, 312]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 304]
	.loc 1 51 16 is_stmt 1
	ldr	x0, [x29, 232]
LEHB10:
	bl	_ada__text_io__is_open
	.loc 1 51 13 discriminator 2
	cmp	w0, 0
	beq	L90
	.loc 1 52 16
	add	x0, x29, 232
	bl	_ada__text_io__close
LEHE10:
L90:
	.loc 1 50 10
	mov	x2, 0
	ldr	x1, [x29, 304]
	ldr	x0, [x29, 312]
LEHB11:
	bl	___gnat_end_handler_v1
LBE10:
	.loc 1 55 8
	b	L80
L98:
LBB11:
	.loc 1 50 10
	mov	x19, x0
	str	x19, [x29, 296]
	.loc 1 50 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 296]
	ldr	x1, [x29, 304]
	ldr	x0, [x29, 312]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L101:
LBE11:
LBE14:
	.loc 1 55 8 is_stmt 1
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE11:
	ldp	x29, x30, [sp], 368
LCFI6:
	ret
LFE2:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
	.align	2
LLSDA2:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT2-LLSDATTD2
LLSDATTD2:
	.byte	0x1
	.uleb128 LLSDACSE2-LLSDACSB2
LLSDACSB2:
	.uleb128 LEHB0-LFB2
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB2
	.uleb128 LEHE1-LEHB1
	.uleb128 L93-LFB2
	.uleb128 0x1
	.uleb128 LEHB2-LFB2
	.uleb128 LEHE2-LEHB2
	.uleb128 L94-LFB2
	.uleb128 0x3
	.uleb128 LEHB3-LFB2
	.uleb128 LEHE3-LEHB3
	.uleb128 L95-LFB2
	.uleb128 0x5
	.uleb128 LEHB4-LFB2
	.uleb128 LEHE4-LEHB4
	.uleb128 L96-LFB2
	.uleb128 0x7
	.uleb128 LEHB5-LFB2
	.uleb128 LEHE5-LEHB5
	.uleb128 L97-LFB2
	.uleb128 0x5
	.uleb128 LEHB6-LFB2
	.uleb128 LEHE6-LEHB6
	.uleb128 L94-LFB2
	.uleb128 0x3
	.uleb128 LEHB7-LFB2
	.uleb128 LEHE7-LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB8-LFB2
	.uleb128 LEHE8-LEHB8
	.uleb128 L95-LFB2
	.uleb128 0x5
	.uleb128 LEHB9-LFB2
	.uleb128 LEHE9-LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB10-LFB2
	.uleb128 LEHE10-LEHB10
	.uleb128 L98-LFB2
	.uleb128 0
	.uleb128 LEHB11-LFB2
	.uleb128 LEHE11-LEHB11
	.uleb128 0
	.uleb128 0
LLSDACSE2:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0x7d
	.byte	0x3
	.byte	0x7d
	.align	2
L_got_pcr0:
	.long	___gnat_others_value@GOT-L_got_pcr0
L_got_pcr1:
	.long	___gnat_others_value@GOT-L_got_pcr1
L_got_pcr2:
	.long	___gnat_others_value@GOT-L_got_pcr2
LLSDATT2:
	.text
	.const
	.align	2
lC0:
	.word	1
	.word	0
	.text
	.align	2
_smc_files__parse_float_after:
LFB4:
	.loc 1 61 4
	stp	x29, x30, [sp, -96]!
LCFI7:
	mov	x29, sp
LCFI8:
LEHB12:
LEHE12:
	str	d15, [sp, 16]
LCFI9:
	stp	x0, x1, [x29, 48]
	str	w2, [x29, 44]
	str	s0, [x29, 40]
	.loc 1 61 4
	ldr	x0, [x29, 56]
	ldr	w1, [x0]
	ldr	x0, [x29, 56]
	ldr	w0, [x0, 4]
LBB15:
	sxtw	x2, w1
	cmp	w0, w1
	.loc 1 61 4 is_stmt 0 discriminator 4
	cmp	w0, w1
	blt	L107
	.loc 1 61 4 discriminator 5
	sxtw	x14, w0
	sxtw	x3, w1
	sub	x3, x14, x3
	add	x3, x3, 1
	mov	x4, x3
	mov	x5, 0
	lsr	x3, x4, 61
	lsl	x11, x5, 3
	mov	x14, x11
	add	x3, x3, x14
	mov	x11, x3
	lsl	x10, x4, 3
L107:
	.loc 1 61 4 discriminator 8
	cmp	w0, w1
	.loc 1 62 7 is_stmt 1
	ldr	w3, [x29, 44]
	str	w3, [x29, 92]
L123:
	.loc 1 66 7
	ldr	w3, [x29, 92]
	cmp	w0, w3
	blt	L110
	.loc 1 66 39 discriminator 1
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L111
	.loc 1 66 39 is_stmt 0 discriminator 3
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L112
L111:
	.loc 1 66 39 discriminator 4
	mov	w1, 66
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
LEHB13:
	bl	___gnat_rcheck_CE_Index_Check
L112:
	.loc 1 66 49 is_stmt 1 discriminator 5
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 66 49 is_stmt 0 discriminator 7
	cmp	w3, 32
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 66 29 is_stmt 1 discriminator 7
	cmp	w3, 0
	bne	L113
	.loc 1 66 63 discriminator 8
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L114
	.loc 1 66 63 is_stmt 0 discriminator 10
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L115
L114:
	.loc 1 66 63 discriminator 11
	mov	w1, 66
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L115:
	.loc 1 66 73 is_stmt 1 discriminator 12
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 66 73 is_stmt 0 discriminator 14
	cmp	w3, 58
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 66 55 is_stmt 1 discriminator 14
	cmp	w3, 0
	bne	L113
	.loc 1 66 87 discriminator 15
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L116
	.loc 1 66 87 is_stmt 0 discriminator 17
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L117
L116:
	.loc 1 66 87 discriminator 18
	mov	w1, 66
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L117:
	.loc 1 66 97 is_stmt 1 discriminator 19
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 66 97 is_stmt 0 discriminator 21
	cmp	w3, 44
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 66 79 is_stmt 1 discriminator 21
	cmp	w3, 0
	bne	L113
	.loc 1 66 111 discriminator 22
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L118
	.loc 1 66 111 is_stmt 0 discriminator 24
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L119
L118:
	.loc 1 66 111 discriminator 25
	mov	w1, 66
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L119:
	.loc 1 66 121 is_stmt 1 discriminator 26
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 66 121 is_stmt 0 discriminator 28
	cmp	w3, 91
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 66 103 is_stmt 1 discriminator 28
	cmp	w3, 0
	bne	L113
	.loc 1 66 135 discriminator 29
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L120
	.loc 1 66 135 is_stmt 0 discriminator 31
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L121
L120:
	.loc 1 66 135 discriminator 32
	mov	w1, 66
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L121:
	.loc 1 66 145 is_stmt 1 discriminator 33
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 66 145 is_stmt 0 discriminator 35
	cmp	w3, 123
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 66 127 is_stmt 1 discriminator 35
	cmp	w3, 0
	beq	L110
L113:
	.loc 1 67 21
	ldr	w4, [x29, 92]
	mov	w3, 2147483647
	cmp	w4, w3
	bne	L122
	.loc 1 67 14 discriminator 1
	mov	w1, 67
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L122:
	.loc 1 67 14 is_stmt 0 discriminator 2
	ldr	w3, [x29, 92]
	add	w3, w3, 1
	str	w3, [x29, 92]
	.loc 1 68 15 is_stmt 1
	b	L123
L110:
	.loc 1 70 15
	ldr	w3, [x29, 92]
	str	w3, [x29, 88]
L140:
	.loc 1 71 7
	ldr	w3, [x29, 88]
	cmp	w0, w3
	blt	L124
	.loc 1 71 43 discriminator 1
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L125
	.loc 1 71 43 is_stmt 0 discriminator 3
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L126
L125:
	.loc 1 71 43 discriminator 4
	mov	w1, 71
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L126:
	.loc 1 71 57 is_stmt 1 discriminator 5
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 71 57 is_stmt 0 discriminator 7
	cmp	w3, 45
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 71 33 is_stmt 1 discriminator 7
	cmp	w3, 0
	bne	L127
	.loc 1 71 71 discriminator 8
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L128
	.loc 1 71 71 is_stmt 0 discriminator 10
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L129
L128:
	.loc 1 71 71 discriminator 11
	mov	w1, 71
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L129:
	.loc 1 71 85 is_stmt 1 discriminator 12
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 71 85 is_stmt 0 discriminator 14
	cmp	w3, 46
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 71 63 is_stmt 1 discriminator 14
	cmp	w3, 0
	bne	L127
	.loc 1 71 100 discriminator 15
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L130
	.loc 1 71 100 is_stmt 0 discriminator 17
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L131
L130:
	.loc 1 71 100 discriminator 18
	mov	w1, 71
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L131:
	.loc 1 71 114 is_stmt 1 discriminator 19
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 71 114 is_stmt 0 discriminator 21
	and	w3, w3, 255
	cmp	w3, 47
	cset	w3, hi
	and	w3, w3, 255
	.loc 1 71 91 is_stmt 1 discriminator 21
	cmp	w3, 0
	beq	L132
	.loc 1 71 130 discriminator 22
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L133
	.loc 1 71 130 is_stmt 0 discriminator 25
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L134
L133:
	.loc 1 71 130 discriminator 26
	mov	w1, 71
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L134:
	.loc 1 71 144 is_stmt 1 discriminator 27
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 71 144 is_stmt 0 discriminator 29
	and	w3, w3, 255
	cmp	w3, 57
	cset	w3, ls
	and	w3, w3, 255
	.loc 1 71 121 is_stmt 1 discriminator 29
	cmp	w3, 0
	bne	L127
L132:
	.loc 1 71 160 discriminator 30
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L135
	.loc 1 71 160 is_stmt 0 discriminator 32
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L136
L135:
	.loc 1 71 160 discriminator 33
	mov	w1, 71
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L136:
	.loc 1 71 174 is_stmt 1 discriminator 34
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 71 174 is_stmt 0 discriminator 36
	cmp	w3, 101
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 71 152 is_stmt 1 discriminator 36
	cmp	w3, 0
	bne	L127
	.loc 1 71 188 discriminator 37
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L137
	.loc 1 71 188 is_stmt 0 discriminator 39
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L138
L137:
	.loc 1 71 188 discriminator 40
	mov	w1, 71
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L138:
	.loc 1 71 202 is_stmt 1 discriminator 41
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 71 202 is_stmt 0 discriminator 43
	cmp	w3, 69
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 71 180 is_stmt 1 discriminator 43
	cmp	w3, 0
	beq	L124
L127:
	.loc 1 72 29
	ldr	w4, [x29, 88]
	mov	w3, 2147483647
	cmp	w4, w3
	bne	L139
	.loc 1 72 18 discriminator 1
	mov	w1, 72
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L139:
	.loc 1 72 18 is_stmt 0 discriminator 2
	ldr	w3, [x29, 88]
	add	w3, w3, 1
	str	w3, [x29, 88]
	.loc 1 73 15 is_stmt 1
	b	L140
L124:
	.loc 1 75 7
	ldr	w4, [x29, 88]
	ldr	w3, [x29, 92]
	cmp	w4, w3
	ble	L141
	.loc 1 76 35
	ldr	w3, [x29, 92]
	.loc 1 76 50
	ldr	w4, [x29, 88]
	sub	w4, w4, #1
	.loc 1 76 39
	cmp	w4, w3
	blt	L142
	.loc 1 76 39 is_stmt 0 discriminator 1
	cmp	w1, w3
	bgt	L143
	.loc 1 76 39 discriminator 4
	cmp	w0, w4
	bge	L142
L143:
	.loc 1 76 39 discriminator 5
	mov	w1, 76
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L142:
	.loc 1 76 30 is_stmt 1 discriminator 6
	cmp	w4, w3
	.loc 1 76 30 is_stmt 0 discriminator 11
	cmp	w4, w3
	blt	L147
	.loc 1 76 30 discriminator 12
	sxtw	x1, w4
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x6, x0
	mov	x7, 0
	lsr	x0, x6, 61
	lsl	x9, x7, 3
	mov	x1, x9
	add	x0, x0, x1
	mov	x9, x0
	lsl	x8, x6, 3
L147:
	.loc 1 76 30 discriminator 15
	cmp	w4, w3
	.loc 1 76 22 is_stmt 1 discriminator 19
	ldr	x1, [x29, 48]
	sxtw	x0, w3
	sub	x0, x0, x2
	add	x0, x1, x0
	mov	x12, x0
	str	w3, [x29, 64]
	str	w4, [x29, 68]
	add	x0, x29, 64
	mov	x13, x0
	mov	x0, x12
	mov	x1, x13
	bl	_system__val_flt__impl__value_real
LEHE13:
	fmov	s15, s0
	.loc 1 76 10
	b	L150
L141:
	.loc 1 78 10
	ldr	s15, [x29, 40]
L150:
LBE15:
	.loc 1 83 8
	fmov	s31, s15
	b	L154
L153:
	.loc 1 81 7
	cmp	x1, 1
	beq	L152
LEHB14:
	bl	__Unwind_Resume
L152:
LBB16:
	.loc 1 81 7 is_stmt 0 discriminator 1
	str	x0, [x29, 80]
	.loc 1 81 7 discriminator 2
	ldr	x0, [x29, 80]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 72]
	.loc 1 82 10 is_stmt 1
	ldr	s15, [x29, 40]
	.loc 1 81 7
	mov	x2, 0
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 80]
	bl	___gnat_end_handler_v1
	b	L150
L154:
LBE16:
	.loc 1 83 8
	fmov	s0, s31
	ldr	d15, [sp, 16]
LEHE14:
	ldp	x29, x30, [sp], 96
LCFI10:
	ret
LFE4:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
	.align	2
LLSDA4:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT4-LLSDATTD4
LLSDATTD4:
	.byte	0x1
	.uleb128 LLSDACSE4-LLSDACSB4
LLSDACSB4:
	.uleb128 LEHB12-LFB4
	.uleb128 LEHE12-LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB13-LFB4
	.uleb128 LEHE13-LEHB13
	.uleb128 L153-LFB4
	.uleb128 0x1
	.uleb128 LEHB14-LFB4
	.uleb128 LEHE14-LEHB14
	.uleb128 0
	.uleb128 0
LLSDACSE4:
	.byte	0x1
	.byte	0
	.align	2
L_got_pcr3:
	.long	___gnat_others_value@GOT-L_got_pcr3
LLSDATT4:
	.text
	.align	2
_smc_files__parse_int_after:
LFB5:
	.loc 1 89 4
	stp	x29, x30, [sp, -96]!
LCFI11:
	mov	x29, sp
LCFI12:
LEHB15:
LEHE15:
	str	x19, [sp, 16]
LCFI13:
	stp	x0, x1, [x29, 48]
	str	w2, [x29, 44]
	str	w3, [x29, 40]
	.loc 1 89 4
	ldr	x0, [x29, 56]
	ldr	w1, [x0]
	ldr	x0, [x29, 56]
	ldr	w0, [x0, 4]
LBB17:
	sxtw	x2, w1
	cmp	w0, w1
	.loc 1 89 4 is_stmt 0 discriminator 4
	cmp	w0, w1
	blt	L159
	.loc 1 89 4 discriminator 5
	sxtw	x14, w0
	sxtw	x3, w1
	sub	x3, x14, x3
	add	x3, x3, 1
	mov	x4, x3
	mov	x5, 0
	lsr	x3, x4, 61
	lsl	x11, x5, 3
	mov	x14, x11
	add	x3, x3, x14
	mov	x11, x3
	lsl	x10, x4, 3
L159:
	.loc 1 89 4 discriminator 8
	cmp	w0, w1
	.loc 1 90 7 is_stmt 1
	ldr	w3, [x29, 44]
	str	w3, [x29, 92]
L175:
	.loc 1 93 7
	ldr	w3, [x29, 92]
	cmp	w0, w3
	blt	L162
	.loc 1 93 39 discriminator 1
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L163
	.loc 1 93 39 is_stmt 0 discriminator 3
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L164
L163:
	.loc 1 93 39 discriminator 4
	mov	w1, 93
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
LEHB16:
	bl	___gnat_rcheck_CE_Index_Check
L164:
	.loc 1 93 49 is_stmt 1 discriminator 5
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 93 49 is_stmt 0 discriminator 7
	cmp	w3, 32
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 93 29 is_stmt 1 discriminator 7
	cmp	w3, 0
	bne	L165
	.loc 1 93 63 discriminator 8
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L166
	.loc 1 93 63 is_stmt 0 discriminator 10
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L167
L166:
	.loc 1 93 63 discriminator 11
	mov	w1, 93
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L167:
	.loc 1 93 73 is_stmt 1 discriminator 12
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 93 73 is_stmt 0 discriminator 14
	cmp	w3, 58
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 93 55 is_stmt 1 discriminator 14
	cmp	w3, 0
	bne	L165
	.loc 1 93 87 discriminator 15
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L168
	.loc 1 93 87 is_stmt 0 discriminator 17
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L169
L168:
	.loc 1 93 87 discriminator 18
	mov	w1, 93
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L169:
	.loc 1 93 97 is_stmt 1 discriminator 19
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 93 97 is_stmt 0 discriminator 21
	cmp	w3, 44
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 93 79 is_stmt 1 discriminator 21
	cmp	w3, 0
	bne	L165
	.loc 1 93 111 discriminator 22
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L170
	.loc 1 93 111 is_stmt 0 discriminator 24
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L171
L170:
	.loc 1 93 111 discriminator 25
	mov	w1, 93
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L171:
	.loc 1 93 121 is_stmt 1 discriminator 26
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 93 121 is_stmt 0 discriminator 28
	cmp	w3, 91
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 93 103 is_stmt 1 discriminator 28
	cmp	w3, 0
	bne	L165
	.loc 1 93 135 discriminator 29
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L172
	.loc 1 93 135 is_stmt 0 discriminator 31
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L173
L172:
	.loc 1 93 135 discriminator 32
	mov	w1, 93
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L173:
	.loc 1 93 145 is_stmt 1 discriminator 33
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 93 145 is_stmt 0 discriminator 35
	cmp	w3, 123
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 93 127 is_stmt 1 discriminator 35
	cmp	w3, 0
	beq	L162
L165:
	.loc 1 94 21
	ldr	w4, [x29, 92]
	mov	w3, 2147483647
	cmp	w4, w3
	bne	L174
	.loc 1 94 14 discriminator 1
	mov	w1, 94
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L174:
	.loc 1 94 14 is_stmt 0 discriminator 2
	ldr	w3, [x29, 92]
	add	w3, w3, 1
	str	w3, [x29, 92]
	.loc 1 95 15 is_stmt 1
	b	L175
L162:
	.loc 1 97 15
	ldr	w3, [x29, 92]
	str	w3, [x29, 88]
L185:
	.loc 1 98 7
	ldr	w3, [x29, 88]
	cmp	w0, w3
	blt	L176
	.loc 1 98 43 discriminator 1
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L177
	.loc 1 98 43 is_stmt 0 discriminator 3
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L178
L177:
	.loc 1 98 43 discriminator 4
	mov	w1, 98
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L178:
	.loc 1 98 57 is_stmt 1 discriminator 5
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 98 57 is_stmt 0 discriminator 7
	cmp	w3, 45
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 98 33 is_stmt 1 discriminator 7
	cmp	w3, 0
	bne	L179
	.loc 1 98 72 discriminator 8
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L180
	.loc 1 98 72 is_stmt 0 discriminator 10
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L181
L180:
	.loc 1 98 72 discriminator 11
	mov	w1, 98
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L181:
	.loc 1 98 86 is_stmt 1 discriminator 12
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 98 86 is_stmt 0 discriminator 14
	and	w3, w3, 255
	cmp	w3, 47
	cset	w3, hi
	and	w3, w3, 255
	.loc 1 98 63 is_stmt 1 discriminator 14
	cmp	w3, 0
	beq	L176
	.loc 1 98 102 discriminator 15
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L182
	.loc 1 98 102 is_stmt 0 discriminator 17
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L183
L182:
	.loc 1 98 102 discriminator 18
	mov	w1, 98
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L183:
	.loc 1 98 116 is_stmt 1 discriminator 19
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 98 116 is_stmt 0 discriminator 21
	and	w3, w3, 255
	cmp	w3, 57
	cset	w3, ls
	and	w3, w3, 255
	.loc 1 98 93 is_stmt 1 discriminator 21
	cmp	w3, 0
	beq	L176
L179:
	.loc 1 99 29
	ldr	w4, [x29, 88]
	mov	w3, 2147483647
	cmp	w4, w3
	bne	L184
	.loc 1 99 18 discriminator 1
	mov	w1, 99
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L184:
	.loc 1 99 18 is_stmt 0 discriminator 2
	ldr	w3, [x29, 88]
	add	w3, w3, 1
	str	w3, [x29, 88]
	.loc 1 100 15 is_stmt 1
	b	L185
L176:
	.loc 1 102 7
	ldr	w4, [x29, 88]
	ldr	w3, [x29, 92]
	cmp	w4, w3
	ble	L186
	.loc 1 103 37
	ldr	w3, [x29, 92]
	.loc 1 103 52
	ldr	w4, [x29, 88]
	sub	w4, w4, #1
	.loc 1 103 41
	cmp	w4, w3
	blt	L187
	.loc 1 103 41 is_stmt 0 discriminator 1
	cmp	w1, w3
	bgt	L188
	.loc 1 103 41 discriminator 4
	cmp	w0, w4
	bge	L187
L188:
	.loc 1 103 41 discriminator 5
	mov	w1, 103
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L187:
	.loc 1 103 32 is_stmt 1 discriminator 6
	cmp	w4, w3
	.loc 1 103 32 is_stmt 0 discriminator 11
	cmp	w4, w3
	blt	L192
	.loc 1 103 32 discriminator 12
	sxtw	x1, w4
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x6, x0
	mov	x7, 0
	lsr	x0, x6, 61
	lsl	x9, x7, 3
	mov	x1, x9
	add	x0, x0, x1
	mov	x9, x0
	lsl	x8, x6, 3
L192:
	.loc 1 103 32 discriminator 15
	cmp	w4, w3
	.loc 1 103 24 is_stmt 1 discriminator 19
	ldr	x1, [x29, 48]
	sxtw	x0, w3
	sub	x0, x0, x2
	add	x0, x1, x0
	mov	x12, x0
	str	w3, [x29, 64]
	str	w4, [x29, 68]
	add	x0, x29, 64
	mov	x13, x0
	mov	x0, x12
	mov	x1, x13
	bl	_system__val_int__impl__value_integer
LEHE16:
	mov	w19, w0
	.loc 1 103 10
	b	L195
L186:
	.loc 1 105 10
	ldr	w19, [x29, 40]
L195:
LBE17:
	.loc 1 110 8
	mov	w0, w19
	b	L199
L198:
	.loc 1 108 7
	cmp	x1, 1
	beq	L197
LEHB17:
	bl	__Unwind_Resume
L197:
LBB18:
	.loc 1 108 7 is_stmt 0 discriminator 1
	str	x0, [x29, 80]
	.loc 1 108 7 discriminator 2
	ldr	x0, [x29, 80]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 72]
	.loc 1 109 10 is_stmt 1
	ldr	w19, [x29, 40]
	.loc 1 108 7
	mov	x2, 0
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 80]
	bl	___gnat_end_handler_v1
	b	L195
L199:
LBE18:
	.loc 1 110 8
	ldr	x19, [sp, 16]
LEHE17:
	ldp	x29, x30, [sp], 96
LCFI14:
	ret
LFE5:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
	.align	2
LLSDA5:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT5-LLSDATTD5
LLSDATTD5:
	.byte	0x1
	.uleb128 LLSDACSE5-LLSDACSB5
LLSDACSB5:
	.uleb128 LEHB15-LFB5
	.uleb128 LEHE15-LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB16-LFB5
	.uleb128 LEHE16-LEHB16
	.uleb128 L198-LFB5
	.uleb128 0x1
	.uleb128 LEHB17-LFB5
	.uleb128 LEHE17-LEHB17
	.uleb128 0
	.uleb128 0
LLSDACSE5:
	.byte	0x1
	.byte	0
	.align	2
L_got_pcr4:
	.long	___gnat_others_value@GOT-L_got_pcr4
LLSDATT5:
	.text
	.align	2
_smc_files__get_unix_time:
LFB6:
	.loc 1 116 4
	stp	x29, x30, [sp, -32]!
LCFI15:
	mov	x29, sp
LCFI16:
	.loc 1 118 32
	mov	x3, 0
	mov	w2, 1
	mov	w1, 1
	mov	w0, 1970
	bl	_ada__calendar__time_of
	.loc 1 118 32 is_stmt 0 discriminator 1
	str	x0, [x29, 24]
	.loc 1 120 34 is_stmt 1
	bl	_ada__calendar__clock
	.loc 1 120 34 is_stmt 0 discriminator 1
	ldr	x1, [x29, 24]
	bl	_ada__calendar__Osubtract__2
	mov	x3, x0
	.loc 1 120 7 is_stmt 1 discriminator 2
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	sdiv	x2, x3, x0
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	mul	x0, x2, x0
	sub	x0, x3, x0
	cmp	x0, 0
	csneg	x4, x0, x0, ge
	mov	x1, 51712
	movk	x1, 0x3b9a, lsl 16
	cmp	x1, 0
	csneg	x1, x1, x1, ge
	lsl	x4, x4, 1
	cmp	x4, x1
	bcc	L201
	mov	x1, 51712
	movk	x1, 0x3b9a, lsl 16
	eor	x1, x3, x1
	asr	x1, x1, 63
	eor	x3, x1, 1
	sub	x3, x3, x1
	add	x2, x2, x3
L201:
	mov	x0, x2
	.loc 1 121 8
	ldp	x29, x30, [sp], 32
LCFI17:
	ret
LFE6:
	.const
	.align	3
lC31:
	.ascii "\"accel\": {"
	.align	3
lC32:
	.ascii "\"x\":"
	.align	3
lC33:
	.ascii "\"y\":"
	.align	3
lC34:
	.ascii "\"z\":"
	.text
	.align	2
	.globl _smc_files__read_sms_values
_smc_files__read_sms_values:
LFB7:
	.loc 1 127 4
	sub	sp, sp, #544
LCFI18:
	sub	sp, sp, #65536
LCFI19:
	stp	x29, x30, [sp]
LCFI20:
	mov	x29, sp
LCFI21:
	stp	x20, x21, [sp, 16]
	stp	x22, x23, [sp, 32]
	stp	x24, x25, [sp, 48]
	stp	x26, x27, [sp, 64]
LCFI22:
LBB19:
	.loc 1 133 7
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 188]
	.loc 1 133 11
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 184]
	.loc 1 133 15
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 180]
	.loc 1 135 9
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 100]
	.loc 1 135 17
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 96]
	.loc 1 135 25
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 92]
	.loc 1 135 39
	add	x0, x29, 65536
	add	x0, x0, 352
	strb	wzr, [x0, 91]
LBB20:
	.loc 1 136 7
	adrp	x0, _smc_files__earu_data_file@PAGE
	add	x4, x0, _smc_files__earu_data_file@PAGEOFF;
	adrp	x0, lC1@PAGE
	add	x5, x0, lC1@PAGEOFF;
	add	x0, x29, 440
	mov	x2, x0
	adrp	x0, lC2@PAGE
	add	x3, x0, lC2@PAGEOFF;
	mov	x0, x4
	mov	x1, x5
	bl	_smc_files__read_file_content
	mov	x1, x0
	.loc 1 136 7 is_stmt 0 discriminator 2
	mov	w0, w1
	add	x2, x29, 65536
	add	x2, x2, 352
	str	w0, [x2, 176]
	ubfx	x0, x1, 32, 8
	add	x1, x29, 65536
	add	x1, x1, 352
	strb	w0, [x1, 175]
LBE20:
	.loc 1 137 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldrb	w0, [x0, 175]
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 137 7
	cmp	w0, 0
	bne	L279
	.loc 1 141 35
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w2, [x0, 176]
	.loc 1 141 32
	cmp	w2, 0
	ble	L206
	.loc 1 141 32 is_stmt 0 discriminator 1
	cmp	w2, 65536
	ble	L206
	.loc 1 141 32 discriminator 3
	mov	w1, 141
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L206:
	.loc 1 141 21 is_stmt 1 discriminator 4
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x27, x21, 3
	mov	x0, x27
	add	x0, x1, x0
	mov	x27, x0
	lsl	x26, x20, 3
LBB21:
	.loc 1 141 14 discriminator 4
	add	x0, x29, 440
	str	x0, [x29, 80]
	mov	w0, 1
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 104]
	add	x0, x29, 65536
	add	x0, x0, 352
	str	w2, [x0, 108]
	add	x0, x29, 65536
	add	x0, x0, 456
	str	x0, [x29, 88]
	adrp	x0, lC31@PAGE
	add	x0, x0, lC31@PAGEOFF;
	str	x0, [x29, 96]
	adrp	x0, lC3@PAGE
	add	x0, x0, lC3@PAGEOFF;
	str	x0, [x29, 104]
	adrp	x5, _ada__strings__maps__identity@GOTPAGE
	ldr	x5, [x5, _ada__strings__maps__identity@GOTPAGEOFF]
	mov	w4, 0
	ldp	x2, x3, [x29, 96]
	ldp	x0, x1, [x29, 80]
	bl	_ada__strings__fixed__index__3
	.loc 1 141 14 is_stmt 0 discriminator 7
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 168]
LBE21:
	.loc 1 142 7 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 168]
	cmp	w0, 0
	ble	L280
	.loc 1 143 38
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w2, [x0, 168]
	.loc 1 143 45
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w3, [x0, 176]
	.loc 1 143 42
	cmp	w3, w2
	blt	L208
	.loc 1 143 42 is_stmt 0 discriminator 1
	cmp	w2, 0
	ble	L209
	.loc 1 143 42 discriminator 4
	cmp	w3, 65536
	ble	L208
L209:
	.loc 1 143 42 discriminator 5
	mov	w1, 143
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L208:
	.loc 1 143 29 is_stmt 1 discriminator 6
	cmp	w3, w2
	.loc 1 143 29 is_stmt 0 discriminator 11
	cmp	w3, w2
	blt	L213
	.loc 1 143 29 discriminator 12
	sxtw	x1, w3
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x24, x0
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x0, x25, 3
	str	x0, [x29, 376]
	ldr	x0, [x29, 376]
	add	x0, x1, x0
	str	x0, [x29, 376]
	lsl	x0, x24, 3
	str	x0, [x29, 368]
L213:
	.loc 1 143 29 discriminator 15
	cmp	w3, w2
LBB22:
	.loc 1 143 22 is_stmt 1 discriminator 19
	sxtw	x0, w2
	add	x1, x29, 440
	sub	x0, x0, #1
	add	x0, x1, x0
	str	x0, [x29, 112]
	add	x0, x29, 65536
	add	x0, x0, 352
	str	w2, [x0, 112]
	add	x0, x29, 65536
	add	x0, x0, 352
	str	w3, [x0, 116]
	add	x0, x29, 65536
	add	x0, x0, 464
	str	x0, [x29, 120]
	adrp	x0, lC32@PAGE
	add	x0, x0, lC32@PAGEOFF;
	str	x0, [x29, 128]
	adrp	x0, lC4@PAGE
	add	x0, x0, lC4@PAGEOFF;
	str	x0, [x29, 136]
	adrp	x5, _ada__strings__maps__identity@GOTPAGE
	ldr	x5, [x5, _ada__strings__maps__identity@GOTPAGEOFF]
	mov	w4, 0
	ldp	x2, x3, [x29, 128]
	ldp	x0, x1, [x29, 112]
	bl	_ada__strings__fixed__index__3
	.loc 1 143 22 is_stmt 0 discriminator 21
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 164]
LBE22:
	.loc 1 144 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	cmp	w0, 0
	ble	L216
	.loc 1 145 52
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w2, [x0, 176]
	.loc 1 145 49
	cmp	w2, 0
	ble	L217
	.loc 1 145 49 is_stmt 0 discriminator 1
	cmp	w2, 65536
	ble	L217
	.loc 1 145 49 discriminator 3
	mov	w1, 145
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L217:
	.loc 1 145 38 is_stmt 1 discriminator 4
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 320]
	str	xzr, [x29, 328]
	ldp	x3, x4, [x29, 320]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 424]
	ldr	x0, [x29, 424]
	add	x0, x1, x0
	str	x0, [x29, 424]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 416]
	.loc 1 145 19 discriminator 4
	add	x0, x29, 440
	str	x0, [x29, 144]
	mov	w0, 1
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 120]
	add	x0, x29, 65536
	add	x0, x0, 352
	str	w2, [x0, 124]
	add	x0, x29, 65536
	add	x0, x0, 472
	str	x0, [x29, 152]
	.loc 1 145 76 discriminator 4
	mov	w2, 0
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w1, [x0, 168]
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	adds	w0, w1, w0
	bvc	L218
	mov	w2, 1
L218:
	mov	w1, w0
	.loc 1 145 76 is_stmt 0 discriminator 6
	mov	w0, w2
	cmp	w0, 0
	beq	L220
	.loc 1 145 76 discriminator 7
	mov	w1, 145
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L220:
	.loc 1 145 76 discriminator 8
	mov	w0, w1
	sub	w1, w0, #1
	.loc 1 145 19 is_stmt 1 discriminator 11
	mov	w0, 2147483644
	cmp	w1, w0
	blt	L221
	.loc 1 145 19 is_stmt 0 discriminator 12
	mov	w1, 145
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L221:
	.loc 1 145 19 discriminator 13
	add	w0, w1, 4
	.loc 1 145 19 discriminator 16
	movi	v0.2s, #0
	mov	w2, w0
	ldp	x0, x1, [x29, 144]
	bl	_smc_files__parse_float_after
	fmov	s31, s0
	.loc 1 145 19 discriminator 18
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 188]
L216:
	.loc 1 148 38 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w3, [x0, 168]
	.loc 1 148 45
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w2, [x0, 176]
	.loc 1 148 42
	cmp	w2, w3
	blt	L222
	.loc 1 148 42 is_stmt 0 discriminator 1
	cmp	w3, 0
	ble	L223
	.loc 1 148 42 discriminator 4
	cmp	w2, 65536
	ble	L222
L223:
	.loc 1 148 42 discriminator 5
	mov	w1, 148
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L222:
	.loc 1 148 29 is_stmt 1 discriminator 6
	cmp	w2, w3
	.loc 1 148 29 is_stmt 0 discriminator 11
	cmp	w2, w3
	blt	L227
	.loc 1 148 29 discriminator 12
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 304]
	str	xzr, [x29, 312]
	ldp	x4, x5, [x29, 304]
	mov	x0, x4
	lsr	x1, x0, 61
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 360]
	ldr	x0, [x29, 360]
	add	x0, x1, x0
	str	x0, [x29, 360]
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 352]
L227:
	.loc 1 148 29 discriminator 15
	cmp	w2, w3
LBB23:
	.loc 1 148 22 is_stmt 1 discriminator 19
	sxtw	x0, w3
	add	x1, x29, 440
	sub	x0, x0, #1
	add	x0, x1, x0
	str	x0, [x29, 160]
	add	x0, x29, 65536
	add	x0, x0, 352
	str	w3, [x0, 128]
	add	x0, x29, 65536
	add	x0, x0, 352
	str	w2, [x0, 132]
	add	x0, x29, 65536
	add	x0, x0, 480
	str	x0, [x29, 168]
	adrp	x0, lC33@PAGE
	add	x0, x0, lC33@PAGEOFF;
	str	x0, [x29, 176]
	adrp	x0, lC4@PAGE
	add	x0, x0, lC4@PAGEOFF;
	str	x0, [x29, 184]
	adrp	x5, _ada__strings__maps__identity@GOTPAGE
	ldr	x5, [x5, _ada__strings__maps__identity@GOTPAGEOFF]
	mov	w4, 0
	ldp	x2, x3, [x29, 176]
	ldp	x0, x1, [x29, 160]
	bl	_ada__strings__fixed__index__3
	.loc 1 148 22 is_stmt 0 discriminator 21
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 164]
LBE23:
	.loc 1 149 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	cmp	w0, 0
	ble	L230
	.loc 1 150 52
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 176]
	.loc 1 150 49
	cmp	w0, 0
	ble	L231
	.loc 1 150 49 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L231
	.loc 1 150 49 discriminator 3
	mov	w1, 150
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L231:
	.loc 1 150 38 is_stmt 1 discriminator 4
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	str	x1, [x29, 288]
	str	xzr, [x29, 296]
	ldp	x3, x4, [x29, 288]
	mov	x1, x3
	lsr	x1, x1, 61
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 408]
	ldr	x2, [x29, 408]
	add	x1, x1, x2
	str	x1, [x29, 408]
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 400]
	.loc 1 150 19 discriminator 4
	add	x1, x29, 440
	str	x1, [x29, 192]
	mov	w1, 1
	add	x2, x29, 65536
	add	x2, x2, 352
	str	w1, [x2, 136]
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 140]
	add	x0, x29, 65536
	add	x0, x0, 488
	str	x0, [x29, 200]
	.loc 1 150 76 discriminator 4
	mov	w2, 0
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w1, [x0, 168]
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	adds	w0, w1, w0
	bvc	L232
	mov	w2, 1
L232:
	mov	w1, w0
	.loc 1 150 76 is_stmt 0 discriminator 6
	mov	w0, w2
	cmp	w0, 0
	beq	L234
	.loc 1 150 76 discriminator 7
	mov	w1, 150
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L234:
	.loc 1 150 76 discriminator 8
	mov	w0, w1
	sub	w0, w0, #1
	.loc 1 150 19 is_stmt 1 discriminator 11
	mov	w1, 2147483644
	cmp	w0, w1
	blt	L235
	.loc 1 150 19 is_stmt 0 discriminator 12
	mov	w1, 150
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L235:
	.loc 1 150 19 discriminator 13
	add	w0, w0, 4
	.loc 1 150 19 discriminator 16
	movi	v0.2s, #0
	mov	w2, w0
	ldp	x0, x1, [x29, 192]
	bl	_smc_files__parse_float_after
	fmov	s31, s0
	.loc 1 150 19 discriminator 18
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 184]
L230:
	.loc 1 153 38 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 168]
	.loc 1 153 45
	add	x1, x29, 65536
	add	x1, x1, 352
	ldr	w1, [x1, 176]
	.loc 1 153 42
	cmp	w1, w0
	blt	L236
	.loc 1 153 42 is_stmt 0 discriminator 1
	cmp	w0, 0
	ble	L237
	.loc 1 153 42 discriminator 4
	cmp	w1, 65536
	ble	L236
L237:
	.loc 1 153 42 discriminator 5
	mov	w1, 153
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L236:
	.loc 1 153 29 is_stmt 1 discriminator 6
	cmp	w1, w0
	.loc 1 153 29 is_stmt 0 discriminator 11
	cmp	w1, w0
	blt	L241
	.loc 1 153 29 discriminator 12
	sxtw	x3, w1
	sxtw	x2, w0
	sub	x2, x3, x2
	add	x2, x2, 1
	str	x2, [x29, 272]
	str	xzr, [x29, 280]
	ldp	x4, x5, [x29, 272]
	mov	x2, x4
	lsr	x2, x2, 61
	mov	x3, x5
	lsl	x3, x3, 3
	str	x3, [x29, 344]
	ldr	x3, [x29, 344]
	add	x2, x2, x3
	str	x2, [x29, 344]
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 336]
L241:
	.loc 1 153 29 discriminator 15
	cmp	w1, w0
LBB24:
	.loc 1 153 22 is_stmt 1 discriminator 19
	sxtw	x2, w0
	add	x3, x29, 440
	sub	x2, x2, #1
	add	x2, x3, x2
	str	x2, [x29, 208]
	add	x2, x29, 65536
	add	x2, x2, 352
	str	w0, [x2, 144]
	add	x0, x29, 65536
	add	x0, x0, 352
	str	w1, [x0, 148]
	add	x0, x29, 65536
	add	x0, x0, 496
	str	x0, [x29, 216]
	adrp	x0, lC34@PAGE
	add	x0, x0, lC34@PAGEOFF;
	str	x0, [x29, 224]
	adrp	x0, lC4@PAGE
	add	x0, x0, lC4@PAGEOFF;
	str	x0, [x29, 232]
	adrp	x5, _ada__strings__maps__identity@GOTPAGE
	ldr	x5, [x5, _ada__strings__maps__identity@GOTPAGEOFF]
	mov	w4, 0
	ldp	x2, x3, [x29, 224]
	ldp	x0, x1, [x29, 208]
	bl	_ada__strings__fixed__index__3
	.loc 1 153 22 is_stmt 0 discriminator 21
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 164]
LBE24:
	.loc 1 154 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	cmp	w0, 0
	ble	L244
	.loc 1 155 52
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 176]
	.loc 1 155 49
	cmp	w0, 0
	ble	L245
	.loc 1 155 49 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L245
	.loc 1 155 49 discriminator 3
	mov	w1, 155
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L245:
	.loc 1 155 38 is_stmt 1 discriminator 4
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	str	x1, [x29, 256]
	str	xzr, [x29, 264]
	ldp	x3, x4, [x29, 256]
	mov	x1, x3
	lsr	x1, x1, 61
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 392]
	ldr	x2, [x29, 392]
	add	x1, x1, x2
	str	x1, [x29, 392]
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 384]
	.loc 1 155 19 discriminator 4
	add	x1, x29, 440
	str	x1, [x29, 240]
	mov	w1, 1
	add	x2, x29, 65536
	add	x2, x2, 352
	str	w1, [x2, 152]
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 156]
	add	x0, x29, 65536
	add	x0, x0, 504
	str	x0, [x29, 248]
	.loc 1 155 76 discriminator 4
	mov	w2, 0
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w1, [x0, 168]
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	adds	w0, w1, w0
	bvc	L246
	mov	w2, 1
L246:
	mov	w1, w0
	.loc 1 155 76 is_stmt 0 discriminator 6
	mov	w0, w2
	cmp	w0, 0
	beq	L248
	.loc 1 155 76 discriminator 7
	mov	w1, 155
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L248:
	.loc 1 155 76 discriminator 8
	mov	w0, w1
	sub	w0, w0, #1
	.loc 1 155 19 is_stmt 1 discriminator 11
	mov	w1, 2147483644
	cmp	w0, w1
	blt	L249
	.loc 1 155 19 is_stmt 0 discriminator 12
	mov	w1, 155
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L249:
	.loc 1 155 19 discriminator 13
	add	w0, w0, 4
	.loc 1 155 19 discriminator 16
	movi	v0.2s, #0
	mov	w2, w0
	ldp	x0, x1, [x29, 240]
	bl	_smc_files__parse_float_after
	fmov	s31, s0
	.loc 1 155 19 discriminator 18
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 180]
L244:
	.loc 1 158 27 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 188]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0xcf, lsl 24
	fcmp	s30, s31
	blt	L250
	.loc 1 158 27 is_stmt 0 discriminator 2
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 188]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0x4f, lsl 24
	fcmp	s30, s31
	bpl	L250
	b	L273
L250:
	.loc 1 158 27 discriminator 3
	mov	w1, 158
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L273:
	.loc 1 158 27 discriminator 4
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 188]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s31, s31, s30
	.loc 1 158 15 is_stmt 1 discriminator 4
	fcmpe	s31, #0.0
	bge	L270
	b	L274
L270:
	.loc 1 158 27 discriminator 6
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 188]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 158 15 discriminator 6
	mvni	v31.2s, 0xc1, lsl 24
	fadd	s31, s30, s31
	fcvtzs	s31, s31
	b	L255
L274:
	.loc 1 158 27 discriminator 7
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 188]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 158 15 discriminator 7
	mvni	v31.2s, 0xc1, lsl 24
	fsub	s31, s30, s31
	fcvtzs	s31, s31
L255:
	.loc 1 158 12 discriminator 9
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 100]
	.loc 1 159 27
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 184]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0xcf, lsl 24
	fcmp	s30, s31
	blt	L256
	.loc 1 159 27 is_stmt 0 discriminator 2
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 184]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0x4f, lsl 24
	fcmp	s30, s31
	bpl	L256
	b	L275
L256:
	.loc 1 159 27 discriminator 3
	mov	w1, 159
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L275:
	.loc 1 159 27 discriminator 4
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 184]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s31, s31, s30
	.loc 1 159 15 is_stmt 1 discriminator 4
	fcmpe	s31, #0.0
	bge	L271
	b	L276
L271:
	.loc 1 159 27 discriminator 6
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 184]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 159 15 discriminator 6
	mvni	v31.2s, 0xc1, lsl 24
	fadd	s31, s30, s31
	fcvtzs	s31, s31
	b	L261
L276:
	.loc 1 159 27 discriminator 7
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 184]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 159 15 discriminator 7
	mvni	v31.2s, 0xc1, lsl 24
	fsub	s31, s30, s31
	fcvtzs	s31, s31
L261:
	.loc 1 159 12 discriminator 9
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 96]
	.loc 1 160 27
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 180]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0xcf, lsl 24
	fcmp	s30, s31
	blt	L262
	.loc 1 160 27 is_stmt 0 discriminator 2
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 180]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0x4f, lsl 24
	fcmp	s30, s31
	bpl	L262
	b	L277
L262:
	.loc 1 160 27 discriminator 3
	mov	w1, 160
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L277:
	.loc 1 160 27 discriminator 4
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 180]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s31, s31, s30
	.loc 1 160 15 is_stmt 1 discriminator 4
	fcmpe	s31, #0.0
	bge	L272
	b	L278
L272:
	.loc 1 160 27 discriminator 6
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 180]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 160 15 discriminator 6
	mvni	v31.2s, 0xc1, lsl 24
	fadd	s31, s30, s31
	fcvtzs	s31, s31
	b	L267
L278:
	.loc 1 160 27 discriminator 7
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 180]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 160 15 discriminator 7
	mvni	v31.2s, 0xc1, lsl 24
	fsub	s31, s30, s31
	fcvtzs	s31, s31
L267:
	.loc 1 160 12 discriminator 9
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 92]
	.loc 1 161 18
	mov	w0, 1
	add	x1, x29, 65536
	add	x1, x1, 352
	strb	w0, [x1, 91]
	.loc 1 163 8
	b	L280
L279:
	.loc 1 138 10
	nop
	b	L268
L280:
	.loc 1 163 8
	nop
L268:
LBE19:
	.loc 1 163 8 is_stmt 0 discriminator 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 100]
	bfi	x22, x0, 0, 32
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 96]
	bfi	x22, x0, 32, 32
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 92]
	bfi	x23, x0, 0, 32
	add	x0, x29, 65536
	add	x0, x0, 352
	ldrb	w0, [x0, 91]
	bfi	x23, x0, 32, 8
	.loc 1 163 8 discriminator 3
	mov	x0, x22
	mov	x1, x23
	.loc 1 163 8
	ldp	x29, x30, [sp]
	ldp	x20, x21, [sp, 16]
	ldp	x22, x23, [sp, 32]
	ldp	x24, x25, [sp, 48]
	ldp	x26, x27, [sp, 64]
LCFI23:
	add	sp, sp, 544
LCFI24:
	add	sp, sp, 65536
LCFI25:
	ret
LFE7:
	.const
	.align	2
lC1:
	.word	1
	.word	58
	.align	2
lC2:
	.word	1
	.word	65536
	.align	2
lC3:
	.word	1
	.word	10
	.align	2
lC4:
	.word	1
	.word	4
	.text
	.const
	.align	3
lC35:
	.ascii "\"load_avg\": ["
	.align	3
lC36:
	.ascii ","
	.text
	.align	2
	.globl _smc_files__check_load_avg_status
_smc_files__check_load_avg_status:
LFB8:
	.loc 1 169 4 is_stmt 1
	sub	sp, sp, #448
LCFI26:
	sub	sp, sp, #65536
LCFI27:
	stp	x29, x30, [sp]
LCFI28:
	mov	x29, sp
LCFI29:
	stp	x20, x21, [sp, 16]
	stp	x22, x23, [sp, 32]
	stp	x24, x25, [sp, 48]
	stp	x26, x27, [sp, 64]
LCFI30:
LBB25:
	.loc 1 175 7
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 164]
	.loc 1 175 11
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 172]
	.loc 1 175 15
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 168]
	.loc 1 177 16
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 84]
	.loc 1 177 31
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 80]
LBB26:
	.loc 1 178 7
	adrp	x0, _smc_files__earu_data_file@PAGE
	add	x4, x0, _smc_files__earu_data_file@PAGEOFF;
	adrp	x0, lC1@PAGE
	add	x5, x0, lC1@PAGEOFF;
	add	x0, x29, 352
	mov	x2, x0
	adrp	x0, lC2@PAGE
	add	x3, x0, lC2@PAGEOFF;
	mov	x0, x4
	mov	x1, x5
	bl	_smc_files__read_file_content
	mov	x1, x0
	.loc 1 178 7 is_stmt 0 discriminator 2
	mov	w0, w1
	add	x2, x29, 65536
	add	x2, x2, 272
	str	w0, [x2, 160]
	ubfx	x0, x1, 32, 8
	add	x1, x29, 65536
	add	x1, x1, 272
	strb	w0, [x1, 159]
LBE26:
	.loc 1 179 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldrb	w0, [x0, 159]
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 179 7
	cmp	w0, 0
	bne	L335
	.loc 1 183 35
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w2, [x0, 160]
	.loc 1 183 32
	cmp	w2, 0
	ble	L284
	.loc 1 183 32 is_stmt 0 discriminator 1
	cmp	w2, 65536
	ble	L284
	.loc 1 183 32 discriminator 3
	mov	w1, 183
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L284:
	.loc 1 183 21 is_stmt 1 discriminator 4
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x25, x21, 3
	mov	x0, x25
	add	x0, x1, x0
	mov	x25, x0
	lsl	x24, x20, 3
LBB27:
	.loc 1 183 14 discriminator 4
	add	x0, x29, 352
	str	x0, [x29, 80]
	mov	w0, 1
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 88]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	w2, [x0, 92]
	add	x0, x29, 65536
	add	x0, x0, 360
	str	x0, [x29, 88]
	adrp	x0, lC35@PAGE
	add	x0, x0, lC35@PAGEOFF;
	str	x0, [x29, 96]
	adrp	x0, lC5@PAGE
	add	x0, x0, lC5@PAGEOFF;
	str	x0, [x29, 104]
	adrp	x5, _ada__strings__maps__identity@GOTPAGE
	ldr	x5, [x5, _ada__strings__maps__identity@GOTPAGEOFF]
	mov	w4, 0
	ldp	x2, x3, [x29, 96]
	ldp	x0, x1, [x29, 80]
	bl	_ada__strings__fixed__index__3
	.loc 1 183 14 is_stmt 0 discriminator 7
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 152]
LBE27:
	.loc 1 184 7 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 152]
	cmp	w0, 0
	ble	L336
	.loc 1 185 21
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w1, [x0, 152]
	mov	w0, 65522
	movk	w0, 0x7fff, lsl 16
	cmp	w1, w0
	ble	L286
	.loc 1 185 14 discriminator 1
	mov	w1, 185
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L286:
	.loc 1 185 14 is_stmt 0 discriminator 2
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 152]
	add	w0, w0, 13
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 152]
	.loc 1 186 49 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w2, [x0, 160]
	.loc 1 186 46
	cmp	w2, 0
	ble	L287
	.loc 1 186 46 is_stmt 0 discriminator 1
	cmp	w2, 65536
	ble	L287
	.loc 1 186 46 discriminator 3
	mov	w1, 186
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L287:
	.loc 1 186 35 is_stmt 1 discriminator 4
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	mov	x22, x0
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x0, x23, 3
	str	x0, [x29, 344]
	ldr	x0, [x29, 344]
	add	x0, x1, x0
	str	x0, [x29, 344]
	lsl	x0, x22, 3
	str	x0, [x29, 336]
	.loc 1 186 58 discriminator 4
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 152]
	cmp	w0, 0
	bgt	L288
	.loc 1 186 58 is_stmt 0 discriminator 6
	mov	w1, 186
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L288:
	.loc 1 186 16 is_stmt 1 discriminator 7
	add	x0, x29, 352
	str	x0, [x29, 112]
	mov	w0, 1
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 96]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	w2, [x0, 100]
	add	x0, x29, 65536
	add	x0, x0, 368
	str	x0, [x29, 120]
	movi	v0.2s, #0
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w2, [x0, 152]
	ldp	x0, x1, [x29, 112]
	bl	_smc_files__parse_float_after
	fmov	s31, s0
	.loc 1 186 16 is_stmt 0 discriminator 10
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 164]
	.loc 1 188 39 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w2, [x0, 152]
	.loc 1 188 46
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w3, [x0, 160]
	.loc 1 188 43
	cmp	w3, w2
	blt	L289
	.loc 1 188 43 is_stmt 0 discriminator 1
	cmp	w2, 0
	ble	L290
	.loc 1 188 43 discriminator 4
	cmp	w3, 65536
	ble	L289
L290:
	.loc 1 188 43 discriminator 5
	mov	w1, 188
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L289:
	.loc 1 188 30 is_stmt 1 discriminator 6
	cmp	w3, w2
	.loc 1 188 30 is_stmt 0 discriminator 11
	cmp	w3, w2
	blt	L294
	.loc 1 188 30 discriminator 12
	sxtw	x1, w3
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x26, x0
	mov	x27, 0
	lsr	x1, x26, 61
	lsl	x0, x27, 3
	str	x0, [x29, 296]
	ldr	x0, [x29, 296]
	add	x0, x1, x0
	str	x0, [x29, 296]
	lsl	x0, x26, 3
	str	x0, [x29, 288]
L294:
	.loc 1 188 30 discriminator 15
	cmp	w3, w2
LBB28:
	.loc 1 188 23 is_stmt 1 discriminator 19
	sxtw	x0, w2
	add	x1, x29, 352
	sub	x0, x0, #1
	add	x0, x1, x0
	str	x0, [x29, 128]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	w2, [x0, 104]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	w3, [x0, 108]
	add	x0, x29, 65536
	add	x0, x0, 376
	str	x0, [x29, 136]
	adrp	x0, lC36@PAGE
	add	x0, x0, lC36@PAGEOFF;
	str	x0, [x29, 144]
	adrp	x0, lC6@PAGE
	add	x0, x0, lC6@PAGEOFF;
	str	x0, [x29, 152]
	adrp	x5, _ada__strings__maps__identity@GOTPAGE
	ldr	x5, [x5, _ada__strings__maps__identity@GOTPAGEOFF]
	mov	w4, 0
	ldp	x2, x3, [x29, 144]
	ldp	x0, x1, [x29, 128]
	bl	_ada__strings__fixed__index__3
	.loc 1 188 23 is_stmt 0 discriminator 21
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 148]
LBE28:
	.loc 1 189 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 148]
	cmp	w0, 0
	ble	L297
	.loc 1 190 52
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 160]
	.loc 1 190 49
	cmp	w0, 0
	ble	L298
	.loc 1 190 49 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L298
	.loc 1 190 49 discriminator 3
	mov	w1, 190
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L298:
	.loc 1 190 38 is_stmt 1 discriminator 4
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	str	x1, [x29, 256]
	str	xzr, [x29, 264]
	ldp	x3, x4, [x29, 256]
	mov	x1, x3
	lsr	x1, x1, 61
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 328]
	ldr	x2, [x29, 328]
	add	x1, x1, x2
	str	x1, [x29, 328]
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 320]
	.loc 1 190 65 discriminator 4
	mov	w3, 0
	add	x1, x29, 65536
	add	x1, x1, 272
	ldr	w2, [x1, 152]
	add	x1, x29, 65536
	add	x1, x1, 272
	ldr	w1, [x1, 148]
	adds	w1, w2, w1
	bvc	L299
	mov	w3, 1
L299:
	mov	w2, w1
	.loc 1 190 65 is_stmt 0 discriminator 6
	mov	w1, w3
	cmp	w1, 0
	beq	L301
	.loc 1 190 65 discriminator 7
	mov	w1, 190
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L301:
	.loc 1 190 65 discriminator 8
	mov	w1, w2
	.loc 1 190 65 discriminator 11
	cmp	w1, 0
	bgt	L302
	.loc 1 190 65 discriminator 12
	mov	w1, 190
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L302:
	.loc 1 190 19 is_stmt 1 discriminator 13
	add	x2, x29, 352
	str	x2, [x29, 160]
	mov	w2, 1
	add	x3, x29, 65536
	add	x3, x3, 272
	str	w2, [x3, 112]
	add	x2, x29, 65536
	add	x2, x2, 272
	str	w0, [x2, 116]
	add	x0, x29, 65536
	add	x0, x0, 384
	str	x0, [x29, 168]
	movi	v0.2s, #0
	mov	w2, w1
	ldp	x0, x1, [x29, 160]
	bl	_smc_files__parse_float_after
	fmov	s31, s0
	.loc 1 190 19 is_stmt 0 discriminator 16
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 172]
	.loc 1 191 46 is_stmt 1
	mov	w2, 0
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w1, [x0, 152]
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 148]
	adds	w0, w1, w0
	bvc	L303
	mov	w2, 1
L303:
	mov	w1, w0
	.loc 1 191 46 is_stmt 0 discriminator 1
	mov	w0, w2
	cmp	w0, 0
	beq	L305
	.loc 1 191 46 discriminator 2
	mov	w1, 191
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L305:
	.loc 1 191 61 is_stmt 1 discriminator 6
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 160]
	.loc 1 191 58 discriminator 6
	cmp	w0, w1
	blt	L306
	.loc 1 191 58 is_stmt 0 discriminator 7
	cmp	w1, 0
	ble	L307
	.loc 1 191 58 discriminator 10
	cmp	w0, 65536
	ble	L306
L307:
	.loc 1 191 58 discriminator 11
	mov	w1, 191
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L306:
	.loc 1 191 33 is_stmt 1 discriminator 12
	cmp	w0, w1
	.loc 1 191 33 is_stmt 0 discriminator 17
	cmp	w0, w1
	blt	L311
	.loc 1 191 33 discriminator 18
	sxtw	x3, w0
	sxtw	x2, w1
	sub	x2, x3, x2
	add	x2, x2, 1
	str	x2, [x29, 240]
	str	xzr, [x29, 248]
	ldp	x4, x5, [x29, 240]
	mov	x2, x4
	lsr	x2, x2, 61
	mov	x3, x5
	lsl	x3, x3, 3
	str	x3, [x29, 280]
	ldr	x3, [x29, 280]
	add	x2, x2, x3
	str	x2, [x29, 280]
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 272]
L311:
	.loc 1 191 33 discriminator 21
	cmp	w0, w1
LBB29:
	.loc 1 191 26 is_stmt 1 discriminator 25
	sxtw	x2, w1
	add	x3, x29, 352
	sub	x2, x2, #1
	add	x2, x3, x2
	str	x2, [x29, 176]
	add	x2, x29, 65536
	add	x2, x2, 272
	str	w1, [x2, 120]
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 124]
	add	x0, x29, 65536
	add	x0, x0, 392
	str	x0, [x29, 184]
	adrp	x0, lC36@PAGE
	add	x0, x0, lC36@PAGEOFF;
	str	x0, [x29, 192]
	adrp	x0, lC6@PAGE
	add	x0, x0, lC6@PAGEOFF;
	str	x0, [x29, 200]
	adrp	x5, _ada__strings__maps__identity@GOTPAGE
	ldr	x5, [x5, _ada__strings__maps__identity@GOTPAGEOFF]
	mov	w4, 0
	ldp	x2, x3, [x29, 192]
	ldp	x0, x1, [x29, 176]
	bl	_ada__strings__fixed__index__3
	.loc 1 191 26 is_stmt 0 discriminator 27
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 148]
LBE29:
	.loc 1 192 13 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 148]
	cmp	w0, 0
	ble	L297
	.loc 1 193 55
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 160]
	.loc 1 193 52
	cmp	w0, 0
	ble	L314
	.loc 1 193 52 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L314
	.loc 1 193 52 discriminator 3
	mov	w1, 193
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L314:
	.loc 1 193 41 is_stmt 1 discriminator 4
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	str	x1, [x29, 224]
	str	xzr, [x29, 232]
	ldp	x3, x4, [x29, 224]
	mov	x1, x3
	lsr	x1, x1, 61
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 312]
	ldr	x2, [x29, 312]
	add	x1, x1, x2
	str	x1, [x29, 312]
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 304]
	.loc 1 193 68 discriminator 4
	mov	w3, 0
	add	x1, x29, 65536
	add	x1, x1, 272
	ldr	w2, [x1, 152]
	add	x1, x29, 65536
	add	x1, x1, 272
	ldr	w1, [x1, 148]
	adds	w1, w2, w1
	bvc	L315
	mov	w3, 1
L315:
	mov	w2, w1
	.loc 1 193 68 is_stmt 0 discriminator 6
	mov	w1, w3
	cmp	w1, 0
	beq	L317
	.loc 1 193 68 discriminator 7
	mov	w1, 193
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L317:
	.loc 1 193 68 discriminator 8
	mov	w1, w2
	.loc 1 193 68 discriminator 11
	cmp	w1, 0
	bgt	L318
	.loc 1 193 68 discriminator 12
	mov	w1, 193
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L318:
	.loc 1 193 22 is_stmt 1 discriminator 13
	add	x2, x29, 352
	str	x2, [x29, 208]
	mov	w2, 1
	add	x3, x29, 65536
	add	x3, x3, 272
	str	w2, [x3, 128]
	add	x2, x29, 65536
	add	x2, x2, 272
	str	w0, [x2, 132]
	add	x0, x29, 65536
	add	x0, x0, 400
	str	x0, [x29, 216]
	movi	v0.2s, #0
	mov	w2, w1
	ldp	x0, x1, [x29, 208]
	bl	_smc_files__parse_float_after
	fmov	s31, s0
	.loc 1 193 22 is_stmt 0 discriminator 16
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 168]
L297:
	.loc 1 197 19 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 164]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 84]
	.loc 1 198 16
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 84]
	.loc 1 198 10
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s30, [x0, 172]
	fcmpe	s30, s31
	bgt	L329
	b	L319
L329:
	.loc 1 198 41 discriminator 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 172]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 84]
L319:
	.loc 1 199 16
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 84]
	.loc 1 199 10
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s30, [x0, 168]
	fcmpe	s30, s31
	bgt	L330
	b	L321
L330:
	.loc 1 199 41 discriminator 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 168]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 84]
L321:
	.loc 1 201 22
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 84]
	.loc 1 201 10
	mov	w0, 1120403456
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L331
	b	L333
L331:
	.loc 1 202 20
	mov	w0, 2
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 80]
	.loc 1 209 8
	b	L336
L333:
	.loc 1 203 25
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 84]
	.loc 1 203 10
	mov	w0, 1112014848
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L332
	b	L334
L332:
	.loc 1 204 20
	mov	w0, 1
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 80]
	.loc 1 209 8
	b	L336
L334:
	.loc 1 206 20
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 80]
	.loc 1 209 8
	b	L336
L335:
	.loc 1 180 10
	nop
	b	L327
L336:
	.loc 1 209 8
	nop
L327:
LBE25:
	.loc 1 209 8 is_stmt 0 discriminator 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 84]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 136]
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 80]
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 140]
	.loc 1 209 8 discriminator 3
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	x0, [x0, 136]
	.loc 1 209 8
	ldp	x29, x30, [sp]
	ldp	x20, x21, [sp, 16]
	ldp	x22, x23, [sp, 32]
	ldp	x24, x25, [sp, 48]
	ldp	x26, x27, [sp, 64]
LCFI31:
	add	sp, sp, 448
LCFI32:
	add	sp, sp, 65536
LCFI33:
	ret
LFE8:
	.const
	.align	2
lC5:
	.word	1
	.word	13
	.align	2
lC6:
	.word	1
	.word	1
	.text
	.const
	.align	3
lC37:
	.ascii "\"battery_percent\":"
	.text
	.align	2
	.globl _smc_files__get_battery_percent
_smc_files__get_battery_percent:
LFB9:
	.loc 1 215 4 is_stmt 1
	sub	sp, sp, #160
LCFI34:
	sub	sp, sp, #65536
LCFI35:
	stp	x29, x30, [sp]
LCFI36:
	mov	x29, sp
LCFI37:
	stp	x20, x21, [sp, 16]
	stp	x22, x23, [sp, 32]
	stp	x24, x25, [sp, 48]
	stp	x26, x27, [sp, 64]
LCFI38:
LBB30:
	.loc 1 222 7
	adrp	x4, _smc_files__earu_data_file@PAGE
	add	x0, x4, _smc_files__earu_data_file@PAGEOFF;
	adrp	x4, lC1@PAGE
	add	x1, x4, lC1@PAGEOFF;
	add	x4, x29, 128
	mov	x2, x4
	adrp	x4, lC2@PAGE
	add	x3, x4, lC2@PAGEOFF;
	bl	_smc_files__read_file_content
	.loc 1 222 7 is_stmt 0 discriminator 2
	mov	w1, w0
	add	x2, x29, 65536
	add	x2, x2, 48
	str	w1, [x2, 108]
	ubfx	x0, x0, 32, 8
	add	x1, x29, 65536
	add	x1, x1, 48
	strb	w0, [x1, 107]
LBE30:
	.loc 1 223 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 48
	ldrb	w0, [x0, 107]
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 223 7
	cmp	w0, 0
	beq	L338
	.loc 1 224 10
	mov	w0, 100
	b	L344
L338:
	.loc 1 227 35
	add	x0, x29, 65536
	add	x0, x0, 48
	ldr	w0, [x0, 108]
	.loc 1 227 32
	cmp	w0, 0
	ble	L340
	.loc 1 227 32 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L340
	.loc 1 227 32 discriminator 3
	mov	w1, 227
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L340:
	.loc 1 227 21 is_stmt 1 discriminator 4
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	mov	x22, x1
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x27, x23, 3
	mov	x2, x27
	add	x1, x1, x2
	mov	x27, x1
	lsl	x26, x22, 3
LBB31:
	.loc 1 227 14 discriminator 4
	add	x1, x29, 128
	str	x1, [x29, 80]
	mov	w1, 1
	add	x2, x29, 65536
	add	x2, x2, 48
	str	w1, [x2, 80]
	add	x1, x29, 65536
	add	x1, x1, 48
	str	w0, [x1, 84]
	add	x0, x29, 65536
	add	x0, x0, 128
	str	x0, [x29, 88]
	adrp	x0, lC37@PAGE
	add	x0, x0, lC37@PAGEOFF;
	str	x0, [x29, 96]
	adrp	x0, lC7@PAGE
	add	x0, x0, lC7@PAGEOFF;
	str	x0, [x29, 104]
	adrp	x5, _ada__strings__maps__identity@GOTPAGE
	ldr	x5, [x5, _ada__strings__maps__identity@GOTPAGEOFF]
	mov	w4, 0
	ldp	x2, x3, [x29, 96]
	ldp	x0, x1, [x29, 80]
	bl	_ada__strings__fixed__index__3
	.loc 1 227 14 is_stmt 0 discriminator 7
	add	x1, x29, 65536
	add	x1, x1, 48
	str	w0, [x1, 100]
LBE31:
	.loc 1 228 7 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 48
	ldr	w0, [x0, 100]
	cmp	w0, 0
	ble	L341
	.loc 1 229 48
	add	x0, x29, 65536
	add	x0, x0, 48
	ldr	w0, [x0, 108]
	.loc 1 229 45
	cmp	w0, 0
	ble	L342
	.loc 1 229 45 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L342
	.loc 1 229 45 discriminator 3
	mov	w1, 229
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L342:
	.loc 1 229 34 is_stmt 1 discriminator 4
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	mov	x20, x1
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x25, x21, 3
	mov	x2, x25
	add	x1, x1, x2
	mov	x25, x1
	lsl	x24, x20, 3
	.loc 1 229 17 discriminator 4
	add	x1, x29, 128
	str	x1, [x29, 112]
	mov	w1, 1
	add	x2, x29, 65536
	add	x2, x2, 48
	str	w1, [x2, 88]
	add	x1, x29, 65536
	add	x1, x1, 48
	str	w0, [x1, 92]
	add	x0, x29, 65536
	add	x0, x0, 136
	str	x0, [x29, 120]
	add	x0, x29, 65536
	add	x0, x0, 48
	ldr	w1, [x0, 100]
	mov	w0, 65517
	movk	w0, 0x7fff, lsl 16
	cmp	w1, w0
	ble	L343
	.loc 1 229 17 is_stmt 0 discriminator 6
	mov	w1, 229
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L343:
	.loc 1 229 17 discriminator 7
	add	x0, x29, 65536
	add	x0, x0, 48
	ldr	w0, [x0, 100]
	add	w0, w0, 18
	.loc 1 229 17 discriminator 10
	mov	w3, 100
	mov	w2, w0
	ldp	x0, x1, [x29, 112]
	bl	_smc_files__parse_int_after
	.loc 1 229 10 is_stmt 1
	b	L344
L341:
	.loc 1 231 10
	mov	w0, 100
L344:
	.loc 1 233 8
	ldp	x29, x30, [sp]
	ldp	x20, x21, [sp, 16]
	ldp	x22, x23, [sp, 32]
	ldp	x24, x25, [sp, 48]
	ldp	x26, x27, [sp, 64]
LCFI39:
	add	sp, sp, 160
LCFI40:
	add	sp, sp, 65536
LCFI41:
	ret
LFE9:
	.const
	.align	2
lC7:
	.word	1
	.word	18
	.text
	.align	2
_smc_files__log_telemetry_csv__B_10__B144b___finalizer.1:
LFB11:
	stp	x29, x30, [sp, -32]!
LCFI42:
	mov	x29, sp
LCFI43:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI44:
	ret
LFE11:
	.const
	.align	3
lC38:
	.ascii "/usr/local/smcSystemDemandNow/telemetry_old.csv"
	.align	3
lC39:
	.ascii "Day,Time,TCMZ_Temp,GPU_Temp,Battery_Temp,Power,Manual_Takeover,Overdrive,Temp_Gradient,RPM_Gradient"
	.text
	.align	2
	.globl _smc_files__log_telemetry_csv
_smc_files__log_telemetry_csv:
LFB10:
	.loc 1 239 4
	sub	sp, sp, #2016
LCFI45:
	stp	x29, x30, [sp]
LCFI46:
	mov	x29, sp
LCFI47:
LEHB18:
LEHE18:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI48:
	add	x7, x29, 1536
	stp	x0, x1, [x7, 144]
	add	x0, x29, 1536
	stp	x2, x3, [x0, 128]
	str	s0, [x29, 1660]
	str	s1, [x29, 1656]
	str	w4, [x29, 1652]
	str	s2, [x29, 1648]
	str	w5, [x29, 1644]
	str	w6, [x29, 1640]
	str	s3, [x29, 1636]
	str	s4, [x29, 1632]
	.loc 1 239 4
	add	x0, x29, 2016
	.loc 1 239 4 is_stmt 0 discriminator 1
	str	x0, [x29, 1856]
	ldr	x0, [x29, 1672]
	ldr	w3, [x0]
	ldr	x0, [x29, 1672]
	ldr	w2, [x0, 4]
	cmp	w2, w3
	blt	L348
	.loc 1 239 4 discriminator 2
	sub	w0, w2, w3
	add	w0, w0, 1
	str	w0, [x29, 1352]
	b	L349
L348:
	.loc 1 239 4 discriminator 3
	str	wzr, [x29, 1352]
L349:
	.loc 1 239 4 discriminator 5
	ldr	x0, [x29, 1688]
	ldr	w1, [x0]
	str	w1, [x29, 1356]
	ldr	x0, [x29, 1688]
	ldr	w4, [x0, 4]
	mov	w0, w1
	cmp	w4, w0
	blt	L350
	.loc 1 239 4 discriminator 6
	mov	w0, w1
	sub	w0, w4, w0
	add	w28, w0, 1
	b	L351
L350:
	.loc 1 239 4 discriminator 7
	mov	w28, 0
L351:
LBB32:
	.loc 1 239 4 discriminator 9
	cmp	w2, w3
	.loc 1 239 4 discriminator 13
	cmp	w2, w3
	blt	L355
	.loc 1 239 4 discriminator 14
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x8, x0
	mov	x9, 0
	lsr	x1, x8, 61
	lsl	x13, x9, 3
	mov	x0, x13
	add	x0, x1, x0
	mov	x13, x0
	lsl	x12, x8, 3
L355:
	.loc 1 239 4 discriminator 17
	cmp	w2, w3
	.loc 1 239 4 discriminator 21
	ldr	w0, [x29, 1356]
	cmp	w4, w0
	.loc 1 239 4 discriminator 25
	cmp	w4, w0
	blt	L361
	.loc 1 239 4 discriminator 26
	sxtw	x1, w4
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x10, x0
	mov	x11, 0
	lsr	x1, x10, 61
	lsl	x15, x11, 3
	mov	x0, x15
	add	x0, x1, x0
	mov	x15, x0
	lsl	x14, x10, 3
L361:
	.loc 1 239 4 discriminator 29
	ldr	w0, [x29, 1356]
	cmp	w4, w0
	.loc 1 254 7 is_stmt 1
	str	xzr, [x29, 1824]
	.loc 1 255 7
	strb	wzr, [x29, 2015]
LBB33:
	.loc 1 258 13
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x16, x0, _smc_files__telemetry_csv@PAGEOFF;
	adrp	x0, lC8@PAGE
	add	x17, x0, lC8@PAGEOFF;
	mov	x0, x16
	mov	x1, x17
LEHB19:
	bl	_ada__directories__exists
	.loc 1 258 10 discriminator 2
	cmp	w0, 0
	beq	L364
	.loc 1 259 25
	mov	w0, 1
	strb	w0, [x29, 2015]
	.loc 1 260 16
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x0, x0, _smc_files__telemetry_csv@PAGEOFF;
	str	x0, [x29, 128]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 136]
	ldp	x0, x1, [x29, 128]
	bl	_ada__directories__size
	mov	x1, x0
	.loc 1 260 13 discriminator 2
	mov	x0, 26176
	movk	x0, 0x103, lsl 16
	cmp	x1, x0
	ble	L364
LBB34:
	.loc 1 261 16
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x0, x0, _smc_files__telemetry_csv@PAGEOFF;
	str	x0, [x29, 144]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 152]
	adrp	x0, lC38@PAGE
	add	x0, x0, lC38@PAGEOFF;
	str	x0, [x29, 160]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 168]
	ldp	x2, x3, [x29, 160]
	ldp	x0, x1, [x29, 144]
	bl	_ada__directories__rename
LEHE19:
LBE34:
	.loc 1 262 28
	strb	wzr, [x29, 2015]
L364:
LBE33:
LBB35:
	.loc 1 271 10
	ldrb	w0, [x29, 2015]
	cmp	w0, 0
	beq	L365
LBB36:
	.loc 1 272 13
	ldr	x6, [x29, 1824]
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x0, x0, _smc_files__telemetry_csv@PAGEOFF;
	str	x0, [x29, 176]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 184]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 192]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 200]
	ldp	x4, x5, [x29, 192]
	ldp	x2, x3, [x29, 176]
	mov	w1, 3
	mov	x0, x6
LEHB20:
	bl	_ada__text_io__open
	.loc 1 272 13 is_stmt 0 discriminator 2
	str	x0, [x29, 1824]
LBE36:
	b	L366
L365:
LBB37:
	.loc 1 274 13 is_stmt 1
	ldr	x6, [x29, 1824]
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x0, x0, _smc_files__telemetry_csv@PAGEOFF;
	str	x0, [x29, 208]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 216]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 224]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 232]
	ldp	x4, x5, [x29, 224]
	ldp	x2, x3, [x29, 208]
	mov	w1, 2
	mov	x0, x6
	bl	_ada__text_io__create
	.loc 1 274 13 is_stmt 0 discriminator 2
	str	x0, [x29, 1824]
LBE37:
LBB38:
	.loc 1 275 13 is_stmt 1
	ldr	x3, [x29, 1824]
	adrp	x0, lC39@PAGE
	add	x0, x0, lC39@PAGEOFF;
	str	x0, [x29, 240]
	adrp	x0, lC10@PAGE
	add	x0, x0, lC10@PAGEOFF;
	str	x0, [x29, 248]
	ldp	x1, x2, [x29, 240]
	mov	x0, x3
	bl	_ada__text_io__put_line
LEHE20:
L366:
LBE38:
LBB39:
	add	x0, x29, 1832
	mov	x8, x0
LEHB21:
	bl	_system__secondary_stack__ss_mark
	.loc 1 279 31
	add	x0, x29, 1808
	str	x0, [x29, 1424]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 1432]
	mov	w2, 6
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -112]
	ldr	s0, [x29, 1660]
	bl	_system__img_flt__impl__image_floating_point
	.loc 1 279 31 is_stmt 0 discriminator 2
	str	w0, [x29, 1424]
	ldr	w0, [x29, 1424]
	bic	w0, w0, w0, asr #31
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x2, x21, 3
	str	x2, [x29, 1624]
	ldr	x0, [x29, 1624]
	add	x0, x1, x0
	str	x0, [x29, 1624]
	lsl	x1, x20, 3
	str	x1, [x29, 1616]
	.loc 1 280 31 is_stmt 1
	add	x0, x29, 1792
	str	x0, [x29, 256]
	adrp	x0, lC11@PAGE
	add	x1, x0, lC11@PAGEOFF;
	str	x1, [x29, 264]
	mov	w2, 6
	ldp	x0, x1, [x29, 256]
	ldr	s0, [x29, 1656]
	bl	_system__img_flt__impl__image_floating_point
	mov	w1, w0
	.loc 1 280 31 is_stmt 0 discriminator 2
	str	w1, [x29, 1616]
	ldr	w1, [x29, 1616]
	bic	w0, w1, w1, asr #31
	sxtw	x0, w0
	mov	x22, x0
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x2, x23, 3
	str	x2, [x29, 1608]
	ldr	x0, [x29, 1608]
	add	x0, x1, x0
	str	x0, [x29, 1608]
	lsl	x2, x22, 3
	str	x2, [x29, 1600]
	.loc 1 281 33 is_stmt 1
	add	x0, x29, 1776
	str	x0, [x29, 272]
	adrp	x0, lC12@PAGE
	add	x2, x0, lC12@PAGEOFF;
	str	x2, [x29, 280]
	ldp	x1, x2, [x29, 272]
	ldr	w0, [x29, 1652]
	bl	_system__img_int__impl__image_integer
	mov	w2, w0
	.loc 1 281 33 is_stmt 0 discriminator 2
	str	w2, [x29, 1600]
	ldr	w2, [x29, 1600]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	mov	x24, x0
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x3, x25, 3
	str	x3, [x29, 1592]
	ldr	x0, [x29, 1592]
	add	x0, x1, x0
	str	x0, [x29, 1592]
	lsl	x3, x24, 3
	str	x3, [x29, 1584]
	.loc 1 282 31 is_stmt 1
	add	x0, x29, 1760
	str	x0, [x29, 288]
	adrp	x0, lC11@PAGE
	add	x3, x0, lC11@PAGEOFF;
	str	x3, [x29, 296]
	mov	w2, 6
	ldp	x0, x1, [x29, 288]
	ldr	s0, [x29, 1648]
	bl	_system__img_flt__impl__image_floating_point
	mov	w23, w0
	.loc 1 282 31 is_stmt 0 discriminator 2
	bic	w0, w23, w23, asr #31
	sxtw	x0, w0
	mov	x26, x0
	mov	x27, 0
	lsr	x1, x26, 61
	lsl	x3, x27, 3
	str	x3, [x29, 1576]
	ldr	x0, [x29, 1576]
	add	x0, x1, x0
	str	x0, [x29, 1576]
	lsl	x3, x26, 3
	str	x3, [x29, 1568]
	.loc 1 283 33 is_stmt 1
	add	x0, x29, 1744
	str	x0, [x29, 304]
	adrp	x0, lC12@PAGE
	add	x3, x0, lC12@PAGEOFF;
	str	x3, [x29, 312]
	ldp	x1, x2, [x29, 304]
	ldr	w0, [x29, 1644]
	bl	_system__img_int__impl__image_integer
	mov	w22, w0
	.loc 1 283 33 is_stmt 0 discriminator 2
	bic	w0, w22, w22, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1488]
	str	xzr, [x29, 1496]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -48]
	mov	x4, x2
	lsr	x1, x4, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 1560]
	ldr	x0, [x29, 1560]
	add	x0, x1, x0
	str	x0, [x29, 1560]
	mov	x3, x2
	lsl	x3, x3, 3
	str	x3, [x29, 1552]
	.loc 1 284 33 is_stmt 1
	add	x0, x29, 1728
	str	x0, [x29, 320]
	adrp	x0, lC12@PAGE
	add	x3, x0, lC12@PAGEOFF;
	str	x3, [x29, 328]
	ldp	x1, x2, [x29, 320]
	ldr	w0, [x29, 1640]
	bl	_system__img_int__impl__image_integer
	mov	w21, w0
	.loc 1 284 33 is_stmt 0 discriminator 2
	bic	w0, w21, w21, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1472]
	str	xzr, [x29, 1480]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -64]
	mov	x4, x2
	lsr	x1, x4, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 1544]
	ldr	x0, [x29, 1544]
	add	x0, x1, x0
	str	x0, [x29, 1544]
	mov	x3, x2
	lsl	x3, x3, 3
	str	x3, [x29, 1536]
	.loc 1 285 31 is_stmt 1
	add	x0, x29, 1712
	str	x0, [x29, 336]
	adrp	x0, lC11@PAGE
	add	x3, x0, lC11@PAGEOFF;
	str	x3, [x29, 344]
	mov	w2, 6
	ldp	x0, x1, [x29, 336]
	ldr	s0, [x29, 1636]
	bl	_system__img_flt__impl__image_floating_point
	mov	w20, w0
	.loc 1 285 31 is_stmt 0 discriminator 2
	bic	w0, w20, w20, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1456]
	str	xzr, [x29, 1464]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -80]
	mov	x4, x2
	lsr	x1, x4, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 1528]
	ldr	x0, [x29, 1528]
	add	x0, x1, x0
	str	x0, [x29, 1528]
	mov	x3, x2
	lsl	x3, x3, 3
	str	x3, [x29, 1520]
	.loc 1 286 31 is_stmt 1
	add	x0, x29, 1696
	str	x0, [x29, 352]
	adrp	x0, lC11@PAGE
	add	x3, x0, lC11@PAGEOFF;
	str	x3, [x29, 360]
	mov	w2, 6
	ldp	x0, x1, [x29, 352]
	ldr	s0, [x29, 1632]
	bl	_system__img_flt__impl__image_floating_point
	mov	w19, w0
	.loc 1 286 31 is_stmt 0 discriminator 2
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1440]
	str	xzr, [x29, 1448]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -96]
	mov	x4, x2
	lsr	x1, x4, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 1512]
	ldr	x0, [x29, 1512]
	add	x0, x1, x0
	str	x0, [x29, 1512]
	mov	x3, x2
	lsl	x3, x3, 3
	str	x3, [x29, 1504]
	.loc 1 279 20 is_stmt 1
	add	x0, x29, 1808
	str	x0, [x29, 896]
	mov	w0, 1
	str	w0, [x29, 1864]
	ldr	w0, [x29, 1424]
	str	w0, [x29, 1868]
	add	x0, x29, 1864
	str	x0, [x29, 904]
	mov	w2, 2
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -128]
	bl	_ada__strings__fixed__trim
	.loc 1 279 20 is_stmt 0 discriminator 4
	mov	x24, x0
	mov	x25, x1
	add	x0, x29, 1024
	stp	x24, x25, [x0, -128]
	.loc 1 280 20 is_stmt 1
	add	x0, x29, 1792
	str	x0, [x29, 368]
	mov	w0, 1
	str	w0, [x29, 1872]
	ldr	w1, [x29, 1616]
	str	w1, [x29, 1876]
	add	x0, x29, 1872
	str	x0, [x29, 376]
	mov	w2, 2
	ldp	x0, x1, [x29, 368]
	bl	_ada__strings__fixed__trim
	.loc 1 280 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -64]
	.loc 1 281 20 is_stmt 1
	add	x0, x29, 1776
	str	x0, [x29, 384]
	mov	w0, 1
	str	w0, [x29, 1880]
	ldr	w2, [x29, 1600]
	str	w2, [x29, 1884]
	add	x0, x29, 1880
	str	x0, [x29, 392]
	mov	w2, 2
	ldp	x0, x1, [x29, 384]
	bl	_ada__strings__fixed__trim
	.loc 1 281 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -80]
	.loc 1 282 20 is_stmt 1
	add	x0, x29, 1760
	str	x0, [x29, 400]
	mov	w0, 1
	str	w0, [x29, 1888]
	str	w23, [x29, 1892]
	add	x0, x29, 1888
	str	x0, [x29, 408]
	mov	w2, 2
	ldp	x0, x1, [x29, 400]
	bl	_ada__strings__fixed__trim
	.loc 1 282 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -96]
	.loc 1 283 20 is_stmt 1
	add	x0, x29, 1744
	str	x0, [x29, 416]
	mov	w0, 1
	str	w0, [x29, 1896]
	str	w22, [x29, 1900]
	add	x0, x29, 1896
	str	x0, [x29, 424]
	mov	w2, 2
	ldp	x0, x1, [x29, 416]
	bl	_ada__strings__fixed__trim
	.loc 1 283 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -112]
	.loc 1 284 20 is_stmt 1
	add	x0, x29, 1728
	str	x0, [x29, 1408]
	mov	w0, 1
	str	w0, [x29, 1904]
	str	w21, [x29, 1908]
	add	x0, x29, 1904
	str	x0, [x29, 1416]
	mov	w2, 2
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -128]
	bl	_ada__strings__fixed__trim
	.loc 1 284 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -128]
	.loc 1 285 20 is_stmt 1
	add	x0, x29, 1712
	str	x0, [x29, 1392]
	mov	w0, 1
	str	w0, [x29, 1912]
	str	w20, [x29, 1916]
	add	x0, x29, 1912
	str	x0, [x29, 1400]
	mov	w2, 2
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -144]
	bl	_ada__strings__fixed__trim
	.loc 1 285 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -144]
	.loc 1 286 20 is_stmt 1
	add	x0, x29, 1696
	str	x0, [x29, 1376]
	mov	w0, 1
	str	w0, [x29, 1920]
	str	w19, [x29, 1924]
	add	x0, x29, 1920
	str	x0, [x29, 1384]
	mov	w2, 2
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -160]
	bl	_ada__strings__fixed__trim
	.loc 1 286 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -160]
	.loc 1 285 79 is_stmt 1
	add	w19, w28, 1
	ldr	w0, [x29, 1352]
	add	w21, w19, w0
	add	w23, w21, 1
	mov	x0, x25
	ldr	w1, [x0, 4]
	mov	x0, x25
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L367
	.loc 1 285 79 is_stmt 0 discriminator 5
	mov	x0, x25
	ldr	w1, [x0, 4]
	mov	x0, x25
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L368
L367:
	.loc 1 285 79 discriminator 6
	mov	w0, 0
L368:
	.loc 1 285 79 discriminator 8
	add	w22, w23, w0
	add	w25, w22, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -64]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L369
	.loc 1 285 79 discriminator 9
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L370
L369:
	.loc 1 285 79 discriminator 10
	mov	w0, 0
L370:
	.loc 1 285 79 discriminator 12
	add	w24, w25, w0
	add	w27, w24, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -80]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L371
	.loc 1 285 79 discriminator 13
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L372
L371:
	.loc 1 285 79 discriminator 14
	mov	w0, 0
L372:
	.loc 1 285 79 discriminator 16
	add	w26, w27, w0
	add	w0, w26, 1
	str	w0, [x29, 1616]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -96]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L373
	.loc 1 285 79 discriminator 17
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L374
L373:
	.loc 1 285 79 discriminator 18
	mov	w0, 0
L374:
	.loc 1 285 79 discriminator 20
	ldr	w1, [x29, 1616]
	add	w0, w1, w0
	str	w0, [x29, 1536]
	add	w0, w0, 1
	str	w0, [x29, 1600]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -112]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L375
	.loc 1 285 79 discriminator 21
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L376
L375:
	.loc 1 285 79 discriminator 22
	mov	w0, 0
L376:
	.loc 1 285 79 discriminator 24
	ldr	w1, [x29, 1600]
	add	w0, w1, w0
	str	w0, [x29, 1520]
	add	w0, w0, 1
	str	w0, [x29, 1584]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -128]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L377
	.loc 1 285 79 discriminator 25
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L378
L377:
	.loc 1 285 79 discriminator 26
	mov	w0, 0
L378:
	.loc 1 285 79 discriminator 28
	ldr	w1, [x29, 1584]
	add	w0, w1, w0
	str	w0, [x29, 1504]
	add	w0, w0, 1
	str	w0, [x29, 1568]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -144]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L379
	.loc 1 285 79 discriminator 29
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L380
L379:
	.loc 1 285 79 discriminator 30
	mov	w0, 0
L380:
	.loc 1 285 79 discriminator 32
	ldr	w1, [x29, 1568]
	add	w0, w1, w0
	str	w0, [x29, 1488]
	add	w0, w0, 1
	str	w0, [x29, 1552]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -160]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L381
	.loc 1 285 79 discriminator 33
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L382
L381:
	.loc 1 285 79 discriminator 34
	mov	w0, 0
L382:
	.loc 1 285 79 discriminator 36
	ldr	w1, [x29, 1552]
	add	w0, w1, w0
	str	w0, [x29, 1352]
	cmp	w28, 0
	beq	L383
	.loc 1 285 79 discriminator 37
	ldr	w0, [x29, 1356]
	str	w0, [x29, 2008]
	b	L384
L383:
	.loc 1 285 79 discriminator 38
	mov	w0, 1
	str	w0, [x29, 2008]
L384:
	.loc 1 285 79 discriminator 40
	ldr	w0, [x29, 1352]
	sub	w1, w0, #1
	ldr	w0, [x29, 2008]
	add	w0, w0, w1
	str	w0, [x29, 1988]
	ldrsw	x0, [x29, 2008]
	str	x0, [x29, 1976]
	ldrsw	x0, [x29, 1988]
	str	x0, [x29, 1968]
	ldrsw	x1, [x29, 1988]
	ldrsw	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 880]
	str	xzr, [x29, 888]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -144]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1368]
	ldr	x0, [x29, 1368]
	add	x0, x1, x0
	str	x0, [x29, 1368]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1360]
	ldrsw	x1, [x29, 1988]
	ldrsw	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 285 79 discriminator 42
	mov	x20, x0
	str	x20, [x29, 1960]
	cmp	w28, 0
	beq	L385
	.loc 1 285 79 discriminator 43
	cmp	w28, 0
	.loc 1 285 79 discriminator 48
	cmp	w28, 0
	ble	L389
	.loc 1 285 79 discriminator 49
	sub	w0, w28, #1
	sxtw	x0, w0
	add	x0, x0, 1
	str	x0, [x29, 864]
	str	xzr, [x29, 872]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -160]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1336]
	ldr	x0, [x29, 1336]
	add	x0, x1, x0
	str	x0, [x29, 1336]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1328]
L389:
	.loc 1 285 79 discriminator 52
	cmp	w28, 0
	ble	L390
	.loc 1 285 79 discriminator 53
	sub	w0, w28, #1
	sxtw	x0, w0
	add	x4, x0, 1
	b	L391
L390:
	.loc 1 285 79 discriminator 54
	mov	x4, 0
L391:
	.loc 1 285 79 discriminator 56
	ldr	x2, [x29, 1680]
	ldrsw	x1, [x29, 2008]
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
L385:
	.loc 1 285 79 discriminator 58
	cmp	w19, w28
	.loc 1 285 79 discriminator 62
	cmp	w19, w28
	ble	L395
	.loc 1 285 79 discriminator 63
	sub	w0, w19, #1
	sxtw	x1, w0
	sxtw	x0, w28
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 848]
	str	xzr, [x29, 856]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -176]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1320]
	ldr	x0, [x29, 1320]
	add	x0, x1, x0
	str	x0, [x29, 1320]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1312]
L395:
	.loc 1 285 79 discriminator 66
	cmp	w19, w28
	.loc 1 285 79 discriminator 70
	ldr	w0, [x29, 2008]
	add	w0, w28, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 285 79 discriminator 71
	cmp	w21, w19
	.loc 1 285 79 discriminator 75
	cmp	w21, w19
	ble	L401
	.loc 1 285 79 discriminator 76
	sub	w0, w21, #1
	sxtw	x1, w0
	sxtw	x0, w19
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 832]
	str	xzr, [x29, 840]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -192]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1304]
	ldr	x0, [x29, 1304]
	add	x0, x1, x0
	str	x0, [x29, 1304]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1296]
L401:
	.loc 1 285 79 discriminator 79
	cmp	w21, w19
	ble	L402
	.loc 1 285 79 discriminator 80
	sub	w0, w21, #1
	sxtw	x1, w0
	sxtw	x0, w19
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L403
L402:
	.loc 1 285 79 discriminator 81
	mov	x4, 0
L403:
	.loc 1 285 79 discriminator 83
	ldr	x2, [x29, 1664]
	ldr	w0, [x29, 2008]
	add	w0, w19, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 285 79 discriminator 84
	cmp	w23, w21
	.loc 1 285 79 discriminator 88
	cmp	w23, w21
	ble	L407
	.loc 1 285 79 discriminator 89
	sub	w0, w23, #1
	sxtw	x1, w0
	sxtw	x0, w21
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 816]
	str	xzr, [x29, 824]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -208]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1288]
	ldr	x0, [x29, 1288]
	add	x0, x1, x0
	str	x0, [x29, 1288]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1280]
L407:
	.loc 1 285 79 discriminator 92
	cmp	w23, w21
	.loc 1 285 79 discriminator 96
	ldr	w0, [x29, 2008]
	add	w0, w21, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 285 79 discriminator 97
	cmp	w22, w23
	.loc 1 285 79 discriminator 101
	cmp	w22, w23
	ble	L413
	.loc 1 285 79 discriminator 102
	sub	w0, w22, #1
	sxtw	x1, w0
	sxtw	x0, w23
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 800]
	str	xzr, [x29, 808]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -224]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1272]
	ldr	x0, [x29, 1272]
	add	x0, x1, x0
	str	x0, [x29, 1272]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1264]
L413:
	.loc 1 285 79 discriminator 105
	cmp	w22, w23
	ble	L414
	.loc 1 285 79 discriminator 106
	sub	w0, w22, #1
	sxtw	x1, w0
	sxtw	x0, w23
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L415
L414:
	.loc 1 285 79 discriminator 107
	mov	x4, 0
L415:
	.loc 1 279 20 is_stmt 1
	add	x0, x29, 1024
	ldp	x1, x2, [x0, -128]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 279 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L419
	.loc 1 279 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 784]
	str	xzr, [x29, 792]
	add	x0, x29, 1024
	ldp	x5, x6, [x0, -240]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1256]
	ldr	x0, [x29, 1256]
	add	x0, x1, x0
	str	x0, [x29, 1256]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1248]
L419:
	.loc 1 279 20 discriminator 12
	cmp	w2, w3
	.loc 1 285 79 is_stmt 1
	ldr	x2, [x29, 896]
	ldr	w0, [x29, 2008]
	add	w0, w23, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 285 79 is_stmt 0 discriminator 108
	cmp	w25, w22
	.loc 1 285 79 discriminator 112
	cmp	w25, w22
	ble	L425
	.loc 1 285 79 discriminator 113
	sub	w0, w25, #1
	sxtw	x1, w0
	sxtw	x0, w22
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 768]
	str	xzr, [x29, 776]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -256]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1240]
	ldr	x0, [x29, 1240]
	add	x0, x1, x0
	str	x0, [x29, 1240]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1232]
L425:
	.loc 1 285 79 discriminator 116
	cmp	w25, w22
	.loc 1 285 79 discriminator 120
	ldr	w0, [x29, 2008]
	add	w0, w22, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 285 79 discriminator 121
	cmp	w24, w25
	.loc 1 285 79 discriminator 125
	cmp	w24, w25
	ble	L431
	.loc 1 285 79 discriminator 126
	sub	w0, w24, #1
	sxtw	x1, w0
	sxtw	x0, w25
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 752]
	str	xzr, [x29, 760]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 240]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1224]
	ldr	x0, [x29, 1224]
	add	x0, x1, x0
	str	x0, [x29, 1224]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1216]
L431:
	.loc 1 285 79 discriminator 129
	cmp	w24, w25
	ble	L432
	.loc 1 285 79 discriminator 130
	sub	w0, w24, #1
	sxtw	x1, w0
	sxtw	x0, w25
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L433
L432:
	.loc 1 285 79 discriminator 131
	mov	x4, 0
L433:
	.loc 1 280 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -64]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 280 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L437
	.loc 1 280 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 736]
	str	xzr, [x29, 744]
	add	x0, x29, 512
	ldp	x5, x6, [x0, 224]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1208]
	ldr	x0, [x29, 1208]
	add	x0, x1, x0
	str	x0, [x29, 1208]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1200]
L437:
	.loc 1 280 20 discriminator 12
	cmp	w2, w3
	.loc 1 285 79 is_stmt 1
	ldr	x2, [x29, 1472]
	ldr	w0, [x29, 2008]
	add	w0, w25, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 285 79 is_stmt 0 discriminator 132
	cmp	w27, w24
	.loc 1 285 79 discriminator 136
	cmp	w27, w24
	ble	L443
	.loc 1 285 79 discriminator 137
	sub	w0, w27, #1
	sxtw	x1, w0
	sxtw	x0, w24
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 720]
	str	xzr, [x29, 728]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 208]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1192]
	ldr	x0, [x29, 1192]
	add	x0, x1, x0
	str	x0, [x29, 1192]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1184]
L443:
	.loc 1 285 79 discriminator 140
	cmp	w27, w24
	.loc 1 285 79 discriminator 144
	ldr	w0, [x29, 2008]
	add	w0, w24, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 285 79 discriminator 145
	cmp	w26, w27
	.loc 1 285 79 discriminator 149
	cmp	w26, w27
	ble	L449
	.loc 1 285 79 discriminator 150
	sub	w0, w26, #1
	sxtw	x1, w0
	sxtw	x0, w27
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 704]
	str	xzr, [x29, 712]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 192]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1176]
	ldr	x0, [x29, 1176]
	add	x0, x1, x0
	str	x0, [x29, 1176]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1168]
L449:
	.loc 1 285 79 discriminator 153
	cmp	w26, w27
	ble	L450
	.loc 1 285 79 discriminator 154
	sub	w0, w26, #1
	sxtw	x1, w0
	sxtw	x0, w27
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L451
L450:
	.loc 1 285 79 discriminator 155
	mov	x4, 0
L451:
	.loc 1 281 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -80]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 281 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L455
	.loc 1 281 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 688]
	str	xzr, [x29, 696]
	add	x0, x29, 512
	ldp	x5, x6, [x0, 176]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1160]
	ldr	x0, [x29, 1160]
	add	x0, x1, x0
	str	x0, [x29, 1160]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1152]
L455:
	.loc 1 281 20 discriminator 12
	cmp	w2, w3
	.loc 1 285 79 is_stmt 1
	ldr	x2, [x29, 1456]
	ldr	w0, [x29, 2008]
	add	w0, w27, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 285 79 is_stmt 0 discriminator 156
	ldr	w0, [x29, 1616]
	cmp	w0, w26
	.loc 1 285 79 discriminator 160
	cmp	w0, w26
	ble	L461
	.loc 1 285 79 discriminator 161
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w26
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 672]
	str	xzr, [x29, 680]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 160]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1144]
	ldr	x0, [x29, 1144]
	add	x0, x1, x0
	str	x0, [x29, 1144]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1136]
L461:
	.loc 1 285 79 discriminator 164
	ldr	w2, [x29, 1616]
	cmp	w2, w26
	.loc 1 285 79 discriminator 168
	ldr	w0, [x29, 2008]
	add	w0, w26, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 285 79 discriminator 169
	ldr	w0, [x29, 1536]
	cmp	w0, w2
	.loc 1 285 79 discriminator 173
	cmp	w0, w2
	ble	L467
	.loc 1 285 79 discriminator 174
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 656]
	str	xzr, [x29, 664]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 144]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1128]
	ldr	x0, [x29, 1128]
	add	x0, x1, x0
	str	x0, [x29, 1128]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1120]
L467:
	.loc 1 285 79 discriminator 177
	ldr	w0, [x29, 1536]
	ldr	w2, [x29, 1616]
	cmp	w0, w2
	ble	L468
	.loc 1 285 79 discriminator 178
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L469
L468:
	.loc 1 285 79 discriminator 179
	mov	x4, 0
L469:
	.loc 1 282 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -96]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 282 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L473
	.loc 1 282 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 640]
	str	xzr, [x29, 648]
	add	x0, x29, 512
	ldp	x5, x6, [x0, 128]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1112]
	ldr	x0, [x29, 1112]
	add	x0, x1, x0
	str	x0, [x29, 1112]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1104]
L473:
	.loc 1 282 20 discriminator 12
	cmp	w2, w3
	.loc 1 285 79 is_stmt 1
	ldr	x2, [x29, 1440]
	ldr	w0, [x29, 2008]
	ldr	w1, [x29, 1616]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 285 79 is_stmt 0 discriminator 180
	ldr	w0, [x29, 1600]
	ldr	w2, [x29, 1536]
	cmp	w0, w2
	.loc 1 285 79 discriminator 184
	cmp	w0, w2
	ble	L479
	.loc 1 285 79 discriminator 185
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 624]
	str	xzr, [x29, 632]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 112]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1096]
	ldr	x0, [x29, 1096]
	add	x0, x1, x0
	str	x0, [x29, 1096]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1088]
L479:
	.loc 1 285 79 discriminator 188
	ldr	w2, [x29, 1600]
	ldr	w1, [x29, 1536]
	cmp	w2, w1
	.loc 1 285 79 discriminator 192
	ldr	w0, [x29, 2008]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 285 79 discriminator 193
	ldr	w0, [x29, 1520]
	cmp	w0, w2
	.loc 1 285 79 discriminator 197
	cmp	w0, w2
	ble	L485
	.loc 1 285 79 discriminator 198
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 608]
	str	xzr, [x29, 616]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 96]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1080]
	ldr	x0, [x29, 1080]
	add	x0, x1, x0
	str	x0, [x29, 1080]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1072]
L485:
	.loc 1 285 79 discriminator 201
	ldr	w0, [x29, 1520]
	ldr	w2, [x29, 1600]
	cmp	w0, w2
	ble	L486
	.loc 1 285 79 discriminator 202
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L487
L486:
	.loc 1 285 79 discriminator 203
	mov	x4, 0
L487:
	.loc 1 283 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -112]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 283 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L491
	.loc 1 283 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 592]
	str	xzr, [x29, 600]
	add	x0, x29, 512
	ldp	x5, x6, [x0, 80]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1064]
	ldr	x0, [x29, 1064]
	add	x0, x1, x0
	str	x0, [x29, 1064]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1056]
L491:
	.loc 1 283 20 discriminator 12
	cmp	w2, w3
	.loc 1 285 79 is_stmt 1
	ldr	x2, [x29, 1424]
	ldr	w0, [x29, 2008]
	ldr	w1, [x29, 1600]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 285 79 is_stmt 0 discriminator 204
	ldr	w0, [x29, 1584]
	ldr	w2, [x29, 1520]
	cmp	w0, w2
	.loc 1 285 79 discriminator 208
	cmp	w0, w2
	ble	L497
	.loc 1 285 79 discriminator 209
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 576]
	str	xzr, [x29, 584]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 64]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1048]
	ldr	x0, [x29, 1048]
	add	x0, x1, x0
	str	x0, [x29, 1048]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1040]
L497:
	.loc 1 285 79 discriminator 212
	ldr	w2, [x29, 1584]
	ldr	w1, [x29, 1520]
	cmp	w2, w1
	.loc 1 285 79 discriminator 216
	ldr	w0, [x29, 2008]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 285 79 discriminator 217
	ldr	w0, [x29, 1504]
	cmp	w0, w2
	.loc 1 285 79 discriminator 221
	cmp	w0, w2
	ble	L503
	.loc 1 285 79 discriminator 222
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 560]
	str	xzr, [x29, 568]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 48]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1032]
	ldr	x0, [x29, 1032]
	add	x0, x1, x0
	str	x0, [x29, 1032]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1024]
L503:
	.loc 1 285 79 discriminator 225
	ldr	w0, [x29, 1504]
	ldr	w2, [x29, 1584]
	cmp	w0, w2
	ble	L504
	.loc 1 285 79 discriminator 226
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L505
L504:
	.loc 1 285 79 discriminator 227
	mov	x4, 0
L505:
	.loc 1 284 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -128]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 284 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L509
	.loc 1 284 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 544]
	str	xzr, [x29, 552]
	add	x0, x29, 512
	ldp	x5, x6, [x0, 32]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1016]
	ldr	x0, [x29, 1016]
	add	x0, x1, x0
	str	x0, [x29, 1016]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1008]
L509:
	.loc 1 284 20 discriminator 12
	cmp	w2, w3
	.loc 1 285 79 is_stmt 1
	ldr	x2, [x29, 1408]
	ldr	w0, [x29, 2008]
	ldr	w1, [x29, 1584]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 285 79 is_stmt 0 discriminator 228
	ldr	w0, [x29, 1568]
	ldr	w2, [x29, 1504]
	cmp	w0, w2
	.loc 1 285 79 discriminator 232
	cmp	w0, w2
	ble	L515
	.loc 1 285 79 discriminator 233
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 528]
	str	xzr, [x29, 536]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 16]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1000]
	ldr	x0, [x29, 1000]
	add	x0, x1, x0
	str	x0, [x29, 1000]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 992]
L515:
	.loc 1 285 79 discriminator 236
	ldr	w2, [x29, 1568]
	ldr	w1, [x29, 1504]
	cmp	w2, w1
	.loc 1 285 79 discriminator 240
	ldr	w0, [x29, 2008]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 285 79 discriminator 241
	ldr	w0, [x29, 1488]
	cmp	w0, w2
	.loc 1 285 79 discriminator 245
	cmp	w0, w2
	ble	L521
	.loc 1 285 79 discriminator 246
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 512]
	str	xzr, [x29, 520]
	add	x0, x29, 512
	ldp	x2, x3, [x0]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 984]
	ldr	x0, [x29, 984]
	add	x0, x1, x0
	str	x0, [x29, 984]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 976]
L521:
	.loc 1 285 79 discriminator 249
	ldr	w0, [x29, 1488]
	ldr	w2, [x29, 1568]
	cmp	w0, w2
	ble	L522
	.loc 1 285 79 discriminator 250
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L523
L522:
	.loc 1 285 79 discriminator 251
	mov	x4, 0
L523:
	.loc 1 285 20 is_stmt 1 discriminator 253
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -144]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 285 20 is_stmt 0 discriminator 257
	cmp	w2, w3
	blt	L527
	.loc 1 285 20 discriminator 258
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 496]
	str	xzr, [x29, 504]
	ldp	x5, x6, [x29, 496]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 968]
	ldr	x0, [x29, 968]
	add	x0, x1, x0
	str	x0, [x29, 968]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 960]
L527:
	.loc 1 285 20 discriminator 261
	cmp	w2, w3
	.loc 1 285 79 is_stmt 1 discriminator 265
	ldr	x2, [x29, 1392]
	ldr	w0, [x29, 2008]
	ldr	w1, [x29, 1568]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x1, x2
	mov	x2, x4
	bl	_memcpy
	.loc 1 285 79 is_stmt 0 discriminator 266
	ldr	w0, [x29, 1552]
	ldr	w2, [x29, 1488]
	cmp	w0, w2
	.loc 1 285 79 discriminator 270
	cmp	w0, w2
	ble	L533
	.loc 1 285 79 discriminator 271
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 480]
	str	xzr, [x29, 488]
	ldp	x2, x3, [x29, 480]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 952]
	ldr	x1, [x29, 952]
	add	x0, x0, x1
	str	x0, [x29, 952]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 944]
L533:
	.loc 1 285 79 discriminator 274
	ldr	w2, [x29, 1552]
	ldr	w1, [x29, 1488]
	cmp	w2, w1
	.loc 1 285 79 discriminator 278
	ldr	w0, [x29, 2008]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	mov	w1, 44
	strb	w1, [x20, x0]
	.loc 1 285 79 discriminator 279
	ldr	w0, [x29, 1352]
	cmp	w0, w2
	.loc 1 285 79 discriminator 283
	cmp	w0, w2
	ble	L539
	.loc 1 285 79 discriminator 284
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 464]
	str	xzr, [x29, 472]
	ldp	x2, x3, [x29, 464]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 936]
	ldr	x1, [x29, 936]
	add	x0, x0, x1
	str	x0, [x29, 936]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 928]
L539:
	.loc 1 285 79 discriminator 287
	ldr	w0, [x29, 1352]
	ldr	w2, [x29, 1552]
	cmp	w0, w2
	ble	L540
	.loc 1 285 79 discriminator 288
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L541
L540:
	.loc 1 285 79 discriminator 289
	mov	x4, 0
L541:
	.loc 1 286 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -160]
	mov	x0, x2
	ldr	w0, [x0]
	mov	x1, x2
	ldr	w1, [x1, 4]
	cmp	w1, w0
	.loc 1 286 20 is_stmt 0 discriminator 8
	cmp	w1, w0
	blt	L545
	.loc 1 286 20 discriminator 9
	sxtw	x3, w1
	sxtw	x2, w0
	sub	x2, x3, x2
	add	x2, x2, 1
	str	x2, [x29, 448]
	str	xzr, [x29, 456]
	ldp	x5, x6, [x29, 448]
	mov	x2, x5
	lsr	x2, x2, 61
	mov	x3, x6
	lsl	x3, x3, 3
	str	x3, [x29, 920]
	ldr	x3, [x29, 920]
	add	x2, x2, x3
	str	x2, [x29, 920]
	mov	x2, x5
	lsl	x2, x2, 3
	str	x2, [x29, 912]
L545:
	.loc 1 286 20 discriminator 12
	cmp	w1, w0
	.loc 1 285 79 is_stmt 1
	ldr	x2, [x29, 1376]
	ldr	w0, [x29, 2008]
	ldr	w1, [x29, 1552]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 1976]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x1, x2
	mov	x2, x4
	bl	_memcpy
	.loc 1 278 10
	ldr	x0, [x29, 1824]
	str	x20, [x29, 432]
	ldr	w1, [x29, 2008]
	str	w1, [x29, 1928]
	ldr	w1, [x29, 1988]
	str	w1, [x29, 1932]
	add	x1, x29, 1928
	str	x1, [x29, 440]
	ldp	x1, x2, [x29, 432]
	bl	_ada__text_io__put_line
LEHE21:
	.loc 1 278 0 discriminator 2
	mov	w19, 1
L555:
	.loc 1 278 0 is_stmt 0 discriminator 3
	add	x0, x29, 1832
	mov	x16, x0
LEHB22:
	bl	_smc_files__log_telemetry_csv__B_10__B144b___finalizer.1
LEHE22:
	.loc 1 278 0 discriminator 5
	cmp	w19, 1
	bne	L548
	.loc 1 278 0
	mov	w0, 1
L557:
	.loc 1 278 0 discriminator 6
	cmp	w0, 1
	bne	L549
	.loc 1 278 0
	nop
LBE39:
	.loc 1 287 10 is_stmt 1
	add	x0, x29, 1824
LEHB23:
	bl	_ada__text_io__close
LEHE23:
LBE35:
	.loc 1 294 8
	b	L347
L563:
LBE32:
	.loc 1 266 10
	mov	x2, x0
	mov	x0, x1
	cmp	x0, 1
	beq	L552
	mov	x0, x2
LEHB24:
	bl	__Unwind_Resume
L552:
LBB45:
LBB41:
	.loc 1 266 10 is_stmt 0 discriminator 1
	str	x2, [x29, 2000]
	.loc 1 266 10 discriminator 2
	ldr	x0, [x29, 2000]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 1992]
	.loc 1 267 13 is_stmt 1
	nop
	.loc 1 266 10 discriminator 4
	mov	x2, 0
	ldr	x1, [x29, 1992]
	ldr	x0, [x29, 2000]
	bl	___gnat_end_handler_v1
	b	L364
L565:
	str	x0, [x29, 112]
	str	x1, [x29, 104]
	mov	w19, 0
LBE41:
LBB42:
LBB40:
	.loc 1 278 10
	b	L555
L548:
	ldr	x0, [x29, 112]
	str	x0, [x29, 1344]
	ldr	x0, [x29, 104]
	str	x0, [x29, 120]
	b	L556
L566:
	str	x0, [x29, 1344]
	str	x1, [x29, 120]
L556:
	mov	w0, 0
	b	L557
L549:
	ldr	x0, [x29, 1344]
	ldr	x1, [x29, 120]
	b	L558
L564:
L558:
LBE40:
LBE42:
LBE45:
	.loc 1 289 10
	cmp	x1, 2
	beq	L559
	bl	__Unwind_Resume
LEHE24:
L559:
LBB46:
LBB43:
	.loc 1 289 10 is_stmt 0 discriminator 1
	str	x0, [x29, 1952]
	.loc 1 289 10 discriminator 2
	ldr	x0, [x29, 1952]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 1944]
	.loc 1 290 16 is_stmt 1
	ldr	x0, [x29, 1824]
LEHB25:
	bl	_ada__text_io__is_open
	.loc 1 290 13 discriminator 2
	cmp	w0, 0
	beq	L560
	.loc 1 291 16
	add	x0, x29, 1824
	bl	_ada__text_io__close
LEHE25:
L560:
	.loc 1 289 10
	mov	x2, 0
	ldr	x1, [x29, 1944]
	ldr	x0, [x29, 1952]
LEHB26:
	bl	___gnat_end_handler_v1
LBE43:
	.loc 1 294 8
	b	L347
L567:
LBB44:
	.loc 1 289 10
	mov	x19, x0
	str	x19, [x29, 1936]
	.loc 1 289 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 1936]
	ldr	x1, [x29, 1944]
	ldr	x0, [x29, 1952]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L347:
LBE44:
LBE46:
	.loc 1 294 8 is_stmt 1
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE26:
	add	sp, sp, 2016
LCFI49:
	ret
LFE10:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
	.align	2
LLSDA10:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT10-LLSDATTD10
LLSDATTD10:
	.byte	0x1
	.uleb128 LLSDACSE10-LLSDACSB10
LLSDACSB10:
	.uleb128 LEHB18-LFB10
	.uleb128 LEHE18-LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB19-LFB10
	.uleb128 LEHE19-LEHB19
	.uleb128 L563-LFB10
	.uleb128 0x1
	.uleb128 LEHB20-LFB10
	.uleb128 LEHE20-LEHB20
	.uleb128 L564-LFB10
	.uleb128 0x3
	.uleb128 LEHB21-LFB10
	.uleb128 LEHE21-LEHB21
	.uleb128 L565-LFB10
	.uleb128 0x5
	.uleb128 LEHB22-LFB10
	.uleb128 LEHE22-LEHB22
	.uleb128 L566-LFB10
	.uleb128 0x5
	.uleb128 LEHB23-LFB10
	.uleb128 LEHE23-LEHB23
	.uleb128 L564-LFB10
	.uleb128 0x3
	.uleb128 LEHB24-LFB10
	.uleb128 LEHE24-LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB25-LFB10
	.uleb128 LEHE25-LEHB25
	.uleb128 L567-LFB10
	.uleb128 0
	.uleb128 LEHB26-LFB10
	.uleb128 LEHE26-LEHB26
	.uleb128 0
	.uleb128 0
LLSDACSE10:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr5:
	.long	___gnat_others_value@GOT-L_got_pcr5
L_got_pcr6:
	.long	___gnat_others_value@GOT-L_got_pcr6
LLSDATT10:
	.text
	.const
	.align	2
lC8:
	.word	1
	.word	43
	.align	2
lC9:
	.word	1
	.word	47
	.align	2
lC10:
	.word	1
	.word	99
	.align	2
lC11:
	.word	1
	.word	12
	.align	2
lC12:
	.word	1
	.word	11
	.text
	.const
	.align	3
lC40:
	.ascii "EXPIRY="
	.text
	.align	2
	.globl _smc_files__check_precool_mode
_smc_files__check_precool_mode:
LFB12:
	.loc 1 300 4
	sub	sp, sp, #1280
LCFI50:
	stp	x29, x30, [sp]
LCFI51:
	mov	x29, sp
LCFI52:
	stp	x20, x21, [sp, 16]
	stp	x22, x23, [sp, 32]
	stp	x24, x25, [sp, 48]
	stp	x26, x27, [sp, 64]
LCFI53:
LBB47:
	.loc 1 306 7
	str	xzr, [x29, 1272]
	.loc 1 308 14
	strb	wzr, [x29, 1239]
	.loc 1 308 34
	str	xzr, [x29, 1224]
	.loc 1 309 29
	adrp	x2, _smc_files__precool_flag@PAGE
	add	x0, x2, _smc_files__precool_flag@PAGEOFF;
	adrp	x2, lC13@PAGE
	add	x1, x2, lC13@PAGEOFF;
	bl	_ada__directories__exists
	.loc 1 309 29 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 309 7 is_stmt 1 discriminator 2
	cmp	w0, 0
	bne	L583
LBB48:
	.loc 1 313 7
	adrp	x0, _smc_files__precool_flag@PAGE
	add	x0, x0, _smc_files__precool_flag@PAGEOFF;
	str	x0, [x29, 80]
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	str	x0, [x29, 88]
	add	x0, x29, 200
	str	x0, [x29, 96]
	adrp	x0, lC14@PAGE
	add	x0, x0, lC14@PAGEOFF;
	str	x0, [x29, 104]
	ldp	x2, x3, [x29, 96]
	ldp	x0, x1, [x29, 80]
	bl	_smc_files__read_file_content
	.loc 1 313 7 is_stmt 0 discriminator 2
	mov	w1, w0
	str	w1, [x29, 1268]
	ubfx	x0, x0, 32, 8
	strb	w0, [x29, 1267]
LBE48:
	.loc 1 314 10 is_stmt 1
	ldrb	w0, [x29, 1267]
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 314 7
	cmp	w0, 0
	beq	L571
	.loc 1 316 17
	mov	w0, 1
	strb	w0, [x29, 1239]
	.loc 1 317 20
	mov	x0, 10
	str	x0, [x29, 1224]
	.loc 1 318 10
	b	L581
L571:
	.loc 1 322 35
	ldr	w0, [x29, 1268]
	.loc 1 322 32
	cmp	w0, 0
	ble	L572
	.loc 1 322 32 is_stmt 0 discriminator 1
	cmp	w0, 1024
	ble	L572
	.loc 1 322 32 discriminator 3
	mov	w1, 322
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L572:
	.loc 1 322 21 is_stmt 1 discriminator 4
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	mov	x22, x1
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x2, x23, 3
	str	x2, [x29, 184]
	ldr	x2, [x29, 184]
	add	x1, x1, x2
	str	x1, [x29, 184]
	lsl	x1, x22, 3
	str	x1, [x29, 176]
LBB49:
	.loc 1 322 14 discriminator 4
	add	x1, x29, 200
	str	x1, [x29, 112]
	mov	w1, 1
	str	w1, [x29, 1240]
	str	w0, [x29, 1244]
	add	x0, x29, 1240
	str	x0, [x29, 120]
	adrp	x0, lC40@PAGE
	add	x0, x0, lC40@PAGEOFF;
	str	x0, [x29, 128]
	adrp	x0, lC15@PAGE
	add	x0, x0, lC15@PAGEOFF;
	str	x0, [x29, 136]
	adrp	x5, _ada__strings__maps__identity@GOTPAGE
	ldr	x5, [x5, _ada__strings__maps__identity@GOTPAGEOFF]
	mov	w4, 0
	ldp	x2, x3, [x29, 128]
	ldp	x0, x1, [x29, 112]
	bl	_ada__strings__fixed__index__3
	.loc 1 322 14 is_stmt 0 discriminator 7
	str	w0, [x29, 1260]
LBE49:
	.loc 1 323 7 is_stmt 1
	ldr	w0, [x29, 1260]
	cmp	w0, 0
	ble	L573
	.loc 1 324 65
	ldr	w0, [x29, 1268]
	.loc 1 324 62
	cmp	w0, 0
	ble	L574
	.loc 1 324 62 is_stmt 0 discriminator 1
	cmp	w0, 1024
	ble	L574
	.loc 1 324 62 discriminator 3
	mov	w1, 324
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L574:
	.loc 1 324 51 is_stmt 1 discriminator 4
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	mov	x20, x1
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x27, x21, 3
	mov	x2, x27
	add	x1, x1, x2
	mov	x27, x1
	lsl	x26, x20, 3
	.loc 1 324 34 discriminator 4
	add	x1, x29, 200
	str	x1, [x29, 144]
	mov	w1, 1
	str	w1, [x29, 1248]
	str	w0, [x29, 1252]
	add	x0, x29, 1248
	str	x0, [x29, 152]
	ldr	w1, [x29, 1260]
	mov	w0, 2147483640
	cmp	w1, w0
	ble	L575
	.loc 1 324 34 is_stmt 0 discriminator 6
	mov	w1, 324
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L575:
	.loc 1 324 34 discriminator 7
	ldr	w0, [x29, 1260]
	add	w0, w0, 7
	.loc 1 324 34 discriminator 10
	mov	w3, 0
	mov	w2, w0
	ldp	x0, x1, [x29, 144]
	bl	_smc_files__parse_int_after
	.loc 1 324 17 is_stmt 1 discriminator 12
	sxtw	x0, w0
	str	x0, [x29, 1272]
	.loc 1 325 32
	bl	_smc_files__get_unix_time
	mov	x1, x0
	.loc 1 325 30 discriminator 2
	mov	x2, 0
	ldr	x0, [x29, 1272]
	subs	x0, x0, x1
	bvc	L576
	mov	x2, 1
L576:
	mov	x1, x0
	.loc 1 325 30 is_stmt 0 discriminator 3
	mov	x0, x2
	cmp	x0, 0
	beq	L578
	.loc 1 325 30 discriminator 4
	mov	w1, 325
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L578:
	.loc 1 325 30 discriminator 5
	mov	x0, x1
	.loc 1 325 20 is_stmt 1 discriminator 8
	str	x0, [x29, 1224]
	.loc 1 326 23
	ldr	x0, [x29, 1224]
	.loc 1 326 10
	cmp	x0, 0
	ble	L579
	.loc 1 327 20
	mov	w0, 1
	strb	w0, [x29, 1239]
	.loc 1 337 8
	b	L581
L579:
	.loc 1 330 13
	adrp	x0, _smc_files__precool_flag@PAGE
	add	x0, x0, _smc_files__precool_flag@PAGEOFF;
	str	x0, [x29, 160]
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	str	x0, [x29, 168]
	ldp	x0, x1, [x29, 160]
	bl	_smc_files__delete_file
	.loc 1 337 8
	b	L581
L573:
	.loc 1 334 17
	mov	w0, 1
	strb	w0, [x29, 1239]
	.loc 1 335 20
	mov	x0, 10
	str	x0, [x29, 1224]
	.loc 1 337 8
	b	L581
L583:
	.loc 1 310 10
	nop
L581:
LBE47:
	.loc 1 337 8 discriminator 1
	ldrb	w0, [x29, 1239]
	bfi	x24, x0, 0, 8
	ldr	x0, [x29, 1224]
	mov	x25, x0
	.loc 1 337 8 is_stmt 0 discriminator 3
	mov	x0, x24
	mov	x1, x25
	.loc 1 337 8
	ldp	x29, x30, [sp]
	ldp	x20, x21, [sp, 16]
	ldp	x22, x23, [sp, 32]
	ldp	x24, x25, [sp, 48]
	ldp	x26, x27, [sp, 64]
	add	sp, sp, 1280
LCFI54:
	ret
LFE12:
	.const
	.align	2
lC13:
	.word	1
	.word	41
	.align	2
lC14:
	.word	1
	.word	1024
	.align	2
lC15:
	.word	1
	.word	7
	.text
	.align	2
_smc_files__notify_user__B_11__B_13___finalizer.2:
LFB14:
	stp	x29, x30, [sp, -32]!
LCFI55:
	mov	x29, sp
LCFI56:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 24
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI57:
	ret
LFE14:
	.const
	.align	3
lC42:
	.ascii "[NOTIFICATION LOGGED] "
	.align	3
lC43:
	.ascii ": "
	.text
	.align	2
	.globl _smc_files__notify_user
_smc_files__notify_user:
LFB13:
	.loc 1 343 4 is_stmt 1
	sub	sp, sp, #1952
LCFI58:
	stp	x29, x30, [sp, 16]
LCFI59:
	add	x29, sp, 16
LCFI60:
LEHB27:
	stp	x19, x20, [sp, 32]
	stp	x21, x22, [sp, 48]
	stp	x23, x24, [sp, 64]
	stp	x25, x26, [sp, 80]
	stp	x27, x28, [sp, 96]
LCFI61:
	add	x6, x29, 1536
	stp	x0, x1, [x6, -48]
	add	x0, x29, 1536
	stp	x2, x3, [x0, -64]
	.loc 1 343 4
	add	x0, x29, 1936
	.loc 1 343 4 is_stmt 0 discriminator 1
	str	x0, [x29, 1680]
	ldr	x0, [x29, 1480]
	ldr	w3, [x0]
	ldr	x0, [x29, 1480]
	ldr	w2, [x0, 4]
	cmp	w2, w3
	blt	L587
	.loc 1 343 4 discriminator 2
	sub	w0, w2, w3
	add	w0, w0, 1
	str	w0, [x29, 1244]
	b	L588
L587:
	.loc 1 343 4 discriminator 3
	str	wzr, [x29, 1244]
L588:
	.loc 1 343 4 discriminator 5
	ldr	x0, [x29, 1496]
	ldr	w7, [x0]
	ldr	x0, [x29, 1496]
	ldr	w6, [x0, 4]
	cmp	w6, w7
	blt	L589
	.loc 1 343 4 discriminator 6
	sub	w0, w6, w7
	add	w0, w0, 1
	str	w0, [x29, 1240]
	b	L590
L589:
	.loc 1 343 4 discriminator 7
	str	wzr, [x29, 1240]
L590:
LBB50:
	.loc 1 343 4 discriminator 9
	cmp	w2, w3
	.loc 1 343 4 discriminator 13
	cmp	w2, w3
	blt	L594
	.loc 1 343 4 discriminator 14
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x4, x0
	mov	x5, 0
	lsr	x1, x4, 61
	lsl	x11, x5, 3
	mov	x0, x11
	add	x0, x1, x0
	mov	x11, x0
	lsl	x10, x4, 3
L594:
	.loc 1 343 4 discriminator 17
	cmp	w2, w3
	.loc 1 343 4 discriminator 21
	cmp	w6, w7
	.loc 1 343 4 discriminator 25
	cmp	w6, w7
	blt	L600
	.loc 1 343 4 discriminator 26
	sxtw	x1, w6
	sxtw	x0, w7
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x8, x0
	mov	x9, 0
	lsr	x1, x8, 61
	lsl	x13, x9, 3
	mov	x0, x13
	add	x0, x1, x0
	mov	x13, x0
	lsl	x12, x8, 3
L600:
	.loc 1 343 4 discriminator 29
	cmp	w6, w7
	.loc 1 348 7 is_stmt 1
	str	xzr, [x29, 1624]
	.loc 1 349 7
	str	wzr, [x29, 1932]
	.loc 1 352 30
	bl	_ada__calendar__clock
	.loc 1 352 30 is_stmt 0 discriminator 2
	str	x0, [x29, 1920]
	.loc 1 359 10 is_stmt 1
	adrp	x0, _smc_files__notifications_log@PAGE
	add	x22, x0, _smc_files__notifications_log@PAGEOFF;
	adrp	x0, lC16@PAGE
	add	x23, x0, lC16@PAGEOFF;
	mov	x0, x22
	mov	x1, x23
	bl	_ada__directories__exists
LEHE27:
	.loc 1 359 7 discriminator 2
	cmp	w0, 0
	beq	L603
LBB51:
LBB52:
	.loc 1 361 13
	ldr	x6, [x29, 1624]
	adrp	x0, _smc_files__notifications_log@PAGE
	add	x26, x0, _smc_files__notifications_log@PAGEOFF;
	adrp	x0, lC16@PAGE
	add	x27, x0, lC16@PAGEOFF;
	adrp	x0, lC29@PAGE
	add	x24, x0, lC29@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x25, x0, lC0@PAGEOFF;
	mov	x4, x24
	mov	x5, x25
	mov	x2, x26
	mov	x3, x27
	mov	w1, 0
	mov	x0, x6
LEHB28:
	bl	_ada__text_io__open
	.loc 1 361 13 is_stmt 0 discriminator 2
	str	x0, [x29, 1624]
L615:
LBE52:
	.loc 1 362 23 is_stmt 1
	ldr	x0, [x29, 1624]
	bl	_ada__text_io__end_of_file
LEHE28:
	.loc 1 362 19 discriminator 2
	cmp	w0, 0
	bne	L604
LBB53:
	add	x0, x29, 1656
	mov	x8, x0
LEHB29:
	bl	_system__secondary_stack__ss_mark
	.loc 1 364 45
	ldr	x0, [x29, 1624]
	bl	_ada__text_io__get_line__3
	.loc 1 364 45 is_stmt 0 discriminator 2
	mov	x2, x0
	mov	x3, x1
	mov	x0, x3
	ldr	w0, [x0]
	str	w0, [x29, 1916]
	mov	x0, x3
	ldr	w0, [x0, 4]
	str	w0, [x29, 1912]
	.loc 1 364 19 is_stmt 1 discriminator 2
	ldrsw	x0, [x29, 1916]
	str	x0, [x29, 1904]
	ldr	w1, [x29, 1912]
	ldr	w0, [x29, 1916]
	cmp	w1, w0
	blt	L605
	.loc 1 364 19 is_stmt 0 discriminator 3
	ldrsw	x0, [x29, 1912]
	str	x0, [x29, 1896]
	b	L606
L605:
	.loc 1 364 19 discriminator 4
	ldrsw	x0, [x29, 1916]
	sub	x0, x0, #1
	str	x0, [x29, 1896]
L606:
	.loc 1 364 19 discriminator 6
	ldr	w1, [x29, 1912]
	ldr	w0, [x29, 1916]
	cmp	w1, w0
	blt	L608
	.loc 1 364 19 discriminator 7
	ldrsw	x1, [x29, 1912]
	ldrsw	x0, [x29, 1916]
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x0, x21, 3
	str	x0, [x29, 1368]
	ldr	x0, [x29, 1368]
	add	x0, x1, x0
	str	x0, [x29, 1368]
	lsl	x0, x20, 3
	str	x0, [x29, 1360]
L608:
	.loc 1 364 19 discriminator 10
	ldr	w1, [x29, 1912]
	ldr	w0, [x29, 1916]
	cmp	w1, w0
	.loc 1 364 45 is_stmt 1 discriminator 14
	ldr	w1, [x29, 1912]
	ldr	w0, [x29, 1916]
	cmp	w1, w0
	blt	L611
	.loc 1 364 45 is_stmt 0 discriminator 15
	ldr	w0, [x29, 1916]
	cmp	w0, 0
	bgt	L611
	.loc 1 364 45 discriminator 17
	mov	w1, 364
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L611:
	.loc 1 364 19 is_stmt 1 discriminator 18
	mov	x0, x2
	str	x0, [x29, 1888]
	.loc 1 366 44
	ldr	w1, [x29, 1932]
	mov	w0, 2147483647
	cmp	w1, w0
	bne	L612
	.loc 1 366 30 discriminator 1
	mov	w1, 366
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
LEHE29:
L612:
	.loc 1 366 30 is_stmt 0 discriminator 2
	ldr	w0, [x29, 1932]
	add	w0, w0, 1
	str	w0, [x29, 1932]
	.loc 1 367 0 is_stmt 1
	mov	w19, 1
L763:
	.loc 1 367 0 is_stmt 0 discriminator 1
	add	x0, x29, 1632
	mov	x16, x0
LEHB30:
	bl	_smc_files__notify_user__B_11__B_13___finalizer.2
LEHE30:
	.loc 1 367 0 discriminator 3
	cmp	w19, 1
	bne	L613
	.loc 1 367 0
	nop
	.loc 1 367 19 is_stmt 1
	mov	w0, 1
L765:
	.loc 1 367 19 is_stmt 0 discriminator 4
	cmp	w0, 1
	bne	L614
LBE53:
	.loc 1 368 21 is_stmt 1
	b	L615
L604:
	.loc 1 369 13
	add	x0, x29, 1624
LEHB31:
	bl	_ada__text_io__close
LEHE31:
L603:
LBE51:
LBB55:
	.loc 1 377 10
	ldr	w0, [x29, 1932]
	cmp	w0, 999
	ble	L616
LBB56:
	.loc 1 378 13
	ldr	x6, [x29, 1624]
	adrp	x0, _smc_files__notifications_log@PAGE
	add	x0, x0, _smc_files__notifications_log@PAGEOFF;
	str	x0, [x29, 144]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 152]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 160]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 168]
	ldp	x4, x5, [x29, 160]
	ldp	x2, x3, [x29, 144]
	mov	w1, 2
	mov	x0, x6
LEHB32:
	bl	_ada__text_io__create
	.loc 1 378 13 is_stmt 0 discriminator 2
	str	x0, [x29, 1624]
LBE56:
	b	L617
L616:
LBB57:
	.loc 1 380 13 is_stmt 1
	ldr	x6, [x29, 1624]
	adrp	x0, _smc_files__notifications_log@PAGE
	add	x0, x0, _smc_files__notifications_log@PAGEOFF;
	str	x0, [x29, 176]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 184]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 192]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 200]
	ldp	x4, x5, [x29, 192]
	ldp	x2, x3, [x29, 176]
	mov	w1, 3
	mov	x0, x6
	bl	_ada__text_io__open
	.loc 1 380 13 is_stmt 0 discriminator 2
	str	x0, [x29, 1624]
L617:
LBE57:
LBB58:
	.loc 1 383 10 is_stmt 1
	add	x0, x29, 1600
	mov	x8, x0
	ldr	x0, [x29, 1920]
	bl	_ada__calendar__split
LEHE32:
	.loc 1 383 10 is_stmt 0 discriminator 2
	ldr	w0, [x29, 1600]
	str	w0, [x29, 1860]
	ldr	w0, [x29, 1604]
	str	w0, [x29, 1856]
	ldr	w0, [x29, 1608]
	str	w0, [x29, 1852]
	ldr	x0, [x29, 1616]
	str	x0, [x29, 1840]
LBE58:
	.loc 1 384 18 is_stmt 1
	ldr	x4, [x29, 1840]
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
LEHB33:
	sdiv	x5, x4, x0
LEHE33:
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	mul	x0, x5, x0
	sub	x2, x4, x0
	cmp	x2, 0
	csneg	x3, x2, x2, ge
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	cmp	x0, 0
	csneg	x1, x0, x0, ge
	lsl	x0, x3, 1
	cmp	x0, x1
	bcc	L618
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L618:
	mov	x1, x5
	cmp	x1, 0
	blt	L619
	.loc 1 384 18 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L620
L619:
	.loc 1 384 18 discriminator 3
	mov	w1, 384
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
LEHB34:
	bl	___gnat_rcheck_CE_Range_Check
LEHE34:
L620:
	.loc 1 384 36 is_stmt 1 discriminator 4
	mov	w2, w1
	.loc 1 384 15 discriminator 4
	mov	w0, 46021
	movk	w0, 0x91a2, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	add	w0, w2, w0
	asr	w1, w0, 11
	asr	w0, w2, 31
	sub	w0, w1, w0
	str	w0, [x29, 1836]
	.loc 1 385 18
	ldr	x4, [x29, 1840]
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
LEHB35:
	sdiv	x5, x4, x0
LEHE35:
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	mul	x0, x5, x0
	sub	x2, x4, x0
	cmp	x2, 0
	csneg	x3, x2, x2, ge
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	cmp	x0, 0
	csneg	x1, x0, x0, ge
	lsl	x0, x3, 1
	cmp	x0, x1
	bcc	L621
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L621:
	mov	x1, x5
	cmp	x1, 0
	blt	L622
	.loc 1 385 18 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L623
L622:
	.loc 1 385 18 discriminator 3
	mov	w1, 385
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
LEHB36:
	bl	___gnat_rcheck_CE_Range_Check
LEHE36:
L623:
	.loc 1 385 36 is_stmt 1 discriminator 4
	mov	w2, w1
	mov	w0, 3600
LEHB37:
	sdiv	w1, w2, w0
	mov	w0, 3600
	mul	w0, w1, w0
	sub	w2, w2, w0
	.loc 1 385 14 discriminator 4
	mov	w0, 34953
	movk	w0, 0x8888, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	add	w0, w2, w0
	asr	w1, w0, 5
	asr	w0, w2, 31
	sub	w0, w1, w0
	str	w0, [x29, 1832]
	.loc 1 386 17
	ldr	x4, [x29, 1840]
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	sdiv	x5, x4, x0
LEHE37:
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	mul	x0, x5, x0
	sub	x2, x4, x0
	cmp	x2, 0
	csneg	x3, x2, x2, ge
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	cmp	x0, 0
	csneg	x1, x0, x0, ge
	lsl	x0, x3, 1
	cmp	x0, x1
	bcc	L624
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L624:
	mov	x1, x5
	cmp	x1, 0
	blt	L625
	.loc 1 386 17 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L626
L625:
	.loc 1 386 17 discriminator 3
	mov	w1, 386
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
LEHB38:
	bl	___gnat_rcheck_CE_Range_Check
LEHE38:
L626:
	.loc 1 386 35 is_stmt 1 discriminator 4
	mov	w2, w1
	.loc 1 386 14 discriminator 4
	mov	w0, 60
LEHB39:
	sdiv	w1, w2, w0
LEHE39:
	mov	w0, 60
	mul	w0, w1, w0
	sub	w0, w2, w0
	str	w0, [x29, 1828]
LBB59:
	add	x0, x29, 1632
	mov	x8, x0
LEHB40:
	bl	_system__secondary_stack__ss_mark
	.loc 1 389 30
	add	x0, x29, 1584
	str	x0, [x29, 208]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 216]
	ldp	x1, x2, [x29, 208]
	ldr	w0, [x29, 1860]
	bl	_system__img_int__impl__image_integer
	mov	w24, w0
	.loc 1 389 30 is_stmt 0 discriminator 2
	bic	w0, w24, w24, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1344]
	str	xzr, [x29, 1352]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -192]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1464]
	ldr	x0, [x29, 1464]
	add	x0, x1, x0
	str	x0, [x29, 1464]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1456]
	.loc 1 390 31 is_stmt 1
	add	x0, x29, 1568
	str	x0, [x29, 224]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 232]
	ldp	x1, x2, [x29, 224]
	ldr	w0, [x29, 1856]
	bl	_system__img_int__impl__image_integer
	mov	w23, w0
	.loc 1 390 31 is_stmt 0 discriminator 2
	bic	w0, w23, w23, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1328]
	str	xzr, [x29, 1336]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -208]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1448]
	ldr	x0, [x29, 1448]
	add	x0, x1, x0
	str	x0, [x29, 1448]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1440]
	.loc 1 391 29 is_stmt 1
	add	x0, x29, 1552
	str	x0, [x29, 240]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 248]
	ldp	x1, x2, [x29, 240]
	ldr	w0, [x29, 1852]
	bl	_system__img_int__impl__image_integer
	mov	w22, w0
	.loc 1 391 29 is_stmt 0 discriminator 2
	bic	w0, w22, w22, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1312]
	str	xzr, [x29, 1320]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -224]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1432]
	ldr	x0, [x29, 1432]
	add	x0, x1, x0
	str	x0, [x29, 1432]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1424]
	.loc 1 392 30 is_stmt 1
	add	x0, x29, 1536
	str	x0, [x29, 256]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 264]
	ldp	x1, x2, [x29, 256]
	ldr	w0, [x29, 1836]
	bl	_system__img_int__impl__image_integer
	mov	w21, w0
	.loc 1 392 30 is_stmt 0 discriminator 2
	bic	w0, w21, w21, asr #31
	sxtw	x0, w0
	str	x0, [x29, 896]
	str	xzr, [x29, 904]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -128]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1416]
	ldr	x0, [x29, 1416]
	add	x0, x1, x0
	str	x0, [x29, 1416]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1408]
	.loc 1 393 29 is_stmt 1
	add	x0, x29, 1520
	str	x0, [x29, 272]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 280]
	ldp	x1, x2, [x29, 272]
	ldr	w0, [x29, 1832]
	bl	_system__img_int__impl__image_integer
	mov	w20, w0
	.loc 1 393 29 is_stmt 0 discriminator 2
	bic	w0, w20, w20, asr #31
	sxtw	x0, w0
	str	x0, [x29, 880]
	str	xzr, [x29, 888]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -144]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1400]
	ldr	x0, [x29, 1400]
	add	x0, x1, x0
	str	x0, [x29, 1400]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1392]
	.loc 1 394 29 is_stmt 1
	add	x0, x29, 1504
	str	x0, [x29, 288]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 296]
	ldp	x1, x2, [x29, 288]
	ldr	w0, [x29, 1828]
	bl	_system__img_int__impl__image_integer
	mov	w19, w0
	.loc 1 394 29 is_stmt 0 discriminator 2
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 864]
	str	xzr, [x29, 872]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -160]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1384]
	ldr	x0, [x29, 1384]
	add	x0, x1, x0
	str	x0, [x29, 1384]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1376]
	.loc 1 389 20 is_stmt 1
	add	x0, x29, 1584
	str	x0, [x29, 304]
	mov	w0, 1
	str	w0, [x29, 1688]
	str	w24, [x29, 1692]
	add	x0, x29, 1688
	str	x0, [x29, 312]
	mov	w2, 2
	ldp	x0, x1, [x29, 304]
	bl	_ada__strings__fixed__trim
	.loc 1 389 20 is_stmt 0 discriminator 4
	mov	x24, x0
	mov	x25, x1
	add	x0, x29, 1024
	stp	x24, x25, [x0, -128]
	.loc 1 390 20 is_stmt 1
	add	x0, x29, 1568
	str	x0, [x29, 320]
	mov	w0, 1
	str	w0, [x29, 1696]
	str	w23, [x29, 1700]
	add	x0, x29, 1696
	str	x0, [x29, 328]
	mov	w2, 2
	ldp	x0, x1, [x29, 320]
	bl	_ada__strings__fixed__trim
	.loc 1 390 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -160]
	.loc 1 391 20 is_stmt 1
	add	x0, x29, 1552
	str	x0, [x29, 336]
	mov	w0, 1
	str	w0, [x29, 1704]
	str	w22, [x29, 1708]
	add	x0, x29, 1704
	str	x0, [x29, 344]
	mov	w2, 2
	ldp	x0, x1, [x29, 336]
	bl	_ada__strings__fixed__trim
	.loc 1 391 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -176]
	.loc 1 392 20 is_stmt 1
	add	x0, x29, 1536
	str	x0, [x29, 352]
	mov	w0, 1
	str	w0, [x29, 1712]
	str	w21, [x29, 1716]
	add	x0, x29, 1712
	str	x0, [x29, 360]
	mov	w2, 2
	ldp	x0, x1, [x29, 352]
	bl	_ada__strings__fixed__trim
	.loc 1 392 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -192]
	.loc 1 393 20 is_stmt 1
	add	x0, x29, 1520
	str	x0, [x29, 368]
	mov	w0, 1
	str	w0, [x29, 1720]
	str	w20, [x29, 1724]
	add	x0, x29, 1720
	str	x0, [x29, 376]
	mov	w2, 2
	ldp	x0, x1, [x29, 368]
	bl	_ada__strings__fixed__trim
	.loc 1 393 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -208]
	.loc 1 394 20 is_stmt 1
	add	x0, x29, 1504
	str	x0, [x29, 384]
	mov	w0, 1
	str	w0, [x29, 1728]
	str	w19, [x29, 1732]
	add	x0, x29, 1728
	str	x0, [x29, 392]
	mov	w2, 2
	ldp	x0, x1, [x29, 384]
	bl	_ada__strings__fixed__trim
	.loc 1 394 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -224]
	.loc 1 395 33 is_stmt 1
	mov	x0, x25
	ldr	w1, [x0, 4]
	mov	x0, x25
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L627
	.loc 1 395 33 is_stmt 0 discriminator 1
	mov	x0, x25
	ldr	w1, [x0, 4]
	mov	x0, x25
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L628
L627:
	.loc 1 395 33 discriminator 2
	mov	w0, 0
L628:
	.loc 1 395 33 discriminator 4
	add	w19, w0, 1
	add	w20, w19, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -160]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L629
	.loc 1 395 33 discriminator 5
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L630
L629:
	.loc 1 395 33 discriminator 6
	mov	w0, 0
L630:
	.loc 1 395 33 discriminator 8
	add	w21, w20, w0
	add	w23, w21, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -176]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L631
	.loc 1 395 33 discriminator 9
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L632
L631:
	.loc 1 395 33 discriminator 10
	mov	w0, 0
L632:
	.loc 1 395 33 discriminator 12
	add	w24, w23, w0
	add	w25, w24, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -192]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L633
	.loc 1 395 33 discriminator 13
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L634
L633:
	.loc 1 395 33 discriminator 14
	mov	w0, 0
L634:
	.loc 1 395 33 discriminator 16
	add	w26, w25, w0
	add	w27, w26, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -208]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L635
	.loc 1 395 33 discriminator 17
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L636
L635:
	.loc 1 395 33 discriminator 18
	mov	w0, 0
L636:
	.loc 1 395 33 discriminator 20
	add	w28, w27, w0
	add	w0, w28, 1
	str	w0, [x29, 1456]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -224]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L637
	.loc 1 395 33 discriminator 21
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L638
L637:
	.loc 1 395 33 discriminator 22
	mov	w0, 0
L638:
	.loc 1 395 33 discriminator 24
	ldr	w1, [x29, 1456]
	add	w0, w1, w0
	str	w0, [x29, 1440]
	add	w0, w0, 3
	str	w0, [x29, 1424]
	ldr	w1, [x29, 1240]
	add	w0, w0, w1
	str	w0, [x29, 1408]
	add	w0, w0, 2
	str	w0, [x29, 1392]
	ldr	w1, [x29, 1244]
	add	w0, w0, w1
	str	w0, [x29, 880]
	str	w0, [x29, 1824]
	ldrsw	x0, [x29, 1824]
	str	x0, [x29, 1816]
	ldrsw	x0, [x29, 1824]
	str	x0, [x29, 848]
	str	xzr, [x29, 856]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -176]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1304]
	ldr	x0, [x29, 1304]
	add	x0, x1, x0
	str	x0, [x29, 1304]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1296]
	ldrsw	x0, [x29, 1824]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 395 33 discriminator 26
	mov	x22, x0
	str	x22, [x29, 1808]
	mov	w0, 91
	strb	w0, [x22]
	.loc 1 395 33 discriminator 27
	cmp	w19, 0
	mov	w0, 1
	cmp	w19, 0
	csel	w0, w19, w0, gt
	sxtw	x0, w0
	sub	x0, x0, #1
	str	x0, [x29, 832]
	str	xzr, [x29, 840]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -192]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1288]
	ldr	x0, [x29, 1288]
	add	x0, x1, x0
	str	x0, [x29, 1288]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1280]
	mov	w0, 1
	cmp	w19, 0
	csel	w0, w19, w0, gt
	sxtw	x0, w0
	sub	x4, x0, #1
	.loc 1 389 20 is_stmt 1
	add	x0, x29, 1024
	ldp	x1, x2, [x0, -128]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 389 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L642
	.loc 1 389 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 816]
	str	xzr, [x29, 824]
	add	x0, x29, 1024
	ldp	x5, x6, [x0, -208]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1224]
	ldr	x0, [x29, 1224]
	add	x0, x1, x0
	str	x0, [x29, 1224]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1216]
L642:
	.loc 1 389 20 discriminator 12
	cmp	w2, w3
	.loc 1 395 33 is_stmt 1
	ldr	x1, [x29, 896]
	add	x0, x22, 1
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 395 33 is_stmt 0 discriminator 28
	cmp	w19, w20
	.loc 1 395 33 discriminator 32
	cmp	w19, w20
	bge	L648
	.loc 1 395 33 discriminator 33
	sxtw	x1, w20
	add	w0, w19, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 800]
	str	xzr, [x29, 808]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -224]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1208]
	ldr	x0, [x29, 1208]
	add	x0, x1, x0
	str	x0, [x29, 1208]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1200]
L648:
	.loc 1 395 33 discriminator 36
	cmp	w19, w20
	.loc 1 395 33 discriminator 40
	add	w0, w19, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 45
	strb	w0, [x1, -1]
	.loc 1 395 33 discriminator 41
	cmp	w20, w21
	.loc 1 395 33 discriminator 45
	cmp	w20, w21
	bge	L654
	.loc 1 395 33 discriminator 46
	sxtw	x1, w21
	add	w0, w20, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 784]
	str	xzr, [x29, 792]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -240]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1192]
	ldr	x0, [x29, 1192]
	add	x0, x1, x0
	str	x0, [x29, 1192]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1184]
L654:
	.loc 1 395 33 discriminator 49
	cmp	w20, w21
	bge	L655
	.loc 1 395 33 discriminator 50
	sxtw	x1, w21
	add	w0, w20, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L656
L655:
	.loc 1 395 33 discriminator 51
	mov	x4, 0
L656:
	.loc 1 390 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -160]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 390 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L660
	.loc 1 390 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 768]
	str	xzr, [x29, 776]
	add	x0, x29, 1024
	ldp	x5, x6, [x0, -256]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1176]
	ldr	x0, [x29, 1176]
	add	x0, x1, x0
	str	x0, [x29, 1176]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1168]
L660:
	.loc 1 390 20 discriminator 12
	cmp	w2, w3
	.loc 1 395 33 is_stmt 1
	ldr	x1, [x29, 1376]
	add	w0, w20, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 395 33 is_stmt 0 discriminator 52
	cmp	w21, w23
	.loc 1 395 33 discriminator 56
	cmp	w21, w23
	bge	L666
	.loc 1 395 33 discriminator 57
	sxtw	x1, w23
	add	w0, w21, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 752]
	str	xzr, [x29, 760]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 240]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1160]
	ldr	x0, [x29, 1160]
	add	x0, x1, x0
	str	x0, [x29, 1160]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1152]
L666:
	.loc 1 395 33 discriminator 60
	cmp	w21, w23
	.loc 1 395 33 discriminator 64
	add	w0, w21, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 45
	strb	w0, [x1, -1]
	.loc 1 395 33 discriminator 65
	cmp	w23, w24
	.loc 1 395 33 discriminator 69
	cmp	w23, w24
	bge	L672
	.loc 1 395 33 discriminator 70
	sxtw	x1, w24
	add	w0, w23, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 736]
	str	xzr, [x29, 744]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 224]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1144]
	ldr	x0, [x29, 1144]
	add	x0, x1, x0
	str	x0, [x29, 1144]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1136]
L672:
	.loc 1 395 33 discriminator 73
	cmp	w23, w24
	bge	L673
	.loc 1 395 33 discriminator 74
	sxtw	x1, w24
	add	w0, w23, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L674
L673:
	.loc 1 395 33 discriminator 75
	mov	x4, 0
L674:
	.loc 1 391 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -176]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 391 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L678
	.loc 1 391 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 720]
	str	xzr, [x29, 728]
	add	x0, x29, 512
	ldp	x5, x6, [x0, 208]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1128]
	ldr	x0, [x29, 1128]
	add	x0, x1, x0
	str	x0, [x29, 1128]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1120]
L678:
	.loc 1 391 20 discriminator 12
	cmp	w2, w3
	.loc 1 395 33 is_stmt 1
	ldr	x1, [x29, 1360]
	add	w0, w23, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 395 33 is_stmt 0 discriminator 76
	cmp	w24, w25
	.loc 1 395 33 discriminator 80
	cmp	w24, w25
	bge	L684
	.loc 1 395 33 discriminator 81
	sxtw	x1, w25
	add	w0, w24, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 704]
	str	xzr, [x29, 712]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 192]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1112]
	ldr	x0, [x29, 1112]
	add	x0, x1, x0
	str	x0, [x29, 1112]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1104]
L684:
	.loc 1 395 33 discriminator 84
	cmp	w24, w25
	.loc 1 395 33 discriminator 88
	add	w0, w24, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 32
	strb	w0, [x1, -1]
	.loc 1 395 33 discriminator 89
	cmp	w25, w26
	.loc 1 395 33 discriminator 93
	cmp	w25, w26
	bge	L690
	.loc 1 395 33 discriminator 94
	sxtw	x1, w26
	add	w0, w25, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 688]
	str	xzr, [x29, 696]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 176]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1096]
	ldr	x0, [x29, 1096]
	add	x0, x1, x0
	str	x0, [x29, 1096]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1088]
L690:
	.loc 1 395 33 discriminator 97
	cmp	w25, w26
	bge	L691
	.loc 1 395 33 discriminator 98
	sxtw	x1, w26
	add	w0, w25, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L692
L691:
	.loc 1 395 33 discriminator 99
	mov	x4, 0
L692:
	.loc 1 392 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -192]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 392 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L696
	.loc 1 392 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 672]
	str	xzr, [x29, 680]
	add	x0, x29, 512
	ldp	x5, x6, [x0, 160]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1080]
	ldr	x0, [x29, 1080]
	add	x0, x1, x0
	str	x0, [x29, 1080]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1072]
L696:
	.loc 1 392 20 discriminator 12
	cmp	w2, w3
	.loc 1 395 33 is_stmt 1
	ldr	x1, [x29, 1344]
	add	w0, w25, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 395 33 is_stmt 0 discriminator 100
	cmp	w26, w27
	.loc 1 395 33 discriminator 104
	cmp	w26, w27
	bge	L702
	.loc 1 395 33 discriminator 105
	sxtw	x1, w27
	add	w0, w26, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 656]
	str	xzr, [x29, 664]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 144]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1064]
	ldr	x0, [x29, 1064]
	add	x0, x1, x0
	str	x0, [x29, 1064]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1056]
L702:
	.loc 1 395 33 discriminator 108
	cmp	w26, w27
	.loc 1 395 33 discriminator 112
	add	w0, w26, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 58
	strb	w0, [x1, -1]
	.loc 1 395 33 discriminator 113
	cmp	w27, w28
	.loc 1 395 33 discriminator 117
	cmp	w27, w28
	bge	L708
	.loc 1 395 33 discriminator 118
	sxtw	x1, w28
	add	w0, w27, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 640]
	str	xzr, [x29, 648]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 128]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1048]
	ldr	x0, [x29, 1048]
	add	x0, x1, x0
	str	x0, [x29, 1048]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1040]
L708:
	.loc 1 395 33 discriminator 121
	cmp	w27, w28
	bge	L709
	.loc 1 395 33 discriminator 122
	sxtw	x1, w28
	add	w0, w27, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L710
L709:
	.loc 1 395 33 discriminator 123
	mov	x4, 0
L710:
	.loc 1 393 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -208]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 393 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L714
	.loc 1 393 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 624]
	str	xzr, [x29, 632]
	add	x0, x29, 512
	ldp	x5, x6, [x0, 112]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1032]
	ldr	x0, [x29, 1032]
	add	x0, x1, x0
	str	x0, [x29, 1032]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1024]
L714:
	.loc 1 393 20 discriminator 12
	cmp	w2, w3
	.loc 1 395 33 is_stmt 1
	ldr	x1, [x29, 1328]
	add	w0, w27, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 395 33 is_stmt 0 discriminator 124
	ldr	w0, [x29, 1456]
	cmp	w28, w0
	.loc 1 395 33 discriminator 128
	cmp	w28, w0
	bge	L720
	.loc 1 395 33 discriminator 129
	sxtw	x1, w0
	add	w0, w28, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 608]
	str	xzr, [x29, 616]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 96]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1016]
	ldr	x0, [x29, 1016]
	add	x0, x1, x0
	str	x0, [x29, 1016]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1008]
L720:
	.loc 1 395 33 discriminator 132
	ldr	w2, [x29, 1456]
	cmp	w28, w2
	.loc 1 395 33 discriminator 136
	add	w0, w28, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 58
	strb	w0, [x1, -1]
	.loc 1 395 33 discriminator 137
	ldr	w0, [x29, 1440]
	cmp	w2, w0
	.loc 1 395 33 discriminator 141
	cmp	w2, w0
	bge	L726
	.loc 1 395 33 discriminator 142
	sxtw	x1, w0
	add	w0, w2, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 592]
	str	xzr, [x29, 600]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 80]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1000]
	ldr	x0, [x29, 1000]
	add	x0, x1, x0
	str	x0, [x29, 1000]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 992]
L726:
	.loc 1 395 33 discriminator 145
	ldr	w0, [x29, 1456]
	ldr	w1, [x29, 1440]
	cmp	w0, w1
	bge	L727
	.loc 1 395 33 discriminator 146
	sxtw	x1, w1
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L728
L727:
	.loc 1 395 33 discriminator 147
	mov	x4, 0
L728:
	.loc 1 394 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -224]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 394 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L732
	.loc 1 394 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 576]
	str	xzr, [x29, 584]
	add	x0, x29, 512
	ldp	x5, x6, [x0, 64]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 984]
	ldr	x0, [x29, 984]
	add	x0, x1, x0
	str	x0, [x29, 984]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 976]
L732:
	.loc 1 394 20 discriminator 12
	cmp	w2, w3
	.loc 1 395 33 is_stmt 1
	ldr	x1, [x29, 1312]
	ldr	w0, [x29, 1456]
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 395 33 is_stmt 0 discriminator 148
	ldr	w0, [x29, 1440]
	ldr	w1, [x29, 1424]
	cmp	w0, w1
	.loc 1 395 33 discriminator 152
	cmp	w0, w1
	bge	L738
	.loc 1 395 33 discriminator 153
	sxtw	x1, w1
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 560]
	str	xzr, [x29, 568]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 48]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 968]
	ldr	x0, [x29, 968]
	add	x0, x1, x0
	str	x0, [x29, 968]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 960]
L738:
	.loc 1 395 33 discriminator 156
	ldr	w0, [x29, 1440]
	ldr	w3, [x29, 1424]
	cmp	w0, w3
	.loc 1 395 33 discriminator 160
	add	w0, w0, 1
	sxtw	x0, w0
	add	x0, x22, x0
	sub	x1, x0, #1
	adrp	x0, lC41@PAGE
	add	x0, x0, lC41@PAGEOFF;
	mov	x2, x1
	ldrh	w1, [x0]
	ldrb	w0, [x0, 2]
	strh	w1, [x2]
	strb	w0, [x2, 2]
	.loc 1 395 33 discriminator 161
	ldr	w0, [x29, 1408]
	cmp	w3, w0
	.loc 1 395 33 discriminator 165
	cmp	w3, w0
	bge	L744
	.loc 1 395 33 discriminator 166
	sxtw	x1, w0
	add	w0, w3, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 544]
	str	xzr, [x29, 552]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 32]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 952]
	ldr	x0, [x29, 952]
	add	x0, x1, x0
	str	x0, [x29, 952]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 944]
L744:
	.loc 1 395 33 discriminator 169
	ldr	w0, [x29, 1424]
	ldr	w1, [x29, 1408]
	cmp	w0, w1
	bge	L745
	.loc 1 395 33 discriminator 170
	sxtw	x1, w1
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x2, x0, 1
	b	L746
L745:
	.loc 1 395 33 discriminator 171
	mov	x2, 0
L746:
	.loc 1 395 33 discriminator 173
	ldr	x1, [x29, 1488]
	ldr	w0, [x29, 1424]
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x2
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 395 33 discriminator 174
	ldr	w0, [x29, 1408]
	ldr	w1, [x29, 1392]
	cmp	w0, w1
	.loc 1 395 33 discriminator 178
	cmp	w0, w1
	bge	L750
	.loc 1 395 33 discriminator 179
	sxtw	x1, w1
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 528]
	str	xzr, [x29, 536]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 16]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 936]
	ldr	x0, [x29, 936]
	add	x0, x1, x0
	str	x0, [x29, 936]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 928]
L750:
	.loc 1 395 33 discriminator 182
	ldr	w0, [x29, 1408]
	ldr	w2, [x29, 1392]
	cmp	w0, w2
	.loc 1 395 33 discriminator 186
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 8285
	strh	w0, [x1, -1]
	.loc 1 395 33 discriminator 187
	ldr	w0, [x29, 880]
	cmp	w2, w0
	.loc 1 395 33 discriminator 191
	cmp	w2, w0
	bge	L756
	.loc 1 395 33 discriminator 192
	sxtw	x1, w0
	add	w0, w2, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 512]
	str	xzr, [x29, 520]
	add	x0, x29, 512
	ldp	x2, x3, [x0]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 920]
	ldr	x0, [x29, 920]
	add	x0, x1, x0
	str	x0, [x29, 920]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 912]
L756:
	.loc 1 395 33 discriminator 195
	ldr	w0, [x29, 1392]
	ldr	w1, [x29, 880]
	cmp	w0, w1
	bge	L757
	.loc 1 395 33 discriminator 196
	sxtw	x1, w1
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x2, x0, 1
	b	L758
L757:
	.loc 1 395 33 discriminator 197
	mov	x2, 0
L758:
	.loc 1 395 33 discriminator 199
	ldr	x1, [x29, 1472]
	ldr	w0, [x29, 1392]
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	bl	_memcpy
	.loc 1 388 10 is_stmt 1
	ldr	x0, [x29, 1624]
	str	x22, [x29, 400]
	mov	w1, 1
	str	w1, [x29, 1736]
	ldr	w1, [x29, 1824]
	str	w1, [x29, 1740]
	add	x1, x29, 1736
	str	x1, [x29, 408]
	ldp	x1, x2, [x29, 400]
	bl	_ada__text_io__put_line
LEHE40:
	.loc 1 388 0 discriminator 2
	mov	w19, 1
L771:
	.loc 1 388 0 is_stmt 0 discriminator 3
	add	x0, x29, 1632
	mov	x16, x0
LEHB41:
	bl	_smc_files__notify_user__B_14__B339b___finalizer.3
LEHE41:
	.loc 1 388 0 discriminator 5
	cmp	w19, 1
	bne	L759
	.loc 1 388 0
	mov	w0, 1
L773:
	.loc 1 388 0 discriminator 6
	cmp	w0, 1
	bne	L760
	.loc 1 388 0
	nop
LBE59:
	.loc 1 396 10 is_stmt 1
	add	x0, x29, 1624
LEHB42:
	bl	_ada__text_io__close
LEHE42:
L777:
LBE55:
LBB61:
	.loc 1 401 7
	mov	x0, sp
	mov	x19, x0
	.loc 1 401 57 discriminator 1
	ldr	w0, [x29, 1240]
	add	w0, w0, 22
	add	w0, w0, 2
	ldr	w1, [x29, 1244]
	add	w0, w0, w1
	str	w0, [x29, 1780]
	ldrsw	x0, [x29, 1780]
	str	x0, [x29, 1768]
	ldrsw	x0, [x29, 1780]
	str	x0, [x29, 496]
	str	xzr, [x29, 504]
	ldp	x2, x3, [x29, 496]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 1272]
	ldr	x1, [x29, 1272]
	add	x0, x0, x1
	str	x0, [x29, 1272]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1264]
	ldrsw	x0, [x29, 1780]
	str	x0, [x29, 480]
	str	xzr, [x29, 488]
	ldp	x2, x3, [x29, 480]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 1256]
	ldr	x1, [x29, 1256]
	add	x0, x0, x1
	str	x0, [x29, 1256]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1248]
	ldrsw	x0, [x29, 1780]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	add	x0, sp, 16
	str	x0, [x29, 1760]
LBB62:
	.loc 1 401 57 is_stmt 0 discriminator 2
	ldr	x0, [x29, 1760]
	str	x0, [x29, 416]
	mov	w0, 1
	str	w0, [x29, 1744]
	ldr	w0, [x29, 1780]
	str	w0, [x29, 1748]
	add	x0, x29, 1744
	str	x0, [x29, 424]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 432]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 440]
	adrp	x0, lC43@PAGE
	add	x0, x0, lC43@PAGEOFF;
	str	x0, [x29, 448]
	adrp	x0, lC18@PAGE
	add	x0, x0, lC18@PAGEOFF;
	str	x0, [x29, 456]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -64]
	stp	x0, x1, [sp]
	ldp	x6, x7, [x29, 448]
	add	x0, x29, 1536
	ldp	x4, x5, [x0, -48]
	ldp	x2, x3, [x29, 432]
	ldp	x0, x1, [x29, 416]
LEHB43:
	bl	_system__concat_4__str_concat_4
LBE62:
	.loc 1 401 7 is_stmt 1 discriminator 5
	ldr	x0, [x29, 1760]
	str	x0, [x29, 464]
	mov	w0, 1
	str	w0, [x29, 1752]
	ldr	w0, [x29, 1780]
	str	w0, [x29, 1756]
	add	x0, x29, 1752
	str	x0, [x29, 472]
	ldp	x0, x1, [x29, 464]
	bl	_ada__text_io__put_line__2
	.loc 1 401 0 discriminator 8
	mov	sp, x19
LBE61:
	.loc 1 402 8
	b	L787
L780:
	str	x0, [x29, 120]
	str	x1, [x29, 112]
	mov	w19, 0
LBB63:
LBB54:
	.loc 1 363 16
	b	L763
L613:
	ldr	x0, [x29, 120]
	str	x0, [x29, 1232]
	ldr	x28, [x29, 112]
	b	L764
L781:
	str	x0, [x29, 1232]
	mov	x28, x1
L764:
	mov	w0, 0
	b	L765
L614:
	ldr	x2, [x29, 1232]
	mov	x0, x28
	b	L766
L779:
LBE54:
LBE63:
LBE50:
	.loc 1 371 13
	mov	x2, x0
	mov	x0, x1
L766:
	cmp	x0, 1
	beq	L767
	mov	x0, x2
	bl	__Unwind_Resume
LEHE43:
L767:
LBB67:
LBB64:
	.loc 1 371 13 is_stmt 0 discriminator 1
	str	x2, [x29, 1880]
	.loc 1 371 13 discriminator 2
	ldr	x0, [x29, 1880]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 1872]
	.loc 1 372 19 is_stmt 1
	ldr	x0, [x29, 1624]
LEHB44:
	bl	_ada__text_io__is_open
	.loc 1 372 16 discriminator 2
	cmp	w0, 0
	beq	L768
	.loc 1 372 39 discriminator 3
	add	x0, x29, 1624
	bl	_ada__text_io__close
LEHE44:
L768:
	.loc 1 371 13
	mov	x2, 0
	ldr	x1, [x29, 1872]
	ldr	x0, [x29, 1880]
LEHB45:
	bl	___gnat_end_handler_v1
	b	L603
L782:
	mov	x19, x0
	str	x19, [x29, 1864]
	.loc 1 371 13 is_stmt 0 discriminator 5
	ldr	x2, [x29, 1864]
	ldr	x1, [x29, 1872]
	ldr	x0, [x29, 1880]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L784:
	str	x0, [x29, 104]
	str	x1, [x29, 96]
	mov	w19, 0
LBE64:
LBB65:
LBB60:
	.loc 1 388 10 is_stmt 1
	b	L771
L759:
	ldr	x0, [x29, 104]
	str	x0, [x29, 136]
	ldr	x0, [x29, 96]
	str	x0, [x29, 128]
	b	L772
L785:
	str	x0, [x29, 136]
	str	x1, [x29, 128]
L772:
	mov	w0, 0
	b	L773
L760:
	ldr	x0, [x29, 136]
	ldr	x1, [x29, 128]
	b	L774
L783:
L774:
LBE60:
LBE65:
LBE67:
	.loc 1 398 10
	cmp	x1, 2
	beq	L775
	bl	__Unwind_Resume
LEHE45:
L775:
LBB68:
LBB66:
	.loc 1 398 10 is_stmt 0 discriminator 1
	str	x0, [x29, 1800]
	.loc 1 398 10 discriminator 2
	ldr	x0, [x29, 1800]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 1792]
	.loc 1 399 16 is_stmt 1
	ldr	x0, [x29, 1624]
LEHB46:
	bl	_ada__text_io__is_open
	.loc 1 399 13 discriminator 2
	cmp	w0, 0
	beq	L776
	.loc 1 399 36 discriminator 3
	add	x0, x29, 1624
	bl	_ada__text_io__close
LEHE46:
L776:
	.loc 1 398 10
	mov	x2, 0
	ldr	x1, [x29, 1792]
	ldr	x0, [x29, 1800]
LEHB47:
	bl	___gnat_end_handler_v1
	b	L777
L786:
	mov	x19, x0
	str	x19, [x29, 1784]
	.loc 1 398 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 1784]
	ldr	x1, [x29, 1792]
	ldr	x0, [x29, 1800]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L787:
LBE66:
LBE68:
	.loc 1 402 8 is_stmt 1
LEHE47:
	sub	sp, x29, #16
LCFI62:
	ldp	x29, x30, [sp, 16]
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	ldp	x27, x28, [sp, 96]
	add	sp, sp, 1952
LCFI63:
	ret
LFE13:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
	.align	2
LLSDA13:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT13-LLSDATTD13
LLSDATTD13:
	.byte	0x1
	.uleb128 LLSDACSE13-LLSDACSB13
LLSDACSB13:
	.uleb128 LEHB27-LFB13
	.uleb128 LEHE27-LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB28-LFB13
	.uleb128 LEHE28-LEHB28
	.uleb128 L779-LFB13
	.uleb128 0x1
	.uleb128 LEHB29-LFB13
	.uleb128 LEHE29-LEHB29
	.uleb128 L780-LFB13
	.uleb128 0x3
	.uleb128 LEHB30-LFB13
	.uleb128 LEHE30-LEHB30
	.uleb128 L781-LFB13
	.uleb128 0x3
	.uleb128 LEHB31-LFB13
	.uleb128 LEHE31-LEHB31
	.uleb128 L779-LFB13
	.uleb128 0x1
	.uleb128 LEHB32-LFB13
	.uleb128 LEHE32-LEHB32
	.uleb128 L783-LFB13
	.uleb128 0x5
	.uleb128 LEHB33-LFB13
	.uleb128 LEHE33-LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB34-LFB13
	.uleb128 LEHE34-LEHB34
	.uleb128 L783-LFB13
	.uleb128 0x5
	.uleb128 LEHB35-LFB13
	.uleb128 LEHE35-LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB36-LFB13
	.uleb128 LEHE36-LEHB36
	.uleb128 L783-LFB13
	.uleb128 0x5
	.uleb128 LEHB37-LFB13
	.uleb128 LEHE37-LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB38-LFB13
	.uleb128 LEHE38-LEHB38
	.uleb128 L783-LFB13
	.uleb128 0x5
	.uleb128 LEHB39-LFB13
	.uleb128 LEHE39-LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB40-LFB13
	.uleb128 LEHE40-LEHB40
	.uleb128 L784-LFB13
	.uleb128 0x7
	.uleb128 LEHB41-LFB13
	.uleb128 LEHE41-LEHB41
	.uleb128 L785-LFB13
	.uleb128 0x7
	.uleb128 LEHB42-LFB13
	.uleb128 LEHE42-LEHB42
	.uleb128 L783-LFB13
	.uleb128 0x5
	.uleb128 LEHB43-LFB13
	.uleb128 LEHE43-LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB44-LFB13
	.uleb128 LEHE44-LEHB44
	.uleb128 L782-LFB13
	.uleb128 0
	.uleb128 LEHB45-LFB13
	.uleb128 LEHE45-LEHB45
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB46-LFB13
	.uleb128 LEHE46-LEHB46
	.uleb128 L786-LFB13
	.uleb128 0
	.uleb128 LEHB47-LFB13
	.uleb128 LEHE47-LEHB47
	.uleb128 0
	.uleb128 0
LLSDACSE13:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr7:
	.long	___gnat_others_value@GOT-L_got_pcr7
L_got_pcr8:
	.long	___gnat_others_value@GOT-L_got_pcr8
LLSDATT13:
	.text
	.const
	.align	2
lC16:
	.word	1
	.word	51
	.align	3
lC41:
	.ascii "] ["
	.align	2
lC17:
	.word	1
	.word	22
	.align	2
lC18:
	.word	1
	.word	2
	.text
	.align	2
_smc_files__notify_user__B_14__B339b___finalizer.3:
LFB15:
	stp	x29, x30, [sp, -32]!
LCFI64:
	mov	x29, sp
LCFI65:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI66:
	ret
LFE15:
	.align	2
_smc_files__write_earu_temp__B_15__B505b___finalizer.4:
LFB17:
	stp	x29, x30, [sp, -32]!
LCFI67:
	mov	x29, sp
LCFI68:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI69:
	ret
LFE17:
	.const
	.align	3
lC44:
	.ascii "/usr/local/EnvironmentalAwareReferentialUnit/EARU_dataIO/sensor_temp_"
	.align	3
lC45:
	.ascii ".dat"
	.text
	.align	2
	.globl _smc_files__write_earu_temp
_smc_files__write_earu_temp:
LFB16:
	.loc 1 408 4
	stp	x29, x30, [sp, -416]!
LCFI70:
	mov	x29, sp
LCFI71:
LEHB48:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI72:
	stp	x0, x1, [x29, 256]
	str	s0, [x29, 252]
	.loc 1 408 4
	add	x0, x29, 416
	.loc 1 408 4 is_stmt 0 discriminator 1
	str	x0, [x29, 320]
	ldr	x0, [x29, 264]
	ldr	w3, [x0]
	ldr	x0, [x29, 264]
	ldr	w2, [x0, 4]
	cmp	w2, w3
	blt	L793
	.loc 1 408 4 discriminator 2
	sub	w0, w2, w3
	add	w14, w0, 1
	b	L794
L793:
	.loc 1 408 4 discriminator 3
	mov	w14, 0
L794:
LBB69:
	mov	x0, sp
	mov	x28, x0
	.loc 1 408 4 discriminator 5
	cmp	w2, w3
	.loc 1 408 4 discriminator 9
	cmp	w2, w3
	blt	L798
	.loc 1 408 4 discriminator 10
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x4, x0
	mov	x5, 0
	lsr	x1, x4, 61
	lsl	x11, x5, 3
	mov	x0, x11
	add	x0, x1, x0
	mov	x11, x0
	lsl	x10, x4, 3
L798:
	.loc 1 408 4 discriminator 13
	cmp	w2, w3
	.loc 1 411 7 is_stmt 1
	str	xzr, [x29, 288]
	.loc 1 412 112
	add	w0, w14, 69
	add	w0, w0, 4
	str	w0, [x29, 412]
	ldrsw	x0, [x29, 412]
	str	x0, [x29, 400]
	ldrsw	x0, [x29, 412]
	mov	x6, x0
	mov	x7, 0
	lsr	x1, x6, 61
	lsl	x13, x7, 3
	mov	x0, x13
	add	x0, x1, x0
	mov	x13, x0
	lsl	x12, x6, 3
	ldrsw	x0, [x29, 412]
	mov	x8, x0
	mov	x9, 0
	lsr	x1, x8, 61
	lsl	x17, x9, 3
	mov	x0, x17
	add	x0, x1, x0
	mov	x17, x0
	lsl	x16, x8, 3
	ldrsw	x0, [x29, 412]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	str	x0, [x29, 392]
LBB70:
	.loc 1 412 112 is_stmt 0 discriminator 1
	ldr	x0, [x29, 392]
	str	x0, [x29, 128]
	mov	w0, 1
	str	w0, [x29, 328]
	ldr	w0, [x29, 412]
	str	w0, [x29, 332]
	add	x0, x29, 328
	str	x0, [x29, 136]
	adrp	x0, lC44@PAGE
	add	x0, x0, lC44@PAGEOFF;
	str	x0, [x29, 144]
	adrp	x0, lC19@PAGE
	add	x0, x0, lC19@PAGEOFF;
	str	x0, [x29, 152]
	adrp	x0, lC45@PAGE
	add	x0, x0, lC45@PAGEOFF;
	str	x0, [x29, 160]
	adrp	x0, lC4@PAGE
	add	x0, x0, lC4@PAGEOFF;
	str	x0, [x29, 168]
	ldp	x6, x7, [x29, 160]
	ldp	x4, x5, [x29, 256]
	ldp	x2, x3, [x29, 144]
	ldp	x0, x1, [x29, 128]
	bl	_system__concat_3__str_concat_3
LEHE48:
LBE70:
	.loc 1 412 7 is_stmt 1 discriminator 3
	ldrsw	x0, [x29, 412]
	str	x0, [x29, 384]
	ldrsw	x0, [x29, 412]
	mov	x22, x0
	mov	x23, 0
	lsr	x0, x22, 61
	lsl	x27, x23, 3
	mov	x1, x27
	add	x0, x0, x1
	mov	x27, x0
	lsl	x26, x22, 3
	ldr	x0, [x29, 392]
	str	x0, [x29, 376]
LBB71:
LBB72:
	.loc 1 415 10
	ldr	x6, [x29, 288]
	ldr	x0, [x29, 392]
	str	x0, [x29, 176]
	mov	w0, 1
	str	w0, [x29, 336]
	ldr	w0, [x29, 412]
	str	w0, [x29, 340]
	add	x0, x29, 336
	str	x0, [x29, 184]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 192]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 200]
	ldp	x4, x5, [x29, 192]
	ldp	x2, x3, [x29, 176]
	mov	w1, 2
	mov	x0, x6
LEHB49:
	bl	_ada__text_io__create
LEHE49:
	.loc 1 415 10 is_stmt 0 discriminator 2
	str	x0, [x29, 288]
LBE72:
LBB73:
	add	x0, x29, 296
	mov	x8, x0
LEHB50:
	bl	_system__secondary_stack__ss_mark
	.loc 1 416 32 is_stmt 1
	add	x0, x29, 272
	str	x0, [x29, 208]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 216]
	mov	w2, 6
	ldp	x0, x1, [x29, 208]
	ldr	s0, [x29, 252]
	bl	_system__img_flt__impl__image_floating_point
	.loc 1 416 32 is_stmt 0 discriminator 2
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	mov	x20, x1
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x25, x21, 3
	mov	x2, x25
	add	x1, x1, x2
	mov	x25, x1
	lsl	x24, x20, 3
	.loc 1 416 10 is_stmt 1 discriminator 2
	ldr	x19, [x29, 288]
	.loc 1 416 21 discriminator 2
	add	x1, x29, 272
	str	x1, [x29, 224]
	mov	w1, 1
	str	w1, [x29, 344]
	str	w0, [x29, 348]
	add	x0, x29, 344
	str	x0, [x29, 232]
	mov	w2, 2
	ldp	x0, x1, [x29, 224]
	bl	_ada__strings__fixed__trim
	.loc 1 416 10 discriminator 4
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ada__text_io__put__3
LEHE50:
	.loc 1 416 0 discriminator 6
	mov	w19, 1
L805:
	.loc 1 416 0 is_stmt 0 discriminator 7
	add	x0, x29, 296
	mov	x16, x0
LEHB51:
	bl	_smc_files__write_earu_temp__B_15__B505b___finalizer.4
LEHE51:
	.loc 1 416 0 discriminator 9
	cmp	w19, 1
	bne	L801
	.loc 1 416 0
	mov	w0, 1
L807:
	.loc 1 416 0 discriminator 10
	cmp	w0, 1
	bne	L802
	.loc 1 416 0
	nop
LBE73:
	.loc 1 417 10 is_stmt 1
	add	x0, x29, 288
LEHB52:
	bl	_ada__text_io__close
LEHE52:
L811:
LEHB53:
LBE71:
	.loc 1 422 8
	mov	sp, x28
	b	L817
L814:
	str	x0, [x29, 112]
	str	x1, [x29, 104]
	mov	w19, 0
LBB75:
LBB74:
	.loc 1 416 10
	b	L805
L801:
	ldr	x0, [x29, 112]
	str	x0, [x29, 240]
	ldr	x0, [x29, 104]
	str	x0, [x29, 120]
	b	L806
L815:
	str	x0, [x29, 240]
	str	x1, [x29, 120]
L806:
	mov	w0, 0
	b	L807
L802:
	ldr	x0, [x29, 240]
	ldr	x1, [x29, 120]
	b	L808
L813:
L808:
LBE74:
LBE75:
LBE69:
	.loc 1 419 10
	cmp	x1, 1
	beq	L809
	bl	__Unwind_Resume
LEHE53:
L809:
LBB77:
LBB76:
	.loc 1 419 10 is_stmt 0 discriminator 1
	str	x0, [x29, 368]
	.loc 1 419 10 discriminator 2
	ldr	x0, [x29, 368]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 360]
	.loc 1 420 16 is_stmt 1
	ldr	x0, [x29, 288]
LEHB54:
	bl	_ada__text_io__is_open
	.loc 1 420 13 discriminator 2
	cmp	w0, 0
	beq	L810
	.loc 1 420 36 discriminator 3
	add	x0, x29, 288
	bl	_ada__text_io__close
LEHE54:
L810:
	.loc 1 419 10
	mov	x2, 0
	ldr	x1, [x29, 360]
	ldr	x0, [x29, 368]
LEHB55:
	bl	___gnat_end_handler_v1
	b	L811
L816:
	mov	x19, x0
	str	x19, [x29, 352]
	.loc 1 419 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 352]
	ldr	x1, [x29, 360]
	ldr	x0, [x29, 368]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L817:
LBE76:
LBE77:
	.loc 1 422 8 is_stmt 1
LEHE55:
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 416
LCFI73:
	ret
LFE16:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
	.align	2
LLSDA16:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT16-LLSDATTD16
LLSDATTD16:
	.byte	0x1
	.uleb128 LLSDACSE16-LLSDACSB16
LLSDACSB16:
	.uleb128 LEHB48-LFB16
	.uleb128 LEHE48-LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB49-LFB16
	.uleb128 LEHE49-LEHB49
	.uleb128 L813-LFB16
	.uleb128 0x1
	.uleb128 LEHB50-LFB16
	.uleb128 LEHE50-LEHB50
	.uleb128 L814-LFB16
	.uleb128 0x3
	.uleb128 LEHB51-LFB16
	.uleb128 LEHE51-LEHB51
	.uleb128 L815-LFB16
	.uleb128 0x3
	.uleb128 LEHB52-LFB16
	.uleb128 LEHE52-LEHB52
	.uleb128 L813-LFB16
	.uleb128 0x1
	.uleb128 LEHB53-LFB16
	.uleb128 LEHE53-LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB54-LFB16
	.uleb128 LEHE54-LEHB54
	.uleb128 L816-LFB16
	.uleb128 0
	.uleb128 LEHB55-LFB16
	.uleb128 LEHE55-LEHB55
	.uleb128 0
	.uleb128 0
LLSDACSE16:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr9:
	.long	___gnat_others_value@GOT-L_got_pcr9
LLSDATT16:
	.text
	.const
	.align	2
lC19:
	.word	1
	.word	69
	.text
	.align	2
_smc_files__write_earu_fan__B_16__B521b___finalizer.5:
LFB19:
	stp	x29, x30, [sp, -32]!
LCFI74:
	mov	x29, sp
LCFI75:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI76:
	ret
LFE19:
	.const
	.align	3
lC46:
	.ascii "/usr/local/EnvironmentalAwareReferentialUnit/EARU_dataIO/sensor_fan_"
	.text
	.align	2
	.globl _smc_files__write_earu_fan
_smc_files__write_earu_fan:
LFB18:
	.loc 1 428 4
	stp	x29, x30, [sp, -416]!
LCFI77:
	mov	x29, sp
LCFI78:
LEHB56:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI79:
	stp	x0, x1, [x29, 256]
	str	s0, [x29, 252]
	.loc 1 428 4
	add	x0, x29, 416
	.loc 1 428 4 is_stmt 0 discriminator 1
	str	x0, [x29, 320]
	ldr	x0, [x29, 264]
	ldr	w3, [x0]
	ldr	x0, [x29, 264]
	ldr	w2, [x0, 4]
	cmp	w2, w3
	blt	L821
	.loc 1 428 4 discriminator 2
	sub	w0, w2, w3
	add	w14, w0, 1
	b	L822
L821:
	.loc 1 428 4 discriminator 3
	mov	w14, 0
L822:
LBB78:
	mov	x0, sp
	mov	x28, x0
	.loc 1 428 4 discriminator 5
	cmp	w2, w3
	.loc 1 428 4 discriminator 9
	cmp	w2, w3
	blt	L826
	.loc 1 428 4 discriminator 10
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x4, x0
	mov	x5, 0
	lsr	x1, x4, 61
	lsl	x11, x5, 3
	mov	x0, x11
	add	x0, x1, x0
	mov	x11, x0
	lsl	x10, x4, 3
L826:
	.loc 1 428 4 discriminator 13
	cmp	w2, w3
	.loc 1 431 7 is_stmt 1
	str	xzr, [x29, 288]
	.loc 1 432 111
	add	w0, w14, 68
	add	w0, w0, 4
	str	w0, [x29, 412]
	ldrsw	x0, [x29, 412]
	str	x0, [x29, 400]
	ldrsw	x0, [x29, 412]
	mov	x6, x0
	mov	x7, 0
	lsr	x1, x6, 61
	lsl	x13, x7, 3
	mov	x0, x13
	add	x0, x1, x0
	mov	x13, x0
	lsl	x12, x6, 3
	ldrsw	x0, [x29, 412]
	mov	x8, x0
	mov	x9, 0
	lsr	x1, x8, 61
	lsl	x17, x9, 3
	mov	x0, x17
	add	x0, x1, x0
	mov	x17, x0
	lsl	x16, x8, 3
	ldrsw	x0, [x29, 412]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	str	x0, [x29, 392]
LBB79:
	.loc 1 432 111 is_stmt 0 discriminator 1
	ldr	x0, [x29, 392]
	str	x0, [x29, 128]
	mov	w0, 1
	str	w0, [x29, 328]
	ldr	w0, [x29, 412]
	str	w0, [x29, 332]
	add	x0, x29, 328
	str	x0, [x29, 136]
	adrp	x0, lC46@PAGE
	add	x0, x0, lC46@PAGEOFF;
	str	x0, [x29, 144]
	adrp	x0, lC20@PAGE
	add	x0, x0, lC20@PAGEOFF;
	str	x0, [x29, 152]
	adrp	x0, lC45@PAGE
	add	x0, x0, lC45@PAGEOFF;
	str	x0, [x29, 160]
	adrp	x0, lC4@PAGE
	add	x0, x0, lC4@PAGEOFF;
	str	x0, [x29, 168]
	ldp	x6, x7, [x29, 160]
	ldp	x4, x5, [x29, 256]
	ldp	x2, x3, [x29, 144]
	ldp	x0, x1, [x29, 128]
	bl	_system__concat_3__str_concat_3
LEHE56:
LBE79:
	.loc 1 432 7 is_stmt 1 discriminator 3
	ldrsw	x0, [x29, 412]
	str	x0, [x29, 384]
	ldrsw	x0, [x29, 412]
	mov	x22, x0
	mov	x23, 0
	lsr	x0, x22, 61
	lsl	x27, x23, 3
	mov	x1, x27
	add	x0, x0, x1
	mov	x27, x0
	lsl	x26, x22, 3
	ldr	x0, [x29, 392]
	str	x0, [x29, 376]
LBB80:
LBB81:
	.loc 1 435 10
	ldr	x6, [x29, 288]
	ldr	x0, [x29, 392]
	str	x0, [x29, 176]
	mov	w0, 1
	str	w0, [x29, 336]
	ldr	w0, [x29, 412]
	str	w0, [x29, 340]
	add	x0, x29, 336
	str	x0, [x29, 184]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 192]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 200]
	ldp	x4, x5, [x29, 192]
	ldp	x2, x3, [x29, 176]
	mov	w1, 2
	mov	x0, x6
LEHB57:
	bl	_ada__text_io__create
LEHE57:
	.loc 1 435 10 is_stmt 0 discriminator 2
	str	x0, [x29, 288]
LBE81:
LBB82:
	add	x0, x29, 296
	mov	x8, x0
LEHB58:
	bl	_system__secondary_stack__ss_mark
	.loc 1 436 32 is_stmt 1
	add	x0, x29, 272
	str	x0, [x29, 208]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 216]
	mov	w2, 6
	ldp	x0, x1, [x29, 208]
	ldr	s0, [x29, 252]
	bl	_system__img_flt__impl__image_floating_point
	.loc 1 436 32 is_stmt 0 discriminator 2
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	mov	x20, x1
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x25, x21, 3
	mov	x2, x25
	add	x1, x1, x2
	mov	x25, x1
	lsl	x24, x20, 3
	.loc 1 436 10 is_stmt 1 discriminator 2
	ldr	x19, [x29, 288]
	.loc 1 436 21 discriminator 2
	add	x1, x29, 272
	str	x1, [x29, 224]
	mov	w1, 1
	str	w1, [x29, 344]
	str	w0, [x29, 348]
	add	x0, x29, 344
	str	x0, [x29, 232]
	mov	w2, 2
	ldp	x0, x1, [x29, 224]
	bl	_ada__strings__fixed__trim
	.loc 1 436 10 discriminator 4
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ada__text_io__put__3
LEHE58:
	.loc 1 436 0 discriminator 6
	mov	w19, 1
L833:
	.loc 1 436 0 is_stmt 0 discriminator 7
	add	x0, x29, 296
	mov	x16, x0
LEHB59:
	bl	_smc_files__write_earu_fan__B_16__B521b___finalizer.5
LEHE59:
	.loc 1 436 0 discriminator 9
	cmp	w19, 1
	bne	L829
	.loc 1 436 0
	mov	w0, 1
L835:
	.loc 1 436 0 discriminator 10
	cmp	w0, 1
	bne	L830
	.loc 1 436 0
	nop
LBE82:
	.loc 1 437 10 is_stmt 1
	add	x0, x29, 288
LEHB60:
	bl	_ada__text_io__close
LEHE60:
L839:
LEHB61:
LBE80:
	.loc 1 442 8
	mov	sp, x28
	b	L845
L842:
	str	x0, [x29, 112]
	str	x1, [x29, 104]
	mov	w19, 0
LBB84:
LBB83:
	.loc 1 436 10
	b	L833
L829:
	ldr	x0, [x29, 112]
	str	x0, [x29, 240]
	ldr	x0, [x29, 104]
	str	x0, [x29, 120]
	b	L834
L843:
	str	x0, [x29, 240]
	str	x1, [x29, 120]
L834:
	mov	w0, 0
	b	L835
L830:
	ldr	x0, [x29, 240]
	ldr	x1, [x29, 120]
	b	L836
L841:
L836:
LBE83:
LBE84:
LBE78:
	.loc 1 439 10
	cmp	x1, 1
	beq	L837
	bl	__Unwind_Resume
LEHE61:
L837:
LBB86:
LBB85:
	.loc 1 439 10 is_stmt 0 discriminator 1
	str	x0, [x29, 368]
	.loc 1 439 10 discriminator 2
	ldr	x0, [x29, 368]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 360]
	.loc 1 440 16 is_stmt 1
	ldr	x0, [x29, 288]
LEHB62:
	bl	_ada__text_io__is_open
	.loc 1 440 13 discriminator 2
	cmp	w0, 0
	beq	L838
	.loc 1 440 36 discriminator 3
	add	x0, x29, 288
	bl	_ada__text_io__close
LEHE62:
L838:
	.loc 1 439 10
	mov	x2, 0
	ldr	x1, [x29, 360]
	ldr	x0, [x29, 368]
LEHB63:
	bl	___gnat_end_handler_v1
	b	L839
L844:
	mov	x19, x0
	str	x19, [x29, 352]
	.loc 1 439 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 352]
	ldr	x1, [x29, 360]
	ldr	x0, [x29, 368]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L845:
LBE85:
LBE86:
	.loc 1 442 8 is_stmt 1
LEHE63:
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 416
LCFI80:
	ret
LFE18:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
	.align	2
LLSDA18:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT18-LLSDATTD18
LLSDATTD18:
	.byte	0x1
	.uleb128 LLSDACSE18-LLSDACSB18
LLSDACSB18:
	.uleb128 LEHB56-LFB18
	.uleb128 LEHE56-LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB57-LFB18
	.uleb128 LEHE57-LEHB57
	.uleb128 L841-LFB18
	.uleb128 0x1
	.uleb128 LEHB58-LFB18
	.uleb128 LEHE58-LEHB58
	.uleb128 L842-LFB18
	.uleb128 0x3
	.uleb128 LEHB59-LFB18
	.uleb128 LEHE59-LEHB59
	.uleb128 L843-LFB18
	.uleb128 0x3
	.uleb128 LEHB60-LFB18
	.uleb128 LEHE60-LEHB60
	.uleb128 L841-LFB18
	.uleb128 0x1
	.uleb128 LEHB61-LFB18
	.uleb128 LEHE61-LEHB61
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB62-LFB18
	.uleb128 LEHE62-LEHB62
	.uleb128 L844-LFB18
	.uleb128 0
	.uleb128 LEHB63-LFB18
	.uleb128 LEHE63-LEHB63
	.uleb128 0
	.uleb128 0
LLSDACSE18:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr10:
	.long	___gnat_others_value@GOT-L_got_pcr10
LLSDATT18:
	.text
	.const
	.align	2
lC20:
	.word	1
	.word	68
	.text
	.align	2
_smc_files__write_earu_turbo__B_17__B530b___finalizer.6:
LFB21:
	stp	x29, x30, [sp, -32]!
LCFI81:
	mov	x29, sp
LCFI82:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI83:
	ret
LFE21:
	.align	2
	.globl _smc_files__write_earu_turbo
_smc_files__write_earu_turbo:
LFB20:
	.loc 1 448 4
	stp	x29, x30, [sp, -224]!
LCFI84:
	mov	x29, sp
LCFI85:
LEHB64:
LEHE64:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI86:
	str	w0, [x29, 124]
	.loc 1 448 4
	add	x0, x29, 224
	.loc 1 448 4 is_stmt 0 discriminator 1
	str	x0, [x29, 176]
	.loc 1 451 7 is_stmt 1
	str	xzr, [x29, 184]
LBB87:
LBB88:
	.loc 1 455 10
	ldr	x6, [x29, 184]
	adrp	x0, _path.14@PAGE
	add	x2, x0, _path.14@PAGEOFF;
	adrp	x0, lC21@PAGE
	add	x3, x0, lC21@PAGEOFF;
	adrp	x0, lC29@PAGE
	add	x4, x0, lC29@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x5, x0, lC0@PAGEOFF;
	mov	w1, 2
	mov	x0, x6
LEHB65:
	bl	_ada__text_io__create
LEHE65:
	.loc 1 455 10 is_stmt 0 discriminator 2
	str	x0, [x29, 184]
LBE88:
LBB89:
	add	x0, x29, 152
	mov	x8, x0
LEHB66:
	bl	_system__secondary_stack__ss_mark
	.loc 1 456 34 is_stmt 1
	add	x0, x29, 136
	mov	x24, x0
	adrp	x0, lC12@PAGE
	add	x25, x0, lC12@PAGEOFF;
	mov	x1, x24
	mov	x2, x25
	ldr	w0, [x29, 124]
	bl	_system__img_int__impl__image_integer
	.loc 1 456 34 is_stmt 0 discriminator 2
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	mov	x20, x1
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x23, x21, 3
	mov	x2, x23
	add	x1, x1, x2
	mov	x23, x1
	lsl	x22, x20, 3
	.loc 1 456 10 is_stmt 1 discriminator 2
	ldr	x19, [x29, 184]
	.loc 1 456 21 discriminator 2
	add	x1, x29, 136
	mov	x26, x1
	mov	w1, 1
	str	w1, [x29, 192]
	str	w0, [x29, 196]
	add	x0, x29, 192
	mov	x27, x0
	mov	w2, 2
	mov	x0, x26
	mov	x1, x27
	bl	_ada__strings__fixed__trim
	.loc 1 456 10 discriminator 4
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ada__text_io__put__3
LEHE66:
	.loc 1 456 0 discriminator 6
	mov	w19, 1
L853:
	.loc 1 456 0 is_stmt 0 discriminator 7
	add	x0, x29, 152
	mov	x16, x0
LEHB67:
	bl	_smc_files__write_earu_turbo__B_17__B530b___finalizer.6
LEHE67:
	.loc 1 456 0 discriminator 9
	cmp	w19, 1
	bne	L849
	.loc 1 456 0
	mov	w0, 1
L855:
	.loc 1 456 0 discriminator 10
	cmp	w0, 1
	bne	L850
	.loc 1 456 0
	nop
LBE89:
	.loc 1 457 10 is_stmt 1
	add	x0, x29, 184
LEHB68:
	bl	_ada__text_io__close
LEHE68:
LBE87:
	.loc 1 462 8
	b	L848
L862:
	str	x0, [x29, 104]
	str	x1, [x29, 96]
	mov	w19, 0
LBB91:
LBB90:
	.loc 1 456 10
	b	L853
L849:
	ldr	x0, [x29, 104]
	str	x0, [x29, 112]
	ldr	x28, [x29, 96]
	b	L854
L863:
	str	x0, [x29, 112]
	mov	x28, x1
L854:
	mov	w0, 0
	b	L855
L850:
	ldr	x0, [x29, 112]
	mov	x1, x28
	b	L856
L861:
L856:
LBE90:
LBE91:
	.loc 1 459 10
	cmp	x1, 1
	beq	L857
LEHB69:
	bl	__Unwind_Resume
LEHE69:
L857:
LBB92:
	.loc 1 459 10 is_stmt 0 discriminator 1
	str	x0, [x29, 216]
	.loc 1 459 10 discriminator 2
	ldr	x0, [x29, 216]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 208]
	.loc 1 460 16 is_stmt 1
	ldr	x0, [x29, 184]
LEHB70:
	bl	_ada__text_io__is_open
	.loc 1 460 13 discriminator 2
	cmp	w0, 0
	beq	L858
	.loc 1 460 36 discriminator 3
	add	x0, x29, 184
	bl	_ada__text_io__close
LEHE70:
L858:
	.loc 1 459 10
	mov	x2, 0
	ldr	x1, [x29, 208]
	ldr	x0, [x29, 216]
LEHB71:
	bl	___gnat_end_handler_v1
LBE92:
	.loc 1 462 8
	b	L848
L864:
LBB93:
	.loc 1 459 10
	mov	x19, x0
	str	x19, [x29, 200]
	.loc 1 459 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 200]
	ldr	x1, [x29, 208]
	ldr	x0, [x29, 216]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L848:
LBE93:
	.loc 1 462 8 is_stmt 1
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE71:
	ldp	x29, x30, [sp], 224
LCFI87:
	ret
LFE20:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
	.align	2
LLSDA20:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT20-LLSDATTD20
LLSDATTD20:
	.byte	0x1
	.uleb128 LLSDACSE20-LLSDACSB20
LLSDACSB20:
	.uleb128 LEHB64-LFB20
	.uleb128 LEHE64-LEHB64
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB65-LFB20
	.uleb128 LEHE65-LEHB65
	.uleb128 L861-LFB20
	.uleb128 0x1
	.uleb128 LEHB66-LFB20
	.uleb128 LEHE66-LEHB66
	.uleb128 L862-LFB20
	.uleb128 0x3
	.uleb128 LEHB67-LFB20
	.uleb128 LEHE67-LEHB67
	.uleb128 L863-LFB20
	.uleb128 0x3
	.uleb128 LEHB68-LFB20
	.uleb128 LEHE68-LEHB68
	.uleb128 L861-LFB20
	.uleb128 0x1
	.uleb128 LEHB69-LFB20
	.uleb128 LEHE69-LEHB69
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB70-LFB20
	.uleb128 LEHE70-LEHB70
	.uleb128 L864-LFB20
	.uleb128 0
	.uleb128 LEHB71-LFB20
	.uleb128 LEHE71-LEHB71
	.uleb128 0
	.uleb128 0
LLSDACSE20:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr11:
	.long	___gnat_others_value@GOT-L_got_pcr11
LLSDATT20:
	.text
	.const
	.align	2
lC21:
	.word	1
	.word	78
	.text
	.align	2
_smc_files__load_fan_calibration__B_18__B539b___finalizer.7:
LFB23:
	stp	x29, x30, [sp, -32]!
LCFI88:
	mov	x29, sp
LCFI89:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI90:
	ret
LFE23:
	.align	2
	.globl _smc_files__load_fan_calibration
_smc_files__load_fan_calibration:
LFB22:
	.loc 1 468 4
	stp	x29, x30, [sp, -176]!
LCFI91:
	mov	x29, sp
LCFI92:
LEHB72:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
LCFI93:
	.loc 1 468 4
	add	x2, x29, 176
	.loc 1 468 4 is_stmt 0 discriminator 1
	str	x2, [x29, 136]
LBB94:
	.loc 1 470 7 is_stmt 1
	str	xzr, [x29, 104]
	.loc 1 472 22
	str	wzr, [x29, 148]
	.loc 1 473 29
	adrp	x2, _smc_files__calibration_file@PAGE
	add	x0, x2, _smc_files__calibration_file@PAGEOFF;
	adrp	x2, lC22@PAGE
	add	x1, x2, lC22@PAGEOFF;
	bl	_ada__directories__exists
LEHE72:
	.loc 1 473 29 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 473 7 is_stmt 1 discriminator 2
	cmp	w0, 0
	bne	L888
LBB95:
LBB96:
	.loc 1 478 10
	ldr	x6, [x29, 104]
	adrp	x0, _smc_files__calibration_file@PAGE
	add	x20, x0, _smc_files__calibration_file@PAGEOFF;
	adrp	x0, lC22@PAGE
	add	x21, x0, lC22@PAGEOFF;
	adrp	x0, lC29@PAGE
	add	x22, x0, lC29@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x23, x0, lC0@PAGEOFF;
	mov	x4, x22
	mov	x5, x23
	mov	x2, x20
	mov	x3, x21
	mov	w1, 0
	mov	x0, x6
LEHB73:
	bl	_ada__text_io__open
LEHE73:
	.loc 1 478 10 is_stmt 0 discriminator 2
	str	x0, [x29, 104]
LBE96:
LBB97:
	add	x0, x29, 112
	mov	x8, x0
LEHB74:
	bl	_system__secondary_stack__ss_mark
	.loc 1 479 41 is_stmt 1
	ldr	x0, [x29, 104]
	bl	_ada__text_io__get_line__3
	.loc 1 479 33 discriminator 2
	bl	_system__val_flt__impl__value_real
LEHE74:
	fmov	s31, s0
	.loc 1 479 25 discriminator 4
	str	s31, [x29, 148]
	.loc 1 479 0 discriminator 4
	mov	w19, 1
L875:
	.loc 1 479 0 is_stmt 0 discriminator 5
	add	x0, x29, 112
	mov	x16, x0
LEHB75:
	bl	_smc_files__load_fan_calibration__B_18__B539b___finalizer.7
LEHE75:
	.loc 1 479 0 discriminator 7
	cmp	w19, 1
	bne	L870
	.loc 1 479 0
	mov	w0, 1
L877:
	.loc 1 479 0 discriminator 8
	cmp	w0, 1
	bne	L871
	.loc 1 479 0
	nop
LBE97:
	.loc 1 480 10 is_stmt 1
	add	x0, x29, 104
LEHB76:
	bl	_ada__text_io__close
LEHE76:
LBE95:
	.loc 1 485 8
	b	L872
L888:
	.loc 1 474 10
	nop
L872:
LBE94:
	.loc 1 485 8 discriminator 1
	ldr	s31, [x29, 148]
	.loc 1 485 8 is_stmt 0
	b	L887
L884:
	mov	x27, x0
	mov	x26, x1
	mov	w19, 0
LBB102:
LBB99:
LBB98:
	.loc 1 479 25 is_stmt 1
	b	L875
L870:
	mov	x25, x27
	mov	x24, x26
	b	L876
L885:
	mov	x25, x0
	mov	x24, x1
L876:
	mov	w0, 0
	b	L877
L871:
	mov	x0, x25
	mov	x1, x24
	b	L878
L883:
L878:
LBE98:
LBE99:
LBE102:
	.loc 1 482 10
	cmp	x1, 1
	beq	L879
LEHB77:
	bl	__Unwind_Resume
LEHE77:
L879:
LBB103:
LBB100:
	.loc 1 482 10 is_stmt 0 discriminator 1
	str	x0, [x29, 168]
	.loc 1 482 10 discriminator 2
	ldr	x0, [x29, 168]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 160]
	.loc 1 483 16 is_stmt 1
	ldr	x0, [x29, 104]
LEHB78:
	bl	_ada__text_io__is_open
	.loc 1 483 13 discriminator 2
	cmp	w0, 0
	beq	L880
	.loc 1 483 36 discriminator 3
	add	x0, x29, 104
	bl	_ada__text_io__close
LEHE78:
L880:
	.loc 1 482 10
	mov	x2, 0
	ldr	x1, [x29, 160]
	ldr	x0, [x29, 168]
LEHB79:
	bl	___gnat_end_handler_v1
LBE100:
	.loc 1 485 8
	b	L872
L886:
LBB101:
	.loc 1 482 10
	mov	x19, x0
	str	x19, [x29, 152]
	.loc 1 482 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 152]
	ldr	x1, [x29, 160]
	ldr	x0, [x29, 168]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L887:
LBE101:
LBE103:
	.loc 1 485 8 is_stmt 1
	fmov	s0, s31
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
LEHE79:
	ldp	x29, x30, [sp], 176
LCFI94:
	ret
LFE22:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
	.align	2
LLSDA22:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT22-LLSDATTD22
LLSDATTD22:
	.byte	0x1
	.uleb128 LLSDACSE22-LLSDACSB22
LLSDACSB22:
	.uleb128 LEHB72-LFB22
	.uleb128 LEHE72-LEHB72
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB73-LFB22
	.uleb128 LEHE73-LEHB73
	.uleb128 L883-LFB22
	.uleb128 0x1
	.uleb128 LEHB74-LFB22
	.uleb128 LEHE74-LEHB74
	.uleb128 L884-LFB22
	.uleb128 0x3
	.uleb128 LEHB75-LFB22
	.uleb128 LEHE75-LEHB75
	.uleb128 L885-LFB22
	.uleb128 0x3
	.uleb128 LEHB76-LFB22
	.uleb128 LEHE76-LEHB76
	.uleb128 L883-LFB22
	.uleb128 0x1
	.uleb128 LEHB77-LFB22
	.uleb128 LEHE77-LEHB77
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB78-LFB22
	.uleb128 LEHE78-LEHB78
	.uleb128 L886-LFB22
	.uleb128 0
	.uleb128 LEHB79-LFB22
	.uleb128 LEHE79-LEHB79
	.uleb128 0
	.uleb128 0
LLSDACSE22:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr12:
	.long	___gnat_others_value@GOT-L_got_pcr12
LLSDATT22:
	.text
	.const
	.align	2
lC22:
	.word	1
	.word	31
	.text
	.align	2
_smc_files__save_fan_calibration__B_19__B542b___finalizer.8:
LFB25:
	stp	x29, x30, [sp, -32]!
LCFI95:
	mov	x29, sp
LCFI96:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI97:
	ret
LFE25:
	.align	2
	.globl _smc_files__save_fan_calibration
_smc_files__save_fan_calibration:
LFB24:
	.loc 1 491 4
	stp	x29, x30, [sp, -224]!
LCFI98:
	mov	x29, sp
LCFI99:
LEHB80:
LEHE80:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI100:
	str	s0, [x29, 124]
	.loc 1 491 4
	add	x4, x29, 224
	.loc 1 491 4 is_stmt 0 discriminator 1
	str	x4, [x29, 176]
	.loc 1 494 7 is_stmt 1
	str	xzr, [x29, 184]
LBB104:
LBB105:
	.loc 1 497 10
	ldr	x6, [x29, 184]
	adrp	x4, _smc_files__calibration_file@PAGE
	add	x0, x4, _smc_files__calibration_file@PAGEOFF;
	adrp	x4, lC22@PAGE
	add	x1, x4, lC22@PAGEOFF;
	adrp	x4, lC29@PAGE
	add	x2, x4, lC29@PAGEOFF;
	adrp	x4, lC0@PAGE
	add	x3, x4, lC0@PAGEOFF;
	mov	x4, x2
	mov	x5, x3
	mov	x2, x0
	mov	x3, x1
	mov	w1, 2
	mov	x0, x6
LEHB81:
	bl	_ada__text_io__create
LEHE81:
	.loc 1 497 10 is_stmt 0 discriminator 2
	str	x0, [x29, 184]
LBE105:
LBB106:
	add	x0, x29, 152
	mov	x8, x0
LEHB82:
	bl	_system__secondary_stack__ss_mark
	.loc 1 498 32 is_stmt 1
	add	x0, x29, 136
	mov	x24, x0
	adrp	x0, lC11@PAGE
	add	x25, x0, lC11@PAGEOFF;
	mov	w2, 6
	mov	x0, x24
	mov	x1, x25
	ldr	s0, [x29, 124]
	bl	_system__img_flt__impl__image_floating_point
	.loc 1 498 32 is_stmt 0 discriminator 2
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	mov	x20, x1
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x23, x21, 3
	mov	x2, x23
	add	x1, x1, x2
	mov	x23, x1
	lsl	x22, x20, 3
	.loc 1 498 10 is_stmt 1 discriminator 2
	ldr	x19, [x29, 184]
	.loc 1 498 21 discriminator 2
	add	x1, x29, 136
	mov	x26, x1
	mov	w1, 1
	str	w1, [x29, 192]
	str	w0, [x29, 196]
	add	x0, x29, 192
	mov	x27, x0
	mov	w2, 2
	mov	x0, x26
	mov	x1, x27
	bl	_ada__strings__fixed__trim
	.loc 1 498 10 discriminator 4
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ada__text_io__put__3
LEHE82:
	.loc 1 498 0 discriminator 6
	mov	w19, 1
L896:
	.loc 1 498 0 is_stmt 0 discriminator 7
	add	x0, x29, 152
	mov	x16, x0
LEHB83:
	bl	_smc_files__save_fan_calibration__B_19__B542b___finalizer.8
LEHE83:
	.loc 1 498 0 discriminator 9
	cmp	w19, 1
	bne	L892
	.loc 1 498 0
	mov	w0, 1
L898:
	.loc 1 498 0 discriminator 10
	cmp	w0, 1
	bne	L893
	.loc 1 498 0
	nop
LBE106:
	.loc 1 499 10 is_stmt 1
	add	x0, x29, 184
LEHB84:
	bl	_ada__text_io__close
LEHE84:
LBE104:
	.loc 1 504 8
	b	L891
L905:
	str	x0, [x29, 104]
	str	x1, [x29, 96]
	mov	w19, 0
LBB108:
LBB107:
	.loc 1 498 10
	b	L896
L892:
	ldr	x0, [x29, 104]
	str	x0, [x29, 112]
	ldr	x28, [x29, 96]
	b	L897
L906:
	str	x0, [x29, 112]
	mov	x28, x1
L897:
	mov	w0, 0
	b	L898
L893:
	ldr	x0, [x29, 112]
	mov	x1, x28
	b	L899
L904:
L899:
LBE107:
LBE108:
	.loc 1 501 10
	cmp	x1, 1
	beq	L900
LEHB85:
	bl	__Unwind_Resume
LEHE85:
L900:
LBB109:
	.loc 1 501 10 is_stmt 0 discriminator 1
	str	x0, [x29, 216]
	.loc 1 501 10 discriminator 2
	ldr	x0, [x29, 216]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 208]
	.loc 1 502 16 is_stmt 1
	ldr	x0, [x29, 184]
LEHB86:
	bl	_ada__text_io__is_open
	.loc 1 502 13 discriminator 2
	cmp	w0, 0
	beq	L901
	.loc 1 502 36 discriminator 3
	add	x0, x29, 184
	bl	_ada__text_io__close
LEHE86:
L901:
	.loc 1 501 10
	mov	x2, 0
	ldr	x1, [x29, 208]
	ldr	x0, [x29, 216]
LEHB87:
	bl	___gnat_end_handler_v1
LBE109:
	.loc 1 504 8
	b	L891
L907:
LBB110:
	.loc 1 501 10
	mov	x19, x0
	str	x19, [x29, 200]
	.loc 1 501 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 200]
	ldr	x1, [x29, 208]
	ldr	x0, [x29, 216]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L891:
LBE110:
	.loc 1 504 8 is_stmt 1
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE87:
	ldp	x29, x30, [sp], 224
LCFI101:
	ret
LFE24:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table9:
	.align	2
LLSDA24:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT24-LLSDATTD24
LLSDATTD24:
	.byte	0x1
	.uleb128 LLSDACSE24-LLSDACSB24
LLSDACSB24:
	.uleb128 LEHB80-LFB24
	.uleb128 LEHE80-LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB81-LFB24
	.uleb128 LEHE81-LEHB81
	.uleb128 L904-LFB24
	.uleb128 0x1
	.uleb128 LEHB82-LFB24
	.uleb128 LEHE82-LEHB82
	.uleb128 L905-LFB24
	.uleb128 0x3
	.uleb128 LEHB83-LFB24
	.uleb128 LEHE83-LEHB83
	.uleb128 L906-LFB24
	.uleb128 0x3
	.uleb128 LEHB84-LFB24
	.uleb128 LEHE84-LEHB84
	.uleb128 L904-LFB24
	.uleb128 0x1
	.uleb128 LEHB85-LFB24
	.uleb128 LEHE85-LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB86-LFB24
	.uleb128 LEHE86-LEHB86
	.uleb128 L907-LFB24
	.uleb128 0
	.uleb128 LEHB87-LFB24
	.uleb128 LEHE87-LEHB87
	.uleb128 0
	.uleb128 0
LLSDACSE24:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr13:
	.long	___gnat_others_value@GOT-L_got_pcr13
LLSDATT24:
	.text
	.align	2
_smc_files__write_pressure_report__B_20__B550b___finalizer.9:
LFB27:
	stp	x29, x30, [sp, -32]!
LCFI102:
	mov	x29, sp
LCFI103:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 96
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI104:
	ret
LFE27:
	.const
	.align	3
lC47:
	.ascii "REF_1006_RPM: "
	.align	3
lC48:
	.ascii "CUR_TURBO_RPM: "
	.align	3
lC49:
	.ascii "DIFF: "
	.align	3
lC50:
	.ascii "EST_HPA: "
	.align	3
lC51:
	.ascii "TIMESTAMP: "
	.text
	.align	2
	.globl _smc_files__write_pressure_report
_smc_files__write_pressure_report:
LFB26:
	.loc 1 510 4
	sub	sp, sp, #1456
LCFI105:
	stp	x29, x30, [sp]
LCFI106:
	mov	x29, sp
LCFI107:
LEHB88:
LEHE88:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI108:
	str	s0, [x29, 940]
	str	s1, [x29, 936]
	str	s2, [x29, 932]
	str	s3, [x29, 928]
	str	x0, [x29, 920]
	.loc 1 510 4
	add	x0, x29, 1456
	.loc 1 510 4 is_stmt 0 discriminator 1
	str	x0, [x29, 1168]
	.loc 1 513 7 is_stmt 1
	str	xzr, [x29, 1176]
LBB111:
LBB112:
	.loc 1 516 10
	ldr	x8, [x29, 1176]
	adrp	x0, _smc_files__pressure_report_file@PAGE
	add	x6, x0, _smc_files__pressure_report_file@PAGEOFF;
	adrp	x0, lC23@PAGE
	add	x7, x0, lC23@PAGEOFF;
	adrp	x0, lC29@PAGE
	add	x2, x0, lC29@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x3, x0, lC0@PAGEOFF;
	mov	x4, x2
	mov	x5, x3
	mov	x2, x6
	mov	x3, x7
	mov	w1, 2
	mov	x0, x8
LEHB89:
	bl	_ada__text_io__create
LEHE89:
	.loc 1 516 10 is_stmt 0 discriminator 2
	str	x0, [x29, 1176]
LBE112:
LBB113:
	add	x0, x29, 1144
	mov	x8, x0
LEHB90:
	bl	_system__secondary_stack__ss_mark
	.loc 1 517 56 is_stmt 1
	add	x0, x29, 1032
	mov	x26, x0
	adrp	x0, lC11@PAGE
	add	x27, x0, lC11@PAGEOFF;
	mov	w2, 6
	mov	x0, x26
	mov	x1, x27
	ldr	s0, [x29, 940]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 517 56 is_stmt 0 discriminator 2
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x25, x21, 3
	mov	x0, x25
	add	x0, x1, x0
	mov	x25, x0
	lsl	x24, x20, 3
	.loc 1 517 45 is_stmt 1 discriminator 2
	add	x0, x29, 1032
	str	x0, [x29, 240]
	mov	w0, 1
	str	w0, [x29, 1184]
	str	w2, [x29, 1188]
	add	x0, x29, 1184
	str	x0, [x29, 248]
	mov	w2, 2
	ldp	x0, x1, [x29, 240]
	bl	_ada__strings__fixed__trim
	.loc 1 517 45 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 517 43 is_stmt 1 discriminator 4
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L911
	.loc 1 517 43 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L912
L911:
	.loc 1 517 43 discriminator 6
	mov	w0, 0
L912:
	.loc 1 517 43 discriminator 8
	add	w0, w0, 14
	str	w0, [x29, 1452]
	ldrsw	x0, [x29, 1452]
	str	x0, [x29, 1440]
	ldrsw	x0, [x29, 1452]
	mov	x22, x0
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x0, x23, 3
	str	x0, [x29, 904]
	ldr	x0, [x29, 904]
	add	x0, x1, x0
	str	x0, [x29, 904]
	lsl	x0, x22, 3
	str	x0, [x29, 896]
	ldrsw	x0, [x29, 1452]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 517 43 discriminator 10
	mov	x19, x0
	str	x19, [x29, 1432]
LBB114:
	str	x19, [x29, 256]
	mov	w0, 1
	str	w0, [x29, 1192]
	ldr	w0, [x29, 1452]
	str	w0, [x29, 1196]
	add	x0, x29, 1192
	str	x0, [x29, 264]
	adrp	x0, lC47@PAGE
	add	x0, x0, lC47@PAGEOFF;
	str	x0, [x29, 272]
	adrp	x0, lC24@PAGE
	add	x0, x0, lC24@PAGEOFF;
	str	x0, [x29, 280]
	mov	x4, x20
	mov	x5, x21
	ldp	x2, x3, [x29, 272]
	ldp	x0, x1, [x29, 256]
	bl	_system__concat_2__str_concat_2
LBE114:
	.loc 1 517 10 is_stmt 1 discriminator 12
	ldr	x3, [x29, 1176]
	str	x19, [x29, 288]
	mov	w0, 1
	str	w0, [x29, 1200]
	ldr	w0, [x29, 1452]
	str	w0, [x29, 1204]
	add	x0, x29, 1200
	str	x0, [x29, 296]
	ldp	x1, x2, [x29, 288]
	mov	x0, x3
	bl	_ada__text_io__put_line
LEHE90:
	.loc 1 517 0 discriminator 14
	mov	w19, 1
L965:
	.loc 1 517 0 is_stmt 0 discriminator 15
	add	x0, x29, 1048
	mov	x16, x0
LEHB91:
	bl	_smc_files__write_pressure_report__B_20__B550b___finalizer.9
LEHE91:
	.loc 1 517 0 discriminator 17
	cmp	w19, 1
	bne	L913
	.loc 1 517 0
	mov	w0, 1
L967:
	.loc 1 517 0 discriminator 18
	cmp	w0, 1
	bne	L914
	.loc 1 517 0
	nop
LBE113:
LBB115:
	add	x0, x29, 1120
	mov	x8, x0
LEHB92:
	bl	_system__secondary_stack__ss_mark
	.loc 1 518 57 is_stmt 1
	add	x0, x29, 1016
	str	x0, [x29, 304]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 312]
	mov	w2, 6
	ldp	x0, x1, [x29, 304]
	ldr	s0, [x29, 936]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 518 57 is_stmt 0 discriminator 2
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 752]
	str	xzr, [x29, 760]
	add	x0, x29, 512
	ldp	x3, x4, [x0, 240]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 888]
	ldr	x0, [x29, 888]
	add	x0, x1, x0
	str	x0, [x29, 888]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 880]
	.loc 1 518 46 is_stmt 1 discriminator 2
	add	x0, x29, 1016
	str	x0, [x29, 320]
	mov	w0, 1
	str	w0, [x29, 1208]
	str	w2, [x29, 1212]
	add	x0, x29, 1208
	str	x0, [x29, 328]
	mov	w2, 2
	ldp	x0, x1, [x29, 320]
	bl	_ada__strings__fixed__trim
	.loc 1 518 46 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 518 44 is_stmt 1 discriminator 4
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L915
	.loc 1 518 44 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L916
L915:
	.loc 1 518 44 discriminator 6
	mov	w0, 0
L916:
	.loc 1 518 44 discriminator 8
	add	w0, w0, 15
	str	w0, [x29, 1428]
	ldrsw	x0, [x29, 1428]
	str	x0, [x29, 1416]
	ldrsw	x0, [x29, 1428]
	str	x0, [x29, 736]
	str	xzr, [x29, 744]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 224]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 872]
	ldr	x0, [x29, 872]
	add	x0, x1, x0
	str	x0, [x29, 872]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 864]
	ldrsw	x0, [x29, 1428]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 518 44 discriminator 10
	mov	x19, x0
	str	x19, [x29, 1408]
LBB116:
	str	x19, [x29, 336]
	mov	w0, 1
	str	w0, [x29, 1216]
	ldr	w0, [x29, 1428]
	str	w0, [x29, 1220]
	add	x0, x29, 1216
	str	x0, [x29, 344]
	adrp	x0, lC48@PAGE
	add	x0, x0, lC48@PAGEOFF;
	str	x0, [x29, 352]
	adrp	x0, lC25@PAGE
	add	x0, x0, lC25@PAGEOFF;
	str	x0, [x29, 360]
	mov	x4, x20
	mov	x5, x21
	ldp	x2, x3, [x29, 352]
	ldp	x0, x1, [x29, 336]
	bl	_system__concat_2__str_concat_2
LBE116:
	.loc 1 518 10 is_stmt 1 discriminator 12
	ldr	x3, [x29, 1176]
	str	x19, [x29, 368]
	mov	w0, 1
	str	w0, [x29, 1224]
	ldr	w0, [x29, 1428]
	str	w0, [x29, 1228]
	add	x0, x29, 1224
	str	x0, [x29, 376]
	ldp	x1, x2, [x29, 368]
	mov	x0, x3
	bl	_ada__text_io__put_line
LEHE92:
	.loc 1 518 0 discriminator 14
	mov	w19, 1
L970:
	.loc 1 518 0 is_stmt 0 discriminator 15
	add	x0, x29, 1048
	mov	x16, x0
LEHB93:
	bl	_smc_files__write_pressure_report__B_20__B568b___finalizer.10
LEHE93:
	.loc 1 518 0 discriminator 17
	cmp	w19, 1
	bne	L917
	.loc 1 518 0
	mov	w0, 1
L972:
	.loc 1 518 0 discriminator 18
	cmp	w0, 1
	bne	L918
	.loc 1 518 0
	nop
LBE115:
LBB117:
	add	x0, x29, 1096
	mov	x8, x0
LEHB94:
	bl	_system__secondary_stack__ss_mark
	.loc 1 519 38 is_stmt 1
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	bge	L1001
	b	L919
L1001:
	.loc 1 519 38 is_stmt 0 discriminator 1
	mov	w0, 43
	strb	w0, [x29, 1008]
L919:
	.loc 1 519 38 discriminator 3
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	.loc 1 519 38 discriminator 7
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	.loc 1 519 38 discriminator 11
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	.loc 1 519 38 discriminator 15
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	.loc 1 519 84 is_stmt 1 discriminator 19
	add	x0, x29, 992
	str	x0, [x29, 384]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 392]
	mov	w2, 6
	ldp	x0, x1, [x29, 384]
	ldr	s0, [x29, 932]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 519 84 is_stmt 0 discriminator 21
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 720]
	str	xzr, [x29, 728]
	add	x0, x29, 512
	ldp	x3, x4, [x0, 208]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 856]
	ldr	x0, [x29, 856]
	add	x0, x1, x0
	str	x0, [x29, 856]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 848]
	.loc 1 519 73 is_stmt 1 discriminator 21
	add	x0, x29, 992
	str	x0, [x29, 400]
	mov	w0, 1
	str	w0, [x29, 1232]
	str	w2, [x29, 1236]
	add	x0, x29, 1232
	str	x0, [x29, 408]
	mov	w2, 2
	ldp	x0, x1, [x29, 400]
	bl	_ada__strings__fixed__trim
	.loc 1 519 73 is_stmt 0 discriminator 23
	mov	x20, x0
	mov	x21, x1
	.loc 1 519 38 is_stmt 1 discriminator 23
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	.loc 1 519 38 is_stmt 0 discriminator 27
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	.loc 1 519 38 discriminator 31
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	.loc 1 519 38 discriminator 35
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	.loc 1 519 71 is_stmt 1 discriminator 39
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	bge	L1010
	b	L1012
L1010:
	.loc 1 519 71 is_stmt 0 discriminator 40
	mov	w0, 1
	b	L947
L1012:
	.loc 1 519 71 discriminator 41
	mov	w0, 0
L947:
	.loc 1 519 71 discriminator 43
	add	w2, w0, 6
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L948
	.loc 1 519 71 discriminator 44
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L949
L948:
	.loc 1 519 71 discriminator 45
	mov	w0, 0
L949:
	.loc 1 519 71 discriminator 47
	add	w0, w2, w0
	str	w0, [x29, 1404]
	ldrsw	x0, [x29, 1404]
	str	x0, [x29, 1392]
	ldrsw	x0, [x29, 1404]
	str	x0, [x29, 704]
	str	xzr, [x29, 712]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 192]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 840]
	ldr	x0, [x29, 840]
	add	x0, x1, x0
	str	x0, [x29, 840]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 832]
	ldrsw	x0, [x29, 1404]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 519 71 discriminator 49
	mov	x19, x0
	str	x19, [x29, 1384]
LBB118:
	str	x19, [x29, 416]
	mov	w0, 1
	str	w0, [x29, 1240]
	ldr	w0, [x29, 1404]
	str	w0, [x29, 1244]
	add	x0, x29, 1240
	str	x0, [x29, 424]
	adrp	x0, lC49@PAGE
	add	x0, x0, lC49@PAGEOFF;
	str	x0, [x29, 432]
	adrp	x0, lC26@PAGE
	add	x0, x0, lC26@PAGEOFF;
	str	x0, [x29, 440]
	add	x0, x29, 1008
	str	x0, [x29, 448]
	mov	w0, 1
	str	w0, [x29, 1248]
	.loc 1 519 38 is_stmt 1 discriminator 49
	ldr	s31, [x29, 932]
	fcmpe	s31, #0.0
	bge	L1011
	b	L1013
L1011:
	.loc 1 519 38 is_stmt 0 discriminator 50
	mov	w0, 1
	b	L952
L1013:
	.loc 1 519 38 discriminator 51
	mov	w0, 0
L952:
	.loc 1 519 71 is_stmt 1 discriminator 53
	str	w0, [x29, 1252]
	add	x0, x29, 1248
	str	x0, [x29, 456]
	mov	x6, x20
	mov	x7, x21
	ldp	x4, x5, [x29, 448]
	ldp	x2, x3, [x29, 432]
	ldp	x0, x1, [x29, 416]
	bl	_system__concat_3__str_concat_3
LBE118:
	.loc 1 519 10 discriminator 55
	ldr	x3, [x29, 1176]
	str	x19, [x29, 464]
	mov	w0, 1
	str	w0, [x29, 1256]
	ldr	w0, [x29, 1404]
	str	w0, [x29, 1260]
	add	x0, x29, 1256
	str	x0, [x29, 472]
	ldp	x1, x2, [x29, 464]
	mov	x0, x3
	bl	_ada__text_io__put_line
LEHE94:
	.loc 1 519 0 discriminator 57
	mov	w19, 1
L974:
	.loc 1 519 0 is_stmt 0 discriminator 58
	add	x0, x29, 1048
	mov	x16, x0
LEHB95:
	bl	_smc_files__write_pressure_report__B_20__B586b___finalizer.11
LEHE95:
	.loc 1 519 0 discriminator 60
	cmp	w19, 1
	bne	L953
	.loc 1 519 0
	mov	w0, 1
L976:
	.loc 1 519 0 discriminator 61
	cmp	w0, 1
	bne	L954
	.loc 1 519 0
	nop
LBE117:
LBB119:
	add	x0, x29, 1072
	mov	x8, x0
LEHB96:
	bl	_system__secondary_stack__ss_mark
	.loc 1 520 51 is_stmt 1
	add	x0, x29, 976
	str	x0, [x29, 480]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 488]
	mov	w2, 6
	ldp	x0, x1, [x29, 480]
	ldr	s0, [x29, 928]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 520 51 is_stmt 0 discriminator 2
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 688]
	str	xzr, [x29, 696]
	add	x0, x29, 512
	ldp	x3, x4, [x0, 176]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 824]
	ldr	x0, [x29, 824]
	add	x0, x1, x0
	str	x0, [x29, 824]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 816]
	.loc 1 520 40 is_stmt 1 discriminator 2
	add	x0, x29, 976
	str	x0, [x29, 496]
	mov	w0, 1
	str	w0, [x29, 1264]
	str	w2, [x29, 1268]
	add	x0, x29, 1264
	str	x0, [x29, 504]
	mov	w2, 2
	ldp	x0, x1, [x29, 496]
	bl	_ada__strings__fixed__trim
	.loc 1 520 40 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 520 38 is_stmt 1 discriminator 4
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L955
	.loc 1 520 38 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L956
L955:
	.loc 1 520 38 discriminator 6
	mov	w0, 0
L956:
	.loc 1 520 38 discriminator 8
	add	w0, w0, 9
	str	w0, [x29, 1380]
	ldrsw	x0, [x29, 1380]
	str	x0, [x29, 1368]
	ldrsw	x0, [x29, 1380]
	str	x0, [x29, 672]
	str	xzr, [x29, 680]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 160]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 808]
	ldr	x0, [x29, 808]
	add	x0, x1, x0
	str	x0, [x29, 808]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 800]
	ldrsw	x0, [x29, 1380]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 520 38 discriminator 10
	mov	x19, x0
	str	x19, [x29, 1360]
LBB120:
	str	x19, [x29, 512]
	mov	w0, 1
	str	w0, [x29, 1272]
	ldr	w0, [x29, 1380]
	str	w0, [x29, 1276]
	add	x0, x29, 1272
	str	x0, [x29, 520]
	adrp	x0, lC50@PAGE
	add	x0, x0, lC50@PAGEOFF;
	str	x0, [x29, 528]
	adrp	x0, lC27@PAGE
	add	x0, x0, lC27@PAGEOFF;
	str	x0, [x29, 536]
	mov	x4, x20
	mov	x5, x21
	add	x0, x29, 512
	ldp	x2, x3, [x0, 16]
	add	x0, x29, 512
	ldp	x0, x1, [x0]
	bl	_system__concat_2__str_concat_2
LBE120:
	.loc 1 520 10 is_stmt 1 discriminator 12
	ldr	x3, [x29, 1176]
	str	x19, [x29, 544]
	mov	w0, 1
	str	w0, [x29, 1280]
	ldr	w0, [x29, 1380]
	str	w0, [x29, 1284]
	add	x0, x29, 1280
	str	x0, [x29, 552]
	add	x0, x29, 512
	ldp	x1, x2, [x0, 32]
	mov	x0, x3
	bl	_ada__text_io__put_line
LEHE96:
	.loc 1 520 0 discriminator 14
	mov	w19, 1
L978:
	.loc 1 520 0 is_stmt 0 discriminator 15
	add	x0, x29, 1048
	mov	x16, x0
LEHB97:
	bl	_smc_files__write_pressure_report__B_20__B617b___finalizer.12
LEHE97:
	.loc 1 520 0 discriminator 17
	cmp	w19, 1
	bne	L957
	.loc 1 520 0
	mov	w0, 1
L980:
	.loc 1 520 0 discriminator 18
	cmp	w0, 1
	bne	L958
	.loc 1 520 0
	nop
LBE119:
LBB121:
	add	x0, x29, 1048
	mov	x8, x0
LEHB98:
	bl	_system__secondary_stack__ss_mark
	.loc 1 521 60 is_stmt 1
	add	x0, x29, 952
	str	x0, [x29, 560]
	adrp	x0, lC28@PAGE
	add	x0, x0, lC28@PAGEOFF;
	str	x0, [x29, 568]
	add	x0, x29, 512
	ldp	x1, x2, [x0, 48]
	ldr	x0, [x29, 920]
	bl	_system__img_lli__impl__image_integer
	.loc 1 521 60 is_stmt 0 discriminator 2
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	str	x1, [x29, 656]
	str	xzr, [x29, 664]
	add	x1, x29, 512
	ldp	x3, x4, [x1, 144]
	mov	x1, x3
	lsr	x1, x1, 61
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 792]
	ldr	x2, [x29, 792]
	add	x1, x1, x2
	str	x1, [x29, 792]
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 784]
	.loc 1 521 42 is_stmt 1 discriminator 2
	add	x1, x29, 952
	str	x1, [x29, 576]
	mov	w1, 1
	str	w1, [x29, 1288]
	str	w0, [x29, 1292]
	add	x0, x29, 1288
	str	x0, [x29, 584]
	mov	w2, 2
	add	x0, x29, 512
	ldp	x0, x1, [x0, 64]
	bl	_ada__strings__fixed__trim
	.loc 1 521 42 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 521 40 is_stmt 1 discriminator 4
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L959
	.loc 1 521 40 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L960
L959:
	.loc 1 521 40 discriminator 6
	mov	w0, 0
L960:
	.loc 1 521 40 discriminator 8
	add	w0, w0, 11
	str	w0, [x29, 1356]
	ldrsw	x0, [x29, 1356]
	str	x0, [x29, 1344]
	ldrsw	x0, [x29, 1356]
	str	x0, [x29, 640]
	str	xzr, [x29, 648]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 128]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 776]
	ldr	x1, [x29, 776]
	add	x0, x0, x1
	str	x0, [x29, 776]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 768]
	ldrsw	x0, [x29, 1356]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 521 40 discriminator 10
	mov	x19, x0
	str	x19, [x29, 1336]
LBB122:
	str	x19, [x29, 592]
	mov	w0, 1
	str	w0, [x29, 1296]
	ldr	w0, [x29, 1356]
	str	w0, [x29, 1300]
	add	x0, x29, 1296
	str	x0, [x29, 600]
	adrp	x0, lC51@PAGE
	add	x0, x0, lC51@PAGEOFF;
	str	x0, [x29, 608]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 616]
	mov	x4, x20
	mov	x5, x21
	add	x0, x29, 512
	ldp	x2, x3, [x0, 96]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 80]
	bl	_system__concat_2__str_concat_2
LBE122:
	.loc 1 521 10 is_stmt 1 discriminator 12
	ldr	x0, [x29, 1176]
	str	x19, [x29, 624]
	mov	w1, 1
	str	w1, [x29, 1304]
	ldr	w1, [x29, 1356]
	str	w1, [x29, 1308]
	add	x1, x29, 1304
	str	x1, [x29, 632]
	add	x1, x29, 512
	ldp	x1, x2, [x1, 112]
	bl	_ada__text_io__put_line
LEHE98:
	.loc 1 521 0 discriminator 14
	mov	w19, 1
L982:
	.loc 1 521 0 is_stmt 0 discriminator 15
	add	x0, x29, 1048
	mov	x16, x0
LEHB99:
	bl	_smc_files__write_pressure_report__B_20__B635b___finalizer.13
LEHE99:
	.loc 1 521 0 discriminator 17
	cmp	w19, 1
	bne	L961
	.loc 1 521 0
	mov	w0, 1
L984:
	.loc 1 521 0 discriminator 18
	cmp	w0, 1
	bne	L962
	.loc 1 521 0
	nop
LBE121:
	.loc 1 522 10 is_stmt 1
	add	x0, x29, 1176
LEHB100:
	bl	_ada__text_io__close
LEHE100:
LBE111:
	.loc 1 527 8
	b	L910
L990:
	str	x0, [x29, 168]
	str	x1, [x29, 160]
	mov	w19, 0
LBB128:
LBB123:
	.loc 1 517 10
	b	L965
L913:
	ldr	x0, [x29, 168]
	str	x0, [x29, 912]
	ldr	x28, [x29, 160]
	b	L966
L991:
	str	x0, [x29, 912]
	mov	x28, x1
L966:
	mov	w0, 0
	b	L967
L914:
	ldr	x0, [x29, 912]
	mov	x1, x28
	b	L968
L992:
	str	x0, [x29, 152]
	str	x1, [x29, 144]
	mov	w19, 0
LBE123:
LBB124:
	.loc 1 518 10
	b	L970
L917:
	ldr	x0, [x29, 152]
	str	x0, [x29, 232]
	ldr	x0, [x29, 144]
	str	x0, [x29, 224]
	b	L971
L993:
	str	x0, [x29, 232]
	str	x1, [x29, 224]
L971:
	mov	w0, 0
	b	L972
L918:
	ldr	x0, [x29, 232]
	ldr	x1, [x29, 224]
	b	L968
L994:
	str	x0, [x29, 136]
	str	x1, [x29, 128]
	mov	w19, 0
LBE124:
LBB125:
	.loc 1 519 10
	b	L974
L953:
	ldr	x0, [x29, 136]
	str	x0, [x29, 216]
	ldr	x0, [x29, 128]
	str	x0, [x29, 208]
	b	L975
L995:
	str	x0, [x29, 216]
	str	x1, [x29, 208]
L975:
	mov	w0, 0
	b	L976
L954:
	ldr	x0, [x29, 216]
	ldr	x1, [x29, 208]
	b	L968
L996:
	str	x0, [x29, 120]
	str	x1, [x29, 112]
	mov	w19, 0
LBE125:
LBB126:
	.loc 1 520 10
	b	L978
L957:
	ldr	x0, [x29, 120]
	str	x0, [x29, 200]
	ldr	x0, [x29, 112]
	str	x0, [x29, 192]
	b	L979
L997:
	str	x0, [x29, 200]
	str	x1, [x29, 192]
L979:
	mov	w0, 0
	b	L980
L958:
	ldr	x0, [x29, 200]
	ldr	x1, [x29, 192]
	b	L968
L998:
	str	x0, [x29, 104]
	str	x1, [x29, 96]
	mov	w19, 0
LBE126:
LBB127:
	.loc 1 521 10
	b	L982
L961:
	ldr	x0, [x29, 104]
	str	x0, [x29, 184]
	ldr	x0, [x29, 96]
	str	x0, [x29, 176]
	b	L983
L999:
	str	x0, [x29, 184]
	str	x1, [x29, 176]
L983:
	mov	w0, 0
	b	L984
L962:
	ldr	x0, [x29, 184]
	ldr	x1, [x29, 176]
	b	L968
L989:
L968:
LBE127:
LBE128:
	.loc 1 524 10
	cmp	x1, 1
	beq	L985
LEHB101:
	bl	__Unwind_Resume
LEHE101:
L985:
LBB129:
	.loc 1 524 10 is_stmt 0 discriminator 1
	str	x0, [x29, 1328]
	.loc 1 524 10 discriminator 2
	ldr	x0, [x29, 1328]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 1320]
	.loc 1 525 16 is_stmt 1
	ldr	x0, [x29, 1176]
LEHB102:
	bl	_ada__text_io__is_open
	.loc 1 525 13 discriminator 2
	cmp	w0, 0
	beq	L986
	.loc 1 525 36 discriminator 3
	add	x0, x29, 1176
	bl	_ada__text_io__close
LEHE102:
L986:
	.loc 1 524 10
	mov	x2, 0
	ldr	x1, [x29, 1320]
	ldr	x0, [x29, 1328]
LEHB103:
	bl	___gnat_end_handler_v1
LBE129:
	.loc 1 527 8
	b	L910
L1000:
LBB130:
	.loc 1 524 10
	mov	x19, x0
	str	x19, [x29, 1312]
	.loc 1 524 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 1312]
	ldr	x1, [x29, 1320]
	ldr	x0, [x29, 1328]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L910:
LBE130:
	.loc 1 527 8 is_stmt 1
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE103:
	add	sp, sp, 1456
LCFI109:
	ret
LFE26:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table10:
	.align	2
LLSDA26:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT26-LLSDATTD26
LLSDATTD26:
	.byte	0x1
	.uleb128 LLSDACSE26-LLSDACSB26
LLSDACSB26:
	.uleb128 LEHB88-LFB26
	.uleb128 LEHE88-LEHB88
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB89-LFB26
	.uleb128 LEHE89-LEHB89
	.uleb128 L989-LFB26
	.uleb128 0x1
	.uleb128 LEHB90-LFB26
	.uleb128 LEHE90-LEHB90
	.uleb128 L990-LFB26
	.uleb128 0x3
	.uleb128 LEHB91-LFB26
	.uleb128 LEHE91-LEHB91
	.uleb128 L991-LFB26
	.uleb128 0x3
	.uleb128 LEHB92-LFB26
	.uleb128 LEHE92-LEHB92
	.uleb128 L992-LFB26
	.uleb128 0x3
	.uleb128 LEHB93-LFB26
	.uleb128 LEHE93-LEHB93
	.uleb128 L993-LFB26
	.uleb128 0x3
	.uleb128 LEHB94-LFB26
	.uleb128 LEHE94-LEHB94
	.uleb128 L994-LFB26
	.uleb128 0x3
	.uleb128 LEHB95-LFB26
	.uleb128 LEHE95-LEHB95
	.uleb128 L995-LFB26
	.uleb128 0x3
	.uleb128 LEHB96-LFB26
	.uleb128 LEHE96-LEHB96
	.uleb128 L996-LFB26
	.uleb128 0x3
	.uleb128 LEHB97-LFB26
	.uleb128 LEHE97-LEHB97
	.uleb128 L997-LFB26
	.uleb128 0x3
	.uleb128 LEHB98-LFB26
	.uleb128 LEHE98-LEHB98
	.uleb128 L998-LFB26
	.uleb128 0x3
	.uleb128 LEHB99-LFB26
	.uleb128 LEHE99-LEHB99
	.uleb128 L999-LFB26
	.uleb128 0x3
	.uleb128 LEHB100-LFB26
	.uleb128 LEHE100-LEHB100
	.uleb128 L989-LFB26
	.uleb128 0x1
	.uleb128 LEHB101-LFB26
	.uleb128 LEHE101-LEHB101
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB102-LFB26
	.uleb128 LEHE102-LEHB102
	.uleb128 L1000-LFB26
	.uleb128 0
	.uleb128 LEHB103-LFB26
	.uleb128 LEHE103-LEHB103
	.uleb128 0
	.uleb128 0
LLSDACSE26:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr14:
	.long	___gnat_others_value@GOT-L_got_pcr14
LLSDATT26:
	.text
	.const
	.align	2
lC23:
	.word	1
	.word	83
	.align	2
lC24:
	.word	1
	.word	14
	.align	2
lC25:
	.word	1
	.word	15
	.align	2
lC26:
	.word	1
	.word	6
	.align	2
lC27:
	.word	1
	.word	9
	.align	2
lC28:
	.word	1
	.word	20
	.text
	.align	2
_smc_files__write_pressure_report__B_20__B568b___finalizer.10:
LFB28:
	stp	x29, x30, [sp, -32]!
LCFI110:
	mov	x29, sp
LCFI111:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 72
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI112:
	ret
LFE28:
	.align	2
_smc_files__write_pressure_report__B_20__B586b___finalizer.11:
LFB29:
	stp	x29, x30, [sp, -32]!
LCFI113:
	mov	x29, sp
LCFI114:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 48
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI115:
	ret
LFE29:
	.align	2
_smc_files__write_pressure_report__B_20__B617b___finalizer.12:
LFB30:
	stp	x29, x30, [sp, -32]!
LCFI116:
	mov	x29, sp
LCFI117:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 24
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI118:
	ret
LFE30:
	.align	2
_smc_files__write_pressure_report__B_20__B635b___finalizer.13:
LFB31:
	stp	x29, x30, [sp, -32]!
LCFI119:
	mov	x29, sp
LCFI120:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI121:
	ret
LFE31:
	.align	2
	.globl _smc_files__delete_file
_smc_files__delete_file:
LFB32:
	.loc 1 533 4
	stp	x29, x30, [sp, -48]!
LCFI122:
	mov	x29, sp
LCFI123:
LEHB104:
LEHE104:
	stp	x0, x1, [x29, 16]
	.loc 1 533 4
	ldr	x0, [x29, 24]
	ldr	w0, [x0]
	ldr	x1, [x29, 24]
	ldr	w1, [x1, 4]
LBB131:
	cmp	w1, w0
	.loc 1 533 4 is_stmt 0 discriminator 4
	cmp	w1, w0
	blt	L1026
	.loc 1 533 4 discriminator 5
	sxtw	x7, w1
	sxtw	x6, w0
	sub	x6, x7, x6
	add	x6, x6, 1
	mov	x2, x6
	mov	x3, 0
	lsr	x6, x2, 61
	lsl	x5, x3, 3
	mov	x7, x5
	add	x6, x6, x7
	mov	x5, x6
	lsl	x4, x2, 3
L1026:
	.loc 1 533 4 discriminator 8
	cmp	w1, w0
	.loc 1 535 25 is_stmt 1
	ldp	x0, x1, [x29, 16]
LEHB105:
	bl	_ada__directories__exists
	.loc 1 535 7 discriminator 2
	cmp	w0, 0
	beq	L1035
	.loc 1 536 25
	ldp	x0, x1, [x29, 16]
	bl	_ada__directories__delete_file
LEHE105:
	.loc 1 541 8
	b	L1035
L1034:
LBE131:
	.loc 1 539 7
	cmp	x1, 1
	beq	L1032
LEHB106:
	bl	__Unwind_Resume
L1032:
LBB132:
	.loc 1 539 7 is_stmt 0 discriminator 1
	str	x0, [x29, 40]
	.loc 1 539 7 discriminator 2
	ldr	x0, [x29, 40]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 32]
	.loc 1 540 10 is_stmt 1
	nop
	.loc 1 541 8
	nop
	.loc 1 539 7
	mov	x2, 0
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	___gnat_end_handler_v1
LBE132:
	.loc 1 541 8
	b	L1022
L1035:
LBB133:
	nop
L1022:
LBE133:
LEHE106:
	ldp	x29, x30, [sp], 48
LCFI124:
	ret
LFE32:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table11:
	.align	2
LLSDA32:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT32-LLSDATTD32
LLSDATTD32:
	.byte	0x1
	.uleb128 LLSDACSE32-LLSDACSB32
LLSDACSB32:
	.uleb128 LEHB104-LFB32
	.uleb128 LEHE104-LEHB104
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB105-LFB32
	.uleb128 LEHE105-LEHB105
	.uleb128 L1034-LFB32
	.uleb128 0x1
	.uleb128 LEHB106-LFB32
	.uleb128 LEHE106-LEHB106
	.uleb128 0
	.uleb128 0
LLSDACSE32:
	.byte	0x1
	.byte	0
	.align	2
L_got_pcr15:
	.long	___gnat_others_value@GOT-L_got_pcr15
LLSDATT32:
	.text
	.globl _smc_files_E
	.data
	.align	1
_smc_files_E:
	.space 2
	.globl _smc_files__telemetry_csv
	.const
	.align	3
_smc_files__telemetry_csv:
	.ascii "/usr/local/smcSystemDemandNow/telemetry.csv"
	.globl _smc_files__precool_flag
	.align	3
_smc_files__precool_flag:
	.ascii "/usr/local/smcSystemDemandNow/PrecoolMode"
	.globl _smc_files__earu_data_file
	.align	3
_smc_files__earu_data_file:
	.ascii "/usr/local/EnvironmentalAwareReferentialUnit/EARU_data.dat"
	.globl _smc_files__silent_mode_flag
	.align	3
_smc_files__silent_mode_flag:
	.ascii "/usr/local/smcSystemDemandNow/SilentMode"
	.globl _smc_files__calibration_file
	.align	3
_smc_files__calibration_file:
	.ascii "calibrated1006presRPM.pinnedrpm"
	.globl _smc_files__pressure_report_file
	.align	3
_smc_files__pressure_report_file:
	.ascii "/usr/local/EnvironmentalAwareReferentialUnit/EARU_dataIO/smcFanPressurehPaDetection"
	.globl _smc_files__notifications_log
	.align	3
_smc_files__notifications_log:
	.ascii "/usr/local/smcSystemDemandNow/smc_notifications.log"
	.align	3
_path.14:
	.ascii "/usr/local/EnvironmentalAwareReferentialUnit/EARU_dataIO/sensor_TURBO_MODE.dat"
	.section __DWARF,__debug_frame,regular,debug
Lsection__debug_frame:
Lframe0:
	.set L$set$0,LECIE0-LSCIE0
	.long L$set$0
LSCIE0:
	.long	0xffffffff
	.byte	0x3
	.ascii "\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE0:
LSFDE0:
	.set L$set$1,LEFDE0-LASFDE0
	.long L$set$1
LASFDE0:
	.set L$set$2,Lframe0-Lsection__debug_frame
	.long L$set$2
	.quad	LFB3
	.set L$set$3,LFE3-LFB3
	.quad L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB3
	.long L$set$4
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$5,LCFI1-LCFI0
	.long L$set$5
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$6,LCFI2-LCFI1
	.long L$set$6
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE0:
LSFDE2:
	.set L$set$7,LEFDE2-LASFDE2
	.long L$set$7
LASFDE2:
	.set L$set$8,Lframe0-Lsection__debug_frame
	.long L$set$8
	.quad	LFB2
	.set L$set$9,LFE2-LFB2
	.quad L$set$9
	.byte	0x4
	.set L$set$10,LCFI3-LFB2
	.long L$set$10
	.byte	0xe
	.uleb128 0x170
	.byte	0x9d
	.uleb128 0x2e
	.byte	0x9e
	.uleb128 0x2d
	.byte	0x4
	.set L$set$11,LCFI4-LCFI3
	.long L$set$11
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0x93
	.uleb128 0x2c
	.byte	0x94
	.uleb128 0x2b
	.byte	0x95
	.uleb128 0x2a
	.byte	0x96
	.uleb128 0x29
	.byte	0x97
	.uleb128 0x28
	.byte	0x98
	.uleb128 0x27
	.byte	0x99
	.uleb128 0x26
	.byte	0x9a
	.uleb128 0x25
	.byte	0x9b
	.uleb128 0x24
	.byte	0x9c
	.uleb128 0x23
	.byte	0x4
	.set L$set$13,LCFI6-LCFI5
	.long L$set$13
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE2:
LSFDE4:
	.set L$set$14,LEFDE4-LASFDE4
	.long L$set$14
LASFDE4:
	.set L$set$15,Lframe0-Lsection__debug_frame
	.long L$set$15
	.quad	LFB4
	.set L$set$16,LFE4-LFB4
	.quad L$set$16
	.byte	0x4
	.set L$set$17,LCFI7-LFB4
	.long L$set$17
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$18,LCFI8-LCFI7
	.long L$set$18
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$19,LCFI9-LCFI8
	.long L$set$19
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0xa
	.byte	0x4
	.set L$set$20,LCFI10-LCFI9
	.long L$set$20
	.byte	0xde
	.byte	0xdd
	.byte	0x6
	.uleb128 0x4f
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE4:
LSFDE6:
	.set L$set$21,LEFDE6-LASFDE6
	.long L$set$21
LASFDE6:
	.set L$set$22,Lframe0-Lsection__debug_frame
	.long L$set$22
	.quad	LFB5
	.set L$set$23,LFE5-LFB5
	.quad L$set$23
	.byte	0x4
	.set L$set$24,LCFI11-LFB5
	.long L$set$24
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$25,LCFI12-LCFI11
	.long L$set$25
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$26,LCFI13-LCFI12
	.long L$set$26
	.byte	0x93
	.uleb128 0xa
	.byte	0x4
	.set L$set$27,LCFI14-LCFI13
	.long L$set$27
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE6:
LSFDE8:
	.set L$set$28,LEFDE8-LASFDE8
	.long L$set$28
LASFDE8:
	.set L$set$29,Lframe0-Lsection__debug_frame
	.long L$set$29
	.quad	LFB6
	.set L$set$30,LFE6-LFB6
	.quad L$set$30
	.byte	0x4
	.set L$set$31,LCFI15-LFB6
	.long L$set$31
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$32,LCFI16-LCFI15
	.long L$set$32
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$33,LCFI17-LCFI16
	.long L$set$33
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE8:
LSFDE10:
	.set L$set$34,LEFDE10-LASFDE10
	.long L$set$34
LASFDE10:
	.set L$set$35,Lframe0-Lsection__debug_frame
	.long L$set$35
	.quad	LFB7
	.set L$set$36,LFE7-LFB7
	.quad L$set$36
	.byte	0x4
	.set L$set$37,LCFI18-LFB7
	.long L$set$37
	.byte	0xe
	.uleb128 0x220
	.byte	0x4
	.set L$set$38,LCFI19-LCFI18
	.long L$set$38
	.byte	0xe
	.uleb128 0x10220
	.byte	0x4
	.set L$set$39,LCFI20-LCFI19
	.long L$set$39
	.byte	0x9d
	.uleb128 0x2044
	.byte	0x9e
	.uleb128 0x2043
	.byte	0x4
	.set L$set$40,LCFI21-LCFI20
	.long L$set$40
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$41,LCFI22-LCFI21
	.long L$set$41
	.byte	0x94
	.uleb128 0x2042
	.byte	0x95
	.uleb128 0x2041
	.byte	0x96
	.uleb128 0x2040
	.byte	0x97
	.uleb128 0x203f
	.byte	0x98
	.uleb128 0x203e
	.byte	0x99
	.uleb128 0x203d
	.byte	0x9a
	.uleb128 0x203c
	.byte	0x9b
	.uleb128 0x203b
	.byte	0x4
	.set L$set$42,LCFI23-LCFI22
	.long L$set$42
	.byte	0xda
	.byte	0xdb
	.byte	0xd8
	.byte	0xd9
	.byte	0xd6
	.byte	0xd7
	.byte	0xd4
	.byte	0xd5
	.byte	0xdd
	.byte	0xde
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$43,LCFI24-LCFI23
	.long L$set$43
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$44,LCFI25-LCFI24
	.long L$set$44
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE10:
LSFDE12:
	.set L$set$45,LEFDE12-LASFDE12
	.long L$set$45
LASFDE12:
	.set L$set$46,Lframe0-Lsection__debug_frame
	.long L$set$46
	.quad	LFB8
	.set L$set$47,LFE8-LFB8
	.quad L$set$47
	.byte	0x4
	.set L$set$48,LCFI26-LFB8
	.long L$set$48
	.byte	0xe
	.uleb128 0x1c0
	.byte	0x4
	.set L$set$49,LCFI27-LCFI26
	.long L$set$49
	.byte	0xe
	.uleb128 0x101c0
	.byte	0x4
	.set L$set$50,LCFI28-LCFI27
	.long L$set$50
	.byte	0x9d
	.uleb128 0x2038
	.byte	0x9e
	.uleb128 0x2037
	.byte	0x4
	.set L$set$51,LCFI29-LCFI28
	.long L$set$51
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$52,LCFI30-LCFI29
	.long L$set$52
	.byte	0x94
	.uleb128 0x2036
	.byte	0x95
	.uleb128 0x2035
	.byte	0x96
	.uleb128 0x2034
	.byte	0x97
	.uleb128 0x2033
	.byte	0x98
	.uleb128 0x2032
	.byte	0x99
	.uleb128 0x2031
	.byte	0x9a
	.uleb128 0x2030
	.byte	0x9b
	.uleb128 0x202f
	.byte	0x4
	.set L$set$53,LCFI31-LCFI30
	.long L$set$53
	.byte	0xda
	.byte	0xdb
	.byte	0xd8
	.byte	0xd9
	.byte	0xd6
	.byte	0xd7
	.byte	0xd4
	.byte	0xd5
	.byte	0xdd
	.byte	0xde
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$54,LCFI32-LCFI31
	.long L$set$54
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$55,LCFI33-LCFI32
	.long L$set$55
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE12:
LSFDE14:
	.set L$set$56,LEFDE14-LASFDE14
	.long L$set$56
LASFDE14:
	.set L$set$57,Lframe0-Lsection__debug_frame
	.long L$set$57
	.quad	LFB9
	.set L$set$58,LFE9-LFB9
	.quad L$set$58
	.byte	0x4
	.set L$set$59,LCFI34-LFB9
	.long L$set$59
	.byte	0xe
	.uleb128 0xa0
	.byte	0x4
	.set L$set$60,LCFI35-LCFI34
	.long L$set$60
	.byte	0xe
	.uleb128 0x100a0
	.byte	0x4
	.set L$set$61,LCFI36-LCFI35
	.long L$set$61
	.byte	0x9d
	.uleb128 0x2014
	.byte	0x9e
	.uleb128 0x2013
	.byte	0x4
	.set L$set$62,LCFI37-LCFI36
	.long L$set$62
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$63,LCFI38-LCFI37
	.long L$set$63
	.byte	0x94
	.uleb128 0x2012
	.byte	0x95
	.uleb128 0x2011
	.byte	0x96
	.uleb128 0x2010
	.byte	0x97
	.uleb128 0x200f
	.byte	0x98
	.uleb128 0x200e
	.byte	0x99
	.uleb128 0x200d
	.byte	0x9a
	.uleb128 0x200c
	.byte	0x9b
	.uleb128 0x200b
	.byte	0x4
	.set L$set$64,LCFI39-LCFI38
	.long L$set$64
	.byte	0xda
	.byte	0xdb
	.byte	0xd8
	.byte	0xd9
	.byte	0xd6
	.byte	0xd7
	.byte	0xd4
	.byte	0xd5
	.byte	0xdd
	.byte	0xde
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$65,LCFI40-LCFI39
	.long L$set$65
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$66,LCFI41-LCFI40
	.long L$set$66
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE14:
LSFDE16:
	.set L$set$67,LEFDE16-LASFDE16
	.long L$set$67
LASFDE16:
	.set L$set$68,Lframe0-Lsection__debug_frame
	.long L$set$68
	.quad	LFB11
	.set L$set$69,LFE11-LFB11
	.quad L$set$69
	.byte	0x4
	.set L$set$70,LCFI42-LFB11
	.long L$set$70
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$71,LCFI43-LCFI42
	.long L$set$71
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$72,LCFI44-LCFI43
	.long L$set$72
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE16:
LSFDE18:
	.set L$set$73,LEFDE18-LASFDE18
	.long L$set$73
LASFDE18:
	.set L$set$74,Lframe0-Lsection__debug_frame
	.long L$set$74
	.quad	LFB10
	.set L$set$75,LFE10-LFB10
	.quad L$set$75
	.byte	0x4
	.set L$set$76,LCFI45-LFB10
	.long L$set$76
	.byte	0xe
	.uleb128 0x7e0
	.byte	0x4
	.set L$set$77,LCFI46-LCFI45
	.long L$set$77
	.byte	0x9d
	.uleb128 0xfc
	.byte	0x9e
	.uleb128 0xfb
	.byte	0x4
	.set L$set$78,LCFI47-LCFI46
	.long L$set$78
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$79,LCFI48-LCFI47
	.long L$set$79
	.byte	0x93
	.uleb128 0xfa
	.byte	0x94
	.uleb128 0xf9
	.byte	0x95
	.uleb128 0xf8
	.byte	0x96
	.uleb128 0xf7
	.byte	0x97
	.uleb128 0xf6
	.byte	0x98
	.uleb128 0xf5
	.byte	0x99
	.uleb128 0xf4
	.byte	0x9a
	.uleb128 0xf3
	.byte	0x9b
	.uleb128 0xf2
	.byte	0x9c
	.uleb128 0xf1
	.byte	0x4
	.set L$set$80,LCFI49-LCFI48
	.long L$set$80
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE18:
LSFDE20:
	.set L$set$81,LEFDE20-LASFDE20
	.long L$set$81
LASFDE20:
	.set L$set$82,Lframe0-Lsection__debug_frame
	.long L$set$82
	.quad	LFB12
	.set L$set$83,LFE12-LFB12
	.quad L$set$83
	.byte	0x4
	.set L$set$84,LCFI50-LFB12
	.long L$set$84
	.byte	0xe
	.uleb128 0x500
	.byte	0x4
	.set L$set$85,LCFI51-LCFI50
	.long L$set$85
	.byte	0x9d
	.uleb128 0xa0
	.byte	0x9e
	.uleb128 0x9f
	.byte	0x4
	.set L$set$86,LCFI52-LCFI51
	.long L$set$86
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$87,LCFI53-LCFI52
	.long L$set$87
	.byte	0x94
	.uleb128 0x9e
	.byte	0x95
	.uleb128 0x9d
	.byte	0x96
	.uleb128 0x9c
	.byte	0x97
	.uleb128 0x9b
	.byte	0x98
	.uleb128 0x9a
	.byte	0x99
	.uleb128 0x99
	.byte	0x9a
	.uleb128 0x98
	.byte	0x9b
	.uleb128 0x97
	.byte	0x4
	.set L$set$88,LCFI54-LCFI53
	.long L$set$88
	.byte	0xda
	.byte	0xdb
	.byte	0xd8
	.byte	0xd9
	.byte	0xd6
	.byte	0xd7
	.byte	0xd4
	.byte	0xd5
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE20:
LSFDE22:
	.set L$set$89,LEFDE22-LASFDE22
	.long L$set$89
LASFDE22:
	.set L$set$90,Lframe0-Lsection__debug_frame
	.long L$set$90
	.quad	LFB14
	.set L$set$91,LFE14-LFB14
	.quad L$set$91
	.byte	0x4
	.set L$set$92,LCFI55-LFB14
	.long L$set$92
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$93,LCFI56-LCFI55
	.long L$set$93
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$94,LCFI57-LCFI56
	.long L$set$94
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE22:
LSFDE24:
	.set L$set$95,LEFDE24-LASFDE24
	.long L$set$95
LASFDE24:
	.set L$set$96,Lframe0-Lsection__debug_frame
	.long L$set$96
	.quad	LFB13
	.set L$set$97,LFE13-LFB13
	.quad L$set$97
	.byte	0x4
	.set L$set$98,LCFI58-LFB13
	.long L$set$98
	.byte	0xe
	.uleb128 0x7a0
	.byte	0x4
	.set L$set$99,LCFI59-LCFI58
	.long L$set$99
	.byte	0x9d
	.uleb128 0xf2
	.byte	0x9e
	.uleb128 0xf1
	.byte	0x4
	.set L$set$100,LCFI60-LCFI59
	.long L$set$100
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x790
	.byte	0x4
	.set L$set$101,LCFI61-LCFI60
	.long L$set$101
	.byte	0x93
	.uleb128 0xf0
	.byte	0x94
	.uleb128 0xef
	.byte	0x95
	.uleb128 0xee
	.byte	0x96
	.uleb128 0xed
	.byte	0x97
	.uleb128 0xec
	.byte	0x98
	.uleb128 0xeb
	.byte	0x99
	.uleb128 0xea
	.byte	0x9a
	.uleb128 0xe9
	.byte	0x9b
	.uleb128 0xe8
	.byte	0x9c
	.uleb128 0xe7
	.byte	0x4
	.set L$set$102,LCFI62-LCFI61
	.long L$set$102
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x7a0
	.byte	0x4
	.set L$set$103,LCFI63-LCFI62
	.long L$set$103
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE24:
LSFDE26:
	.set L$set$104,LEFDE26-LASFDE26
	.long L$set$104
LASFDE26:
	.set L$set$105,Lframe0-Lsection__debug_frame
	.long L$set$105
	.quad	LFB15
	.set L$set$106,LFE15-LFB15
	.quad L$set$106
	.byte	0x4
	.set L$set$107,LCFI64-LFB15
	.long L$set$107
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$108,LCFI65-LCFI64
	.long L$set$108
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$109,LCFI66-LCFI65
	.long L$set$109
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE26:
LSFDE28:
	.set L$set$110,LEFDE28-LASFDE28
	.long L$set$110
LASFDE28:
	.set L$set$111,Lframe0-Lsection__debug_frame
	.long L$set$111
	.quad	LFB17
	.set L$set$112,LFE17-LFB17
	.quad L$set$112
	.byte	0x4
	.set L$set$113,LCFI67-LFB17
	.long L$set$113
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$114,LCFI68-LCFI67
	.long L$set$114
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$115,LCFI69-LCFI68
	.long L$set$115
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE28:
LSFDE30:
	.set L$set$116,LEFDE30-LASFDE30
	.long L$set$116
LASFDE30:
	.set L$set$117,Lframe0-Lsection__debug_frame
	.long L$set$117
	.quad	LFB16
	.set L$set$118,LFE16-LFB16
	.quad L$set$118
	.byte	0x4
	.set L$set$119,LCFI70-LFB16
	.long L$set$119
	.byte	0xe
	.uleb128 0x1a0
	.byte	0x9d
	.uleb128 0x34
	.byte	0x9e
	.uleb128 0x33
	.byte	0x4
	.set L$set$120,LCFI71-LCFI70
	.long L$set$120
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$121,LCFI72-LCFI71
	.long L$set$121
	.byte	0x93
	.uleb128 0x32
	.byte	0x94
	.uleb128 0x31
	.byte	0x95
	.uleb128 0x30
	.byte	0x96
	.uleb128 0x2f
	.byte	0x97
	.uleb128 0x2e
	.byte	0x98
	.uleb128 0x2d
	.byte	0x99
	.uleb128 0x2c
	.byte	0x9a
	.uleb128 0x2b
	.byte	0x9b
	.uleb128 0x2a
	.byte	0x9c
	.uleb128 0x29
	.byte	0x4
	.set L$set$122,LCFI73-LCFI72
	.long L$set$122
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE30:
LSFDE32:
	.set L$set$123,LEFDE32-LASFDE32
	.long L$set$123
LASFDE32:
	.set L$set$124,Lframe0-Lsection__debug_frame
	.long L$set$124
	.quad	LFB19
	.set L$set$125,LFE19-LFB19
	.quad L$set$125
	.byte	0x4
	.set L$set$126,LCFI74-LFB19
	.long L$set$126
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$127,LCFI75-LCFI74
	.long L$set$127
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$128,LCFI76-LCFI75
	.long L$set$128
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE32:
LSFDE34:
	.set L$set$129,LEFDE34-LASFDE34
	.long L$set$129
LASFDE34:
	.set L$set$130,Lframe0-Lsection__debug_frame
	.long L$set$130
	.quad	LFB18
	.set L$set$131,LFE18-LFB18
	.quad L$set$131
	.byte	0x4
	.set L$set$132,LCFI77-LFB18
	.long L$set$132
	.byte	0xe
	.uleb128 0x1a0
	.byte	0x9d
	.uleb128 0x34
	.byte	0x9e
	.uleb128 0x33
	.byte	0x4
	.set L$set$133,LCFI78-LCFI77
	.long L$set$133
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$134,LCFI79-LCFI78
	.long L$set$134
	.byte	0x93
	.uleb128 0x32
	.byte	0x94
	.uleb128 0x31
	.byte	0x95
	.uleb128 0x30
	.byte	0x96
	.uleb128 0x2f
	.byte	0x97
	.uleb128 0x2e
	.byte	0x98
	.uleb128 0x2d
	.byte	0x99
	.uleb128 0x2c
	.byte	0x9a
	.uleb128 0x2b
	.byte	0x9b
	.uleb128 0x2a
	.byte	0x9c
	.uleb128 0x29
	.byte	0x4
	.set L$set$135,LCFI80-LCFI79
	.long L$set$135
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE34:
LSFDE36:
	.set L$set$136,LEFDE36-LASFDE36
	.long L$set$136
LASFDE36:
	.set L$set$137,Lframe0-Lsection__debug_frame
	.long L$set$137
	.quad	LFB21
	.set L$set$138,LFE21-LFB21
	.quad L$set$138
	.byte	0x4
	.set L$set$139,LCFI81-LFB21
	.long L$set$139
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$140,LCFI82-LCFI81
	.long L$set$140
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$141,LCFI83-LCFI82
	.long L$set$141
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE36:
LSFDE38:
	.set L$set$142,LEFDE38-LASFDE38
	.long L$set$142
LASFDE38:
	.set L$set$143,Lframe0-Lsection__debug_frame
	.long L$set$143
	.quad	LFB20
	.set L$set$144,LFE20-LFB20
	.quad L$set$144
	.byte	0x4
	.set L$set$145,LCFI84-LFB20
	.long L$set$145
	.byte	0xe
	.uleb128 0xe0
	.byte	0x9d
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1b
	.byte	0x4
	.set L$set$146,LCFI85-LCFI84
	.long L$set$146
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$147,LCFI86-LCFI85
	.long L$set$147
	.byte	0x93
	.uleb128 0x1a
	.byte	0x94
	.uleb128 0x19
	.byte	0x95
	.uleb128 0x18
	.byte	0x96
	.uleb128 0x17
	.byte	0x97
	.uleb128 0x16
	.byte	0x98
	.uleb128 0x15
	.byte	0x99
	.uleb128 0x14
	.byte	0x9a
	.uleb128 0x13
	.byte	0x9b
	.uleb128 0x12
	.byte	0x9c
	.uleb128 0x11
	.byte	0x4
	.set L$set$148,LCFI87-LCFI86
	.long L$set$148
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE38:
LSFDE40:
	.set L$set$149,LEFDE40-LASFDE40
	.long L$set$149
LASFDE40:
	.set L$set$150,Lframe0-Lsection__debug_frame
	.long L$set$150
	.quad	LFB23
	.set L$set$151,LFE23-LFB23
	.quad L$set$151
	.byte	0x4
	.set L$set$152,LCFI88-LFB23
	.long L$set$152
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$153,LCFI89-LCFI88
	.long L$set$153
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$154,LCFI90-LCFI89
	.long L$set$154
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE40:
LSFDE42:
	.set L$set$155,LEFDE42-LASFDE42
	.long L$set$155
LASFDE42:
	.set L$set$156,Lframe0-Lsection__debug_frame
	.long L$set$156
	.quad	LFB22
	.set L$set$157,LFE22-LFB22
	.quad L$set$157
	.byte	0x4
	.set L$set$158,LCFI91-LFB22
	.long L$set$158
	.byte	0xe
	.uleb128 0xb0
	.byte	0x9d
	.uleb128 0x16
	.byte	0x9e
	.uleb128 0x15
	.byte	0x4
	.set L$set$159,LCFI92-LCFI91
	.long L$set$159
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$160,LCFI93-LCFI92
	.long L$set$160
	.byte	0x93
	.uleb128 0x14
	.byte	0x94
	.uleb128 0x13
	.byte	0x95
	.uleb128 0x12
	.byte	0x96
	.uleb128 0x11
	.byte	0x97
	.uleb128 0x10
	.byte	0x98
	.uleb128 0xf
	.byte	0x99
	.uleb128 0xe
	.byte	0x9a
	.uleb128 0xd
	.byte	0x9b
	.uleb128 0xc
	.byte	0x4
	.set L$set$161,LCFI94-LCFI93
	.long L$set$161
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE42:
LSFDE44:
	.set L$set$162,LEFDE44-LASFDE44
	.long L$set$162
LASFDE44:
	.set L$set$163,Lframe0-Lsection__debug_frame
	.long L$set$163
	.quad	LFB25
	.set L$set$164,LFE25-LFB25
	.quad L$set$164
	.byte	0x4
	.set L$set$165,LCFI95-LFB25
	.long L$set$165
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$166,LCFI96-LCFI95
	.long L$set$166
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$167,LCFI97-LCFI96
	.long L$set$167
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE44:
LSFDE46:
	.set L$set$168,LEFDE46-LASFDE46
	.long L$set$168
LASFDE46:
	.set L$set$169,Lframe0-Lsection__debug_frame
	.long L$set$169
	.quad	LFB24
	.set L$set$170,LFE24-LFB24
	.quad L$set$170
	.byte	0x4
	.set L$set$171,LCFI98-LFB24
	.long L$set$171
	.byte	0xe
	.uleb128 0xe0
	.byte	0x9d
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1b
	.byte	0x4
	.set L$set$172,LCFI99-LCFI98
	.long L$set$172
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$173,LCFI100-LCFI99
	.long L$set$173
	.byte	0x93
	.uleb128 0x1a
	.byte	0x94
	.uleb128 0x19
	.byte	0x95
	.uleb128 0x18
	.byte	0x96
	.uleb128 0x17
	.byte	0x97
	.uleb128 0x16
	.byte	0x98
	.uleb128 0x15
	.byte	0x99
	.uleb128 0x14
	.byte	0x9a
	.uleb128 0x13
	.byte	0x9b
	.uleb128 0x12
	.byte	0x9c
	.uleb128 0x11
	.byte	0x4
	.set L$set$174,LCFI101-LCFI100
	.long L$set$174
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE46:
LSFDE48:
	.set L$set$175,LEFDE48-LASFDE48
	.long L$set$175
LASFDE48:
	.set L$set$176,Lframe0-Lsection__debug_frame
	.long L$set$176
	.quad	LFB27
	.set L$set$177,LFE27-LFB27
	.quad L$set$177
	.byte	0x4
	.set L$set$178,LCFI102-LFB27
	.long L$set$178
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$179,LCFI103-LCFI102
	.long L$set$179
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$180,LCFI104-LCFI103
	.long L$set$180
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE48:
LSFDE50:
	.set L$set$181,LEFDE50-LASFDE50
	.long L$set$181
LASFDE50:
	.set L$set$182,Lframe0-Lsection__debug_frame
	.long L$set$182
	.quad	LFB26
	.set L$set$183,LFE26-LFB26
	.quad L$set$183
	.byte	0x4
	.set L$set$184,LCFI105-LFB26
	.long L$set$184
	.byte	0xe
	.uleb128 0x5b0
	.byte	0x4
	.set L$set$185,LCFI106-LCFI105
	.long L$set$185
	.byte	0x9d
	.uleb128 0xb6
	.byte	0x9e
	.uleb128 0xb5
	.byte	0x4
	.set L$set$186,LCFI107-LCFI106
	.long L$set$186
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$187,LCFI108-LCFI107
	.long L$set$187
	.byte	0x93
	.uleb128 0xb4
	.byte	0x94
	.uleb128 0xb3
	.byte	0x95
	.uleb128 0xb2
	.byte	0x96
	.uleb128 0xb1
	.byte	0x97
	.uleb128 0xb0
	.byte	0x98
	.uleb128 0xaf
	.byte	0x99
	.uleb128 0xae
	.byte	0x9a
	.uleb128 0xad
	.byte	0x9b
	.uleb128 0xac
	.byte	0x9c
	.uleb128 0xab
	.byte	0x4
	.set L$set$188,LCFI109-LCFI108
	.long L$set$188
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE50:
LSFDE52:
	.set L$set$189,LEFDE52-LASFDE52
	.long L$set$189
LASFDE52:
	.set L$set$190,Lframe0-Lsection__debug_frame
	.long L$set$190
	.quad	LFB28
	.set L$set$191,LFE28-LFB28
	.quad L$set$191
	.byte	0x4
	.set L$set$192,LCFI110-LFB28
	.long L$set$192
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$193,LCFI111-LCFI110
	.long L$set$193
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$194,LCFI112-LCFI111
	.long L$set$194
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE52:
LSFDE54:
	.set L$set$195,LEFDE54-LASFDE54
	.long L$set$195
LASFDE54:
	.set L$set$196,Lframe0-Lsection__debug_frame
	.long L$set$196
	.quad	LFB29
	.set L$set$197,LFE29-LFB29
	.quad L$set$197
	.byte	0x4
	.set L$set$198,LCFI113-LFB29
	.long L$set$198
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$199,LCFI114-LCFI113
	.long L$set$199
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$200,LCFI115-LCFI114
	.long L$set$200
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE54:
LSFDE56:
	.set L$set$201,LEFDE56-LASFDE56
	.long L$set$201
LASFDE56:
	.set L$set$202,Lframe0-Lsection__debug_frame
	.long L$set$202
	.quad	LFB30
	.set L$set$203,LFE30-LFB30
	.quad L$set$203
	.byte	0x4
	.set L$set$204,LCFI116-LFB30
	.long L$set$204
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$205,LCFI117-LCFI116
	.long L$set$205
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$206,LCFI118-LCFI117
	.long L$set$206
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE56:
LSFDE58:
	.set L$set$207,LEFDE58-LASFDE58
	.long L$set$207
LASFDE58:
	.set L$set$208,Lframe0-Lsection__debug_frame
	.long L$set$208
	.quad	LFB31
	.set L$set$209,LFE31-LFB31
	.quad L$set$209
	.byte	0x4
	.set L$set$210,LCFI119-LFB31
	.long L$set$210
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$211,LCFI120-LCFI119
	.long L$set$211
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$212,LCFI121-LCFI120
	.long L$set$212
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE58:
LSFDE60:
	.set L$set$213,LEFDE60-LASFDE60
	.long L$set$213
LASFDE60:
	.set L$set$214,Lframe0-Lsection__debug_frame
	.long L$set$214
	.quad	LFB32
	.set L$set$215,LFE32-LFB32
	.quad L$set$215
	.byte	0x4
	.set L$set$216,LCFI122-LFB32
	.long L$set$216
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$217,LCFI123-LCFI122
	.long L$set$217
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$218,LCFI124-LCFI123
	.long L$set$218
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE60:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$219,LECIE1-LSCIE1
	.long L$set$219
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zPLR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x7
	.byte	0x9b
L_got_pcr16:
	.long	___gnat_personality_v0@GOT-L_got_pcr16
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE63:
	.set L$set$220,LEFDE63-LASFDE63
	.long L$set$220
LASFDE63:
	.long	LASFDE63-EH_frame1
	.quad	LFB3-.
	.set L$set$221,LFE3-LFB3
	.quad L$set$221
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$222,LCFI0-LFB3
	.long L$set$222
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$223,LCFI1-LCFI0
	.long L$set$223
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$224,LCFI2-LCFI1
	.long L$set$224
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE63:
LSFDE65:
	.set L$set$225,LEFDE65-LASFDE65
	.long L$set$225
LASFDE65:
	.long	LASFDE65-EH_frame1
	.quad	LFB2-.
	.set L$set$226,LFE2-LFB2
	.quad L$set$226
	.uleb128 0x8
	.quad	LLSDA2-.
	.byte	0x4
	.set L$set$227,LCFI3-LFB2
	.long L$set$227
	.byte	0xe
	.uleb128 0x170
	.byte	0x9d
	.uleb128 0x2e
	.byte	0x9e
	.uleb128 0x2d
	.byte	0x4
	.set L$set$228,LCFI4-LCFI3
	.long L$set$228
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$229,LCFI5-LCFI4
	.long L$set$229
	.byte	0x93
	.uleb128 0x2c
	.byte	0x94
	.uleb128 0x2b
	.byte	0x95
	.uleb128 0x2a
	.byte	0x96
	.uleb128 0x29
	.byte	0x97
	.uleb128 0x28
	.byte	0x98
	.uleb128 0x27
	.byte	0x99
	.uleb128 0x26
	.byte	0x9a
	.uleb128 0x25
	.byte	0x9b
	.uleb128 0x24
	.byte	0x9c
	.uleb128 0x23
	.byte	0x4
	.set L$set$230,LCFI6-LCFI5
	.long L$set$230
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE65:
LSFDE67:
	.set L$set$231,LEFDE67-LASFDE67
	.long L$set$231
LASFDE67:
	.long	LASFDE67-EH_frame1
	.quad	LFB4-.
	.set L$set$232,LFE4-LFB4
	.quad L$set$232
	.uleb128 0x8
	.quad	LLSDA4-.
	.byte	0x4
	.set L$set$233,LCFI7-LFB4
	.long L$set$233
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$234,LCFI8-LCFI7
	.long L$set$234
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$235,LCFI9-LCFI8
	.long L$set$235
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0xa
	.byte	0x4
	.set L$set$236,LCFI10-LCFI9
	.long L$set$236
	.byte	0xde
	.byte	0xdd
	.byte	0x6
	.uleb128 0x4f
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE67:
LSFDE69:
	.set L$set$237,LEFDE69-LASFDE69
	.long L$set$237
LASFDE69:
	.long	LASFDE69-EH_frame1
	.quad	LFB5-.
	.set L$set$238,LFE5-LFB5
	.quad L$set$238
	.uleb128 0x8
	.quad	LLSDA5-.
	.byte	0x4
	.set L$set$239,LCFI11-LFB5
	.long L$set$239
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$240,LCFI12-LCFI11
	.long L$set$240
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$241,LCFI13-LCFI12
	.long L$set$241
	.byte	0x93
	.uleb128 0xa
	.byte	0x4
	.set L$set$242,LCFI14-LCFI13
	.long L$set$242
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE69:
LSFDE71:
	.set L$set$243,LEFDE71-LASFDE71
	.long L$set$243
LASFDE71:
	.long	LASFDE71-EH_frame1
	.quad	LFB6-.
	.set L$set$244,LFE6-LFB6
	.quad L$set$244
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$245,LCFI15-LFB6
	.long L$set$245
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$246,LCFI16-LCFI15
	.long L$set$246
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$247,LCFI17-LCFI16
	.long L$set$247
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE71:
LSFDE73:
	.set L$set$248,LEFDE73-LASFDE73
	.long L$set$248
LASFDE73:
	.long	LASFDE73-EH_frame1
	.quad	LFB7-.
	.set L$set$249,LFE7-LFB7
	.quad L$set$249
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$250,LCFI18-LFB7
	.long L$set$250
	.byte	0xe
	.uleb128 0x220
	.byte	0x4
	.set L$set$251,LCFI19-LCFI18
	.long L$set$251
	.byte	0xe
	.uleb128 0x10220
	.byte	0x4
	.set L$set$252,LCFI20-LCFI19
	.long L$set$252
	.byte	0x9d
	.uleb128 0x2044
	.byte	0x9e
	.uleb128 0x2043
	.byte	0x4
	.set L$set$253,LCFI21-LCFI20
	.long L$set$253
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$254,LCFI22-LCFI21
	.long L$set$254
	.byte	0x94
	.uleb128 0x2042
	.byte	0x95
	.uleb128 0x2041
	.byte	0x96
	.uleb128 0x2040
	.byte	0x97
	.uleb128 0x203f
	.byte	0x98
	.uleb128 0x203e
	.byte	0x99
	.uleb128 0x203d
	.byte	0x9a
	.uleb128 0x203c
	.byte	0x9b
	.uleb128 0x203b
	.byte	0x4
	.set L$set$255,LCFI23-LCFI22
	.long L$set$255
	.byte	0xda
	.byte	0xdb
	.byte	0xd8
	.byte	0xd9
	.byte	0xd6
	.byte	0xd7
	.byte	0xd4
	.byte	0xd5
	.byte	0xdd
	.byte	0xde
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$256,LCFI24-LCFI23
	.long L$set$256
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$257,LCFI25-LCFI24
	.long L$set$257
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE73:
LSFDE75:
	.set L$set$258,LEFDE75-LASFDE75
	.long L$set$258
LASFDE75:
	.long	LASFDE75-EH_frame1
	.quad	LFB8-.
	.set L$set$259,LFE8-LFB8
	.quad L$set$259
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$260,LCFI26-LFB8
	.long L$set$260
	.byte	0xe
	.uleb128 0x1c0
	.byte	0x4
	.set L$set$261,LCFI27-LCFI26
	.long L$set$261
	.byte	0xe
	.uleb128 0x101c0
	.byte	0x4
	.set L$set$262,LCFI28-LCFI27
	.long L$set$262
	.byte	0x9d
	.uleb128 0x2038
	.byte	0x9e
	.uleb128 0x2037
	.byte	0x4
	.set L$set$263,LCFI29-LCFI28
	.long L$set$263
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$264,LCFI30-LCFI29
	.long L$set$264
	.byte	0x94
	.uleb128 0x2036
	.byte	0x95
	.uleb128 0x2035
	.byte	0x96
	.uleb128 0x2034
	.byte	0x97
	.uleb128 0x2033
	.byte	0x98
	.uleb128 0x2032
	.byte	0x99
	.uleb128 0x2031
	.byte	0x9a
	.uleb128 0x2030
	.byte	0x9b
	.uleb128 0x202f
	.byte	0x4
	.set L$set$265,LCFI31-LCFI30
	.long L$set$265
	.byte	0xda
	.byte	0xdb
	.byte	0xd8
	.byte	0xd9
	.byte	0xd6
	.byte	0xd7
	.byte	0xd4
	.byte	0xd5
	.byte	0xdd
	.byte	0xde
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$266,LCFI32-LCFI31
	.long L$set$266
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$267,LCFI33-LCFI32
	.long L$set$267
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE75:
LSFDE77:
	.set L$set$268,LEFDE77-LASFDE77
	.long L$set$268
LASFDE77:
	.long	LASFDE77-EH_frame1
	.quad	LFB9-.
	.set L$set$269,LFE9-LFB9
	.quad L$set$269
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$270,LCFI34-LFB9
	.long L$set$270
	.byte	0xe
	.uleb128 0xa0
	.byte	0x4
	.set L$set$271,LCFI35-LCFI34
	.long L$set$271
	.byte	0xe
	.uleb128 0x100a0
	.byte	0x4
	.set L$set$272,LCFI36-LCFI35
	.long L$set$272
	.byte	0x9d
	.uleb128 0x2014
	.byte	0x9e
	.uleb128 0x2013
	.byte	0x4
	.set L$set$273,LCFI37-LCFI36
	.long L$set$273
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$274,LCFI38-LCFI37
	.long L$set$274
	.byte	0x94
	.uleb128 0x2012
	.byte	0x95
	.uleb128 0x2011
	.byte	0x96
	.uleb128 0x2010
	.byte	0x97
	.uleb128 0x200f
	.byte	0x98
	.uleb128 0x200e
	.byte	0x99
	.uleb128 0x200d
	.byte	0x9a
	.uleb128 0x200c
	.byte	0x9b
	.uleb128 0x200b
	.byte	0x4
	.set L$set$275,LCFI39-LCFI38
	.long L$set$275
	.byte	0xda
	.byte	0xdb
	.byte	0xd8
	.byte	0xd9
	.byte	0xd6
	.byte	0xd7
	.byte	0xd4
	.byte	0xd5
	.byte	0xdd
	.byte	0xde
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$276,LCFI40-LCFI39
	.long L$set$276
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$277,LCFI41-LCFI40
	.long L$set$277
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE77:
LSFDE79:
	.set L$set$278,LEFDE79-LASFDE79
	.long L$set$278
LASFDE79:
	.long	LASFDE79-EH_frame1
	.quad	LFB11-.
	.set L$set$279,LFE11-LFB11
	.quad L$set$279
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$280,LCFI42-LFB11
	.long L$set$280
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$281,LCFI43-LCFI42
	.long L$set$281
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$282,LCFI44-LCFI43
	.long L$set$282
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE79:
LSFDE81:
	.set L$set$283,LEFDE81-LASFDE81
	.long L$set$283
LASFDE81:
	.long	LASFDE81-EH_frame1
	.quad	LFB10-.
	.set L$set$284,LFE10-LFB10
	.quad L$set$284
	.uleb128 0x8
	.quad	LLSDA10-.
	.byte	0x4
	.set L$set$285,LCFI45-LFB10
	.long L$set$285
	.byte	0xe
	.uleb128 0x7e0
	.byte	0x4
	.set L$set$286,LCFI46-LCFI45
	.long L$set$286
	.byte	0x9d
	.uleb128 0xfc
	.byte	0x9e
	.uleb128 0xfb
	.byte	0x4
	.set L$set$287,LCFI47-LCFI46
	.long L$set$287
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$288,LCFI48-LCFI47
	.long L$set$288
	.byte	0x93
	.uleb128 0xfa
	.byte	0x94
	.uleb128 0xf9
	.byte	0x95
	.uleb128 0xf8
	.byte	0x96
	.uleb128 0xf7
	.byte	0x97
	.uleb128 0xf6
	.byte	0x98
	.uleb128 0xf5
	.byte	0x99
	.uleb128 0xf4
	.byte	0x9a
	.uleb128 0xf3
	.byte	0x9b
	.uleb128 0xf2
	.byte	0x9c
	.uleb128 0xf1
	.byte	0x4
	.set L$set$289,LCFI49-LCFI48
	.long L$set$289
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE81:
LSFDE83:
	.set L$set$290,LEFDE83-LASFDE83
	.long L$set$290
LASFDE83:
	.long	LASFDE83-EH_frame1
	.quad	LFB12-.
	.set L$set$291,LFE12-LFB12
	.quad L$set$291
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$292,LCFI50-LFB12
	.long L$set$292
	.byte	0xe
	.uleb128 0x500
	.byte	0x4
	.set L$set$293,LCFI51-LCFI50
	.long L$set$293
	.byte	0x9d
	.uleb128 0xa0
	.byte	0x9e
	.uleb128 0x9f
	.byte	0x4
	.set L$set$294,LCFI52-LCFI51
	.long L$set$294
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$295,LCFI53-LCFI52
	.long L$set$295
	.byte	0x94
	.uleb128 0x9e
	.byte	0x95
	.uleb128 0x9d
	.byte	0x96
	.uleb128 0x9c
	.byte	0x97
	.uleb128 0x9b
	.byte	0x98
	.uleb128 0x9a
	.byte	0x99
	.uleb128 0x99
	.byte	0x9a
	.uleb128 0x98
	.byte	0x9b
	.uleb128 0x97
	.byte	0x4
	.set L$set$296,LCFI54-LCFI53
	.long L$set$296
	.byte	0xda
	.byte	0xdb
	.byte	0xd8
	.byte	0xd9
	.byte	0xd6
	.byte	0xd7
	.byte	0xd4
	.byte	0xd5
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE83:
LSFDE85:
	.set L$set$297,LEFDE85-LASFDE85
	.long L$set$297
LASFDE85:
	.long	LASFDE85-EH_frame1
	.quad	LFB14-.
	.set L$set$298,LFE14-LFB14
	.quad L$set$298
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$299,LCFI55-LFB14
	.long L$set$299
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$300,LCFI56-LCFI55
	.long L$set$300
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$301,LCFI57-LCFI56
	.long L$set$301
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE85:
LSFDE87:
	.set L$set$302,LEFDE87-LASFDE87
	.long L$set$302
LASFDE87:
	.long	LASFDE87-EH_frame1
	.quad	LFB13-.
	.set L$set$303,LFE13-LFB13
	.quad L$set$303
	.uleb128 0x8
	.quad	LLSDA13-.
	.byte	0x4
	.set L$set$304,LCFI58-LFB13
	.long L$set$304
	.byte	0xe
	.uleb128 0x7a0
	.byte	0x4
	.set L$set$305,LCFI59-LCFI58
	.long L$set$305
	.byte	0x9d
	.uleb128 0xf2
	.byte	0x9e
	.uleb128 0xf1
	.byte	0x4
	.set L$set$306,LCFI60-LCFI59
	.long L$set$306
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x790
	.byte	0x4
	.set L$set$307,LCFI61-LCFI60
	.long L$set$307
	.byte	0x93
	.uleb128 0xf0
	.byte	0x94
	.uleb128 0xef
	.byte	0x95
	.uleb128 0xee
	.byte	0x96
	.uleb128 0xed
	.byte	0x97
	.uleb128 0xec
	.byte	0x98
	.uleb128 0xeb
	.byte	0x99
	.uleb128 0xea
	.byte	0x9a
	.uleb128 0xe9
	.byte	0x9b
	.uleb128 0xe8
	.byte	0x9c
	.uleb128 0xe7
	.byte	0x4
	.set L$set$308,LCFI62-LCFI61
	.long L$set$308
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x7a0
	.byte	0x4
	.set L$set$309,LCFI63-LCFI62
	.long L$set$309
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE87:
LSFDE89:
	.set L$set$310,LEFDE89-LASFDE89
	.long L$set$310
LASFDE89:
	.long	LASFDE89-EH_frame1
	.quad	LFB15-.
	.set L$set$311,LFE15-LFB15
	.quad L$set$311
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$312,LCFI64-LFB15
	.long L$set$312
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$313,LCFI65-LCFI64
	.long L$set$313
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$314,LCFI66-LCFI65
	.long L$set$314
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE89:
LSFDE91:
	.set L$set$315,LEFDE91-LASFDE91
	.long L$set$315
LASFDE91:
	.long	LASFDE91-EH_frame1
	.quad	LFB17-.
	.set L$set$316,LFE17-LFB17
	.quad L$set$316
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$317,LCFI67-LFB17
	.long L$set$317
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$318,LCFI68-LCFI67
	.long L$set$318
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$319,LCFI69-LCFI68
	.long L$set$319
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE91:
LSFDE93:
	.set L$set$320,LEFDE93-LASFDE93
	.long L$set$320
LASFDE93:
	.long	LASFDE93-EH_frame1
	.quad	LFB16-.
	.set L$set$321,LFE16-LFB16
	.quad L$set$321
	.uleb128 0x8
	.quad	LLSDA16-.
	.byte	0x4
	.set L$set$322,LCFI70-LFB16
	.long L$set$322
	.byte	0xe
	.uleb128 0x1a0
	.byte	0x9d
	.uleb128 0x34
	.byte	0x9e
	.uleb128 0x33
	.byte	0x4
	.set L$set$323,LCFI71-LCFI70
	.long L$set$323
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$324,LCFI72-LCFI71
	.long L$set$324
	.byte	0x93
	.uleb128 0x32
	.byte	0x94
	.uleb128 0x31
	.byte	0x95
	.uleb128 0x30
	.byte	0x96
	.uleb128 0x2f
	.byte	0x97
	.uleb128 0x2e
	.byte	0x98
	.uleb128 0x2d
	.byte	0x99
	.uleb128 0x2c
	.byte	0x9a
	.uleb128 0x2b
	.byte	0x9b
	.uleb128 0x2a
	.byte	0x9c
	.uleb128 0x29
	.byte	0x4
	.set L$set$325,LCFI73-LCFI72
	.long L$set$325
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE93:
LSFDE95:
	.set L$set$326,LEFDE95-LASFDE95
	.long L$set$326
LASFDE95:
	.long	LASFDE95-EH_frame1
	.quad	LFB19-.
	.set L$set$327,LFE19-LFB19
	.quad L$set$327
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$328,LCFI74-LFB19
	.long L$set$328
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$329,LCFI75-LCFI74
	.long L$set$329
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$330,LCFI76-LCFI75
	.long L$set$330
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE95:
LSFDE97:
	.set L$set$331,LEFDE97-LASFDE97
	.long L$set$331
LASFDE97:
	.long	LASFDE97-EH_frame1
	.quad	LFB18-.
	.set L$set$332,LFE18-LFB18
	.quad L$set$332
	.uleb128 0x8
	.quad	LLSDA18-.
	.byte	0x4
	.set L$set$333,LCFI77-LFB18
	.long L$set$333
	.byte	0xe
	.uleb128 0x1a0
	.byte	0x9d
	.uleb128 0x34
	.byte	0x9e
	.uleb128 0x33
	.byte	0x4
	.set L$set$334,LCFI78-LCFI77
	.long L$set$334
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$335,LCFI79-LCFI78
	.long L$set$335
	.byte	0x93
	.uleb128 0x32
	.byte	0x94
	.uleb128 0x31
	.byte	0x95
	.uleb128 0x30
	.byte	0x96
	.uleb128 0x2f
	.byte	0x97
	.uleb128 0x2e
	.byte	0x98
	.uleb128 0x2d
	.byte	0x99
	.uleb128 0x2c
	.byte	0x9a
	.uleb128 0x2b
	.byte	0x9b
	.uleb128 0x2a
	.byte	0x9c
	.uleb128 0x29
	.byte	0x4
	.set L$set$336,LCFI80-LCFI79
	.long L$set$336
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE97:
LSFDE99:
	.set L$set$337,LEFDE99-LASFDE99
	.long L$set$337
LASFDE99:
	.long	LASFDE99-EH_frame1
	.quad	LFB21-.
	.set L$set$338,LFE21-LFB21
	.quad L$set$338
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$339,LCFI81-LFB21
	.long L$set$339
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$340,LCFI82-LCFI81
	.long L$set$340
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$341,LCFI83-LCFI82
	.long L$set$341
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE99:
LSFDE101:
	.set L$set$342,LEFDE101-LASFDE101
	.long L$set$342
LASFDE101:
	.long	LASFDE101-EH_frame1
	.quad	LFB20-.
	.set L$set$343,LFE20-LFB20
	.quad L$set$343
	.uleb128 0x8
	.quad	LLSDA20-.
	.byte	0x4
	.set L$set$344,LCFI84-LFB20
	.long L$set$344
	.byte	0xe
	.uleb128 0xe0
	.byte	0x9d
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1b
	.byte	0x4
	.set L$set$345,LCFI85-LCFI84
	.long L$set$345
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$346,LCFI86-LCFI85
	.long L$set$346
	.byte	0x93
	.uleb128 0x1a
	.byte	0x94
	.uleb128 0x19
	.byte	0x95
	.uleb128 0x18
	.byte	0x96
	.uleb128 0x17
	.byte	0x97
	.uleb128 0x16
	.byte	0x98
	.uleb128 0x15
	.byte	0x99
	.uleb128 0x14
	.byte	0x9a
	.uleb128 0x13
	.byte	0x9b
	.uleb128 0x12
	.byte	0x9c
	.uleb128 0x11
	.byte	0x4
	.set L$set$347,LCFI87-LCFI86
	.long L$set$347
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE101:
LSFDE103:
	.set L$set$348,LEFDE103-LASFDE103
	.long L$set$348
LASFDE103:
	.long	LASFDE103-EH_frame1
	.quad	LFB23-.
	.set L$set$349,LFE23-LFB23
	.quad L$set$349
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$350,LCFI88-LFB23
	.long L$set$350
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$351,LCFI89-LCFI88
	.long L$set$351
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$352,LCFI90-LCFI89
	.long L$set$352
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE103:
LSFDE105:
	.set L$set$353,LEFDE105-LASFDE105
	.long L$set$353
LASFDE105:
	.long	LASFDE105-EH_frame1
	.quad	LFB22-.
	.set L$set$354,LFE22-LFB22
	.quad L$set$354
	.uleb128 0x8
	.quad	LLSDA22-.
	.byte	0x4
	.set L$set$355,LCFI91-LFB22
	.long L$set$355
	.byte	0xe
	.uleb128 0xb0
	.byte	0x9d
	.uleb128 0x16
	.byte	0x9e
	.uleb128 0x15
	.byte	0x4
	.set L$set$356,LCFI92-LCFI91
	.long L$set$356
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$357,LCFI93-LCFI92
	.long L$set$357
	.byte	0x93
	.uleb128 0x14
	.byte	0x94
	.uleb128 0x13
	.byte	0x95
	.uleb128 0x12
	.byte	0x96
	.uleb128 0x11
	.byte	0x97
	.uleb128 0x10
	.byte	0x98
	.uleb128 0xf
	.byte	0x99
	.uleb128 0xe
	.byte	0x9a
	.uleb128 0xd
	.byte	0x9b
	.uleb128 0xc
	.byte	0x4
	.set L$set$358,LCFI94-LCFI93
	.long L$set$358
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE105:
LSFDE107:
	.set L$set$359,LEFDE107-LASFDE107
	.long L$set$359
LASFDE107:
	.long	LASFDE107-EH_frame1
	.quad	LFB25-.
	.set L$set$360,LFE25-LFB25
	.quad L$set$360
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$361,LCFI95-LFB25
	.long L$set$361
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$362,LCFI96-LCFI95
	.long L$set$362
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$363,LCFI97-LCFI96
	.long L$set$363
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE107:
LSFDE109:
	.set L$set$364,LEFDE109-LASFDE109
	.long L$set$364
LASFDE109:
	.long	LASFDE109-EH_frame1
	.quad	LFB24-.
	.set L$set$365,LFE24-LFB24
	.quad L$set$365
	.uleb128 0x8
	.quad	LLSDA24-.
	.byte	0x4
	.set L$set$366,LCFI98-LFB24
	.long L$set$366
	.byte	0xe
	.uleb128 0xe0
	.byte	0x9d
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1b
	.byte	0x4
	.set L$set$367,LCFI99-LCFI98
	.long L$set$367
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$368,LCFI100-LCFI99
	.long L$set$368
	.byte	0x93
	.uleb128 0x1a
	.byte	0x94
	.uleb128 0x19
	.byte	0x95
	.uleb128 0x18
	.byte	0x96
	.uleb128 0x17
	.byte	0x97
	.uleb128 0x16
	.byte	0x98
	.uleb128 0x15
	.byte	0x99
	.uleb128 0x14
	.byte	0x9a
	.uleb128 0x13
	.byte	0x9b
	.uleb128 0x12
	.byte	0x9c
	.uleb128 0x11
	.byte	0x4
	.set L$set$369,LCFI101-LCFI100
	.long L$set$369
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE109:
LSFDE111:
	.set L$set$370,LEFDE111-LASFDE111
	.long L$set$370
LASFDE111:
	.long	LASFDE111-EH_frame1
	.quad	LFB27-.
	.set L$set$371,LFE27-LFB27
	.quad L$set$371
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$372,LCFI102-LFB27
	.long L$set$372
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$373,LCFI103-LCFI102
	.long L$set$373
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$374,LCFI104-LCFI103
	.long L$set$374
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE111:
LSFDE113:
	.set L$set$375,LEFDE113-LASFDE113
	.long L$set$375
LASFDE113:
	.long	LASFDE113-EH_frame1
	.quad	LFB26-.
	.set L$set$376,LFE26-LFB26
	.quad L$set$376
	.uleb128 0x8
	.quad	LLSDA26-.
	.byte	0x4
	.set L$set$377,LCFI105-LFB26
	.long L$set$377
	.byte	0xe
	.uleb128 0x5b0
	.byte	0x4
	.set L$set$378,LCFI106-LCFI105
	.long L$set$378
	.byte	0x9d
	.uleb128 0xb6
	.byte	0x9e
	.uleb128 0xb5
	.byte	0x4
	.set L$set$379,LCFI107-LCFI106
	.long L$set$379
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$380,LCFI108-LCFI107
	.long L$set$380
	.byte	0x93
	.uleb128 0xb4
	.byte	0x94
	.uleb128 0xb3
	.byte	0x95
	.uleb128 0xb2
	.byte	0x96
	.uleb128 0xb1
	.byte	0x97
	.uleb128 0xb0
	.byte	0x98
	.uleb128 0xaf
	.byte	0x99
	.uleb128 0xae
	.byte	0x9a
	.uleb128 0xad
	.byte	0x9b
	.uleb128 0xac
	.byte	0x9c
	.uleb128 0xab
	.byte	0x4
	.set L$set$381,LCFI109-LCFI108
	.long L$set$381
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE113:
LSFDE115:
	.set L$set$382,LEFDE115-LASFDE115
	.long L$set$382
LASFDE115:
	.long	LASFDE115-EH_frame1
	.quad	LFB28-.
	.set L$set$383,LFE28-LFB28
	.quad L$set$383
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$384,LCFI110-LFB28
	.long L$set$384
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$385,LCFI111-LCFI110
	.long L$set$385
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$386,LCFI112-LCFI111
	.long L$set$386
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE115:
LSFDE117:
	.set L$set$387,LEFDE117-LASFDE117
	.long L$set$387
LASFDE117:
	.long	LASFDE117-EH_frame1
	.quad	LFB29-.
	.set L$set$388,LFE29-LFB29
	.quad L$set$388
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$389,LCFI113-LFB29
	.long L$set$389
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$390,LCFI114-LCFI113
	.long L$set$390
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$391,LCFI115-LCFI114
	.long L$set$391
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE117:
LSFDE119:
	.set L$set$392,LEFDE119-LASFDE119
	.long L$set$392
LASFDE119:
	.long	LASFDE119-EH_frame1
	.quad	LFB30-.
	.set L$set$393,LFE30-LFB30
	.quad L$set$393
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$394,LCFI116-LFB30
	.long L$set$394
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$395,LCFI117-LCFI116
	.long L$set$395
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$396,LCFI118-LCFI117
	.long L$set$396
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE119:
LSFDE121:
	.set L$set$397,LEFDE121-LASFDE121
	.long L$set$397
LASFDE121:
	.long	LASFDE121-EH_frame1
	.quad	LFB31-.
	.set L$set$398,LFE31-LFB31
	.quad L$set$398
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$399,LCFI119-LFB31
	.long L$set$399
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$400,LCFI120-LCFI119
	.long L$set$400
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$401,LCFI121-LCFI120
	.long L$set$401
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE121:
LSFDE123:
	.set L$set$402,LEFDE123-LASFDE123
	.long L$set$402
LASFDE123:
	.long	LASFDE123-EH_frame1
	.quad	LFB32-.
	.set L$set$403,LFE32-LFB32
	.quad L$set$403
	.uleb128 0x8
	.quad	LLSDA32-.
	.byte	0x4
	.set L$set$404,LCFI122-LFB32
	.long L$set$404
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$405,LCFI123-LCFI122
	.long L$set$405
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$406,LCFI124-LCFI123
	.long L$set$406
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE123:
	.text
Letext0:
	.file 2 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_files.ads"
	.file 3 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/a-stream.ads"
	.file 4 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/a-textio.ads"
	.file 5 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-ficobl.ads"
	.file 6 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/a-tags.ads"
	.file 7 "<built-in>"
	.file 8 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-crtl.ads"
	.file 9 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/i-cstrea.ads"
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x22bb
	.short	0x4
	.set L$set$407,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$407
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU Ada 15.0.1 20250418 (prerelease) -gnatA -gnat2012 -gnato -gnatwa -gnata -g -gnatR2js -gnatws -gnatis -gnatec=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.7888/GNAT-TEMP-000003.TMP -gnatem=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.7888/GNAT-TEMP-000004.TMP -mmacosx-version-min=14.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -fPIC\0"
	.byte	0xd
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_files.adb\0"
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/obj/gnatprove/data_representation\0"
	.set L$set$408,Ldebug_ranges0+0x700-Lsection__debug_ranges
	.long L$set$408
	.quad	0
	.set L$set$409,Ldebug_line0-Lsection__debug_line
	.long L$set$409
	.uleb128 0x2
	.long	0x234
	.long	0x224
	.uleb128 0x3
	.long	0x229
	.sleb128 43
	.byte	0
	.uleb128 0x4
	.long	0x214
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "integer\0"
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.ascii "character\0"
	.uleb128 0x2
	.long	0x234
	.long	0x251
	.uleb128 0x3
	.long	0x229
	.sleb128 41
	.byte	0
	.uleb128 0x4
	.long	0x241
	.uleb128 0x2
	.long	0x234
	.long	0x266
	.uleb128 0x3
	.long	0x229
	.sleb128 58
	.byte	0
	.uleb128 0x4
	.long	0x256
	.uleb128 0x2
	.long	0x234
	.long	0x27b
	.uleb128 0x3
	.long	0x229
	.sleb128 40
	.byte	0
	.uleb128 0x4
	.long	0x26b
	.uleb128 0x2
	.long	0x234
	.long	0x290
	.uleb128 0x3
	.long	0x229
	.sleb128 31
	.byte	0
	.uleb128 0x4
	.long	0x280
	.uleb128 0x2
	.long	0x234
	.long	0x2a6
	.uleb128 0x3
	.long	0x229
	.sleb128 83
	.byte	0
	.uleb128 0x4
	.long	0x295
	.uleb128 0x2
	.long	0x234
	.long	0x2bb
	.uleb128 0x3
	.long	0x229
	.sleb128 51
	.byte	0
	.uleb128 0x4
	.long	0x2ab
	.uleb128 0x6
	.byte	0x10
	.byte	0x2
	.byte	0xe
	.byte	0xe
	.long	0x2f8
	.uleb128 0x7
	.ascii "x\0"
	.byte	0x2
	.byte	0xe
	.byte	0x1f
	.long	0x2f8
	.byte	0
	.uleb128 0x7
	.ascii "y\0"
	.byte	0x2
	.byte	0xe
	.byte	0x22
	.long	0x2f8
	.byte	0x4
	.uleb128 0x7
	.ascii "z\0"
	.byte	0x2
	.byte	0xe
	.byte	0x25
	.long	0x2f8
	.byte	0x8
	.uleb128 0x8
	.set L$set$410,LASF0-Lsection__debug_str
	.long L$set$410
	.byte	0x2
	.byte	0xe
	.byte	0x36
	.long	0x308
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "integer\0"
	.uleb128 0x9
	.long	0x2f8
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.ascii "boolean\0"
	.uleb128 0x6
	.byte	0x8
	.byte	0x2
	.byte	0x11
	.byte	0xe
	.long	0x33a
	.uleb128 0x8
	.set L$set$411,LASF1-Lsection__debug_str
	.long L$set$411
	.byte	0x2
	.byte	0x11
	.byte	0x25
	.long	0x33a
	.byte	0
	.uleb128 0x7
	.ascii "status\0"
	.byte	0x2
	.byte	0x11
	.byte	0x3b
	.long	0x2f8
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x9
	.long	0x33a
	.uleb128 0x6
	.byte	0x10
	.byte	0x2
	.byte	0x25
	.byte	0xe
	.long	0x36c
	.uleb128 0x8
	.set L$set$412,LASF2-Lsection__debug_str
	.long L$set$412
	.byte	0x2
	.byte	0x25
	.byte	0x22
	.long	0x308
	.byte	0
	.uleb128 0x8
	.set L$set$413,LASF3-Lsection__debug_str
	.long L$set$413
	.byte	0x2
	.byte	0x25
	.byte	0x38
	.long	0x36c
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "long_integer\0"
	.uleb128 0x9
	.long	0x36c
	.uleb128 0x6
	.byte	0x8
	.byte	0x1
	.byte	0xc
	.byte	0xe
	.long	0x3a5
	.uleb128 0x8
	.set L$set$414,LASF4-Lsection__debug_str
	.long L$set$414
	.byte	0x1
	.byte	0xc
	.byte	0x46
	.long	0x3a5
	.byte	0
	.uleb128 0x8
	.set L$set$415,LASF0-Lsection__debug_str
	.long L$set$415
	.byte	0x1
	.byte	0xc
	.byte	0x5c
	.long	0x308
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.sleb128 0
	.sleb128 2147483647
	.ascii "natural\0"
	.long	0x229
	.uleb128 0xb
	.ascii "ada__text_io__file_type\0"
	.byte	0x4
	.short	0x2a6
	.byte	0x9
	.long	0x3d9
	.uleb128 0xc
	.byte	0x8
	.long	0x3df
	.uleb128 0xd
	.ascii "ada__text_io__text_afcb\0"
	.byte	0x80
	.byte	0x4
	.short	0x2a8
	.byte	0x9
	.long	0x504
	.uleb128 0x7
	.ascii "_parent\0"
	.byte	0x3
	.byte	0x46
	.byte	0x35
	.long	0x504
	.byte	0
	.uleb128 0xe
	.ascii "page\0"
	.byte	0x4
	.short	0x2a9
	.byte	0x7
	.long	0xb20
	.byte	0x58
	.uleb128 0xe
	.ascii "line\0"
	.byte	0x4
	.short	0x2aa
	.byte	0x7
	.long	0xb20
	.byte	0x5c
	.uleb128 0xe
	.ascii "col\0"
	.byte	0x4
	.short	0x2ab
	.byte	0x7
	.long	0xb20
	.byte	0x60
	.uleb128 0xe
	.ascii "line_length\0"
	.byte	0x4
	.short	0x2ac
	.byte	0x7
	.long	0xb20
	.byte	0x64
	.uleb128 0xe
	.ascii "page_length\0"
	.byte	0x4
	.short	0x2ad
	.byte	0x7
	.long	0xb20
	.byte	0x68
	.uleb128 0xe
	.ascii "self\0"
	.byte	0x4
	.short	0x2af
	.byte	0x7
	.long	0x3b8
	.byte	0x70
	.uleb128 0xe
	.ascii "before_lm\0"
	.byte	0x4
	.short	0x2b5
	.byte	0x7
	.long	0x308
	.byte	0x78
	.uleb128 0xe
	.ascii "before_lm_pm\0"
	.byte	0x4
	.short	0x2be
	.byte	0x7
	.long	0x308
	.byte	0x79
	.uleb128 0xe
	.ascii "wc_method\0"
	.byte	0x4
	.short	0x2c3
	.byte	0x7
	.long	0xb58
	.byte	0x7a
	.uleb128 0xe
	.ascii "before_upper_half_character\0"
	.byte	0x4
	.short	0x2c8
	.byte	0x7
	.long	0x308
	.byte	0x7b
	.uleb128 0xe
	.ascii "saved_upper_half_character\0"
	.byte	0x4
	.short	0x2d1
	.byte	0x7
	.long	0x234
	.byte	0x7c
	.byte	0
	.uleb128 0xf
	.ascii "system__file_control_block__afcb\0"
	.byte	0x58
	.byte	0x5
	.byte	0x54
	.byte	0x9
	.long	0x63a
	.uleb128 0xe
	.ascii "_parent\0"
	.byte	0x6
	.short	0x10e
	.byte	0x9
	.long	0x63a
	.byte	0
	.uleb128 0x7
	.ascii "stream\0"
	.byte	0x5
	.byte	0x56
	.byte	0x7
	.long	0x6dd
	.byte	0x8
	.uleb128 0x7
	.ascii "name\0"
	.byte	0x5
	.byte	0x59
	.byte	0x7
	.long	0x71b
	.byte	0x10
	.uleb128 0x7
	.ascii "encoding\0"
	.byte	0x5
	.byte	0x5e
	.byte	0x7
	.long	0x813
	.byte	0x20
	.uleb128 0x7
	.ascii "form\0"
	.byte	0x5
	.byte	0x61
	.byte	0x7
	.long	0x71b
	.byte	0x28
	.uleb128 0x7
	.ascii "mode\0"
	.byte	0x5
	.byte	0x66
	.byte	0x7
	.long	0x88a
	.byte	0x38
	.uleb128 0x7
	.ascii "is_regular_file\0"
	.byte	0x5
	.byte	0x6a
	.byte	0x7
	.long	0x308
	.byte	0x39
	.uleb128 0x7
	.ascii "is_temporary_file\0"
	.byte	0x5
	.byte	0x6d
	.byte	0x7
	.long	0x308
	.byte	0x3a
	.uleb128 0x7
	.ascii "is_system_file\0"
	.byte	0x5
	.byte	0x71
	.byte	0x7
	.long	0x308
	.byte	0x3b
	.uleb128 0x7
	.ascii "text_encoding\0"
	.byte	0x5
	.byte	0x74
	.byte	0x7
	.long	0x95a
	.byte	0x3c
	.uleb128 0x7
	.ascii "shared_status\0"
	.byte	0x5
	.byte	0x77
	.byte	0x7
	.long	0xa4e
	.byte	0x40
	.uleb128 0x7
	.ascii "access_method\0"
	.byte	0x5
	.byte	0x7a
	.byte	0x7
	.long	0x234
	.byte	0x41
	.uleb128 0x7
	.ascii "next\0"
	.byte	0x5
	.byte	0x7e
	.byte	0x7
	.long	0xaed
	.byte	0x48
	.uleb128 0x7
	.ascii "prev\0"
	.byte	0x5
	.byte	0x7f
	.byte	0x7
	.long	0xaed
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.ascii "ada__streams__root_stream_type\0"
	.byte	0x8
	.byte	0x3
	.byte	0x46
	.byte	0x9
	.long	0x671
	.uleb128 0x7
	.ascii "_tag\0"
	.byte	0x3
	.byte	0x46
	.byte	0x35
	.long	0x671
	.byte	0
	.byte	0
	.uleb128 0xb
	.ascii "ada__tags__tag\0"
	.byte	0x6
	.short	0x10e
	.byte	0x9
	.long	0x689
	.uleb128 0xc
	.byte	0x8
	.long	0x68f
	.uleb128 0x10
	.ascii "ada__tags__dispatch_table\0"
	.long	0x6b9
	.long	0x6b9
	.uleb128 0x3
	.long	0x229
	.sleb128 1
	.byte	0
	.uleb128 0xb
	.ascii "ada__tags__prim_ptr\0"
	.byte	0x6
	.short	0x105
	.byte	0x9
	.long	0x6d6
	.uleb128 0xc
	.byte	0x8
	.long	0x6dc
	.uleb128 0x11
	.uleb128 0x12
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "interfaces__c_streams__files\0"
	.long	0x708
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.ascii "system__address\0"
	.uleb128 0x13
	.ascii "system__file_control_block__pstring\0"
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x747
	.uleb128 0x14
	.ascii "string\0"
	.byte	0x10
	.byte	0x7
	.byte	0
	.long	0x79f
	.uleb128 0x15
	.ascii "P_ARRAY\0"
	.byte	0x7
	.byte	0
	.long	0x766
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x7d6
	.uleb128 0x16
	.byte	0x8
	.byte	0x7
	.byte	0
	.long	0x78d
	.uleb128 0x15
	.ascii "LB0\0"
	.byte	0x7
	.byte	0
	.long	0x7f5
	.byte	0
	.uleb128 0x15
	.ascii "UB0\0"
	.byte	0x7
	.byte	0
	.long	0x7f5
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.ascii "P_BOUNDS\0"
	.byte	0x7
	.byte	0
	.long	0x80d
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x747
	.uleb128 0x4
	.long	0x747
	.uleb128 0x4
	.long	0x747
	.uleb128 0x4
	.long	0x747
	.uleb128 0x4
	.long	0x747
	.uleb128 0x4
	.long	0x747
	.uleb128 0x4
	.long	0x747
	.uleb128 0x4
	.long	0x747
	.uleb128 0x4
	.long	0x747
	.uleb128 0x4
	.long	0x747
	.uleb128 0x4
	.long	0x747
	.uleb128 0x2
	.long	0x234
	.long	0x7f5
	.uleb128 0x17
	.long	0x229
	.uleb128 0x6
	.byte	0x97
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x94
	.byte	0x4
	.uleb128 0x8
	.byte	0x97
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.sleb128 2147483647
	.ascii "positive\0"
	.long	0x229
	.uleb128 0x9
	.long	0x7f5
	.uleb128 0xc
	.byte	0x8
	.long	0x76c
	.uleb128 0x19
	.ascii "system__crtl__filename_encoding\0"
	.byte	0x4
	.byte	0x8
	.byte	0x45
	.byte	0x9
	.long	0x88a
	.uleb128 0x1a
	.ascii "system__crtl__utf8\0"
	.byte	0
	.uleb128 0x1a
	.ascii "system__crtl__ascii_8bits\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "system__crtl__unspecified\0"
	.byte	0x2
	.byte	0
	.uleb128 0x19
	.ascii "system__file_control_block__file_mode\0"
	.byte	0x1
	.byte	0x5
	.byte	0x3f
	.byte	0x9
	.long	0x95a
	.uleb128 0x1a
	.ascii "system__file_control_block__in_file\0"
	.byte	0
	.uleb128 0x1a
	.ascii "system__file_control_block__inout_file\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "system__file_control_block__out_file\0"
	.byte	0x2
	.uleb128 0x1a
	.ascii "system__file_control_block__append_file\0"
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.ascii "interfaces__c_streams__content_encoding\0"
	.byte	0x4
	.byte	0x9
	.byte	0xe5
	.byte	0x9
	.long	0xa4e
	.uleb128 0x1a
	.ascii "interfaces__c_streams__none\0"
	.byte	0
	.uleb128 0x1a
	.ascii "interfaces__c_streams__default_text\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "interfaces__c_streams__text\0"
	.byte	0x2
	.uleb128 0x1a
	.ascii "interfaces__c_streams__u8text\0"
	.byte	0x3
	.uleb128 0x1a
	.ascii "interfaces__c_streams__wtext\0"
	.byte	0x4
	.uleb128 0x1a
	.ascii "interfaces__c_streams__u16text\0"
	.byte	0x5
	.byte	0
	.uleb128 0x19
	.ascii "system__file_control_block__shared_status_type\0"
	.byte	0x1
	.byte	0x5
	.byte	0x45
	.byte	0x9
	.long	0xaed
	.uleb128 0x1a
	.ascii "system__file_control_block__yes\0"
	.byte	0
	.uleb128 0x1a
	.ascii "system__file_control_block__no\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "system__file_control_block__none\0"
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.ascii "system__file_control_block__afcb_ptr\0"
	.byte	0x5
	.byte	0x52
	.byte	0x9
	.long	0xb1a
	.uleb128 0xc
	.byte	0x8
	.long	0x504
	.uleb128 0xa
	.sleb128 0
	.sleb128 2147483647
	.ascii "ada__text_io__count\0"
	.long	0xb3f
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii "ada__text_io__TcountB\0"
	.uleb128 0x18
	.sleb128 6
	.ascii "system__wch_con__wc_encoding_method\0"
	.long	0xb82
	.uleb128 0x1b
	.byte	0x1
	.byte	0x5
	.ascii "system__wch_con__Twc_encoding_methodB\0"
	.uleb128 0x1b
	.byte	0x8
	.byte	0x5
	.ascii "system__parameters__Tsize_typeB\0"
	.uleb128 0x5
	.byte	0x1
	.byte	0x7
	.ascii "system__storage_elements__storage_element\0"
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.ascii "system__val_flt__impl__num\0"
	.uleb128 0xa
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "ada__calendar__time\0"
	.long	0xc46
	.uleb128 0x1b
	.byte	0x8
	.byte	0x5
	.ascii "ada__calendar__TtimeB\0"
	.uleb128 0xa
	.sleb128 1901
	.sleb128 2399
	.ascii "ada__calendar__year_number\0"
	.long	0x229
	.uleb128 0x18
	.sleb128 12
	.ascii "ada__calendar__month_number\0"
	.long	0x229
	.uleb128 0x18
	.sleb128 31
	.ascii "ada__calendar__day_number\0"
	.long	0x229
	.uleb128 0xa
	.sleb128 0
	.sleb128 86400000000000
	.ascii "ada__calendar__day_duration\0"
	.long	0xcee
	.uleb128 0x1c
	.byte	0x8
	.byte	0xd
	.sleb128 -9
	.ascii "duration\0"
	.uleb128 0x1b
	.byte	0x8
	.byte	0x5
	.ascii "ada__directories__Tfile_sizeB\0"
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.ascii "system__img_flt__impl__num\0"
	.uleb128 0x1b
	.byte	0x8
	.byte	0x5
	.ascii "system__storage_elements__Tstorage_offsetB\0"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "long_long_integer\0"
	.uleb128 0x1d
	.ascii "smc_files__telemetry_csv\0"
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.long	0x224
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__telemetry_csv
	.uleb128 0x1d
	.ascii "smc_files__precool_flag\0"
	.byte	0x2
	.byte	0x5
	.byte	0x4
	.long	0x251
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__precool_flag
	.uleb128 0x1d
	.ascii "smc_files__earu_data_file\0"
	.byte	0x2
	.byte	0x6
	.byte	0x4
	.long	0x266
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__earu_data_file
	.uleb128 0x1d
	.ascii "smc_files__silent_mode_flag\0"
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.long	0x27b
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__silent_mode_flag
	.uleb128 0x1d
	.ascii "smc_files__calibration_file\0"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.long	0x290
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__calibration_file
	.uleb128 0x1d
	.ascii "smc_files__pressure_report_file\0"
	.byte	0x2
	.byte	0xa
	.byte	0x4
	.long	0x2a6
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__pressure_report_file
	.uleb128 0x1d
	.ascii "smc_files__notifications_log\0"
	.byte	0x2
	.byte	0xb
	.byte	0x4
	.long	0x2bb
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__notifications_log
	.uleb128 0x1e
	.ascii "smc_files__delete_file\0"
	.byte	0x1
	.short	0x215
	.byte	0x4
	.quad	LFB32
	.set L$set$416,LFE32-LFB32
	.quad L$set$416
	.uleb128 0x1
	.byte	0x9c
	.long	0xf25
	.uleb128 0x1f
	.ascii "path\0"
	.byte	0x2
	.byte	0x35
	.byte	0x1b
	.long	0x7d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.set L$set$417,Ldebug_ranges0+0x6c0-Lsection__debug_ranges
	.long L$set$417
	.uleb128 0x21
	.set L$set$418,LASF5-Lsection__debug_str
	.long L$set$418
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$419,LASF6-Lsection__debug_str
	.long L$set$419
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.set L$set$420,LASF7-Lsection__debug_str
	.long L$set$420
	.long	0xf25
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x8
	.uleb128 0x1e
	.ascii "smc_files__write_pressure_report\0"
	.byte	0x1
	.short	0x1fe
	.byte	0x4
	.quad	LFB26
	.set L$set$421,LFE26-LFB26
	.quad L$set$421
	.uleb128 0x1
	.byte	0x9c
	.long	0x1280
	.uleb128 0x1f
	.ascii "ref_rpm\0"
	.byte	0x2
	.byte	0x32
	.byte	0x25
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x1f
	.ascii "cur_rpm\0"
	.byte	0x2
	.byte	0x32
	.byte	0x2e
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x1f
	.ascii "diff\0"
	.byte	0x2
	.byte	0x32
	.byte	0x37
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x1f
	.ascii "est_hpa\0"
	.byte	0x2
	.byte	0x32
	.byte	0x3d
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x1f
	.ascii "timestamp\0"
	.byte	0x2
	.byte	0x32
	.byte	0x4e
	.long	0x37c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x24
	.byte	0x1
	.short	0x1ff
	.byte	0x7
	.long	0x128c
	.uleb128 0x24
	.byte	0x1
	.short	0x200
	.byte	0x7
	.long	0x12a8
	.uleb128 0x25
	.set L$set$422,LASF9-Lsection__debug_str
	.long L$set$422
	.byte	0x1
	.short	0x201
	.byte	0x7
	.long	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x20
	.set L$set$423,Ldebug_ranges0+0x580-Lsection__debug_ranges
	.long L$set$423
	.uleb128 0x21
	.set L$set$424,LASF5-Lsection__debug_str
	.long L$set$424
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.set L$set$425,LASF6-Lsection__debug_str
	.long L$set$425
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.set L$set$426,LASF7-Lsection__debug_str
	.long L$set$426
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.set L$set$427,Ldebug_ranges0+0x5d0-Lsection__debug_ranges
	.long L$set$427
	.long	0x108a
	.uleb128 0x27
	.ascii "smc_files__write_pressure_report__B_20__B550b__TA563bP1___U\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2
	.long	0x234
	.long	0x1075
	.uleb128 0x28
	.long	0x229
	.long	0x101e
	.byte	0
	.uleb128 0x27
	.ascii "S562b\0"
	.long	0x1083
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.byte	0x8
	.long	0x1062
	.byte	0
	.uleb128 0x26
	.set L$set$428,Ldebug_ranges0+0x600-Lsection__debug_ranges
	.long L$set$428
	.long	0x10ff
	.uleb128 0x27
	.ascii "smc_files__write_pressure_report__B_20__B568b__TA581bP1___U\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.long	0x234
	.long	0x10ea
	.uleb128 0x28
	.long	0x229
	.long	0x1093
	.byte	0
	.uleb128 0x27
	.ascii "S580b\0"
	.long	0x10f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.byte	0x8
	.long	0x10d7
	.byte	0
	.uleb128 0x26
	.set L$set$429,Ldebug_ranges0+0x630-Lsection__debug_ranges
	.long L$set$429
	.long	0x1194
	.uleb128 0x2
	.long	0x234
	.long	0x1118
	.uleb128 0x3
	.long	0x229
	.sleb128 1
	.byte	0
	.uleb128 0x27
	.ascii "C589b\0"
	.long	0x1108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x27
	.ascii "smc_files__write_pressure_report__B_20__B586b__TA612bP1___U\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.long	0x234
	.long	0x117e
	.uleb128 0x28
	.long	0x229
	.long	0x1127
	.byte	0
	.uleb128 0x27
	.ascii "S611b\0"
	.long	0x118d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.byte	0x8
	.long	0x116b
	.byte	0
	.uleb128 0x26
	.set L$set$430,Ldebug_ranges0+0x660-Lsection__debug_ranges
	.long L$set$430
	.long	0x120b
	.uleb128 0x27
	.ascii "smc_files__write_pressure_report__B_20__B617b__TA630bP1___U\0"
	.long	0x229
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.long	0x234
	.long	0x11f5
	.uleb128 0x28
	.long	0x229
	.long	0x119d
	.byte	0
	.uleb128 0x27
	.ascii "S629b\0"
	.long	0x1204
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.byte	0x8
	.long	0x11e2
	.byte	0
	.uleb128 0x20
	.set L$set$431,Ldebug_ranges0+0x690-Lsection__debug_ranges
	.long L$set$431
	.uleb128 0x27
	.ascii "smc_files__write_pressure_report__B_20__B635b__TA648bP1___U\0"
	.long	0x229
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.long	0x234
	.long	0x1268
	.uleb128 0x28
	.long	0x229
	.long	0x1210
	.byte	0
	.uleb128 0x27
	.ascii "S647b\0"
	.long	0x1277
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.byte	0x8
	.long	0x1255
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.ascii "ada\0"
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.long	0x12d1
	.uleb128 0x2b
	.ascii "text_io\0"
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.uleb128 0x2a
	.ascii "strings\0"
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.long	0x12b3
	.uleb128 0x2b
	.ascii "fixed\0"
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.byte	0
	.uleb128 0x2b
	.ascii "directories\0"
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.uleb128 0x2b
	.ascii "calendar\0"
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.ascii "smc_files__save_fan_calibration\0"
	.byte	0x1
	.short	0x1eb
	.byte	0x4
	.quad	LFB24
	.set L$set$432,LFE24-LFB24
	.quad L$set$432
	.uleb128 0x1
	.byte	0x9c
	.long	0x1369
	.uleb128 0x2c
	.set L$set$433,LASF8-Lsection__debug_str
	.long L$set$433
	.byte	0x2
	.byte	0x31
	.byte	0x24
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.byte	0x1
	.short	0x1ec
	.byte	0x7
	.long	0x128c
	.uleb128 0x24
	.byte	0x1
	.short	0x1ed
	.byte	0x7
	.long	0x12a8
	.uleb128 0x25
	.set L$set$434,LASF9-Lsection__debug_str
	.long L$set$434
	.byte	0x1
	.short	0x1ee
	.byte	0x7
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.set L$set$435,Ldebug_ranges0+0x530-Lsection__debug_ranges
	.long L$set$435
	.uleb128 0x21
	.set L$set$436,LASF5-Lsection__debug_str
	.long L$set$436
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$437,LASF6-Lsection__debug_str
	.long L$set$437
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$438,LASF7-Lsection__debug_str
	.long L$set$438
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.ascii "smc_files__load_fan_calibration\0"
	.byte	0x1
	.short	0x1d4
	.byte	0x4
	.long	0x33a
	.quad	LFB22
	.set L$set$439,LFE22-LFB22
	.quad L$set$439
	.uleb128 0x1
	.byte	0x9c
	.long	0x1402
	.uleb128 0x2c
	.set L$set$440,LASF8-Lsection__debug_str
	.long L$set$440
	.byte	0x2
	.byte	0x30
	.byte	0x24
	.long	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.set L$set$441,Ldebug_ranges0+0x4a0-Lsection__debug_ranges
	.long L$set$441
	.uleb128 0x24
	.byte	0x1
	.short	0x1d5
	.byte	0x7
	.long	0x128c
	.uleb128 0x25
	.set L$set$442,LASF9-Lsection__debug_str
	.long L$set$442
	.byte	0x1
	.short	0x1d6
	.byte	0x7
	.long	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.set L$set$443,Ldebug_ranges0+0x4e0-Lsection__debug_ranges
	.long L$set$443
	.uleb128 0x21
	.set L$set$444,LASF5-Lsection__debug_str
	.long L$set$444
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$445,LASF6-Lsection__debug_str
	.long L$set$445
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$446,LASF7-Lsection__debug_str
	.long L$set$446
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.ascii "smc_files__write_earu_turbo\0"
	.byte	0x1
	.short	0x1c0
	.byte	0x4
	.quad	LFB20
	.set L$set$447,LFE20-LFB20
	.quad L$set$447
	.uleb128 0x1
	.byte	0x9c
	.long	0x14c4
	.uleb128 0x2c
	.set L$set$448,LASF2-Lsection__debug_str
	.long L$set$448
	.byte	0x2
	.byte	0x2d
	.byte	0x20
	.long	0x303
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.byte	0x1
	.short	0x1c1
	.byte	0x7
	.long	0x128c
	.uleb128 0x24
	.byte	0x1
	.short	0x1c2
	.byte	0x7
	.long	0x12a8
	.uleb128 0x25
	.set L$set$449,LASF9-Lsection__debug_str
	.long L$set$449
	.byte	0x1
	.short	0x1c3
	.byte	0x7
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	0x234
	.long	0x147c
	.uleb128 0x3
	.long	0x229
	.sleb128 78
	.byte	0
	.uleb128 0x4
	.long	0x146b
	.uleb128 0x2e
	.ascii "path\0"
	.byte	0x1
	.short	0x1c4
	.byte	0x7
	.long	0x147c
	.uleb128 0x9
	.byte	0x3
	.quad	_path.14
	.uleb128 0x20
	.set L$set$450,Ldebug_ranges0+0x450-Lsection__debug_ranges
	.long L$set$450
	.uleb128 0x21
	.set L$set$451,LASF5-Lsection__debug_str
	.long L$set$451
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$452,LASF6-Lsection__debug_str
	.long L$set$452
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$453,LASF7-Lsection__debug_str
	.long L$set$453
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1e
	.ascii "smc_files__write_earu_fan\0"
	.byte	0x1
	.short	0x1ac
	.byte	0x4
	.quad	LFB18
	.set L$set$454,LFE18-LFB18
	.quad L$set$454
	.uleb128 0x1
	.byte	0x9c
	.long	0x15ec
	.uleb128 0x1f
	.ascii "name\0"
	.byte	0x2
	.byte	0x2c
	.byte	0x1e
	.long	0x7cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.ascii "val\0"
	.byte	0x2
	.byte	0x2c
	.byte	0x2d
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x20
	.set L$set$455,Ldebug_ranges0+0x3e0-Lsection__debug_ranges
	.long L$set$455
	.uleb128 0x24
	.byte	0x1
	.short	0x1ad
	.byte	0x7
	.long	0x128c
	.uleb128 0x24
	.byte	0x1
	.short	0x1ae
	.byte	0x7
	.long	0x12a8
	.uleb128 0x25
	.set L$set$456,LASF9-Lsection__debug_str
	.long L$set$456
	.byte	0x1
	.short	0x1af
	.byte	0x7
	.long	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.ascii "smc_files__write_earu_fan__TTS518bSP1___U\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2
	.long	0x234
	.long	0x1587
	.uleb128 0x28
	.long	0x229
	.long	0x1542
	.byte	0
	.uleb128 0x27
	.ascii "S518b\0"
	.long	0x1574
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.uleb128 0x2
	.long	0x234
	.long	0x15a9
	.uleb128 0x28
	.long	0x229
	.long	0x1542
	.byte	0
	.uleb128 0x2e
	.ascii "path\0"
	.byte	0x1
	.short	0x1b0
	.byte	0x7
	.long	0x15ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.byte	0x8
	.long	0x1596
	.uleb128 0x20
	.set L$set$457,Ldebug_ranges0+0x410-Lsection__debug_ranges
	.long L$set$457
	.uleb128 0x21
	.set L$set$458,LASF5-Lsection__debug_str
	.long L$set$458
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.set L$set$459,LASF6-Lsection__debug_str
	.long L$set$459
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.set L$set$460,LASF7-Lsection__debug_str
	.long L$set$460
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.ascii "smc_files__write_earu_temp\0"
	.byte	0x1
	.short	0x198
	.byte	0x4
	.quad	LFB16
	.set L$set$461,LFE16-LFB16
	.quad L$set$461
	.uleb128 0x1
	.byte	0x9c
	.long	0x1716
	.uleb128 0x1f
	.ascii "name\0"
	.byte	0x2
	.byte	0x2b
	.byte	0x1f
	.long	0x7c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.ascii "val\0"
	.byte	0x2
	.byte	0x2b
	.byte	0x2e
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x20
	.set L$set$462,Ldebug_ranges0+0x370-Lsection__debug_ranges
	.long L$set$462
	.uleb128 0x24
	.byte	0x1
	.short	0x199
	.byte	0x7
	.long	0x128c
	.uleb128 0x24
	.byte	0x1
	.short	0x19a
	.byte	0x7
	.long	0x12a8
	.uleb128 0x25
	.set L$set$463,LASF9-Lsection__debug_str
	.long L$set$463
	.byte	0x1
	.short	0x19b
	.byte	0x7
	.long	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.ascii "smc_files__write_earu_temp__TTS502bSP1___U\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2
	.long	0x234
	.long	0x16b1
	.uleb128 0x28
	.long	0x229
	.long	0x166b
	.byte	0
	.uleb128 0x27
	.ascii "S502b\0"
	.long	0x169e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.uleb128 0x2
	.long	0x234
	.long	0x16d3
	.uleb128 0x28
	.long	0x229
	.long	0x166b
	.byte	0
	.uleb128 0x2e
	.ascii "path\0"
	.byte	0x1
	.short	0x19c
	.byte	0x7
	.long	0x16e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.byte	0x8
	.long	0x16c0
	.uleb128 0x20
	.set L$set$464,Ldebug_ranges0+0x3a0-Lsection__debug_ranges
	.long L$set$464
	.uleb128 0x21
	.set L$set$465,LASF5-Lsection__debug_str
	.long L$set$465
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.set L$set$466,LASF6-Lsection__debug_str
	.long L$set$466
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.set L$set$467,LASF7-Lsection__debug_str
	.long L$set$467
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.ascii "smc_files__notify_user\0"
	.byte	0x1
	.short	0x157
	.byte	0x4
	.quad	LFB13
	.set L$set$468,LFE13-LFB13
	.quad L$set$468
	.uleb128 0x1
	.byte	0x9c
	.long	0x19d5
	.uleb128 0x1f
	.ascii "title\0"
	.byte	0x2
	.byte	0x28
	.byte	0x1b
	.long	0x7c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x1f
	.ascii "message\0"
	.byte	0x2
	.byte	0x28
	.byte	0x22
	.long	0x7bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x20
	.set L$set$469,Ldebug_ranges0+0x250-Lsection__debug_ranges
	.long L$set$469
	.uleb128 0x24
	.byte	0x1
	.short	0x158
	.byte	0x7
	.long	0x128c
	.uleb128 0x24
	.byte	0x1
	.short	0x159
	.byte	0x7
	.long	0x12b3
	.uleb128 0x24
	.byte	0x1
	.short	0x15a
	.byte	0x7
	.long	0x12c3
	.uleb128 0x24
	.byte	0x1
	.short	0x15b
	.byte	0x7
	.long	0x12a8
	.uleb128 0x25
	.set L$set$470,LASF9-Lsection__debug_str
	.long L$set$470
	.byte	0x1
	.short	0x15c
	.byte	0x7
	.long	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2e
	.ascii "line_count\0"
	.byte	0x1
	.short	0x15d
	.byte	0x7
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2e
	.ascii "now\0"
	.byte	0x1
	.short	0x160
	.byte	0x7
	.long	0xc19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.ascii "year\0"
	.byte	0x1
	.short	0x161
	.byte	0x7
	.long	0xc5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.ascii "month\0"
	.byte	0x1
	.short	0x162
	.byte	0x7
	.long	0xc83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.ascii "day\0"
	.byte	0x1
	.short	0x163
	.byte	0x7
	.long	0xca5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.ascii "seconds\0"
	.byte	0x1
	.short	0x164
	.byte	0x7
	.long	0xcc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.ascii "hour\0"
	.byte	0x1
	.short	0x165
	.byte	0x7
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.ascii "min\0"
	.byte	0x1
	.short	0x165
	.byte	0xd
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.ascii "sec\0"
	.byte	0x1
	.short	0x165
	.byte	0x12
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.set L$set$471,Ldebug_ranges0+0x290-Lsection__debug_ranges
	.long L$set$471
	.long	0x18cd
	.uleb128 0x21
	.set L$set$472,LASF5-Lsection__debug_str
	.long L$set$472
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.set L$set$473,LASF6-Lsection__debug_str
	.long L$set$473
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.set L$set$474,LASF7-Lsection__debug_str
	.long L$set$474
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.set L$set$475,Ldebug_ranges0+0x2d0-Lsection__debug_ranges
	.long L$set$475
	.uleb128 0x27
	.ascii "B328b\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.ascii "B332b\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.long	0x234
	.long	0x18b4
	.uleb128 0x2f
	.long	0x229
	.long	0x1881
	.long	0x188f
	.byte	0
	.uleb128 0x2e
	.ascii "line\0"
	.byte	0x1
	.short	0x16c
	.byte	0x13
	.long	0x18c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.byte	0x8
	.long	0x189d
	.byte	0
	.byte	0
	.uleb128 0x26
	.set L$set$476,Ldebug_ranges0+0x300-Lsection__debug_ranges
	.long L$set$476
	.long	0x1967
	.uleb128 0x21
	.set L$set$477,LASF5-Lsection__debug_str
	.long L$set$477
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.set L$set$478,LASF6-Lsection__debug_str
	.long L$set$478
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x21
	.set L$set$479,LASF7-Lsection__debug_str
	.long L$set$479
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x20
	.set L$set$480,Ldebug_ranges0+0x340-Lsection__debug_ranges
	.long L$set$480
	.uleb128 0x27
	.ascii "smc_files__notify_user__B_14__B339b__TA432bP1___U\0"
	.long	0x229
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.long	0x234
	.long	0x1950
	.uleb128 0x28
	.long	0x229
	.long	0x1902
	.byte	0
	.uleb128 0x27
	.ascii "S431b\0"
	.long	0x195f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.byte	0x8
	.long	0x193d
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	LBB61
	.set L$set$481,LBE61-LBB61
	.quad L$set$481
	.uleb128 0x27
	.ascii "smc_files__notify_user__B487b__TTS495bSP1___U\0"
	.long	0x229
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2
	.long	0x234
	.long	0x19c2
	.uleb128 0x28
	.long	0x229
	.long	0x1978
	.byte	0
	.uleb128 0x27
	.ascii "S495b\0"
	.long	0x19af
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.ascii "smc_files__check_precool_mode\0"
	.byte	0x1
	.short	0x12c
	.byte	0x4
	.long	0x348
	.quad	LFB12
	.set L$set$482,LFE12-LFB12
	.quad L$set$482
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ab1
	.uleb128 0x2c
	.set L$set$483,LASF2-Lsection__debug_str
	.long L$set$483
	.byte	0x2
	.byte	0x25
	.byte	0x22
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2c
	.set L$set$484,LASF3-Lsection__debug_str
	.long L$set$484
	.byte	0x2
	.byte	0x25
	.byte	0x38
	.long	0x36c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.quad	LBB47
	.set L$set$485,LBE47-LBB47
	.quad L$set$485
	.uleb128 0x2
	.long	0x234
	.long	0x1a52
	.uleb128 0x3
	.long	0x229
	.sleb128 1024
	.byte	0
	.uleb128 0x25
	.set L$set$486,LASF10-Lsection__debug_str
	.long L$set$486
	.byte	0x1
	.short	0x12d
	.byte	0x7
	.long	0x1a41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x25
	.set L$set$487,LASF4-Lsection__debug_str
	.long L$set$487
	.byte	0x1
	.short	0x12e
	.byte	0x7
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.set L$set$488,LASF11-Lsection__debug_str
	.long L$set$488
	.byte	0x1
	.short	0x12f
	.byte	0x7
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x24
	.byte	0x1
	.short	0x130
	.byte	0x7
	.long	0x12a8
	.uleb128 0x2e
	.ascii "idx\0"
	.byte	0x1
	.short	0x131
	.byte	0x7
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.ascii "expiry\0"
	.byte	0x1
	.short	0x132
	.byte	0x7
	.long	0x36c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0x31
	.ascii "smc_files__log_telemetry_csv\0"
	.byte	0x1
	.byte	0xef
	.byte	0x4
	.quad	LFB10
	.set L$set$489,LFE10-LFB10
	.quad L$set$489
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ce9
	.uleb128 0x1f
	.ascii "day_str\0"
	.byte	0x2
	.byte	0x18
	.byte	0x7
	.long	0x7b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1f
	.ascii "time_only\0"
	.byte	0x2
	.byte	0x19
	.byte	0x7
	.long	0x7b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1f
	.ascii "tcmz_temp\0"
	.byte	0x2
	.byte	0x1a
	.byte	0x7
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x1f
	.ascii "gpu_temp\0"
	.byte	0x2
	.byte	0x1b
	.byte	0x7
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1f
	.ascii "battery_temp\0"
	.byte	0x2
	.byte	0x1c
	.byte	0x7
	.long	0x303
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x1f
	.ascii "power\0"
	.byte	0x2
	.byte	0x1d
	.byte	0x7
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1f
	.ascii "manual_takeover\0"
	.byte	0x2
	.byte	0x1e
	.byte	0x7
	.long	0x303
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x1f
	.ascii "overdrive\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x7
	.long	0x303
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x1f
	.ascii "temp_gradient\0"
	.byte	0x2
	.byte	0x20
	.byte	0x7
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x1f
	.ascii "rpm_gradient\0"
	.byte	0x2
	.byte	0x21
	.byte	0x7
	.long	0x343
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x20
	.set L$set$490,Ldebug_ranges0+0x160-Lsection__debug_ranges
	.long L$set$490
	.uleb128 0x32
	.byte	0x1
	.byte	0xfb
	.byte	0x7
	.long	0x128c
	.uleb128 0x32
	.byte	0x1
	.byte	0xfc
	.byte	0x7
	.long	0x12b3
	.uleb128 0x32
	.byte	0x1
	.byte	0xfd
	.byte	0x7
	.long	0x12a8
	.uleb128 0x33
	.set L$set$491,LASF9-Lsection__debug_str
	.long L$set$491
	.byte	0x1
	.byte	0xfe
	.byte	0x7
	.long	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x34
	.ascii "exists_flag\0"
	.byte	0x1
	.byte	0xff
	.byte	0x7
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x26
	.set L$set$492,Ldebug_ranges0+0x1a0-Lsection__debug_ranges
	.long L$set$492
	.long	0x1c3c
	.uleb128 0x21
	.set L$set$493,LASF5-Lsection__debug_str
	.long L$set$493
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$494,LASF6-Lsection__debug_str
	.long L$set$494
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.set L$set$495,LASF7-Lsection__debug_str
	.long L$set$495
	.long	0xf25
	.byte	0
	.uleb128 0x20
	.set L$set$496,Ldebug_ranges0+0x1d0-Lsection__debug_ranges
	.long L$set$496
	.uleb128 0x21
	.set L$set$497,LASF5-Lsection__debug_str
	.long L$set$497
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.set L$set$498,LASF6-Lsection__debug_str
	.long L$set$498
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.set L$set$499,LASF7-Lsection__debug_str
	.long L$set$499
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.set L$set$500,Ldebug_ranges0+0x220-Lsection__debug_ranges
	.long L$set$500
	.uleb128 0x27
	.ascii "L246b\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x27
	.ascii "smc_files__log_telemetry_csv__B_10__B144b__TA248bP1___U\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.long	0x234
	.long	0x1cd1
	.uleb128 0x2f
	.long	0x229
	.long	0x1c6c
	.long	0x1c7a
	.byte	0
	.uleb128 0x27
	.ascii "S247b\0"
	.long	0x1cdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.byte	0x8
	.long	0x1cba
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.ascii "smc_files__get_battery_percent\0"
	.byte	0x1
	.byte	0xd7
	.byte	0x4
	.long	0x2f8
	.quad	LFB9
	.set L$set$501,LFE9-LFB9
	.quad L$set$501
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d7f
	.uleb128 0x2
	.long	0x234
	.long	0x1d38
	.uleb128 0x3
	.long	0x229
	.sleb128 65536
	.byte	0
	.uleb128 0x33
	.set L$set$502,LASF10-Lsection__debug_str
	.long L$set$502
	.byte	0x1
	.byte	0xd8
	.byte	0x7
	.long	0x1d26
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65568
	.uleb128 0x33
	.set L$set$503,LASF4-Lsection__debug_str
	.long L$set$503
	.byte	0x1
	.byte	0xd9
	.byte	0x7
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x33
	.set L$set$504,LASF11-Lsection__debug_str
	.long L$set$504
	.byte	0x1
	.byte	0xda
	.byte	0x7
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x32
	.byte	0x1
	.byte	0xdb
	.byte	0x7
	.long	0x12a8
	.uleb128 0x34
	.ascii "idx\0"
	.byte	0x1
	.byte	0xdc
	.byte	0x7
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x35
	.ascii "smc_files__check_load_avg_status\0"
	.byte	0x1
	.byte	0xa9
	.byte	0x4
	.long	0x313
	.quad	LFB8
	.set L$set$505,LFE8-LFB8
	.quad L$set$505
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e8b
	.uleb128 0x2c
	.set L$set$506,LASF1-Lsection__debug_str
	.long L$set$506
	.byte	0x2
	.byte	0x11
	.byte	0x25
	.long	0x33a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1f
	.ascii "status\0"
	.byte	0x2
	.byte	0x11
	.byte	0x3b
	.long	0x2f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.quad	LBB25
	.set L$set$507,LBE25-LBB25
	.quad L$set$507
	.uleb128 0x2
	.long	0x234
	.long	0x1e04
	.uleb128 0x3
	.long	0x229
	.sleb128 65536
	.byte	0
	.uleb128 0x33
	.set L$set$508,LASF10-Lsection__debug_str
	.long L$set$508
	.byte	0x1
	.byte	0xaa
	.byte	0x7
	.long	0x1df2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65632
	.uleb128 0x33
	.set L$set$509,LASF4-Lsection__debug_str
	.long L$set$509
	.byte	0x1
	.byte	0xab
	.byte	0x7
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.set L$set$510,LASF11-Lsection__debug_str
	.long L$set$510
	.byte	0x1
	.byte	0xac
	.byte	0x7
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x32
	.byte	0x1
	.byte	0xad
	.byte	0x7
	.long	0x12a8
	.uleb128 0x34
	.ascii "idx\0"
	.byte	0x1
	.byte	0xae
	.byte	0x7
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.ascii "comma_idx\0"
	.byte	0x1
	.byte	0xae
	.byte	0xc
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.ascii "l1\0"
	.byte	0x1
	.byte	0xaf
	.byte	0x7
	.long	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.ascii "l2\0"
	.byte	0x1
	.byte	0xaf
	.byte	0xb
	.long	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x34
	.ascii "l3\0"
	.byte	0x1
	.byte	0xaf
	.byte	0xf
	.long	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0x35
	.ascii "smc_files__read_sms_values\0"
	.byte	0x1
	.byte	0x7f
	.byte	0x4
	.long	0x2c0
	.quad	LFB7
	.set L$set$511,LFE7-LFB7
	.quad L$set$511
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fa7
	.uleb128 0x1f
	.ascii "x\0"
	.byte	0x2
	.byte	0xe
	.byte	0x1f
	.long	0x2f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1f
	.ascii "y\0"
	.byte	0x2
	.byte	0xe
	.byte	0x22
	.long	0x2f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.ascii "z\0"
	.byte	0x2
	.byte	0xe
	.byte	0x25
	.long	0x2f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.set L$set$512,LASF0-Lsection__debug_str
	.long L$set$512
	.byte	0x2
	.byte	0xe
	.byte	0x36
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x30
	.quad	LBB19
	.set L$set$513,LBE19-LBB19
	.quad L$set$513
	.uleb128 0x2
	.long	0x234
	.long	0x1f21
	.uleb128 0x3
	.long	0x229
	.sleb128 65536
	.byte	0
	.uleb128 0x33
	.set L$set$514,LASF10-Lsection__debug_str
	.long L$set$514
	.byte	0x1
	.byte	0x80
	.byte	0x7
	.long	0x1f0f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65640
	.uleb128 0x33
	.set L$set$515,LASF4-Lsection__debug_str
	.long L$set$515
	.byte	0x1
	.byte	0x81
	.byte	0x7
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.set L$set$516,LASF11-Lsection__debug_str
	.long L$set$516
	.byte	0x1
	.byte	0x82
	.byte	0x7
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x32
	.byte	0x1
	.byte	0x83
	.byte	0x7
	.long	0x12a8
	.uleb128 0x34
	.ascii "idx\0"
	.byte	0x1
	.byte	0x84
	.byte	0x7
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.ascii "temp_idx\0"
	.byte	0x1
	.byte	0x84
	.byte	0xc
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.ascii "fx\0"
	.byte	0x1
	.byte	0x85
	.byte	0x7
	.long	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x34
	.ascii "fy\0"
	.byte	0x1
	.byte	0x85
	.byte	0xb
	.long	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x34
	.ascii "fz\0"
	.byte	0x1
	.byte	0x85
	.byte	0xf
	.long	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x36
	.ascii "smc_files__get_unix_time\0"
	.byte	0x1
	.byte	0x74
	.byte	0x4
	.long	0x36c
	.quad	LFB6
	.set L$set$517,LFE6-LFB6
	.quad L$set$517
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ff8
	.uleb128 0x32
	.byte	0x1
	.byte	0x75
	.byte	0x7
	.long	0x12c3
	.uleb128 0x34
	.ascii "epoch\0"
	.byte	0x1
	.byte	0x76
	.byte	0x7
	.long	0xc19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x36
	.ascii "smc_files__parse_int_after\0"
	.byte	0x1
	.byte	0x59
	.byte	0x4
	.long	0x2f8
	.quad	LFB5
	.set L$set$518,LFE5-LFB5
	.quad L$set$518
	.uleb128 0x1
	.byte	0x9c
	.long	0x20ac
	.uleb128 0x1f
	.ascii "str\0"
	.byte	0x1
	.byte	0x59
	.byte	0x1e
	.long	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.set L$set$519,LASF12-Lsection__debug_str
	.long L$set$519
	.byte	0x1
	.byte	0x59
	.byte	0x2c
	.long	0x808
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.ascii "default\0"
	.byte	0x1
	.byte	0x59
	.byte	0x42
	.long	0x303
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.set L$set$520,Ldebug_ranges0+0x130-Lsection__debug_ranges
	.long L$set$520
	.uleb128 0x34
	.ascii "idx\0"
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.long	0x7f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x34
	.ascii "end_idx\0"
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.long	0x7f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$521,LASF5-Lsection__debug_str
	.long L$set$521
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$522,LASF6-Lsection__debug_str
	.long L$set$522
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.set L$set$523,LASF7-Lsection__debug_str
	.long L$set$523
	.long	0xf25
	.byte	0
	.byte	0
	.uleb128 0x36
	.ascii "smc_files__parse_float_after\0"
	.byte	0x1
	.byte	0x3d
	.byte	0x4
	.long	0x33a
	.quad	LFB4
	.set L$set$524,LFE4-LFB4
	.quad L$set$524
	.uleb128 0x1
	.byte	0x9c
	.long	0x2162
	.uleb128 0x1f
	.ascii "str\0"
	.byte	0x1
	.byte	0x3d
	.byte	0x20
	.long	0x7a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.set L$set$525,LASF12-Lsection__debug_str
	.long L$set$525
	.byte	0x1
	.byte	0x3d
	.byte	0x2e
	.long	0x808
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.ascii "default\0"
	.byte	0x1
	.byte	0x3d
	.byte	0x44
	.long	0x343
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.set L$set$526,Ldebug_ranges0+0x100-Lsection__debug_ranges
	.long L$set$526
	.uleb128 0x34
	.ascii "idx\0"
	.byte	0x1
	.byte	0x3e
	.byte	0x7
	.long	0x7f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x34
	.ascii "end_idx\0"
	.byte	0x1
	.byte	0x3f
	.byte	0x7
	.long	0x7f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$527,LASF5-Lsection__debug_str
	.long L$set$527
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$528,LASF6-Lsection__debug_str
	.long L$set$528
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.set L$set$529,LASF7-Lsection__debug_str
	.long L$set$529
	.long	0xf25
	.byte	0
	.byte	0
	.uleb128 0x37
	.ascii "smc_files__read_file_content\0"
	.byte	0x1
	.byte	0xc
	.byte	0x4
	.long	0x381
	.quad	LFB2
	.set L$set$530,LFE2-LFB2
	.quad L$set$530
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.ascii "path\0"
	.byte	0x1
	.byte	0xc
	.byte	0x21
	.long	0x7a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.set L$set$531,LASF10-Lsection__debug_str
	.long L$set$531
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.long	0x79f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.set L$set$532,LASF4-Lsection__debug_str
	.long L$set$532
	.byte	0x1
	.byte	0xc
	.byte	0x46
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.set L$set$533,LASF0-Lsection__debug_str
	.long L$set$533
	.byte	0x1
	.byte	0xc
	.byte	0x5c
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x20
	.set L$set$534,Ldebug_ranges0+0-Lsection__debug_ranges
	.long L$set$534
	.uleb128 0x32
	.byte	0x1
	.byte	0xd
	.byte	0x7
	.long	0x128c
	.uleb128 0x33
	.set L$set$535,LASF9-Lsection__debug_str
	.long L$set$535
	.byte	0x1
	.byte	0xe
	.byte	0x7
	.long	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.set L$set$536,Ldebug_ranges0+0x50-Lsection__debug_ranges
	.long L$set$536
	.long	0x2224
	.uleb128 0x21
	.set L$set$537,LASF5-Lsection__debug_str
	.long L$set$537
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.set L$set$538,LASF6-Lsection__debug_str
	.long L$set$538
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.set L$set$539,LASF7-Lsection__debug_str
	.long L$set$539
	.long	0xf25
	.byte	0
	.uleb128 0x20
	.set L$set$540,Ldebug_ranges0+0x80-Lsection__debug_ranges
	.long L$set$540
	.uleb128 0x21
	.set L$set$541,LASF5-Lsection__debug_str
	.long L$set$541
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.set L$set$542,LASF6-Lsection__debug_str
	.long L$set$542
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.set L$set$543,LASF7-Lsection__debug_str
	.long L$set$543
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.set L$set$544,Ldebug_ranges0+0xd0-Lsection__debug_ranges
	.long L$set$544
	.uleb128 0x27
	.ascii "B7b\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x27
	.ascii "B11b\0"
	.long	0x229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2
	.long	0x234
	.long	0x2283
	.uleb128 0x2f
	.long	0x229
	.long	0x2253
	.long	0x225f
	.byte	0
	.uleb128 0x34
	.ascii "line\0"
	.byte	0x1
	.byte	0x20
	.byte	0x10
	.long	0x2293
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.byte	0x8
	.long	0x226c
	.uleb128 0x21
	.set L$set$545,LASF5-Lsection__debug_str
	.long L$set$545
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.set L$set$546,LASF6-Lsection__debug_str
	.long L$set$546
	.long	0xf25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.set L$set$547,LASF7-Lsection__debug_str
	.long L$set$547
	.long	0xf25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section __DWARF,__debug_abbrev,regular,debug
Lsection__debug_abbrev:
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.uleb128 0xd
	.uleb128 0x2f
	.uleb128 0xd
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.uleb128 0x2f
	.uleb128 0x7
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x22
	.uleb128 0x18
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xd
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x5c
	.uleb128 0xd
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x22
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x359
	.short	0x2
	.set L$set$548,Ldebug_info0-Lsection__debug_info
	.long L$set$548
	.long	0x22bf
	.long	0xd7d
	.ascii "smc_files__telemetry_csv\0"
	.long	0xda8
	.ascii "smc_files__precool_flag\0"
	.long	0xdd2
	.ascii "smc_files__earu_data_file\0"
	.long	0xdfe
	.ascii "smc_files__silent_mode_flag\0"
	.long	0xe2c
	.ascii "smc_files__calibration_file\0"
	.long	0xe5a
	.ascii "smc_files__pressure_report_file\0"
	.long	0xe8c
	.ascii "smc_files__notifications_log\0"
	.long	0xebb
	.ascii "smc_files__delete_file\0"
	.long	0xf27
	.ascii "smc_files__write_pressure_report\0"
	.long	0x1280
	.ascii "ada\0"
	.long	0x128c
	.ascii "text_io\0"
	.long	0x1298
	.ascii "strings\0"
	.long	0x12a8
	.ascii "fixed\0"
	.long	0x12d1
	.ascii "smc_files__save_fan_calibration\0"
	.long	0x1369
	.ascii "smc_files__load_fan_calibration\0"
	.long	0x1402
	.ascii "smc_files__write_earu_turbo\0"
	.long	0x14c4
	.ascii "smc_files__write_earu_fan\0"
	.long	0x15ec
	.ascii "smc_files__write_earu_temp\0"
	.long	0x1716
	.ascii "smc_files__notify_user\0"
	.long	0x12b3
	.ascii "directories\0"
	.long	0x12c3
	.ascii "calendar\0"
	.long	0x19d5
	.ascii "smc_files__check_precool_mode\0"
	.long	0x1ab1
	.ascii "smc_files__log_telemetry_csv\0"
	.long	0x1ce9
	.ascii "smc_files__get_battery_percent\0"
	.long	0x1d7f
	.ascii "smc_files__check_load_avg_status\0"
	.long	0x1e8b
	.ascii "smc_files__read_sms_values\0"
	.long	0x1fa7
	.ascii "smc_files__get_unix_time\0"
	.long	0x1ff8
	.ascii "smc_files__parse_int_after\0"
	.long	0x20ac
	.ascii "smc_files__parse_float_after\0"
	.long	0x2162
	.ascii "smc_files__read_file_content\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x2d0
	.short	0x2
	.set L$set$549,Ldebug_info0-Lsection__debug_info
	.long L$set$549
	.long	0x22bf
	.long	0x229
	.ascii "integer\0"
	.long	0x234
	.ascii "character\0"
	.long	0x2f8
	.ascii "integer\0"
	.long	0x308
	.ascii "boolean\0"
	.long	0x33a
	.ascii "float\0"
	.long	0x36c
	.ascii "long_integer\0"
	.long	0x6b9
	.ascii "ada__tags__prim_ptr\0"
	.long	0x68f
	.ascii "ada__tags__dispatch_table\0"
	.long	0x671
	.ascii "ada__tags__tag\0"
	.long	0x63a
	.ascii "ada__streams__root_stream_type\0"
	.long	0x708
	.ascii "system__address\0"
	.long	0x747
	.ascii "string\0"
	.long	0x71b
	.ascii "system__file_control_block__pstring\0"
	.long	0x813
	.ascii "system__crtl__filename_encoding\0"
	.long	0x88a
	.ascii "system__file_control_block__file_mode\0"
	.long	0x95a
	.ascii "interfaces__c_streams__content_encoding\0"
	.long	0xa4e
	.ascii "system__file_control_block__shared_status_type\0"
	.long	0xaed
	.ascii "system__file_control_block__afcb_ptr\0"
	.long	0x504
	.ascii "system__file_control_block__afcb\0"
	.long	0x3df
	.ascii "ada__text_io__text_afcb\0"
	.long	0x3b8
	.ascii "ada__text_io__file_type\0"
	.long	0xbce
	.ascii "system__storage_elements__storage_element\0"
	.long	0xbfb
	.ascii "system__val_flt__impl__num\0"
	.long	0xcee
	.ascii "duration\0"
	.long	0xd1c
	.ascii "system__img_flt__impl__num\0"
	.long	0xd68
	.ascii "long_long_integer\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0xbc
	.short	0x2
	.set L$set$550,Ldebug_info0-Lsection__debug_info
	.long L$set$550
	.byte	0x8
	.byte	0
	.short	0
	.short	0
	.quad	Ltext0
	.set L$set$551,LFE9-Ltext0
	.quad L$set$551
	.quad	LFB10
	.set L$set$552,LFE12-LFB10
	.quad L$set$552
	.quad	LFB13
	.set L$set$553,LFE13-LFB13
	.quad L$set$553
	.quad	LFB16
	.set L$set$554,LFE16-LFB16
	.quad L$set$554
	.quad	LFB18
	.set L$set$555,LFE18-LFB18
	.quad L$set$555
	.quad	LFB20
	.set L$set$556,LFE20-LFB20
	.quad L$set$556
	.quad	LFB22
	.set L$set$557,LFE22-LFB22
	.quad L$set$557
	.quad	LFB24
	.set L$set$558,LFE24-LFB24
	.quad L$set$558
	.quad	LFB26
	.set L$set$559,LFE26-LFB26
	.quad L$set$559
	.quad	LFB32
	.set L$set$560,Letext0-LFB32
	.quad L$set$560
	.quad	0
	.quad	0
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
Ldebug_ranges0:
	.quad	LBB2
	.quad	LBE2
	.quad	LBB12
	.quad	LBE12
	.quad	LBB13
	.quad	LBE13
	.quad	LBB14
	.quad	LBE14
	.quad	0
	.quad	0
	.quad	LBB3
	.quad	LBE3
	.quad	LBB8
	.quad	LBE8
	.quad	0
	.quad	0
	.quad	LBB5
	.quad	LBE5
	.quad	LBB9
	.quad	LBE9
	.quad	LBB10
	.quad	LBE10
	.quad	LBB11
	.quad	LBE11
	.quad	0
	.quad	0
	.quad	LBB6
	.quad	LBE6
	.quad	LBB7
	.quad	LBE7
	.quad	0
	.quad	0
	.quad	LBB15
	.quad	LBE15
	.quad	LBB16
	.quad	LBE16
	.quad	0
	.quad	0
	.quad	LBB17
	.quad	LBE17
	.quad	LBB18
	.quad	LBE18
	.quad	0
	.quad	0
	.quad	LBB32
	.quad	LBE32
	.quad	LBB45
	.quad	LBE45
	.quad	LBB46
	.quad	LBE46
	.quad	0
	.quad	0
	.quad	LBB33
	.quad	LBE33
	.quad	LBB41
	.quad	LBE41
	.quad	0
	.quad	0
	.quad	LBB35
	.quad	LBE35
	.quad	LBB42
	.quad	LBE42
	.quad	LBB43
	.quad	LBE43
	.quad	LBB44
	.quad	LBE44
	.quad	0
	.quad	0
	.quad	LBB39
	.quad	LBE39
	.quad	LBB40
	.quad	LBE40
	.quad	0
	.quad	0
	.quad	LBB50
	.quad	LBE50
	.quad	LBB67
	.quad	LBE67
	.quad	LBB68
	.quad	LBE68
	.quad	0
	.quad	0
	.quad	LBB51
	.quad	LBE51
	.quad	LBB63
	.quad	LBE63
	.quad	LBB64
	.quad	LBE64
	.quad	0
	.quad	0
	.quad	LBB53
	.quad	LBE53
	.quad	LBB54
	.quad	LBE54
	.quad	0
	.quad	0
	.quad	LBB55
	.quad	LBE55
	.quad	LBB65
	.quad	LBE65
	.quad	LBB66
	.quad	LBE66
	.quad	0
	.quad	0
	.quad	LBB59
	.quad	LBE59
	.quad	LBB60
	.quad	LBE60
	.quad	0
	.quad	0
	.quad	LBB69
	.quad	LBE69
	.quad	LBB77
	.quad	LBE77
	.quad	0
	.quad	0
	.quad	LBB71
	.quad	LBE71
	.quad	LBB75
	.quad	LBE75
	.quad	LBB76
	.quad	LBE76
	.quad	0
	.quad	0
	.quad	LBB78
	.quad	LBE78
	.quad	LBB86
	.quad	LBE86
	.quad	0
	.quad	0
	.quad	LBB80
	.quad	LBE80
	.quad	LBB84
	.quad	LBE84
	.quad	LBB85
	.quad	LBE85
	.quad	0
	.quad	0
	.quad	LBB87
	.quad	LBE87
	.quad	LBB91
	.quad	LBE91
	.quad	LBB92
	.quad	LBE92
	.quad	LBB93
	.quad	LBE93
	.quad	0
	.quad	0
	.quad	LBB94
	.quad	LBE94
	.quad	LBB102
	.quad	LBE102
	.quad	LBB103
	.quad	LBE103
	.quad	0
	.quad	0
	.quad	LBB95
	.quad	LBE95
	.quad	LBB99
	.quad	LBE99
	.quad	LBB100
	.quad	LBE100
	.quad	LBB101
	.quad	LBE101
	.quad	0
	.quad	0
	.quad	LBB104
	.quad	LBE104
	.quad	LBB108
	.quad	LBE108
	.quad	LBB109
	.quad	LBE109
	.quad	LBB110
	.quad	LBE110
	.quad	0
	.quad	0
	.quad	LBB111
	.quad	LBE111
	.quad	LBB128
	.quad	LBE128
	.quad	LBB129
	.quad	LBE129
	.quad	LBB130
	.quad	LBE130
	.quad	0
	.quad	0
	.quad	LBB113
	.quad	LBE113
	.quad	LBB123
	.quad	LBE123
	.quad	0
	.quad	0
	.quad	LBB115
	.quad	LBE115
	.quad	LBB124
	.quad	LBE124
	.quad	0
	.quad	0
	.quad	LBB117
	.quad	LBE117
	.quad	LBB125
	.quad	LBE125
	.quad	0
	.quad	0
	.quad	LBB119
	.quad	LBE119
	.quad	LBB126
	.quad	LBE126
	.quad	0
	.quad	0
	.quad	LBB121
	.quad	LBE121
	.quad	LBB127
	.quad	LBE127
	.quad	0
	.quad	0
	.quad	LBB131
	.quad	LBE131
	.quad	LBB132
	.quad	LBE132
	.quad	LBB133
	.quad	LBE133
	.quad	0
	.quad	0
	.quad	Ltext0
	.quad	LFE9
	.quad	LFB10
	.quad	LFE12
	.quad	LFB13
	.quad	LFE13
	.quad	LFB16
	.quad	LFE16
	.quad	LFB18
	.quad	LFE18
	.quad	LFB20
	.quad	LFE20
	.quad	LFB22
	.quad	LFE22
	.quad	LFB24
	.quad	LFE24
	.quad	LFB26
	.quad	LFE26
	.quad	LFB32
	.quad	Letext0
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
LASF1:
	.ascii "max_load\0"
LASF4:
	.ascii "length\0"
LASF8:
	.ascii "calibrated_rpm\0"
LASF6:
	.ascii "EXCLN\0"
LASF10:
	.ascii "content\0"
LASF7:
	.ascii "EXPRP\0"
LASF0:
	.ascii "success\0"
LASF9:
	.ascii "file\0"
LASF12:
	.ascii "start_pos\0"
LASF3:
	.ascii "time_left\0"
LASF2:
	.ascii "active\0"
LASF5:
	.ascii "EXPTR\0"
LASF11:
	.ascii "file_success\0"
	.ident	"GCC: (GNU) 15.0.1 20250418 (prerelease)"
	.subsections_via_symbols
