	.arch armv8.5-a
	.build_version macos,  14, 0
	.text
Ltext0:
	.file 1 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_files.adb"
	.align	2
_smc_files__ensure_directory_exists__B_1___finalizer.0:
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
	.ascii "smc_files.adb"
	.space 1
	.align	3
lC30:
	.space	1
	.text
	.align	2
_smc_files__ensure_directory_exists:
LFB2:
	.loc 1 9 4
	stp	x29, x30, [sp, -224]!
LCFI3:
	mov	x29, sp
LCFI4:
LEHB0:
LEHE0:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI5:
	stp	x0, x1, [x29, 128]
	.loc 1 9 4
	add	x0, x29, 224
	.loc 1 9 4 is_stmt 0 discriminator 1
	str	x0, [x29, 168]
	ldr	x0, [x29, 136]
	ldr	w0, [x0]
	ldr	x1, [x29, 136]
	ldr	w1, [x1, 4]
LBB2:
	cmp	w1, w0
	.loc 1 9 4 discriminator 5
	cmp	w1, w0
	blt	L7
	.loc 1 9 4 discriminator 6
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
L7:
	.loc 1 9 4 discriminator 9
	cmp	w1, w0
LBB3:
	add	x0, x29, 144
	mov	x8, x0
LEHB1:
	bl	_system__secondary_stack__ss_mark
	.loc 1 13 35 is_stmt 1
	ldp	x0, x1, [x29, 128]
	bl	_ada__directories__containing_directory
	.loc 1 13 35 is_stmt 0 discriminator 2
	mov	x22, x0
	mov	x23, x1
	mov	x0, x23
	ldr	w0, [x0]
	str	w0, [x29, 220]
	mov	x0, x23
	ldr	w0, [x0, 4]
	str	w0, [x29, 216]
	.loc 1 13 10 is_stmt 1 discriminator 2
	ldrsw	x0, [x29, 220]
	str	x0, [x29, 208]
	ldr	w1, [x29, 216]
	ldr	w0, [x29, 220]
	cmp	w1, w0
	blt	L10
	.loc 1 13 10 is_stmt 0 discriminator 3
	ldrsw	x0, [x29, 216]
	str	x0, [x29, 200]
	b	L11
L10:
	.loc 1 13 10 discriminator 4
	ldrsw	x0, [x29, 220]
	sub	x0, x0, #1
	str	x0, [x29, 200]
L11:
	.loc 1 13 10 discriminator 6
	ldr	w1, [x29, 216]
	ldr	w0, [x29, 220]
	cmp	w1, w0
	blt	L13
	.loc 1 13 10 discriminator 7
	ldrsw	x1, [x29, 216]
	ldrsw	x0, [x29, 220]
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x20, x0
	mov	x21, 0
	lsr	x0, x20, 61
	lsl	x25, x21, 3
	mov	x1, x25
	add	x0, x0, x1
	mov	x25, x0
	lsl	x24, x20, 3
L13:
	.loc 1 13 10 discriminator 10
	ldr	w1, [x29, 216]
	ldr	w0, [x29, 220]
	cmp	w1, w0
	.loc 1 13 35 is_stmt 1 discriminator 14
	ldr	w1, [x29, 216]
	ldr	w0, [x29, 220]
	cmp	w1, w0
	blt	L16
	.loc 1 13 35 is_stmt 0 discriminator 15
	ldr	w0, [x29, 220]
	cmp	w0, 0
	bgt	L16
	.loc 1 13 35 discriminator 17
	mov	w1, 13
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L16:
	.loc 1 13 10 is_stmt 1 discriminator 18
	mov	x0, x22
	str	x0, [x29, 192]
	.loc 1 15 17
	mov	x0, x22
	mov	x1, x23
	bl	_ada__directories__exists
	.loc 1 15 17 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 15 10 is_stmt 1 discriminator 2
	cmp	w0, 0
	beq	L17
LBB4:
	.loc 1 16 13
	adrp	x0, lC30@PAGE
	add	x26, x0, lC30@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x27, x0, lC0@PAGEOFF;
	mov	x2, x26
	mov	x3, x27
	mov	x0, x22
	mov	x1, x23
	bl	_ada__directories__create_path
LEHE1:
L17:
LBE4:
	.loc 1 18 0
	mov	w19, 1
L22:
	.loc 1 18 0 is_stmt 0 discriminator 1
	add	x0, x29, 144
	mov	x16, x0
LEHB2:
	bl	_smc_files__ensure_directory_exists__B_1___finalizer.0
LEHE2:
	.loc 1 18 0 discriminator 3
	cmp	w19, 1
	bne	L18
	.loc 1 18 0
	nop
	.loc 1 18 10 is_stmt 1
	mov	w0, 1
L24:
	.loc 1 18 10 is_stmt 0 discriminator 4
	cmp	w0, 1
	bne	L19
	.loc 1 18 10
	nop
LBE3:
	.loc 1 22 8 is_stmt 1
	b	L3
L27:
	str	x0, [x29, 112]
	str	x1, [x29, 104]
	mov	w19, 0
LBB5:
	.loc 1 12 7
	b	L22
L18:
	ldr	x0, [x29, 112]
	str	x0, [x29, 120]
	ldr	x28, [x29, 104]
	b	L23
L28:
	str	x0, [x29, 120]
	mov	x28, x1
L23:
	mov	w0, 0
	b	L24
L19:
	ldr	x0, [x29, 120]
	mov	x1, x28
LBE5:
LBE2:
	.loc 1 20 7
	cmp	x1, 1
	beq	L25
LEHB3:
	bl	__Unwind_Resume
L25:
LBB6:
	.loc 1 20 7 is_stmt 0 discriminator 1
	str	x0, [x29, 184]
	.loc 1 20 7 discriminator 2
	ldr	x0, [x29, 184]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 176]
	.loc 1 21 10 is_stmt 1
	nop
	.loc 1 22 8
	nop
	.loc 1 20 7
	mov	x2, 0
	ldr	x1, [x29, 176]
	ldr	x0, [x29, 184]
	bl	___gnat_end_handler_v1
L3:
LBE6:
	.loc 1 22 8
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE3:
	ldp	x29, x30, [sp], 224
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
	.uleb128 L27-LFB2
	.uleb128 0x3
	.uleb128 LEHB2-LFB2
	.uleb128 LEHE2-LEHB2
	.uleb128 L28-LFB2
	.uleb128 0x3
	.uleb128 LEHB3-LFB2
	.uleb128 LEHE3-LEHB3
	.uleb128 0
	.uleb128 0
LLSDACSE2:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr0:
	.long	___gnat_others_value@GOT-L_got_pcr0
LLSDATT2:
	.text
	.const
	.align	2
lC0:
	.word	1
	.word	0
	.text
	.align	2
_smc_files__read_file_content__B_3__B_5___finalizer.1:
LFB5:
	stp	x29, x30, [sp, -32]!
LCFI7:
	mov	x29, sp
LCFI8:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI9:
	ret
LFE5:
	.align	2
_smc_files__read_file_content:
LFB4:
	.loc 1 28 4
	stp	x29, x30, [sp, -368]!
LCFI10:
	mov	x29, sp
LCFI11:
LEHB4:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI12:
	stp	x0, x1, [x29, 208]
	stp	x2, x3, [x29, 192]
	.loc 1 28 4
	add	x0, x29, 368
	.loc 1 28 4 is_stmt 0 discriminator 1
	str	x0, [x29, 264]
	ldr	x0, [x29, 216]
	ldr	w2, [x0]
	ldr	x0, [x29, 216]
	ldr	w3, [x0, 4]
LBB7:
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	sxtw	x0, w0
	str	x0, [x29, 152]
	ldr	x0, [x29, 200]
	ldr	w1, [x0, 4]
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	cmp	w1, w0
	.loc 1 28 4 discriminator 5
	ldr	x0, [x29, 200]
	ldr	w1, [x0, 4]
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L35
	.loc 1 28 4 discriminator 6
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
L35:
	.loc 1 28 4 discriminator 9
	ldr	x0, [x29, 200]
	ldr	w1, [x0, 4]
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	cmp	w1, w0
	.loc 1 28 4 discriminator 13
	cmp	w3, w2
	.loc 1 28 4 discriminator 17
	cmp	w3, w2
	blt	L41
	.loc 1 28 4 discriminator 18
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
L41:
	.loc 1 28 4 discriminator 21
	cmp	w3, w2
	.loc 1 30 7 is_stmt 1
	str	xzr, [x29, 232]
	.loc 1 32 14
	str	wzr, [x29, 276]
	.loc 1 33 15
	strb	wzr, [x29, 275]
	.loc 1 34 29
	ldp	x0, x1, [x29, 208]
	bl	_ada__directories__exists
LEHE4:
	.loc 1 34 29 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 34 7 is_stmt 1 discriminator 2
	cmp	w0, 0
	bne	L130
LBB8:
LBB9:
	.loc 1 39 10
	ldr	x6, [x29, 232]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 128]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 136]
	ldp	x4, x5, [x29, 128]
	ldp	x2, x3, [x29, 208]
	mov	w1, 0
	mov	x0, x6
LEHB5:
	bl	_ada__text_io__open
LEHE5:
	.loc 1 39 10 is_stmt 0 discriminator 2
	str	x0, [x29, 232]
L107:
LBE9:
LBE8:
LBB10:
	.loc 1 46 20 is_stmt 1
	ldr	x0, [x29, 232]
LEHB6:
	bl	_ada__text_io__end_of_file
LEHE6:
	.loc 1 46 16 discriminator 2
	cmp	w0, 0
	bne	L46
LBB11:
	add	x0, x29, 240
	mov	x8, x0
LEHB7:
	bl	_system__secondary_stack__ss_mark
	.loc 1 48 42
	ldr	x0, [x29, 232]
	bl	_ada__text_io__get_line__3
	.loc 1 48 42 is_stmt 0 discriminator 2
	mov	x2, x0
	mov	x3, x1
	mov	x0, x3
	ldr	w0, [x0]
	str	w0, [x29, 364]
	mov	x0, x3
	ldr	w0, [x0, 4]
	str	w0, [x29, 360]
	.loc 1 48 16 is_stmt 1 discriminator 2
	ldrsw	x0, [x29, 364]
	str	x0, [x29, 352]
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L47
	.loc 1 48 16 is_stmt 0 discriminator 3
	ldrsw	x0, [x29, 360]
	str	x0, [x29, 344]
	b	L48
L47:
	.loc 1 48 16 discriminator 4
	ldrsw	x0, [x29, 364]
	sub	x0, x0, #1
	str	x0, [x29, 344]
L48:
	.loc 1 48 16 discriminator 6
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L50
	.loc 1 48 16 discriminator 7
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
L50:
	.loc 1 48 16 discriminator 10
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	.loc 1 48 42 is_stmt 1 discriminator 14
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L53
	.loc 1 48 42 is_stmt 0 discriminator 15
	ldr	w0, [x29, 364]
	cmp	w0, 0
	bgt	L53
	.loc 1 48 42 discriminator 17
	mov	w1, 48
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
LEHE7:
L53:
	.loc 1 48 42 discriminator 18
	mov	x0, x3
	ldr	w0, [x0]
	mov	x1, x3
	ldr	w1, [x1, 4]
	cmp	w1, w0
	.loc 1 48 42 discriminator 23
	cmp	w1, w0
	blt	L57
	.loc 1 48 42 discriminator 24
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
L57:
	.loc 1 48 42 discriminator 27
	cmp	w1, w0
	.loc 1 48 16 is_stmt 1 discriminator 31
	mov	x0, x2
	str	x0, [x29, 336]
	.loc 1 50 32
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L60
	.loc 1 50 32 is_stmt 0 discriminator 1
	ldrsw	x1, [x29, 360]
	ldrsw	x0, [x29, 364]
	sub	x0, x1, x0
	add	x0, x0, 1
	b	L61
L60:
	.loc 1 50 32 discriminator 2
	mov	x0, 0
L61:
	.loc 1 50 32 discriminator 4
	mov	x1, 2147483647
	cmp	x0, x1
	ble	L62
	.loc 1 50 32 discriminator 5
	mov	w1, 50
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
LEHB8:
	bl	___gnat_rcheck_CE_Range_Check
L62:
	.loc 1 50 26 is_stmt 1 discriminator 6
	ldr	w1, [x29, 276]
	mov	w4, 0
	adds	w0, w1, w0
	bvc	L63
	mov	w4, 1
L63:
	mov	w1, w0
	.loc 1 50 26 is_stmt 0 discriminator 8
	mov	w0, w4
	cmp	w0, 0
	beq	L65
	.loc 1 50 26 discriminator 9
	mov	w1, 50
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L65:
	.loc 1 50 26 discriminator 10
	mov	w0, w1
	.loc 1 50 40 is_stmt 1 discriminator 13
	mov	w1, 2147483647
	cmp	w0, w1
	bne	L66
	.loc 1 50 40 is_stmt 0 discriminator 14
	mov	w1, 50
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L66:
	.loc 1 50 40 discriminator 15
	add	w1, w0, 1
	.loc 1 50 44 is_stmt 1 discriminator 18
	ldr	x0, [x29, 200]
	ldr	w0, [x0, 4]
	.loc 1 50 16 discriminator 18
	cmp	w1, w0
	bgt	L67
	.loc 1 51 55
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L68
	.loc 1 51 55 is_stmt 0 discriminator 1
	ldrsw	x1, [x29, 360]
	ldrsw	x0, [x29, 364]
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x1, x0
	b	L69
L68:
	.loc 1 51 55 discriminator 2
	mov	x1, 0
L69:
	.loc 1 51 55 discriminator 4
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L70
	.loc 1 51 55 discriminator 5
	mov	w1, 51
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L70:
	.loc 1 51 35 is_stmt 1 discriminator 6
	ldr	w4, [x29, 276]
	mov	w0, 2147483647
	cmp	w4, w0
	bne	L71
	.loc 1 51 35 is_stmt 0 discriminator 8
	mov	w1, 51
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L71:
	.loc 1 51 35 discriminator 9
	ldr	w0, [x29, 276]
	add	w0, w0, 1
	.loc 1 51 49 is_stmt 1 discriminator 12
	ldr	w4, [x29, 276]
	mov	w5, 0
	adds	w1, w4, w1
	bvc	L72
	mov	w5, 1
L72:
	mov	w4, w1
	.loc 1 51 49 is_stmt 0 discriminator 13
	mov	w1, w5
	cmp	w1, 0
	beq	L74
	.loc 1 51 49 discriminator 14
	mov	w1, 51
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L74:
	.loc 1 51 49 discriminator 15
	mov	w1, w4
	.loc 1 51 39 is_stmt 1 discriminator 18
	cmp	w1, w0
	blt	L75
	.loc 1 51 39 is_stmt 0 discriminator 19
	ldr	x4, [x29, 200]
	ldr	w4, [x4]
	cmp	w0, w4
	blt	L76
	.loc 1 51 39 discriminator 22
	ldr	x4, [x29, 200]
	ldr	w4, [x4, 4]
	cmp	w1, w4
	ble	L75
L76:
	.loc 1 51 39 discriminator 23
	mov	w1, 51
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L75:
	.loc 1 51 19 is_stmt 1 discriminator 24
	cmp	w1, w0
	.loc 1 51 19 is_stmt 0 discriminator 29
	cmp	w1, w0
	blt	L80
	.loc 1 51 19 discriminator 30
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
L80:
	.loc 1 51 19 discriminator 33
	cmp	w1, w0
	.loc 1 51 67 is_stmt 1 discriminator 37
	cmp	w1, w0
	blt	L83
	.loc 1 51 67 is_stmt 0 discriminator 38
	sxtw	x5, w1
	sxtw	x4, w0
	sub	x4, x5, x4
	add	x4, x4, 1
	mov	x5, x4
	b	L84
L83:
	.loc 1 51 67 discriminator 39
	mov	x5, 0
L84:
	.loc 1 51 67 discriminator 41
	ldr	w6, [x29, 360]
	ldr	w4, [x29, 364]
	cmp	w6, w4
	blt	L85
	.loc 1 51 67 discriminator 42
	ldrsw	x6, [x29, 360]
	ldrsw	x4, [x29, 364]
	sub	x4, x6, x4
	add	x4, x4, 1
	b	L86
L85:
	.loc 1 51 67 discriminator 43
	mov	x4, 0
L86:
	.loc 1 51 67 discriminator 45
	cmp	x5, x4
	beq	L87
	.loc 1 51 67 discriminator 46
	mov	w1, 51
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Length_Check
L87:
	.loc 1 51 64 is_stmt 1 discriminator 47
	ldr	x5, [x29, 192]
	sxtw	x4, w0
	ldr	x6, [x29, 152]
	sub	x4, x4, x6
	add	x4, x5, x4
	mov	x3, x2
	cmp	w1, w0
	blt	L88
	.loc 1 51 64 is_stmt 0 discriminator 49
	sxtw	x1, w1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x0, x0, 1
	b	L89
L88:
	.loc 1 51 64 discriminator 50
	mov	x0, 0
L89:
	.loc 1 51 64 discriminator 52
	mov	x2, x0
	mov	x1, x3
	mov	x0, x4
	bl	_memmove
	.loc 1 52 42 is_stmt 1
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 364]
	cmp	w1, w0
	blt	L90
	.loc 1 52 42 is_stmt 0 discriminator 1
	ldrsw	x1, [x29, 360]
	ldrsw	x0, [x29, 364]
	sub	x0, x1, x0
	add	x0, x0, 1
	b	L91
L90:
	.loc 1 52 42 discriminator 2
	mov	x0, 0
L91:
	.loc 1 52 42 discriminator 4
	mov	x1, 2147483647
	cmp	x0, x1
	ble	L92
	.loc 1 52 42 discriminator 5
	mov	w1, 52
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L92:
	.loc 1 52 36 is_stmt 1 discriminator 6
	ldr	w1, [x29, 276]
	mov	w2, 0
	adds	w0, w1, w0
	bvc	L93
	mov	w2, 1
L93:
	mov	w1, w0
	.loc 1 52 36 is_stmt 0 discriminator 8
	mov	w0, w2
	cmp	w0, 0
	beq	L95
	.loc 1 52 36 discriminator 9
	mov	w1, 52
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L95:
	.loc 1 52 36 discriminator 10
	mov	w0, w1
	.loc 1 52 26 is_stmt 1 discriminator 13
	str	w0, [x29, 276]
	.loc 1 53 36
	ldr	w1, [x29, 276]
	mov	w0, 2147483647
	cmp	w1, w0
	bne	L96
	.loc 1 53 36 is_stmt 0 discriminator 1
	mov	w1, 53
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L96:
	.loc 1 53 36 discriminator 2
	ldr	w0, [x29, 276]
	add	w0, w0, 1
	.loc 1 53 26 is_stmt 1 discriminator 5
	str	w0, [x29, 276]
	.loc 1 54 19
	ldr	x0, [x29, 200]
	ldr	w1, [x0]
	ldr	w0, [x29, 276]
	cmp	w1, w0
	bgt	L97
	.loc 1 54 19 is_stmt 0 discriminator 2
	ldr	x0, [x29, 200]
	ldr	w1, [x0, 4]
	ldr	w0, [x29, 276]
	cmp	w1, w0
	bge	L98
L97:
	.loc 1 54 19 discriminator 3
	mov	w1, 54
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L98:
	.loc 1 54 28 is_stmt 1 discriminator 4
	ldr	w0, [x29, 276]
	cmp	w0, 0
	bge	L99
	.loc 1 54 28 is_stmt 0 discriminator 6
	mov	w1, 54
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Invalid_Data
L99:
	.loc 1 54 36 is_stmt 1 discriminator 7
	ldr	x1, [x29, 192]
	sxtw	x0, w0
	ldr	x2, [x29, 152]
	sub	x0, x0, x2
	mov	w2, 10
	strb	w2, [x1, x0]
LEHE8:
	b	L127
L67:
	.loc 1 56 19
	mov	w19, 0
	b	L101
L127:
	.loc 1 61 0
	mov	w19, 2
L101:
	.loc 1 61 0 is_stmt 0 discriminator 1
	add	x0, x29, 240
	mov	x16, x0
LEHB9:
	bl	_smc_files__read_file_content__B_3__B_5___finalizer.1
LEHE9:
	.loc 1 61 0 discriminator 3
	cmp	w19, 1
	beq	L102
	cmp	w19, 2
	beq	L128
	mov	w0, 0
	b	L105
L128:
	.loc 1 61 16 is_stmt 1
	mov	w0, 2
L105:
	.loc 1 61 16 is_stmt 0 discriminator 4
	cmp	w0, 1
	beq	L106
	cmp	w0, 2
	bne	L46
LBE11:
	.loc 1 62 18 is_stmt 1
	b	L107
L46:
	.loc 1 63 10
	add	x0, x29, 232
LEHB10:
	bl	_ada__text_io__close
LEHE10:
	.loc 1 64 18
	mov	w0, 1
	strb	w0, [x29, 275]
LBE10:
	.loc 1 71 8
	nop
	b	L108
L130:
	.loc 1 35 10
	nop
L108:
LBE7:
	.loc 1 71 8 discriminator 1
	ldr	w0, [x29, 276]
	bfi	x26, x0, 0, 32
	ldrb	w0, [x29, 275]
	bfi	x26, x0, 32, 8
	.loc 1 71 8 is_stmt 0 discriminator 3
	mov	x0, x26
	.loc 1 71 8
	b	L129
L121:
	.loc 1 41 10 is_stmt 1
	cmp	x1, 1
	beq	L111
LEHB11:
	bl	__Unwind_Resume
L111:
LBB17:
LBB13:
	.loc 1 41 10 is_stmt 0 discriminator 1
	str	x0, [x29, 288]
	.loc 1 41 10 discriminator 2
	ldr	x0, [x29, 288]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 280]
	.loc 1 42 13 is_stmt 1
	nop
	.loc 1 41 10 discriminator 4
	mov	x2, 0
	ldr	x1, [x29, 280]
	ldr	x0, [x29, 288]
	bl	___gnat_end_handler_v1
LEHE11:
	b	L108
L124:
LBE13:
LBE17:
	.loc 1 59 16
	mov	x2, x1
	mov	x1, x2
	cmp	x1, 3
	beq	L113
	str	x0, [x29, 144]
	str	x2, [x29, 120]
	b	L114
L113:
LBB18:
LBB14:
LBB12:
	.loc 1 59 16 is_stmt 0 discriminator 1
	str	x0, [x29, 328]
	.loc 1 59 16 discriminator 2
	ldr	x0, [x29, 328]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 320]
	.loc 1 60 19 is_stmt 1
	nop
	.loc 1 59 16 discriminator 4
	mov	x2, 0
	ldr	x1, [x29, 320]
	ldr	x0, [x29, 328]
LEHB12:
	bl	___gnat_end_handler_v1
LEHE12:
	mov	w19, 0
	b	L101
L123:
	str	x0, [x29, 144]
	str	x1, [x29, 120]
L114:
	mov	w19, 1
	.loc 1 47 13
	b	L101
L102:
	ldr	x0, [x29, 144]
	str	x0, [x29, 112]
	ldr	x0, [x29, 120]
	str	x0, [x29, 104]
	b	L115
L125:
	str	x0, [x29, 112]
	str	x1, [x29, 104]
L115:
	mov	w0, 1
	b	L105
L106:
	ldr	x0, [x29, 112]
	ldr	x1, [x29, 104]
	b	L116
L122:
L116:
LBE12:
LBE14:
LBE18:
	.loc 1 66 10
	cmp	x1, 2
	beq	L117
LEHB13:
	bl	__Unwind_Resume
LEHE13:
L117:
LBB19:
LBB15:
	.loc 1 66 10 is_stmt 0 discriminator 1
	str	x0, [x29, 312]
	.loc 1 66 10 discriminator 2
	ldr	x0, [x29, 312]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 304]
	.loc 1 67 16 is_stmt 1
	ldr	x0, [x29, 232]
LEHB14:
	bl	_ada__text_io__is_open
	.loc 1 67 13 discriminator 2
	cmp	w0, 0
	beq	L118
	.loc 1 68 16
	add	x0, x29, 232
	bl	_ada__text_io__close
LEHE14:
L118:
	.loc 1 66 10
	mov	x2, 0
	ldr	x1, [x29, 304]
	ldr	x0, [x29, 312]
LEHB15:
	bl	___gnat_end_handler_v1
LBE15:
	.loc 1 71 8
	b	L108
L126:
LBB16:
	.loc 1 66 10
	mov	x19, x0
	str	x19, [x29, 296]
	.loc 1 66 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 296]
	ldr	x1, [x29, 304]
	ldr	x0, [x29, 312]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L129:
LBE16:
LBE19:
	.loc 1 71 8 is_stmt 1
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE15:
	ldp	x29, x30, [sp], 368
LCFI13:
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
	.uleb128 LEHB4-LFB4
	.uleb128 LEHE4-LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB5-LFB4
	.uleb128 LEHE5-LEHB5
	.uleb128 L121-LFB4
	.uleb128 0x1
	.uleb128 LEHB6-LFB4
	.uleb128 LEHE6-LEHB6
	.uleb128 L122-LFB4
	.uleb128 0x3
	.uleb128 LEHB7-LFB4
	.uleb128 LEHE7-LEHB7
	.uleb128 L123-LFB4
	.uleb128 0x5
	.uleb128 LEHB8-LFB4
	.uleb128 LEHE8-LEHB8
	.uleb128 L124-LFB4
	.uleb128 0x7
	.uleb128 LEHB9-LFB4
	.uleb128 LEHE9-LEHB9
	.uleb128 L125-LFB4
	.uleb128 0x5
	.uleb128 LEHB10-LFB4
	.uleb128 LEHE10-LEHB10
	.uleb128 L122-LFB4
	.uleb128 0x3
	.uleb128 LEHB11-LFB4
	.uleb128 LEHE11-LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB12-LFB4
	.uleb128 LEHE12-LEHB12
	.uleb128 L123-LFB4
	.uleb128 0x5
	.uleb128 LEHB13-LFB4
	.uleb128 LEHE13-LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB14-LFB4
	.uleb128 LEHE14-LEHB14
	.uleb128 L126-LFB4
	.uleb128 0
	.uleb128 LEHB15-LFB4
	.uleb128 LEHE15-LEHB15
	.uleb128 0
	.uleb128 0
LLSDACSE4:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0x7d
	.byte	0x3
	.byte	0x7d
	.align	2
L_got_pcr1:
	.long	___gnat_others_value@GOT-L_got_pcr1
L_got_pcr2:
	.long	___gnat_others_value@GOT-L_got_pcr2
L_got_pcr3:
	.long	___gnat_others_value@GOT-L_got_pcr3
LLSDATT4:
	.text
	.align	2
_smc_files__parse_float_after:
LFB6:
	.loc 1 77 4
	stp	x29, x30, [sp, -96]!
LCFI14:
	mov	x29, sp
LCFI15:
LEHB16:
LEHE16:
	str	d15, [sp, 16]
LCFI16:
	stp	x0, x1, [x29, 48]
	str	w2, [x29, 44]
	str	s0, [x29, 40]
	.loc 1 77 4
	ldr	x0, [x29, 56]
	ldr	w1, [x0]
	ldr	x0, [x29, 56]
	ldr	w0, [x0, 4]
LBB20:
	sxtw	x2, w1
	cmp	w0, w1
	.loc 1 77 4 is_stmt 0 discriminator 4
	cmp	w0, w1
	blt	L135
	.loc 1 77 4 discriminator 5
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
L135:
	.loc 1 77 4 discriminator 8
	cmp	w0, w1
	.loc 1 78 7 is_stmt 1
	ldr	w3, [x29, 44]
	str	w3, [x29, 92]
L151:
	.loc 1 82 7
	ldr	w3, [x29, 92]
	cmp	w0, w3
	blt	L138
	.loc 1 82 39 discriminator 1
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L139
	.loc 1 82 39 is_stmt 0 discriminator 3
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L140
L139:
	.loc 1 82 39 discriminator 4
	mov	w1, 82
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
LEHB17:
	bl	___gnat_rcheck_CE_Index_Check
L140:
	.loc 1 82 49 is_stmt 1 discriminator 5
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 82 49 is_stmt 0 discriminator 7
	cmp	w3, 32
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 82 29 is_stmt 1 discriminator 7
	cmp	w3, 0
	bne	L141
	.loc 1 82 63 discriminator 8
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L142
	.loc 1 82 63 is_stmt 0 discriminator 10
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L143
L142:
	.loc 1 82 63 discriminator 11
	mov	w1, 82
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L143:
	.loc 1 82 73 is_stmt 1 discriminator 12
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 82 73 is_stmt 0 discriminator 14
	cmp	w3, 58
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 82 55 is_stmt 1 discriminator 14
	cmp	w3, 0
	bne	L141
	.loc 1 82 87 discriminator 15
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L144
	.loc 1 82 87 is_stmt 0 discriminator 17
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L145
L144:
	.loc 1 82 87 discriminator 18
	mov	w1, 82
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L145:
	.loc 1 82 97 is_stmt 1 discriminator 19
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 82 97 is_stmt 0 discriminator 21
	cmp	w3, 44
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 82 79 is_stmt 1 discriminator 21
	cmp	w3, 0
	bne	L141
	.loc 1 82 111 discriminator 22
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L146
	.loc 1 82 111 is_stmt 0 discriminator 24
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L147
L146:
	.loc 1 82 111 discriminator 25
	mov	w1, 82
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L147:
	.loc 1 82 121 is_stmt 1 discriminator 26
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 82 121 is_stmt 0 discriminator 28
	cmp	w3, 91
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 82 103 is_stmt 1 discriminator 28
	cmp	w3, 0
	bne	L141
	.loc 1 82 135 discriminator 29
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L148
	.loc 1 82 135 is_stmt 0 discriminator 31
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L149
L148:
	.loc 1 82 135 discriminator 32
	mov	w1, 82
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L149:
	.loc 1 82 145 is_stmt 1 discriminator 33
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 82 145 is_stmt 0 discriminator 35
	cmp	w3, 123
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 82 127 is_stmt 1 discriminator 35
	cmp	w3, 0
	beq	L138
L141:
	.loc 1 83 21
	ldr	w4, [x29, 92]
	mov	w3, 2147483647
	cmp	w4, w3
	bne	L150
	.loc 1 83 14 discriminator 1
	mov	w1, 83
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L150:
	.loc 1 83 14 is_stmt 0 discriminator 2
	ldr	w3, [x29, 92]
	add	w3, w3, 1
	str	w3, [x29, 92]
	.loc 1 84 15 is_stmt 1
	b	L151
L138:
	.loc 1 86 15
	ldr	w3, [x29, 92]
	str	w3, [x29, 88]
L168:
	.loc 1 87 7
	ldr	w3, [x29, 88]
	cmp	w0, w3
	blt	L152
	.loc 1 87 43 discriminator 1
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L153
	.loc 1 87 43 is_stmt 0 discriminator 3
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L154
L153:
	.loc 1 87 43 discriminator 4
	mov	w1, 87
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L154:
	.loc 1 87 57 is_stmt 1 discriminator 5
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 87 57 is_stmt 0 discriminator 7
	cmp	w3, 45
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 87 33 is_stmt 1 discriminator 7
	cmp	w3, 0
	bne	L155
	.loc 1 87 71 discriminator 8
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L156
	.loc 1 87 71 is_stmt 0 discriminator 10
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L157
L156:
	.loc 1 87 71 discriminator 11
	mov	w1, 87
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L157:
	.loc 1 87 85 is_stmt 1 discriminator 12
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 87 85 is_stmt 0 discriminator 14
	cmp	w3, 46
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 87 63 is_stmt 1 discriminator 14
	cmp	w3, 0
	bne	L155
	.loc 1 87 100 discriminator 15
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L158
	.loc 1 87 100 is_stmt 0 discriminator 17
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L159
L158:
	.loc 1 87 100 discriminator 18
	mov	w1, 87
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L159:
	.loc 1 87 114 is_stmt 1 discriminator 19
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 87 114 is_stmt 0 discriminator 21
	and	w3, w3, 255
	cmp	w3, 47
	cset	w3, hi
	and	w3, w3, 255
	.loc 1 87 91 is_stmt 1 discriminator 21
	cmp	w3, 0
	beq	L160
	.loc 1 87 130 discriminator 22
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L161
	.loc 1 87 130 is_stmt 0 discriminator 25
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L162
L161:
	.loc 1 87 130 discriminator 26
	mov	w1, 87
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L162:
	.loc 1 87 144 is_stmt 1 discriminator 27
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 87 144 is_stmt 0 discriminator 29
	and	w3, w3, 255
	cmp	w3, 57
	cset	w3, ls
	and	w3, w3, 255
	.loc 1 87 121 is_stmt 1 discriminator 29
	cmp	w3, 0
	bne	L155
L160:
	.loc 1 87 160 discriminator 30
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L163
	.loc 1 87 160 is_stmt 0 discriminator 32
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L164
L163:
	.loc 1 87 160 discriminator 33
	mov	w1, 87
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L164:
	.loc 1 87 174 is_stmt 1 discriminator 34
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 87 174 is_stmt 0 discriminator 36
	cmp	w3, 101
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 87 152 is_stmt 1 discriminator 36
	cmp	w3, 0
	bne	L155
	.loc 1 87 188 discriminator 37
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L165
	.loc 1 87 188 is_stmt 0 discriminator 39
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L166
L165:
	.loc 1 87 188 discriminator 40
	mov	w1, 87
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L166:
	.loc 1 87 202 is_stmt 1 discriminator 41
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 87 202 is_stmt 0 discriminator 43
	cmp	w3, 69
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 87 180 is_stmt 1 discriminator 43
	cmp	w3, 0
	beq	L152
L155:
	.loc 1 88 29
	ldr	w4, [x29, 88]
	mov	w3, 2147483647
	cmp	w4, w3
	bne	L167
	.loc 1 88 18 discriminator 1
	mov	w1, 88
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L167:
	.loc 1 88 18 is_stmt 0 discriminator 2
	ldr	w3, [x29, 88]
	add	w3, w3, 1
	str	w3, [x29, 88]
	.loc 1 89 15 is_stmt 1
	b	L168
L152:
	.loc 1 91 7
	ldr	w4, [x29, 88]
	ldr	w3, [x29, 92]
	cmp	w4, w3
	ble	L169
	.loc 1 92 35
	ldr	w3, [x29, 92]
	.loc 1 92 50
	ldr	w4, [x29, 88]
	sub	w4, w4, #1
	.loc 1 92 39
	cmp	w4, w3
	blt	L170
	.loc 1 92 39 is_stmt 0 discriminator 1
	cmp	w1, w3
	bgt	L171
	.loc 1 92 39 discriminator 4
	cmp	w0, w4
	bge	L170
L171:
	.loc 1 92 39 discriminator 5
	mov	w1, 92
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L170:
	.loc 1 92 30 is_stmt 1 discriminator 6
	cmp	w4, w3
	.loc 1 92 30 is_stmt 0 discriminator 11
	cmp	w4, w3
	blt	L175
	.loc 1 92 30 discriminator 12
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
L175:
	.loc 1 92 30 discriminator 15
	cmp	w4, w3
	.loc 1 92 22 is_stmt 1 discriminator 19
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
LEHE17:
	fmov	s15, s0
	.loc 1 92 10
	b	L178
L169:
	.loc 1 94 10
	ldr	s15, [x29, 40]
L178:
LBE20:
	.loc 1 99 8
	fmov	s31, s15
	b	L182
L181:
	.loc 1 97 7
	cmp	x1, 1
	beq	L180
LEHB18:
	bl	__Unwind_Resume
L180:
LBB21:
	.loc 1 97 7 is_stmt 0 discriminator 1
	str	x0, [x29, 80]
	.loc 1 97 7 discriminator 2
	ldr	x0, [x29, 80]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 72]
	.loc 1 98 10 is_stmt 1
	ldr	s15, [x29, 40]
	.loc 1 97 7
	mov	x2, 0
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 80]
	bl	___gnat_end_handler_v1
	b	L178
L182:
LBE21:
	.loc 1 99 8
	fmov	s0, s31
	ldr	d15, [sp, 16]
LEHE18:
	ldp	x29, x30, [sp], 96
LCFI17:
	ret
LFE6:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
	.align	2
LLSDA6:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT6-LLSDATTD6
LLSDATTD6:
	.byte	0x1
	.uleb128 LLSDACSE6-LLSDACSB6
LLSDACSB6:
	.uleb128 LEHB16-LFB6
	.uleb128 LEHE16-LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB17-LFB6
	.uleb128 LEHE17-LEHB17
	.uleb128 L181-LFB6
	.uleb128 0x1
	.uleb128 LEHB18-LFB6
	.uleb128 LEHE18-LEHB18
	.uleb128 0
	.uleb128 0
LLSDACSE6:
	.byte	0x1
	.byte	0
	.align	2
L_got_pcr4:
	.long	___gnat_others_value@GOT-L_got_pcr4
LLSDATT6:
	.text
	.align	2
_smc_files__parse_int_after:
LFB7:
	.loc 1 105 4
	stp	x29, x30, [sp, -96]!
LCFI18:
	mov	x29, sp
LCFI19:
LEHB19:
LEHE19:
	str	x19, [sp, 16]
LCFI20:
	stp	x0, x1, [x29, 48]
	str	w2, [x29, 44]
	str	w3, [x29, 40]
	.loc 1 105 4
	ldr	x0, [x29, 56]
	ldr	w1, [x0]
	ldr	x0, [x29, 56]
	ldr	w0, [x0, 4]
LBB22:
	sxtw	x2, w1
	cmp	w0, w1
	.loc 1 105 4 is_stmt 0 discriminator 4
	cmp	w0, w1
	blt	L187
	.loc 1 105 4 discriminator 5
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
L187:
	.loc 1 105 4 discriminator 8
	cmp	w0, w1
	.loc 1 106 7 is_stmt 1
	ldr	w3, [x29, 44]
	str	w3, [x29, 92]
L203:
	.loc 1 109 7
	ldr	w3, [x29, 92]
	cmp	w0, w3
	blt	L190
	.loc 1 109 39 discriminator 1
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L191
	.loc 1 109 39 is_stmt 0 discriminator 3
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L192
L191:
	.loc 1 109 39 discriminator 4
	mov	w1, 109
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
LEHB20:
	bl	___gnat_rcheck_CE_Index_Check
L192:
	.loc 1 109 49 is_stmt 1 discriminator 5
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 109 49 is_stmt 0 discriminator 7
	cmp	w3, 32
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 109 29 is_stmt 1 discriminator 7
	cmp	w3, 0
	bne	L193
	.loc 1 109 63 discriminator 8
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L194
	.loc 1 109 63 is_stmt 0 discriminator 10
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L195
L194:
	.loc 1 109 63 discriminator 11
	mov	w1, 109
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L195:
	.loc 1 109 73 is_stmt 1 discriminator 12
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 109 73 is_stmt 0 discriminator 14
	cmp	w3, 58
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 109 55 is_stmt 1 discriminator 14
	cmp	w3, 0
	bne	L193
	.loc 1 109 87 discriminator 15
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L196
	.loc 1 109 87 is_stmt 0 discriminator 17
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L197
L196:
	.loc 1 109 87 discriminator 18
	mov	w1, 109
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L197:
	.loc 1 109 97 is_stmt 1 discriminator 19
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 109 97 is_stmt 0 discriminator 21
	cmp	w3, 44
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 109 79 is_stmt 1 discriminator 21
	cmp	w3, 0
	bne	L193
	.loc 1 109 111 discriminator 22
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L198
	.loc 1 109 111 is_stmt 0 discriminator 24
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L199
L198:
	.loc 1 109 111 discriminator 25
	mov	w1, 109
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L199:
	.loc 1 109 121 is_stmt 1 discriminator 26
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 109 121 is_stmt 0 discriminator 28
	cmp	w3, 91
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 109 103 is_stmt 1 discriminator 28
	cmp	w3, 0
	bne	L193
	.loc 1 109 135 discriminator 29
	ldr	w3, [x29, 92]
	cmp	w1, w3
	bgt	L200
	.loc 1 109 135 is_stmt 0 discriminator 31
	ldr	w3, [x29, 92]
	cmp	w0, w3
	bge	L201
L200:
	.loc 1 109 135 discriminator 32
	mov	w1, 109
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L201:
	.loc 1 109 145 is_stmt 1 discriminator 33
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 92]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 109 145 is_stmt 0 discriminator 35
	cmp	w3, 123
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 109 127 is_stmt 1 discriminator 35
	cmp	w3, 0
	beq	L190
L193:
	.loc 1 110 21
	ldr	w4, [x29, 92]
	mov	w3, 2147483647
	cmp	w4, w3
	bne	L202
	.loc 1 110 14 discriminator 1
	mov	w1, 110
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L202:
	.loc 1 110 14 is_stmt 0 discriminator 2
	ldr	w3, [x29, 92]
	add	w3, w3, 1
	str	w3, [x29, 92]
	.loc 1 111 15 is_stmt 1
	b	L203
L190:
	.loc 1 113 15
	ldr	w3, [x29, 92]
	str	w3, [x29, 88]
L213:
	.loc 1 114 7
	ldr	w3, [x29, 88]
	cmp	w0, w3
	blt	L204
	.loc 1 114 43 discriminator 1
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L205
	.loc 1 114 43 is_stmt 0 discriminator 3
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L206
L205:
	.loc 1 114 43 discriminator 4
	mov	w1, 114
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L206:
	.loc 1 114 57 is_stmt 1 discriminator 5
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 114 57 is_stmt 0 discriminator 7
	cmp	w3, 45
	cset	w3, eq
	and	w3, w3, 255
	.loc 1 114 33 is_stmt 1 discriminator 7
	cmp	w3, 0
	bne	L207
	.loc 1 114 72 discriminator 8
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L208
	.loc 1 114 72 is_stmt 0 discriminator 10
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L209
L208:
	.loc 1 114 72 discriminator 11
	mov	w1, 114
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L209:
	.loc 1 114 86 is_stmt 1 discriminator 12
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 114 86 is_stmt 0 discriminator 14
	and	w3, w3, 255
	cmp	w3, 47
	cset	w3, hi
	and	w3, w3, 255
	.loc 1 114 63 is_stmt 1 discriminator 14
	cmp	w3, 0
	beq	L204
	.loc 1 114 102 discriminator 15
	ldr	w3, [x29, 88]
	cmp	w1, w3
	bgt	L210
	.loc 1 114 102 is_stmt 0 discriminator 17
	ldr	w3, [x29, 88]
	cmp	w0, w3
	bge	L211
L210:
	.loc 1 114 102 discriminator 18
	mov	w1, 114
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L211:
	.loc 1 114 116 is_stmt 1 discriminator 19
	ldr	x4, [x29, 48]
	ldrsw	x3, [x29, 88]
	sub	x3, x3, x2
	ldrsb	w3, [x4, x3]
	.loc 1 114 116 is_stmt 0 discriminator 21
	and	w3, w3, 255
	cmp	w3, 57
	cset	w3, ls
	and	w3, w3, 255
	.loc 1 114 93 is_stmt 1 discriminator 21
	cmp	w3, 0
	beq	L204
L207:
	.loc 1 115 29
	ldr	w4, [x29, 88]
	mov	w3, 2147483647
	cmp	w4, w3
	bne	L212
	.loc 1 115 18 discriminator 1
	mov	w1, 115
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L212:
	.loc 1 115 18 is_stmt 0 discriminator 2
	ldr	w3, [x29, 88]
	add	w3, w3, 1
	str	w3, [x29, 88]
	.loc 1 116 15 is_stmt 1
	b	L213
L204:
	.loc 1 118 7
	ldr	w4, [x29, 88]
	ldr	w3, [x29, 92]
	cmp	w4, w3
	ble	L214
	.loc 1 119 37
	ldr	w3, [x29, 92]
	.loc 1 119 52
	ldr	w4, [x29, 88]
	sub	w4, w4, #1
	.loc 1 119 41
	cmp	w4, w3
	blt	L215
	.loc 1 119 41 is_stmt 0 discriminator 1
	cmp	w1, w3
	bgt	L216
	.loc 1 119 41 discriminator 4
	cmp	w0, w4
	bge	L215
L216:
	.loc 1 119 41 discriminator 5
	mov	w1, 119
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L215:
	.loc 1 119 32 is_stmt 1 discriminator 6
	cmp	w4, w3
	.loc 1 119 32 is_stmt 0 discriminator 11
	cmp	w4, w3
	blt	L220
	.loc 1 119 32 discriminator 12
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
L220:
	.loc 1 119 32 discriminator 15
	cmp	w4, w3
	.loc 1 119 24 is_stmt 1 discriminator 19
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
LEHE20:
	mov	w19, w0
	.loc 1 119 10
	b	L223
L214:
	.loc 1 121 10
	ldr	w19, [x29, 40]
L223:
LBE22:
	.loc 1 126 8
	mov	w0, w19
	b	L227
L226:
	.loc 1 124 7
	cmp	x1, 1
	beq	L225
LEHB21:
	bl	__Unwind_Resume
L225:
LBB23:
	.loc 1 124 7 is_stmt 0 discriminator 1
	str	x0, [x29, 80]
	.loc 1 124 7 discriminator 2
	ldr	x0, [x29, 80]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 72]
	.loc 1 125 10 is_stmt 1
	ldr	w19, [x29, 40]
	.loc 1 124 7
	mov	x2, 0
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 80]
	bl	___gnat_end_handler_v1
	b	L223
L227:
LBE23:
	.loc 1 126 8
	ldr	x19, [sp, 16]
LEHE21:
	ldp	x29, x30, [sp], 96
LCFI21:
	ret
LFE7:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
	.align	2
LLSDA7:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT7-LLSDATTD7
LLSDATTD7:
	.byte	0x1
	.uleb128 LLSDACSE7-LLSDACSB7
LLSDACSB7:
	.uleb128 LEHB19-LFB7
	.uleb128 LEHE19-LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB20-LFB7
	.uleb128 LEHE20-LEHB20
	.uleb128 L226-LFB7
	.uleb128 0x1
	.uleb128 LEHB21-LFB7
	.uleb128 LEHE21-LEHB21
	.uleb128 0
	.uleb128 0
LLSDACSE7:
	.byte	0x1
	.byte	0
	.align	2
L_got_pcr5:
	.long	___gnat_others_value@GOT-L_got_pcr5
LLSDATT7:
	.text
	.align	2
_smc_files__get_unix_time:
LFB8:
	.loc 1 132 4
	stp	x29, x30, [sp, -32]!
LCFI22:
	mov	x29, sp
LCFI23:
	.loc 1 134 32
	mov	x3, 0
	mov	w2, 1
	mov	w1, 1
	mov	w0, 1970
	bl	_ada__calendar__time_of
	.loc 1 134 32 is_stmt 0 discriminator 1
	str	x0, [x29, 24]
	.loc 1 136 34 is_stmt 1
	bl	_ada__calendar__clock
	.loc 1 136 34 is_stmt 0 discriminator 1
	ldr	x1, [x29, 24]
	bl	_ada__calendar__Osubtract__2
	mov	x3, x0
	.loc 1 136 7 is_stmt 1 discriminator 2
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
	bcc	L229
	mov	x1, 51712
	movk	x1, 0x3b9a, lsl 16
	eor	x1, x3, x1
	asr	x1, x1, 63
	eor	x3, x1, 1
	sub	x3, x3, x1
	add	x2, x2, x3
L229:
	mov	x0, x2
	.loc 1 137 8
	ldp	x29, x30, [sp], 32
LCFI24:
	ret
LFE8:
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
LFB9:
	.loc 1 143 4
	sub	sp, sp, #544
LCFI25:
	sub	sp, sp, #65536
LCFI26:
	stp	x29, x30, [sp]
LCFI27:
	mov	x29, sp
LCFI28:
	stp	x20, x21, [sp, 16]
	stp	x22, x23, [sp, 32]
	stp	x24, x25, [sp, 48]
	stp	x26, x27, [sp, 64]
LCFI29:
LBB24:
	.loc 1 149 7
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 188]
	.loc 1 149 11
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 184]
	.loc 1 149 15
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 180]
	.loc 1 151 9
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 100]
	.loc 1 151 17
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 96]
	.loc 1 151 25
	add	x0, x29, 65536
	add	x0, x0, 352
	str	wzr, [x0, 92]
	.loc 1 151 39
	add	x0, x29, 65536
	add	x0, x0, 352
	strb	wzr, [x0, 91]
LBB25:
	.loc 1 152 7
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
	.loc 1 152 7 is_stmt 0 discriminator 2
	mov	w0, w1
	add	x2, x29, 65536
	add	x2, x2, 352
	str	w0, [x2, 176]
	ubfx	x0, x1, 32, 8
	add	x1, x29, 65536
	add	x1, x1, 352
	strb	w0, [x1, 175]
LBE25:
	.loc 1 153 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldrb	w0, [x0, 175]
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 153 7
	cmp	w0, 0
	bne	L307
	.loc 1 157 35
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w2, [x0, 176]
	.loc 1 157 32
	cmp	w2, 0
	ble	L234
	.loc 1 157 32 is_stmt 0 discriminator 1
	cmp	w2, 65536
	ble	L234
	.loc 1 157 32 discriminator 3
	mov	w1, 157
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L234:
	.loc 1 157 21 is_stmt 1 discriminator 4
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
LBB26:
	.loc 1 157 14 discriminator 4
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
	.loc 1 157 14 is_stmt 0 discriminator 7
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 168]
LBE26:
	.loc 1 158 7 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 168]
	cmp	w0, 0
	ble	L308
	.loc 1 159 38
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w2, [x0, 168]
	.loc 1 159 45
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w3, [x0, 176]
	.loc 1 159 42
	cmp	w3, w2
	blt	L236
	.loc 1 159 42 is_stmt 0 discriminator 1
	cmp	w2, 0
	ble	L237
	.loc 1 159 42 discriminator 4
	cmp	w3, 65536
	ble	L236
L237:
	.loc 1 159 42 discriminator 5
	mov	w1, 159
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L236:
	.loc 1 159 29 is_stmt 1 discriminator 6
	cmp	w3, w2
	.loc 1 159 29 is_stmt 0 discriminator 11
	cmp	w3, w2
	blt	L241
	.loc 1 159 29 discriminator 12
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
L241:
	.loc 1 159 29 discriminator 15
	cmp	w3, w2
LBB27:
	.loc 1 159 22 is_stmt 1 discriminator 19
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
	.loc 1 159 22 is_stmt 0 discriminator 21
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 164]
LBE27:
	.loc 1 160 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	cmp	w0, 0
	ble	L244
	.loc 1 161 52
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w2, [x0, 176]
	.loc 1 161 49
	cmp	w2, 0
	ble	L245
	.loc 1 161 49 is_stmt 0 discriminator 1
	cmp	w2, 65536
	ble	L245
	.loc 1 161 49 discriminator 3
	mov	w1, 161
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L245:
	.loc 1 161 38 is_stmt 1 discriminator 4
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
	.loc 1 161 19 discriminator 4
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
	.loc 1 161 76 discriminator 4
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
	.loc 1 161 76 is_stmt 0 discriminator 6
	mov	w0, w2
	cmp	w0, 0
	beq	L248
	.loc 1 161 76 discriminator 7
	mov	w1, 161
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L248:
	.loc 1 161 76 discriminator 8
	mov	w0, w1
	sub	w1, w0, #1
	.loc 1 161 19 is_stmt 1 discriminator 11
	mov	w0, 2147483644
	cmp	w1, w0
	blt	L249
	.loc 1 161 19 is_stmt 0 discriminator 12
	mov	w1, 161
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L249:
	.loc 1 161 19 discriminator 13
	add	w0, w1, 4
	.loc 1 161 19 discriminator 16
	movi	v0.2s, #0
	mov	w2, w0
	ldp	x0, x1, [x29, 144]
	bl	_smc_files__parse_float_after
	fmov	s31, s0
	.loc 1 161 19 discriminator 18
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 188]
L244:
	.loc 1 164 38 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w3, [x0, 168]
	.loc 1 164 45
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w2, [x0, 176]
	.loc 1 164 42
	cmp	w2, w3
	blt	L250
	.loc 1 164 42 is_stmt 0 discriminator 1
	cmp	w3, 0
	ble	L251
	.loc 1 164 42 discriminator 4
	cmp	w2, 65536
	ble	L250
L251:
	.loc 1 164 42 discriminator 5
	mov	w1, 164
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L250:
	.loc 1 164 29 is_stmt 1 discriminator 6
	cmp	w2, w3
	.loc 1 164 29 is_stmt 0 discriminator 11
	cmp	w2, w3
	blt	L255
	.loc 1 164 29 discriminator 12
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
L255:
	.loc 1 164 29 discriminator 15
	cmp	w2, w3
LBB28:
	.loc 1 164 22 is_stmt 1 discriminator 19
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
	.loc 1 164 22 is_stmt 0 discriminator 21
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 164]
LBE28:
	.loc 1 165 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	cmp	w0, 0
	ble	L258
	.loc 1 166 52
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 176]
	.loc 1 166 49
	cmp	w0, 0
	ble	L259
	.loc 1 166 49 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L259
	.loc 1 166 49 discriminator 3
	mov	w1, 166
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L259:
	.loc 1 166 38 is_stmt 1 discriminator 4
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
	.loc 1 166 19 discriminator 4
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
	.loc 1 166 76 discriminator 4
	mov	w2, 0
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w1, [x0, 168]
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	adds	w0, w1, w0
	bvc	L260
	mov	w2, 1
L260:
	mov	w1, w0
	.loc 1 166 76 is_stmt 0 discriminator 6
	mov	w0, w2
	cmp	w0, 0
	beq	L262
	.loc 1 166 76 discriminator 7
	mov	w1, 166
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L262:
	.loc 1 166 76 discriminator 8
	mov	w0, w1
	sub	w0, w0, #1
	.loc 1 166 19 is_stmt 1 discriminator 11
	mov	w1, 2147483644
	cmp	w0, w1
	blt	L263
	.loc 1 166 19 is_stmt 0 discriminator 12
	mov	w1, 166
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L263:
	.loc 1 166 19 discriminator 13
	add	w0, w0, 4
	.loc 1 166 19 discriminator 16
	movi	v0.2s, #0
	mov	w2, w0
	ldp	x0, x1, [x29, 192]
	bl	_smc_files__parse_float_after
	fmov	s31, s0
	.loc 1 166 19 discriminator 18
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 184]
L258:
	.loc 1 169 38 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 168]
	.loc 1 169 45
	add	x1, x29, 65536
	add	x1, x1, 352
	ldr	w1, [x1, 176]
	.loc 1 169 42
	cmp	w1, w0
	blt	L264
	.loc 1 169 42 is_stmt 0 discriminator 1
	cmp	w0, 0
	ble	L265
	.loc 1 169 42 discriminator 4
	cmp	w1, 65536
	ble	L264
L265:
	.loc 1 169 42 discriminator 5
	mov	w1, 169
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L264:
	.loc 1 169 29 is_stmt 1 discriminator 6
	cmp	w1, w0
	.loc 1 169 29 is_stmt 0 discriminator 11
	cmp	w1, w0
	blt	L269
	.loc 1 169 29 discriminator 12
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
L269:
	.loc 1 169 29 discriminator 15
	cmp	w1, w0
LBB29:
	.loc 1 169 22 is_stmt 1 discriminator 19
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
	.loc 1 169 22 is_stmt 0 discriminator 21
	add	x1, x29, 65536
	add	x1, x1, 352
	str	w0, [x1, 164]
LBE29:
	.loc 1 170 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	cmp	w0, 0
	ble	L272
	.loc 1 171 52
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 176]
	.loc 1 171 49
	cmp	w0, 0
	ble	L273
	.loc 1 171 49 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L273
	.loc 1 171 49 discriminator 3
	mov	w1, 171
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L273:
	.loc 1 171 38 is_stmt 1 discriminator 4
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
	.loc 1 171 19 discriminator 4
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
	.loc 1 171 76 discriminator 4
	mov	w2, 0
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w1, [x0, 168]
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	w0, [x0, 164]
	adds	w0, w1, w0
	bvc	L274
	mov	w2, 1
L274:
	mov	w1, w0
	.loc 1 171 76 is_stmt 0 discriminator 6
	mov	w0, w2
	cmp	w0, 0
	beq	L276
	.loc 1 171 76 discriminator 7
	mov	w1, 171
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L276:
	.loc 1 171 76 discriminator 8
	mov	w0, w1
	sub	w0, w0, #1
	.loc 1 171 19 is_stmt 1 discriminator 11
	mov	w1, 2147483644
	cmp	w0, w1
	blt	L277
	.loc 1 171 19 is_stmt 0 discriminator 12
	mov	w1, 171
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L277:
	.loc 1 171 19 discriminator 13
	add	w0, w0, 4
	.loc 1 171 19 discriminator 16
	movi	v0.2s, #0
	mov	w2, w0
	ldp	x0, x1, [x29, 240]
	bl	_smc_files__parse_float_after
	fmov	s31, s0
	.loc 1 171 19 discriminator 18
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 180]
L272:
	.loc 1 174 27 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 188]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0xcf, lsl 24
	fcmp	s30, s31
	blt	L278
	.loc 1 174 27 is_stmt 0 discriminator 2
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 188]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0x4f, lsl 24
	fcmp	s30, s31
	bpl	L278
	b	L301
L278:
	.loc 1 174 27 discriminator 3
	mov	w1, 174
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L301:
	.loc 1 174 27 discriminator 4
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 188]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s31, s31, s30
	.loc 1 174 15 is_stmt 1 discriminator 4
	fcmpe	s31, #0.0
	bge	L298
	b	L302
L298:
	.loc 1 174 27 discriminator 6
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 188]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 174 15 discriminator 6
	mvni	v31.2s, 0xc1, lsl 24
	fadd	s31, s30, s31
	fcvtzs	s31, s31
	b	L283
L302:
	.loc 1 174 27 discriminator 7
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 188]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 174 15 discriminator 7
	mvni	v31.2s, 0xc1, lsl 24
	fsub	s31, s30, s31
	fcvtzs	s31, s31
L283:
	.loc 1 174 12 discriminator 9
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 100]
	.loc 1 175 27
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 184]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0xcf, lsl 24
	fcmp	s30, s31
	blt	L284
	.loc 1 175 27 is_stmt 0 discriminator 2
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 184]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0x4f, lsl 24
	fcmp	s30, s31
	bpl	L284
	b	L303
L284:
	.loc 1 175 27 discriminator 3
	mov	w1, 175
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L303:
	.loc 1 175 27 discriminator 4
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 184]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s31, s31, s30
	.loc 1 175 15 is_stmt 1 discriminator 4
	fcmpe	s31, #0.0
	bge	L299
	b	L304
L299:
	.loc 1 175 27 discriminator 6
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 184]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 175 15 discriminator 6
	mvni	v31.2s, 0xc1, lsl 24
	fadd	s31, s30, s31
	fcvtzs	s31, s31
	b	L289
L304:
	.loc 1 175 27 discriminator 7
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 184]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 175 15 discriminator 7
	mvni	v31.2s, 0xc1, lsl 24
	fsub	s31, s30, s31
	fcvtzs	s31, s31
L289:
	.loc 1 175 12 discriminator 9
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 96]
	.loc 1 176 27
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 180]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0xcf, lsl 24
	fcmp	s30, s31
	blt	L290
	.loc 1 176 27 is_stmt 0 discriminator 2
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 180]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	movi	v31.2s, 0x4f, lsl 24
	fcmp	s30, s31
	bpl	L290
	b	L305
L290:
	.loc 1 176 27 discriminator 3
	mov	w1, 176
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L305:
	.loc 1 176 27 discriminator 4
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 180]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s31, s31, s30
	.loc 1 176 15 is_stmt 1 discriminator 4
	fcmpe	s31, #0.0
	bge	L300
	b	L306
L300:
	.loc 1 176 27 discriminator 6
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 180]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 176 15 discriminator 6
	mvni	v31.2s, 0xc1, lsl 24
	fadd	s31, s30, s31
	fcvtzs	s31, s31
	b	L295
L306:
	.loc 1 176 27 discriminator 7
	add	x0, x29, 65536
	add	x0, x0, 352
	ldr	s31, [x0, 180]
	mov	w0, 1120403456
	fmov	s30, w0
	fmul	s30, s31, s30
	.loc 1 176 15 discriminator 7
	mvni	v31.2s, 0xc1, lsl 24
	fsub	s31, s30, s31
	fcvtzs	s31, s31
L295:
	.loc 1 176 12 discriminator 9
	add	x0, x29, 65536
	add	x0, x0, 352
	str	s31, [x0, 92]
	.loc 1 177 18
	mov	w0, 1
	add	x1, x29, 65536
	add	x1, x1, 352
	strb	w0, [x1, 91]
	.loc 1 179 8
	b	L308
L307:
	.loc 1 154 10
	nop
	b	L296
L308:
	.loc 1 179 8
	nop
L296:
LBE24:
	.loc 1 179 8 is_stmt 0 discriminator 1
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
	.loc 1 179 8 discriminator 3
	mov	x0, x22
	mov	x1, x23
	.loc 1 179 8
	ldp	x29, x30, [sp]
	ldp	x20, x21, [sp, 16]
	ldp	x22, x23, [sp, 32]
	ldp	x24, x25, [sp, 48]
	ldp	x26, x27, [sp, 64]
LCFI30:
	add	sp, sp, 544
LCFI31:
	add	sp, sp, 65536
LCFI32:
	ret
LFE9:
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
LFB10:
	.loc 1 185 4 is_stmt 1
	sub	sp, sp, #448
LCFI33:
	sub	sp, sp, #65536
LCFI34:
	stp	x29, x30, [sp]
LCFI35:
	mov	x29, sp
LCFI36:
	stp	x20, x21, [sp, 16]
	stp	x22, x23, [sp, 32]
	stp	x24, x25, [sp, 48]
	stp	x26, x27, [sp, 64]
LCFI37:
LBB30:
	.loc 1 191 7
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 164]
	.loc 1 191 11
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 172]
	.loc 1 191 15
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 168]
	.loc 1 193 16
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 84]
	.loc 1 193 31
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 80]
LBB31:
	.loc 1 194 7
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
	.loc 1 194 7 is_stmt 0 discriminator 2
	mov	w0, w1
	add	x2, x29, 65536
	add	x2, x2, 272
	str	w0, [x2, 160]
	ubfx	x0, x1, 32, 8
	add	x1, x29, 65536
	add	x1, x1, 272
	strb	w0, [x1, 159]
LBE31:
	.loc 1 195 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldrb	w0, [x0, 159]
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 195 7
	cmp	w0, 0
	bne	L363
	.loc 1 199 35
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w2, [x0, 160]
	.loc 1 199 32
	cmp	w2, 0
	ble	L312
	.loc 1 199 32 is_stmt 0 discriminator 1
	cmp	w2, 65536
	ble	L312
	.loc 1 199 32 discriminator 3
	mov	w1, 199
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L312:
	.loc 1 199 21 is_stmt 1 discriminator 4
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
LBB32:
	.loc 1 199 14 discriminator 4
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
	.loc 1 199 14 is_stmt 0 discriminator 7
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 152]
LBE32:
	.loc 1 200 7 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 152]
	cmp	w0, 0
	ble	L364
	.loc 1 201 21
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w1, [x0, 152]
	mov	w0, 65522
	movk	w0, 0x7fff, lsl 16
	cmp	w1, w0
	ble	L314
	.loc 1 201 14 discriminator 1
	mov	w1, 201
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L314:
	.loc 1 201 14 is_stmt 0 discriminator 2
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 152]
	add	w0, w0, 13
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 152]
	.loc 1 202 49 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w2, [x0, 160]
	.loc 1 202 46
	cmp	w2, 0
	ble	L315
	.loc 1 202 46 is_stmt 0 discriminator 1
	cmp	w2, 65536
	ble	L315
	.loc 1 202 46 discriminator 3
	mov	w1, 202
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L315:
	.loc 1 202 35 is_stmt 1 discriminator 4
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
	.loc 1 202 58 discriminator 4
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 152]
	cmp	w0, 0
	bgt	L316
	.loc 1 202 58 is_stmt 0 discriminator 6
	mov	w1, 202
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L316:
	.loc 1 202 16 is_stmt 1 discriminator 7
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
	.loc 1 202 16 is_stmt 0 discriminator 10
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 164]
	.loc 1 204 39 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w2, [x0, 152]
	.loc 1 204 46
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w3, [x0, 160]
	.loc 1 204 43
	cmp	w3, w2
	blt	L317
	.loc 1 204 43 is_stmt 0 discriminator 1
	cmp	w2, 0
	ble	L318
	.loc 1 204 43 discriminator 4
	cmp	w3, 65536
	ble	L317
L318:
	.loc 1 204 43 discriminator 5
	mov	w1, 204
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L317:
	.loc 1 204 30 is_stmt 1 discriminator 6
	cmp	w3, w2
	.loc 1 204 30 is_stmt 0 discriminator 11
	cmp	w3, w2
	blt	L322
	.loc 1 204 30 discriminator 12
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
L322:
	.loc 1 204 30 discriminator 15
	cmp	w3, w2
LBB33:
	.loc 1 204 23 is_stmt 1 discriminator 19
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
	.loc 1 204 23 is_stmt 0 discriminator 21
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 148]
LBE33:
	.loc 1 205 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 148]
	cmp	w0, 0
	ble	L325
	.loc 1 206 52
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 160]
	.loc 1 206 49
	cmp	w0, 0
	ble	L326
	.loc 1 206 49 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L326
	.loc 1 206 49 discriminator 3
	mov	w1, 206
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L326:
	.loc 1 206 38 is_stmt 1 discriminator 4
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
	.loc 1 206 65 discriminator 4
	mov	w3, 0
	add	x1, x29, 65536
	add	x1, x1, 272
	ldr	w2, [x1, 152]
	add	x1, x29, 65536
	add	x1, x1, 272
	ldr	w1, [x1, 148]
	adds	w1, w2, w1
	bvc	L327
	mov	w3, 1
L327:
	mov	w2, w1
	.loc 1 206 65 is_stmt 0 discriminator 6
	mov	w1, w3
	cmp	w1, 0
	beq	L329
	.loc 1 206 65 discriminator 7
	mov	w1, 206
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L329:
	.loc 1 206 65 discriminator 8
	mov	w1, w2
	.loc 1 206 65 discriminator 11
	cmp	w1, 0
	bgt	L330
	.loc 1 206 65 discriminator 12
	mov	w1, 206
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L330:
	.loc 1 206 19 is_stmt 1 discriminator 13
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
	.loc 1 206 19 is_stmt 0 discriminator 16
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 172]
	.loc 1 207 46 is_stmt 1
	mov	w2, 0
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w1, [x0, 152]
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 148]
	adds	w0, w1, w0
	bvc	L331
	mov	w2, 1
L331:
	mov	w1, w0
	.loc 1 207 46 is_stmt 0 discriminator 1
	mov	w0, w2
	cmp	w0, 0
	beq	L333
	.loc 1 207 46 discriminator 2
	mov	w1, 207
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L333:
	.loc 1 207 61 is_stmt 1 discriminator 6
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 160]
	.loc 1 207 58 discriminator 6
	cmp	w0, w1
	blt	L334
	.loc 1 207 58 is_stmt 0 discriminator 7
	cmp	w1, 0
	ble	L335
	.loc 1 207 58 discriminator 10
	cmp	w0, 65536
	ble	L334
L335:
	.loc 1 207 58 discriminator 11
	mov	w1, 207
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L334:
	.loc 1 207 33 is_stmt 1 discriminator 12
	cmp	w0, w1
	.loc 1 207 33 is_stmt 0 discriminator 17
	cmp	w0, w1
	blt	L339
	.loc 1 207 33 discriminator 18
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
L339:
	.loc 1 207 33 discriminator 21
	cmp	w0, w1
LBB34:
	.loc 1 207 26 is_stmt 1 discriminator 25
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
	.loc 1 207 26 is_stmt 0 discriminator 27
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 148]
LBE34:
	.loc 1 208 13 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 148]
	cmp	w0, 0
	ble	L325
	.loc 1 209 55
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	w0, [x0, 160]
	.loc 1 209 52
	cmp	w0, 0
	ble	L342
	.loc 1 209 52 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L342
	.loc 1 209 52 discriminator 3
	mov	w1, 209
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L342:
	.loc 1 209 41 is_stmt 1 discriminator 4
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
	.loc 1 209 68 discriminator 4
	mov	w3, 0
	add	x1, x29, 65536
	add	x1, x1, 272
	ldr	w2, [x1, 152]
	add	x1, x29, 65536
	add	x1, x1, 272
	ldr	w1, [x1, 148]
	adds	w1, w2, w1
	bvc	L343
	mov	w3, 1
L343:
	mov	w2, w1
	.loc 1 209 68 is_stmt 0 discriminator 6
	mov	w1, w3
	cmp	w1, 0
	beq	L345
	.loc 1 209 68 discriminator 7
	mov	w1, 209
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L345:
	.loc 1 209 68 discriminator 8
	mov	w1, w2
	.loc 1 209 68 discriminator 11
	cmp	w1, 0
	bgt	L346
	.loc 1 209 68 discriminator 12
	mov	w1, 209
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L346:
	.loc 1 209 22 is_stmt 1 discriminator 13
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
	.loc 1 209 22 is_stmt 0 discriminator 16
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 168]
L325:
	.loc 1 213 19 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 164]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 84]
	.loc 1 214 16
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 84]
	.loc 1 214 10
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s30, [x0, 172]
	fcmpe	s30, s31
	bgt	L357
	b	L347
L357:
	.loc 1 214 41 discriminator 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 172]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 84]
L347:
	.loc 1 215 16
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 84]
	.loc 1 215 10
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s30, [x0, 168]
	fcmpe	s30, s31
	bgt	L358
	b	L349
L358:
	.loc 1 215 41 discriminator 1
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 168]
	add	x0, x29, 65536
	add	x0, x0, 272
	str	s31, [x0, 84]
L349:
	.loc 1 217 22
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 84]
	.loc 1 217 10
	mov	w0, 1120403456
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L359
	b	L361
L359:
	.loc 1 218 20
	mov	w0, 2
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 80]
	.loc 1 225 8
	b	L364
L361:
	.loc 1 219 25
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	s31, [x0, 84]
	.loc 1 219 10
	mov	w0, 1112014848
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L360
	b	L362
L360:
	.loc 1 220 20
	mov	w0, 1
	add	x1, x29, 65536
	add	x1, x1, 272
	str	w0, [x1, 80]
	.loc 1 225 8
	b	L364
L362:
	.loc 1 222 20
	add	x0, x29, 65536
	add	x0, x0, 272
	str	wzr, [x0, 80]
	.loc 1 225 8
	b	L364
L363:
	.loc 1 196 10
	nop
	b	L355
L364:
	.loc 1 225 8
	nop
L355:
LBE30:
	.loc 1 225 8 is_stmt 0 discriminator 1
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
	.loc 1 225 8 discriminator 3
	add	x0, x29, 65536
	add	x0, x0, 272
	ldr	x0, [x0, 136]
	.loc 1 225 8
	ldp	x29, x30, [sp]
	ldp	x20, x21, [sp, 16]
	ldp	x22, x23, [sp, 32]
	ldp	x24, x25, [sp, 48]
	ldp	x26, x27, [sp, 64]
LCFI38:
	add	sp, sp, 448
LCFI39:
	add	sp, sp, 65536
LCFI40:
	ret
LFE10:
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
LFB11:
	.loc 1 231 4 is_stmt 1
	sub	sp, sp, #160
LCFI41:
	sub	sp, sp, #65536
LCFI42:
	stp	x29, x30, [sp]
LCFI43:
	mov	x29, sp
LCFI44:
	stp	x20, x21, [sp, 16]
	stp	x22, x23, [sp, 32]
	stp	x24, x25, [sp, 48]
	stp	x26, x27, [sp, 64]
LCFI45:
LBB35:
	.loc 1 238 7
	adrp	x4, _smc_files__earu_data_file@PAGE
	add	x0, x4, _smc_files__earu_data_file@PAGEOFF;
	adrp	x4, lC1@PAGE
	add	x1, x4, lC1@PAGEOFF;
	add	x4, x29, 128
	mov	x2, x4
	adrp	x4, lC2@PAGE
	add	x3, x4, lC2@PAGEOFF;
	bl	_smc_files__read_file_content
	.loc 1 238 7 is_stmt 0 discriminator 2
	mov	w1, w0
	add	x2, x29, 65536
	add	x2, x2, 48
	str	w1, [x2, 108]
	ubfx	x0, x0, 32, 8
	add	x1, x29, 65536
	add	x1, x1, 48
	strb	w0, [x1, 107]
LBE35:
	.loc 1 239 10 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 48
	ldrb	w0, [x0, 107]
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 239 7
	cmp	w0, 0
	beq	L366
	.loc 1 240 10
	mov	w0, 100
	b	L372
L366:
	.loc 1 243 35
	add	x0, x29, 65536
	add	x0, x0, 48
	ldr	w0, [x0, 108]
	.loc 1 243 32
	cmp	w0, 0
	ble	L368
	.loc 1 243 32 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L368
	.loc 1 243 32 discriminator 3
	mov	w1, 243
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L368:
	.loc 1 243 21 is_stmt 1 discriminator 4
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
LBB36:
	.loc 1 243 14 discriminator 4
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
	.loc 1 243 14 is_stmt 0 discriminator 7
	add	x1, x29, 65536
	add	x1, x1, 48
	str	w0, [x1, 100]
LBE36:
	.loc 1 244 7 is_stmt 1
	add	x0, x29, 65536
	add	x0, x0, 48
	ldr	w0, [x0, 100]
	cmp	w0, 0
	ble	L369
	.loc 1 245 48
	add	x0, x29, 65536
	add	x0, x0, 48
	ldr	w0, [x0, 108]
	.loc 1 245 45
	cmp	w0, 0
	ble	L370
	.loc 1 245 45 is_stmt 0 discriminator 1
	cmp	w0, 65536
	ble	L370
	.loc 1 245 45 discriminator 3
	mov	w1, 245
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L370:
	.loc 1 245 34 is_stmt 1 discriminator 4
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
	.loc 1 245 17 discriminator 4
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
	ble	L371
	.loc 1 245 17 is_stmt 0 discriminator 6
	mov	w1, 245
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L371:
	.loc 1 245 17 discriminator 7
	add	x0, x29, 65536
	add	x0, x0, 48
	ldr	w0, [x0, 100]
	add	w0, w0, 18
	.loc 1 245 17 discriminator 10
	mov	w3, 100
	mov	w2, w0
	ldp	x0, x1, [x29, 112]
	bl	_smc_files__parse_int_after
	.loc 1 245 10 is_stmt 1
	b	L372
L369:
	.loc 1 247 10
	mov	w0, 100
L372:
	.loc 1 249 8
	ldp	x29, x30, [sp]
	ldp	x20, x21, [sp, 16]
	ldp	x22, x23, [sp, 32]
	ldp	x24, x25, [sp, 48]
	ldp	x26, x27, [sp, 64]
LCFI46:
	add	sp, sp, 160
LCFI47:
	add	sp, sp, 65536
LCFI48:
	ret
LFE11:
	.const
	.align	2
lC7:
	.word	1
	.word	18
	.text
	.align	2
_smc_files__log_telemetry_csv__B_11__B153b___finalizer.2:
LFB13:
	stp	x29, x30, [sp, -32]!
LCFI49:
	mov	x29, sp
LCFI50:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI51:
	ret
LFE13:
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
LFB12:
	.loc 1 255 4
	sub	sp, sp, #2048
LCFI52:
	stp	x29, x30, [sp]
LCFI53:
	mov	x29, sp
LCFI54:
LEHB22:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI55:
	add	x7, x29, 1536
	stp	x0, x1, [x7, 176]
	add	x0, x29, 1536
	stp	x2, x3, [x0, 160]
	str	s0, [x29, 1692]
	str	s1, [x29, 1688]
	str	w4, [x29, 1684]
	str	s2, [x29, 1680]
	str	w5, [x29, 1676]
	str	w6, [x29, 1672]
	str	s3, [x29, 1668]
	str	s4, [x29, 1664]
	.loc 1 255 4
	add	x0, x29, 2048
	.loc 1 255 4 is_stmt 0 discriminator 1
	str	x0, [x29, 1888]
	ldr	x0, [x29, 1704]
	ldr	w3, [x0]
	ldr	x0, [x29, 1704]
	ldr	w2, [x0, 4]
	cmp	w2, w3
	blt	L376
	.loc 1 255 4 discriminator 2
	sub	w0, w2, w3
	add	w0, w0, 1
	str	w0, [x29, 1384]
	b	L377
L376:
	.loc 1 255 4 discriminator 3
	str	wzr, [x29, 1384]
L377:
	.loc 1 255 4 discriminator 5
	ldr	x0, [x29, 1720]
	ldr	w1, [x0]
	str	w1, [x29, 1388]
	ldr	x0, [x29, 1720]
	ldr	w4, [x0, 4]
	mov	w0, w1
	cmp	w4, w0
	blt	L378
	.loc 1 255 4 discriminator 6
	mov	w0, w1
	sub	w0, w4, w0
	add	w27, w0, 1
	b	L379
L378:
	.loc 1 255 4 discriminator 7
	mov	w27, 0
L379:
LBB37:
	.loc 1 255 4 discriminator 9
	cmp	w2, w3
	.loc 1 255 4 discriminator 13
	cmp	w2, w3
	blt	L383
	.loc 1 255 4 discriminator 14
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
L383:
	.loc 1 255 4 discriminator 17
	cmp	w2, w3
	.loc 1 255 4 discriminator 21
	ldr	w0, [x29, 1388]
	cmp	w4, w0
	.loc 1 255 4 discriminator 25
	cmp	w4, w0
	blt	L389
	.loc 1 255 4 discriminator 26
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
L389:
	.loc 1 255 4 discriminator 29
	ldr	w0, [x29, 1388]
	cmp	w4, w0
	.loc 1 270 7 is_stmt 1
	str	xzr, [x29, 1856]
	.loc 1 271 7
	strb	wzr, [x29, 2047]
	.loc 1 274 7
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x16, x0, _smc_files__telemetry_csv@PAGEOFF;
	adrp	x0, lC8@PAGE
	add	x17, x0, lC8@PAGEOFF;
	mov	x0, x16
	mov	x1, x17
	bl	_smc_files__ensure_directory_exists
LEHE22:
LBB38:
	.loc 1 277 13
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x0, x0, _smc_files__telemetry_csv@PAGEOFF;
	str	x0, [x29, 128]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 136]
	ldp	x0, x1, [x29, 128]
LEHB23:
	bl	_ada__directories__exists
	.loc 1 277 10 discriminator 2
	cmp	w0, 0
	beq	L392
	.loc 1 278 25
	mov	w0, 1
	strb	w0, [x29, 2047]
	.loc 1 279 16
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x0, x0, _smc_files__telemetry_csv@PAGEOFF;
	str	x0, [x29, 144]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 152]
	ldp	x0, x1, [x29, 144]
	bl	_ada__directories__size
	mov	x1, x0
	.loc 1 279 13 discriminator 2
	mov	x0, 26176
	movk	x0, 0x103, lsl 16
	cmp	x1, x0
	ble	L392
LBB39:
	.loc 1 280 16
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x0, x0, _smc_files__telemetry_csv@PAGEOFF;
	str	x0, [x29, 160]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 168]
	adrp	x0, lC38@PAGE
	add	x0, x0, lC38@PAGEOFF;
	str	x0, [x29, 176]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 184]
	ldp	x2, x3, [x29, 176]
	ldp	x0, x1, [x29, 160]
	bl	_ada__directories__rename
LEHE23:
LBE39:
	.loc 1 281 28
	strb	wzr, [x29, 2047]
L392:
LBE38:
LBB40:
	.loc 1 290 10
	ldrb	w0, [x29, 2047]
	cmp	w0, 0
	beq	L393
LBB41:
	.loc 1 291 13
	ldr	x6, [x29, 1856]
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x0, x0, _smc_files__telemetry_csv@PAGEOFF;
	str	x0, [x29, 192]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 200]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 208]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 216]
	ldp	x4, x5, [x29, 208]
	ldp	x2, x3, [x29, 192]
	mov	w1, 3
	mov	x0, x6
LEHB24:
	bl	_ada__text_io__open
	.loc 1 291 13 is_stmt 0 discriminator 2
	str	x0, [x29, 1856]
LBE41:
	b	L394
L393:
LBB42:
	.loc 1 293 13 is_stmt 1
	ldr	x6, [x29, 1856]
	adrp	x0, _smc_files__telemetry_csv@PAGE
	add	x0, x0, _smc_files__telemetry_csv@PAGEOFF;
	str	x0, [x29, 224]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 232]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 240]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 248]
	ldp	x4, x5, [x29, 240]
	ldp	x2, x3, [x29, 224]
	mov	w1, 2
	mov	x0, x6
	bl	_ada__text_io__create
	.loc 1 293 13 is_stmt 0 discriminator 2
	str	x0, [x29, 1856]
LBE42:
LBB43:
	.loc 1 294 13 is_stmt 1
	ldr	x3, [x29, 1856]
	adrp	x0, lC39@PAGE
	add	x0, x0, lC39@PAGEOFF;
	str	x0, [x29, 256]
	adrp	x0, lC10@PAGE
	add	x0, x0, lC10@PAGEOFF;
	str	x0, [x29, 264]
	ldp	x1, x2, [x29, 256]
	mov	x0, x3
	bl	_ada__text_io__put_line
LEHE24:
L394:
LBE43:
LBB44:
	add	x0, x29, 1864
	mov	x8, x0
LEHB25:
	bl	_system__secondary_stack__ss_mark
	.loc 1 298 31
	add	x0, x29, 1840
	str	x0, [x29, 1440]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 1448]
	mov	w2, 6
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -96]
	ldr	s0, [x29, 1692]
	bl	_system__img_flt__impl__image_floating_point
	.loc 1 298 31 is_stmt 0 discriminator 2
	str	w0, [x29, 1440]
	ldr	w0, [x29, 1440]
	bic	w0, w0, w0, asr #31
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x2, x21, 3
	str	x2, [x29, 1656]
	ldr	x0, [x29, 1656]
	add	x0, x1, x0
	str	x0, [x29, 1656]
	lsl	x1, x20, 3
	str	x1, [x29, 1648]
	.loc 1 299 31 is_stmt 1
	add	x0, x29, 1824
	str	x0, [x29, 272]
	adrp	x0, lC11@PAGE
	add	x1, x0, lC11@PAGEOFF;
	str	x1, [x29, 280]
	mov	w2, 6
	ldp	x0, x1, [x29, 272]
	ldr	s0, [x29, 1688]
	bl	_system__img_flt__impl__image_floating_point
	mov	w28, w0
	.loc 1 299 31 is_stmt 0 discriminator 2
	bic	w0, w28, w28, asr #31
	sxtw	x0, w0
	mov	x22, x0
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x2, x23, 3
	str	x2, [x29, 1640]
	ldr	x0, [x29, 1640]
	add	x0, x1, x0
	str	x0, [x29, 1640]
	lsl	x1, x22, 3
	str	x1, [x29, 1632]
	.loc 1 300 33 is_stmt 1
	add	x0, x29, 1808
	str	x0, [x29, 288]
	adrp	x0, lC12@PAGE
	add	x1, x0, lC12@PAGEOFF;
	str	x1, [x29, 296]
	ldp	x1, x2, [x29, 288]
	ldr	w0, [x29, 1684]
	bl	_system__img_int__impl__image_integer
	mov	w26, w0
	.loc 1 300 33 is_stmt 0 discriminator 2
	bic	w0, w26, w26, asr #31
	sxtw	x0, w0
	mov	x24, x0
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x2, x25, 3
	str	x2, [x29, 1624]
	ldr	x0, [x29, 1624]
	add	x0, x1, x0
	str	x0, [x29, 1624]
	lsl	x1, x24, 3
	str	x1, [x29, 1616]
	.loc 1 301 31 is_stmt 1
	add	x0, x29, 1792
	str	x0, [x29, 304]
	adrp	x0, lC11@PAGE
	add	x1, x0, lC11@PAGEOFF;
	str	x1, [x29, 312]
	mov	w2, 6
	ldp	x0, x1, [x29, 304]
	ldr	s0, [x29, 1680]
	bl	_system__img_flt__impl__image_floating_point
	mov	w23, w0
	.loc 1 301 31 is_stmt 0 discriminator 2
	bic	w0, w23, w23, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1520]
	str	xzr, [x29, 1528]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -16]
	mov	x1, x2
	lsr	x1, x1, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 1608]
	ldr	x0, [x29, 1608]
	add	x0, x1, x0
	str	x0, [x29, 1608]
	mov	x1, x2
	lsl	x1, x1, 3
	str	x1, [x29, 1600]
	.loc 1 302 33 is_stmt 1
	add	x0, x29, 1776
	str	x0, [x29, 320]
	adrp	x0, lC12@PAGE
	add	x1, x0, lC12@PAGEOFF;
	str	x1, [x29, 328]
	ldp	x1, x2, [x29, 320]
	ldr	w0, [x29, 1676]
	bl	_system__img_int__impl__image_integer
	mov	w22, w0
	.loc 1 302 33 is_stmt 0 discriminator 2
	bic	w0, w22, w22, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1504]
	str	xzr, [x29, 1512]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -32]
	mov	x1, x2
	lsr	x1, x1, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 1592]
	ldr	x0, [x29, 1592]
	add	x0, x1, x0
	str	x0, [x29, 1592]
	mov	x1, x2
	lsl	x1, x1, 3
	str	x1, [x29, 1584]
	.loc 1 303 33 is_stmt 1
	add	x0, x29, 1760
	str	x0, [x29, 336]
	adrp	x0, lC12@PAGE
	add	x1, x0, lC12@PAGEOFF;
	str	x1, [x29, 344]
	ldp	x1, x2, [x29, 336]
	ldr	w0, [x29, 1672]
	bl	_system__img_int__impl__image_integer
	mov	w21, w0
	.loc 1 303 33 is_stmt 0 discriminator 2
	bic	w0, w21, w21, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1488]
	str	xzr, [x29, 1496]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -48]
	mov	x1, x2
	lsr	x1, x1, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 1576]
	ldr	x0, [x29, 1576]
	add	x0, x1, x0
	str	x0, [x29, 1576]
	mov	x1, x2
	lsl	x1, x1, 3
	str	x1, [x29, 1568]
	.loc 1 304 31 is_stmt 1
	add	x0, x29, 1744
	str	x0, [x29, 352]
	adrp	x0, lC11@PAGE
	add	x1, x0, lC11@PAGEOFF;
	str	x1, [x29, 360]
	mov	w2, 6
	ldp	x0, x1, [x29, 352]
	ldr	s0, [x29, 1668]
	bl	_system__img_flt__impl__image_floating_point
	mov	w20, w0
	.loc 1 304 31 is_stmt 0 discriminator 2
	bic	w0, w20, w20, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1472]
	str	xzr, [x29, 1480]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -64]
	mov	x1, x2
	lsr	x1, x1, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 1560]
	ldr	x0, [x29, 1560]
	add	x0, x1, x0
	str	x0, [x29, 1560]
	mov	x1, x2
	lsl	x1, x1, 3
	str	x1, [x29, 1552]
	.loc 1 305 31 is_stmt 1
	add	x0, x29, 1728
	str	x0, [x29, 368]
	adrp	x0, lC11@PAGE
	add	x1, x0, lC11@PAGEOFF;
	str	x1, [x29, 376]
	mov	w2, 6
	ldp	x0, x1, [x29, 368]
	ldr	s0, [x29, 1664]
	bl	_system__img_flt__impl__image_floating_point
	mov	w19, w0
	.loc 1 305 31 is_stmt 0 discriminator 2
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1456]
	str	xzr, [x29, 1464]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -80]
	mov	x1, x2
	lsr	x1, x1, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 1544]
	ldr	x0, [x29, 1544]
	add	x0, x1, x0
	str	x0, [x29, 1544]
	mov	x1, x2
	lsl	x1, x1, 3
	str	x1, [x29, 1536]
	.loc 1 298 20 is_stmt 1
	add	x0, x29, 1840
	str	x0, [x29, 928]
	mov	w0, 1
	str	w0, [x29, 1896]
	ldr	w0, [x29, 1440]
	str	w0, [x29, 1900]
	add	x0, x29, 1896
	str	x0, [x29, 936]
	mov	w2, 2
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -96]
	bl	_ada__strings__fixed__trim
	.loc 1 298 20 is_stmt 0 discriminator 4
	mov	x24, x0
	mov	x25, x1
	add	x0, x29, 1024
	stp	x24, x25, [x0, -96]
	.loc 1 299 20 is_stmt 1
	add	x0, x29, 1824
	str	x0, [x29, 384]
	mov	w0, 1
	str	w0, [x29, 1904]
	str	w28, [x29, 1908]
	add	x0, x29, 1904
	str	x0, [x29, 392]
	mov	w2, 2
	ldp	x0, x1, [x29, 384]
	bl	_ada__strings__fixed__trim
	.loc 1 299 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -32]
	.loc 1 300 20 is_stmt 1
	add	x0, x29, 1808
	str	x0, [x29, 400]
	mov	w0, 1
	str	w0, [x29, 1912]
	str	w26, [x29, 1916]
	add	x0, x29, 1912
	str	x0, [x29, 408]
	mov	w2, 2
	ldp	x0, x1, [x29, 400]
	bl	_ada__strings__fixed__trim
	.loc 1 300 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -48]
	.loc 1 301 20 is_stmt 1
	add	x0, x29, 1792
	str	x0, [x29, 416]
	mov	w0, 1
	str	w0, [x29, 1920]
	str	w23, [x29, 1924]
	add	x0, x29, 1920
	str	x0, [x29, 424]
	mov	w2, 2
	ldp	x0, x1, [x29, 416]
	bl	_ada__strings__fixed__trim
	.loc 1 301 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -64]
	.loc 1 302 20 is_stmt 1
	add	x0, x29, 1776
	str	x0, [x29, 432]
	mov	w0, 1
	str	w0, [x29, 1928]
	str	w22, [x29, 1932]
	add	x0, x29, 1928
	str	x0, [x29, 440]
	mov	w2, 2
	ldp	x0, x1, [x29, 432]
	bl	_ada__strings__fixed__trim
	.loc 1 302 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -80]
	.loc 1 303 20 is_stmt 1
	add	x0, x29, 1760
	str	x0, [x29, 448]
	mov	w0, 1
	str	w0, [x29, 1936]
	str	w21, [x29, 1940]
	add	x0, x29, 1936
	str	x0, [x29, 456]
	mov	w2, 2
	ldp	x0, x1, [x29, 448]
	bl	_ada__strings__fixed__trim
	.loc 1 303 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -96]
	.loc 1 304 20 is_stmt 1
	add	x0, x29, 1744
	str	x0, [x29, 1424]
	mov	w0, 1
	str	w0, [x29, 1944]
	str	w20, [x29, 1948]
	add	x0, x29, 1944
	str	x0, [x29, 1432]
	mov	w2, 2
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -112]
	bl	_ada__strings__fixed__trim
	.loc 1 304 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -112]
	.loc 1 305 20 is_stmt 1
	add	x0, x29, 1728
	str	x0, [x29, 1408]
	mov	w0, 1
	str	w0, [x29, 1952]
	str	w19, [x29, 1956]
	add	x0, x29, 1952
	str	x0, [x29, 1416]
	mov	w2, 2
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -128]
	bl	_ada__strings__fixed__trim
	.loc 1 305 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -128]
	.loc 1 304 79 is_stmt 1
	add	w19, w27, 1
	ldr	w0, [x29, 1384]
	add	w21, w19, w0
	add	w23, w21, 1
	mov	x0, x25
	ldr	w1, [x0, 4]
	mov	x0, x25
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L395
	.loc 1 304 79 is_stmt 0 discriminator 5
	mov	x0, x25
	ldr	w1, [x0, 4]
	mov	x0, x25
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L396
L395:
	.loc 1 304 79 discriminator 6
	mov	w0, 0
L396:
	.loc 1 304 79 discriminator 8
	add	w22, w23, w0
	add	w25, w22, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -32]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L397
	.loc 1 304 79 discriminator 9
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L398
L397:
	.loc 1 304 79 discriminator 10
	mov	w0, 0
L398:
	.loc 1 304 79 discriminator 12
	add	w24, w25, w0
	add	w28, w24, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -48]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L399
	.loc 1 304 79 discriminator 13
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L400
L399:
	.loc 1 304 79 discriminator 14
	mov	w0, 0
L400:
	.loc 1 304 79 discriminator 16
	add	w26, w28, w0
	add	w0, w26, 1
	str	w0, [x29, 1648]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -64]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L401
	.loc 1 304 79 discriminator 17
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L402
L401:
	.loc 1 304 79 discriminator 18
	mov	w0, 0
L402:
	.loc 1 304 79 discriminator 20
	ldr	w1, [x29, 1648]
	add	w0, w1, w0
	str	w0, [x29, 1568]
	add	w0, w0, 1
	str	w0, [x29, 1632]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -80]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L403
	.loc 1 304 79 discriminator 21
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L404
L403:
	.loc 1 304 79 discriminator 22
	mov	w0, 0
L404:
	.loc 1 304 79 discriminator 24
	ldr	w1, [x29, 1632]
	add	w0, w1, w0
	str	w0, [x29, 1552]
	add	w0, w0, 1
	str	w0, [x29, 1616]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -96]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L405
	.loc 1 304 79 discriminator 25
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L406
L405:
	.loc 1 304 79 discriminator 26
	mov	w0, 0
L406:
	.loc 1 304 79 discriminator 28
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
	blt	L407
	.loc 1 304 79 discriminator 29
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L408
L407:
	.loc 1 304 79 discriminator 30
	mov	w0, 0
L408:
	.loc 1 304 79 discriminator 32
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
	blt	L409
	.loc 1 304 79 discriminator 33
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L410
L409:
	.loc 1 304 79 discriminator 34
	mov	w0, 0
L410:
	.loc 1 304 79 discriminator 36
	ldr	w1, [x29, 1584]
	add	w0, w1, w0
	str	w0, [x29, 1384]
	cmp	w27, 0
	beq	L411
	.loc 1 304 79 discriminator 37
	ldr	w0, [x29, 1388]
	str	w0, [x29, 2040]
	b	L412
L411:
	.loc 1 304 79 discriminator 38
	mov	w0, 1
	str	w0, [x29, 2040]
L412:
	.loc 1 304 79 discriminator 40
	ldr	w0, [x29, 1384]
	sub	w1, w0, #1
	ldr	w0, [x29, 2040]
	add	w0, w0, w1
	str	w0, [x29, 2020]
	ldrsw	x0, [x29, 2040]
	str	x0, [x29, 2008]
	ldrsw	x0, [x29, 2020]
	str	x0, [x29, 2000]
	ldrsw	x1, [x29, 2020]
	ldrsw	x0, [x29, 2040]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 912]
	str	xzr, [x29, 920]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -112]
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
	ldrsw	x1, [x29, 2020]
	ldrsw	x0, [x29, 2040]
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 304 79 discriminator 42
	mov	x20, x0
	str	x20, [x29, 1992]
	cmp	w27, 0
	beq	L413
	.loc 1 304 79 discriminator 43
	cmp	w27, 0
	.loc 1 304 79 discriminator 48
	cmp	w27, 0
	ble	L417
	.loc 1 304 79 discriminator 49
	sub	w0, w27, #1
	sxtw	x0, w0
	add	x0, x0, 1
	str	x0, [x29, 896]
	str	xzr, [x29, 904]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -128]
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
L417:
	.loc 1 304 79 discriminator 52
	cmp	w27, 0
	ble	L418
	.loc 1 304 79 discriminator 53
	sub	w0, w27, #1
	sxtw	x0, w0
	add	x4, x0, 1
	b	L419
L418:
	.loc 1 304 79 discriminator 54
	mov	x4, 0
L419:
	.loc 1 304 79 discriminator 56
	ldr	x2, [x29, 1712]
	ldrsw	x1, [x29, 2040]
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
L413:
	.loc 1 304 79 discriminator 58
	cmp	w19, w27
	.loc 1 304 79 discriminator 62
	cmp	w19, w27
	ble	L423
	.loc 1 304 79 discriminator 63
	sub	w0, w19, #1
	sxtw	x1, w0
	sxtw	x0, w27
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
	str	x0, [x29, 1352]
	ldr	x0, [x29, 1352]
	add	x0, x1, x0
	str	x0, [x29, 1352]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1344]
L423:
	.loc 1 304 79 discriminator 66
	cmp	w19, w27
	.loc 1 304 79 discriminator 70
	ldr	w0, [x29, 2040]
	add	w0, w27, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 304 79 discriminator 71
	cmp	w21, w19
	.loc 1 304 79 discriminator 75
	cmp	w21, w19
	ble	L429
	.loc 1 304 79 discriminator 76
	sub	w0, w21, #1
	sxtw	x1, w0
	sxtw	x0, w19
	sub	x0, x1, x0
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
L429:
	.loc 1 304 79 discriminator 79
	cmp	w21, w19
	ble	L430
	.loc 1 304 79 discriminator 80
	sub	w0, w21, #1
	sxtw	x1, w0
	sxtw	x0, w19
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L431
L430:
	.loc 1 304 79 discriminator 81
	mov	x4, 0
L431:
	.loc 1 304 79 discriminator 83
	ldr	x2, [x29, 1696]
	ldr	w0, [x29, 2040]
	add	w0, w19, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 304 79 discriminator 84
	cmp	w23, w21
	.loc 1 304 79 discriminator 88
	cmp	w23, w21
	ble	L435
	.loc 1 304 79 discriminator 89
	sub	w0, w23, #1
	sxtw	x1, w0
	sxtw	x0, w21
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
L435:
	.loc 1 304 79 discriminator 92
	cmp	w23, w21
	.loc 1 304 79 discriminator 96
	ldr	w0, [x29, 2040]
	add	w0, w21, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 304 79 discriminator 97
	cmp	w22, w23
	.loc 1 304 79 discriminator 101
	cmp	w22, w23
	ble	L441
	.loc 1 304 79 discriminator 102
	sub	w0, w22, #1
	sxtw	x1, w0
	sxtw	x0, w23
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
L441:
	.loc 1 304 79 discriminator 105
	cmp	w22, w23
	ble	L442
	.loc 1 304 79 discriminator 106
	sub	w0, w22, #1
	sxtw	x1, w0
	sxtw	x0, w23
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L443
L442:
	.loc 1 304 79 discriminator 107
	mov	x4, 0
L443:
	.loc 1 298 20 is_stmt 1
	add	x0, x29, 1024
	ldp	x1, x2, [x0, -96]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 298 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L447
	.loc 1 298 20 discriminator 9
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
	str	x0, [x29, 1288]
	ldr	x0, [x29, 1288]
	add	x0, x1, x0
	str	x0, [x29, 1288]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1280]
L447:
	.loc 1 298 20 discriminator 12
	cmp	w2, w3
	.loc 1 304 79 is_stmt 1
	ldr	x2, [x29, 928]
	ldr	w0, [x29, 2040]
	add	w0, w23, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 304 79 is_stmt 0 discriminator 108
	cmp	w25, w22
	.loc 1 304 79 discriminator 112
	cmp	w25, w22
	ble	L453
	.loc 1 304 79 discriminator 113
	sub	w0, w25, #1
	sxtw	x1, w0
	sxtw	x0, w22
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
L453:
	.loc 1 304 79 discriminator 116
	cmp	w25, w22
	.loc 1 304 79 discriminator 120
	ldr	w0, [x29, 2040]
	add	w0, w22, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 304 79 discriminator 121
	cmp	w24, w25
	.loc 1 304 79 discriminator 125
	cmp	w24, w25
	ble	L459
	.loc 1 304 79 discriminator 126
	sub	w0, w24, #1
	sxtw	x1, w0
	sxtw	x0, w25
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
	str	x0, [x29, 1256]
	ldr	x0, [x29, 1256]
	add	x0, x1, x0
	str	x0, [x29, 1256]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1248]
L459:
	.loc 1 304 79 discriminator 129
	cmp	w24, w25
	ble	L460
	.loc 1 304 79 discriminator 130
	sub	w0, w24, #1
	sxtw	x1, w0
	sxtw	x0, w25
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L461
L460:
	.loc 1 304 79 discriminator 131
	mov	x4, 0
L461:
	.loc 1 299 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -32]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 299 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L465
	.loc 1 299 20 discriminator 9
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
	str	x0, [x29, 1240]
	ldr	x0, [x29, 1240]
	add	x0, x1, x0
	str	x0, [x29, 1240]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1232]
L465:
	.loc 1 299 20 discriminator 12
	cmp	w2, w3
	.loc 1 304 79 is_stmt 1
	ldr	x2, [x29, 1504]
	ldr	w0, [x29, 2040]
	add	w0, w25, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 304 79 is_stmt 0 discriminator 132
	cmp	w28, w24
	.loc 1 304 79 discriminator 136
	cmp	w28, w24
	ble	L471
	.loc 1 304 79 discriminator 137
	sub	w0, w28, #1
	sxtw	x1, w0
	sxtw	x0, w24
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
L471:
	.loc 1 304 79 discriminator 140
	cmp	w28, w24
	.loc 1 304 79 discriminator 144
	ldr	w0, [x29, 2040]
	add	w0, w24, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 304 79 discriminator 145
	cmp	w26, w28
	.loc 1 304 79 discriminator 149
	cmp	w26, w28
	ble	L477
	.loc 1 304 79 discriminator 150
	sub	w0, w26, #1
	sxtw	x1, w0
	sxtw	x0, w28
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
	str	x0, [x29, 1208]
	ldr	x0, [x29, 1208]
	add	x0, x1, x0
	str	x0, [x29, 1208]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1200]
L477:
	.loc 1 304 79 discriminator 153
	cmp	w26, w28
	ble	L478
	.loc 1 304 79 discriminator 154
	sub	w0, w26, #1
	sxtw	x1, w0
	sxtw	x0, w28
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L479
L478:
	.loc 1 304 79 discriminator 155
	mov	x4, 0
L479:
	.loc 1 300 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -48]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 300 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L483
	.loc 1 300 20 discriminator 9
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
	str	x0, [x29, 1192]
	ldr	x0, [x29, 1192]
	add	x0, x1, x0
	str	x0, [x29, 1192]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1184]
L483:
	.loc 1 300 20 discriminator 12
	cmp	w2, w3
	.loc 1 304 79 is_stmt 1
	ldr	x2, [x29, 1488]
	ldr	w0, [x29, 2040]
	add	w0, w28, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 304 79 is_stmt 0 discriminator 156
	ldr	w0, [x29, 1648]
	cmp	w0, w26
	.loc 1 304 79 discriminator 160
	cmp	w0, w26
	ble	L489
	.loc 1 304 79 discriminator 161
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w26
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
L489:
	.loc 1 304 79 discriminator 164
	ldr	w2, [x29, 1648]
	cmp	w2, w26
	.loc 1 304 79 discriminator 168
	ldr	w0, [x29, 2040]
	add	w0, w26, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 304 79 discriminator 169
	ldr	w0, [x29, 1568]
	cmp	w0, w2
	.loc 1 304 79 discriminator 173
	cmp	w0, w2
	ble	L495
	.loc 1 304 79 discriminator 174
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
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
	str	x0, [x29, 1160]
	ldr	x0, [x29, 1160]
	add	x0, x1, x0
	str	x0, [x29, 1160]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1152]
L495:
	.loc 1 304 79 discriminator 177
	ldr	w0, [x29, 1568]
	ldr	w2, [x29, 1648]
	cmp	w0, w2
	ble	L496
	.loc 1 304 79 discriminator 178
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L497
L496:
	.loc 1 304 79 discriminator 179
	mov	x4, 0
L497:
	.loc 1 301 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -64]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 301 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L501
	.loc 1 301 20 discriminator 9
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
	str	x0, [x29, 1144]
	ldr	x0, [x29, 1144]
	add	x0, x1, x0
	str	x0, [x29, 1144]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1136]
L501:
	.loc 1 301 20 discriminator 12
	cmp	w2, w3
	.loc 1 304 79 is_stmt 1
	ldr	x2, [x29, 1472]
	ldr	w0, [x29, 2040]
	ldr	w1, [x29, 1648]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 304 79 is_stmt 0 discriminator 180
	ldr	w0, [x29, 1632]
	ldr	w2, [x29, 1568]
	cmp	w0, w2
	.loc 1 304 79 discriminator 184
	cmp	w0, w2
	ble	L507
	.loc 1 304 79 discriminator 185
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
L507:
	.loc 1 304 79 discriminator 188
	ldr	w2, [x29, 1632]
	ldr	w1, [x29, 1568]
	cmp	w2, w1
	.loc 1 304 79 discriminator 192
	ldr	w0, [x29, 2040]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 304 79 discriminator 193
	ldr	w0, [x29, 1552]
	cmp	w0, w2
	.loc 1 304 79 discriminator 197
	cmp	w0, w2
	ble	L513
	.loc 1 304 79 discriminator 198
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
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
	str	x0, [x29, 1112]
	ldr	x0, [x29, 1112]
	add	x0, x1, x0
	str	x0, [x29, 1112]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1104]
L513:
	.loc 1 304 79 discriminator 201
	ldr	w0, [x29, 1552]
	ldr	w2, [x29, 1632]
	cmp	w0, w2
	ble	L514
	.loc 1 304 79 discriminator 202
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L515
L514:
	.loc 1 304 79 discriminator 203
	mov	x4, 0
L515:
	.loc 1 302 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -80]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 302 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L519
	.loc 1 302 20 discriminator 9
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
	str	x0, [x29, 1096]
	ldr	x0, [x29, 1096]
	add	x0, x1, x0
	str	x0, [x29, 1096]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1088]
L519:
	.loc 1 302 20 discriminator 12
	cmp	w2, w3
	.loc 1 304 79 is_stmt 1
	ldr	x2, [x29, 1456]
	ldr	w0, [x29, 2040]
	ldr	w1, [x29, 1632]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 304 79 is_stmt 0 discriminator 204
	ldr	w0, [x29, 1616]
	ldr	w2, [x29, 1552]
	cmp	w0, w2
	.loc 1 304 79 discriminator 208
	cmp	w0, w2
	ble	L525
	.loc 1 304 79 discriminator 209
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
L525:
	.loc 1 304 79 discriminator 212
	ldr	w2, [x29, 1616]
	ldr	w1, [x29, 1552]
	cmp	w2, w1
	.loc 1 304 79 discriminator 216
	ldr	w0, [x29, 2040]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 304 79 discriminator 217
	ldr	w0, [x29, 1536]
	cmp	w0, w2
	.loc 1 304 79 discriminator 221
	cmp	w0, w2
	ble	L531
	.loc 1 304 79 discriminator 222
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
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
	str	x0, [x29, 1064]
	ldr	x0, [x29, 1064]
	add	x0, x1, x0
	str	x0, [x29, 1064]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1056]
L531:
	.loc 1 304 79 discriminator 225
	ldr	w0, [x29, 1536]
	ldr	w2, [x29, 1616]
	cmp	w0, w2
	ble	L532
	.loc 1 304 79 discriminator 226
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L533
L532:
	.loc 1 304 79 discriminator 227
	mov	x4, 0
L533:
	.loc 1 303 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -96]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 303 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L537
	.loc 1 303 20 discriminator 9
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
	str	x0, [x29, 1048]
	ldr	x0, [x29, 1048]
	add	x0, x1, x0
	str	x0, [x29, 1048]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1040]
L537:
	.loc 1 303 20 discriminator 12
	cmp	w2, w3
	.loc 1 304 79 is_stmt 1
	ldr	x2, [x29, 1440]
	ldr	w0, [x29, 2040]
	ldr	w1, [x29, 1616]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x3, x0
	mov	x1, x2
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 304 79 is_stmt 0 discriminator 228
	ldr	w0, [x29, 1600]
	ldr	w2, [x29, 1536]
	cmp	w0, w2
	.loc 1 304 79 discriminator 232
	cmp	w0, w2
	ble	L543
	.loc 1 304 79 discriminator 233
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
L543:
	.loc 1 304 79 discriminator 236
	ldr	w2, [x29, 1600]
	ldr	w1, [x29, 1536]
	cmp	w2, w1
	.loc 1 304 79 discriminator 240
	ldr	w0, [x29, 2040]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x1, x1, x0
	mov	w0, 44
	strb	w0, [x20, x1]
	.loc 1 304 79 discriminator 241
	ldr	w0, [x29, 1520]
	cmp	w0, w2
	.loc 1 304 79 discriminator 245
	cmp	w0, w2
	ble	L549
	.loc 1 304 79 discriminator 246
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
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
	str	x0, [x29, 1016]
	ldr	x0, [x29, 1016]
	add	x0, x1, x0
	str	x0, [x29, 1016]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1008]
L549:
	.loc 1 304 79 discriminator 249
	ldr	w0, [x29, 1520]
	ldr	w2, [x29, 1600]
	cmp	w0, w2
	ble	L550
	.loc 1 304 79 discriminator 250
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L551
L550:
	.loc 1 304 79 discriminator 251
	mov	x4, 0
L551:
	.loc 1 304 20 is_stmt 1 discriminator 253
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -112]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 304 20 is_stmt 0 discriminator 257
	cmp	w2, w3
	blt	L555
	.loc 1 304 20 discriminator 258
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 528]
	str	xzr, [x29, 536]
	add	x0, x29, 512
	ldp	x5, x6, [x0, 16]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1000]
	ldr	x0, [x29, 1000]
	add	x0, x1, x0
	str	x0, [x29, 1000]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 992]
L555:
	.loc 1 304 20 discriminator 261
	cmp	w2, w3
	.loc 1 304 79 is_stmt 1 discriminator 265
	ldr	x2, [x29, 1424]
	ldr	w0, [x29, 2040]
	ldr	w1, [x29, 1600]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x1, x2
	mov	x2, x4
	bl	_memcpy
	.loc 1 304 79 is_stmt 0 discriminator 266
	ldr	w0, [x29, 1584]
	ldr	w2, [x29, 1520]
	cmp	w0, w2
	.loc 1 304 79 discriminator 270
	cmp	w0, w2
	ble	L561
	.loc 1 304 79 discriminator 271
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
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 984]
	ldr	x1, [x29, 984]
	add	x0, x0, x1
	str	x0, [x29, 984]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 976]
L561:
	.loc 1 304 79 discriminator 274
	ldr	w2, [x29, 1584]
	ldr	w1, [x29, 1520]
	cmp	w2, w1
	.loc 1 304 79 discriminator 278
	ldr	w0, [x29, 2040]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	mov	w1, 44
	strb	w1, [x20, x0]
	.loc 1 304 79 discriminator 279
	ldr	w0, [x29, 1384]
	cmp	w0, w2
	.loc 1 304 79 discriminator 283
	cmp	w0, w2
	ble	L567
	.loc 1 304 79 discriminator 284
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 496]
	str	xzr, [x29, 504]
	ldp	x2, x3, [x29, 496]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 968]
	ldr	x1, [x29, 968]
	add	x0, x0, x1
	str	x0, [x29, 968]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 960]
L567:
	.loc 1 304 79 discriminator 287
	ldr	w0, [x29, 1384]
	ldr	w2, [x29, 1584]
	cmp	w0, w2
	ble	L568
	.loc 1 304 79 discriminator 288
	sub	w0, w0, #1
	sxtw	x1, w0
	sxtw	x0, w2
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L569
L568:
	.loc 1 304 79 discriminator 289
	mov	x4, 0
L569:
	.loc 1 305 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -128]
	mov	x0, x2
	ldr	w0, [x0]
	mov	x1, x2
	ldr	w1, [x1, 4]
	cmp	w1, w0
	.loc 1 305 20 is_stmt 0 discriminator 8
	cmp	w1, w0
	blt	L573
	.loc 1 305 20 discriminator 9
	sxtw	x3, w1
	sxtw	x2, w0
	sub	x2, x3, x2
	add	x2, x2, 1
	str	x2, [x29, 480]
	str	xzr, [x29, 488]
	ldp	x5, x6, [x29, 480]
	mov	x2, x5
	lsr	x2, x2, 61
	mov	x3, x6
	lsl	x3, x3, 3
	str	x3, [x29, 952]
	ldr	x3, [x29, 952]
	add	x2, x2, x3
	str	x2, [x29, 952]
	mov	x2, x5
	lsl	x2, x2, 3
	str	x2, [x29, 944]
L573:
	.loc 1 305 20 discriminator 12
	cmp	w1, w0
	.loc 1 304 79 is_stmt 1
	ldr	x2, [x29, 1408]
	ldr	w0, [x29, 2040]
	ldr	w1, [x29, 1584]
	add	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [x29, 2008]
	sub	x0, x1, x0
	add	x0, x20, x0
	mov	x1, x2
	mov	x2, x4
	bl	_memcpy
	.loc 1 297 10
	ldr	x0, [x29, 1856]
	str	x20, [x29, 464]
	ldr	w1, [x29, 2040]
	str	w1, [x29, 1960]
	ldr	w1, [x29, 2020]
	str	w1, [x29, 1964]
	add	x1, x29, 1960
	str	x1, [x29, 472]
	ldp	x1, x2, [x29, 464]
	bl	_ada__text_io__put_line
LEHE25:
	.loc 1 297 0 discriminator 2
	mov	w19, 1
L583:
	.loc 1 297 0 is_stmt 0 discriminator 3
	add	x0, x29, 1864
	mov	x16, x0
LEHB26:
	bl	_smc_files__log_telemetry_csv__B_11__B153b___finalizer.2
LEHE26:
	.loc 1 297 0 discriminator 5
	cmp	w19, 1
	bne	L576
	.loc 1 297 0
	mov	w0, 1
L585:
	.loc 1 297 0 discriminator 6
	cmp	w0, 1
	bne	L577
	.loc 1 297 0
	nop
LBE44:
	.loc 1 306 10 is_stmt 1
	add	x0, x29, 1856
LEHB27:
	bl	_ada__text_io__close
LEHE27:
LBE40:
	.loc 1 313 8
	b	L375
L591:
LBE37:
	.loc 1 285 10
	mov	x2, x0
	mov	x0, x1
	cmp	x0, 1
	beq	L580
	mov	x0, x2
LEHB28:
	bl	__Unwind_Resume
L580:
LBB50:
LBB46:
	.loc 1 285 10 is_stmt 0 discriminator 1
	str	x2, [x29, 2032]
	.loc 1 285 10 discriminator 2
	ldr	x0, [x29, 2032]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 2024]
	.loc 1 286 13 is_stmt 1
	nop
	.loc 1 285 10 discriminator 4
	mov	x2, 0
	ldr	x1, [x29, 2024]
	ldr	x0, [x29, 2032]
	bl	___gnat_end_handler_v1
	b	L392
L593:
	str	x0, [x29, 112]
	str	x1, [x29, 104]
	mov	w19, 0
LBE46:
LBB47:
LBB45:
	.loc 1 297 10
	b	L583
L576:
	ldr	x0, [x29, 112]
	str	x0, [x29, 1376]
	ldr	x0, [x29, 104]
	str	x0, [x29, 120]
	b	L584
L594:
	str	x0, [x29, 1376]
	str	x1, [x29, 120]
L584:
	mov	w0, 0
	b	L585
L577:
	ldr	x0, [x29, 1376]
	ldr	x1, [x29, 120]
	b	L586
L592:
L586:
LBE45:
LBE47:
LBE50:
	.loc 1 308 10
	cmp	x1, 2
	beq	L587
	bl	__Unwind_Resume
LEHE28:
L587:
LBB51:
LBB48:
	.loc 1 308 10 is_stmt 0 discriminator 1
	str	x0, [x29, 1984]
	.loc 1 308 10 discriminator 2
	ldr	x0, [x29, 1984]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 1976]
	.loc 1 309 16 is_stmt 1
	ldr	x0, [x29, 1856]
LEHB29:
	bl	_ada__text_io__is_open
	.loc 1 309 13 discriminator 2
	cmp	w0, 0
	beq	L588
	.loc 1 310 16
	add	x0, x29, 1856
	bl	_ada__text_io__close
LEHE29:
L588:
	.loc 1 308 10
	mov	x2, 0
	ldr	x1, [x29, 1976]
	ldr	x0, [x29, 1984]
LEHB30:
	bl	___gnat_end_handler_v1
LBE48:
	.loc 1 313 8
	b	L375
L595:
LBB49:
	.loc 1 308 10
	mov	x19, x0
	str	x19, [x29, 1968]
	.loc 1 308 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 1968]
	ldr	x1, [x29, 1976]
	ldr	x0, [x29, 1984]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L375:
LBE49:
LBE51:
	.loc 1 313 8 is_stmt 1
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE30:
	add	sp, sp, 2048
LCFI56:
	ret
LFE12:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
	.align	2
LLSDA12:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT12-LLSDATTD12
LLSDATTD12:
	.byte	0x1
	.uleb128 LLSDACSE12-LLSDACSB12
LLSDACSB12:
	.uleb128 LEHB22-LFB12
	.uleb128 LEHE22-LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB23-LFB12
	.uleb128 LEHE23-LEHB23
	.uleb128 L591-LFB12
	.uleb128 0x1
	.uleb128 LEHB24-LFB12
	.uleb128 LEHE24-LEHB24
	.uleb128 L592-LFB12
	.uleb128 0x3
	.uleb128 LEHB25-LFB12
	.uleb128 LEHE25-LEHB25
	.uleb128 L593-LFB12
	.uleb128 0x5
	.uleb128 LEHB26-LFB12
	.uleb128 LEHE26-LEHB26
	.uleb128 L594-LFB12
	.uleb128 0x5
	.uleb128 LEHB27-LFB12
	.uleb128 LEHE27-LEHB27
	.uleb128 L592-LFB12
	.uleb128 0x3
	.uleb128 LEHB28-LFB12
	.uleb128 LEHE28-LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB29-LFB12
	.uleb128 LEHE29-LEHB29
	.uleb128 L595-LFB12
	.uleb128 0
	.uleb128 LEHB30-LFB12
	.uleb128 LEHE30-LEHB30
	.uleb128 0
	.uleb128 0
LLSDACSE12:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr6:
	.long	___gnat_others_value@GOT-L_got_pcr6
L_got_pcr7:
	.long	___gnat_others_value@GOT-L_got_pcr7
LLSDATT12:
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
LFB14:
	.loc 1 319 4
	sub	sp, sp, #1280
LCFI57:
	stp	x29, x30, [sp]
LCFI58:
	mov	x29, sp
LCFI59:
	stp	x20, x21, [sp, 16]
	stp	x22, x23, [sp, 32]
	stp	x24, x25, [sp, 48]
	stp	x26, x27, [sp, 64]
LCFI60:
LBB52:
	.loc 1 325 7
	str	xzr, [x29, 1272]
	.loc 1 327 14
	strb	wzr, [x29, 1239]
	.loc 1 327 34
	str	xzr, [x29, 1224]
	.loc 1 328 29
	adrp	x2, _smc_files__precool_flag@PAGE
	add	x0, x2, _smc_files__precool_flag@PAGEOFF;
	adrp	x2, lC13@PAGE
	add	x1, x2, lC13@PAGEOFF;
	bl	_ada__directories__exists
	.loc 1 328 29 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 328 7 is_stmt 1 discriminator 2
	cmp	w0, 0
	bne	L611
LBB53:
	.loc 1 332 7
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
	.loc 1 332 7 is_stmt 0 discriminator 2
	mov	w1, w0
	str	w1, [x29, 1268]
	ubfx	x0, x0, 32, 8
	strb	w0, [x29, 1267]
LBE53:
	.loc 1 333 10 is_stmt 1
	ldrb	w0, [x29, 1267]
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 333 7
	cmp	w0, 0
	beq	L599
	.loc 1 335 17
	mov	w0, 1
	strb	w0, [x29, 1239]
	.loc 1 336 20
	mov	x0, 10
	str	x0, [x29, 1224]
	.loc 1 337 10
	b	L609
L599:
	.loc 1 341 35
	ldr	w0, [x29, 1268]
	.loc 1 341 32
	cmp	w0, 0
	ble	L600
	.loc 1 341 32 is_stmt 0 discriminator 1
	cmp	w0, 1024
	ble	L600
	.loc 1 341 32 discriminator 3
	mov	w1, 341
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L600:
	.loc 1 341 21 is_stmt 1 discriminator 4
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
LBB54:
	.loc 1 341 14 discriminator 4
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
	.loc 1 341 14 is_stmt 0 discriminator 7
	str	w0, [x29, 1260]
LBE54:
	.loc 1 342 7 is_stmt 1
	ldr	w0, [x29, 1260]
	cmp	w0, 0
	ble	L601
	.loc 1 343 65
	ldr	w0, [x29, 1268]
	.loc 1 343 62
	cmp	w0, 0
	ble	L602
	.loc 1 343 62 is_stmt 0 discriminator 1
	cmp	w0, 1024
	ble	L602
	.loc 1 343 62 discriminator 3
	mov	w1, 343
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L602:
	.loc 1 343 51 is_stmt 1 discriminator 4
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
	.loc 1 343 34 discriminator 4
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
	ble	L603
	.loc 1 343 34 is_stmt 0 discriminator 6
	mov	w1, 343
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L603:
	.loc 1 343 34 discriminator 7
	ldr	w0, [x29, 1260]
	add	w0, w0, 7
	.loc 1 343 34 discriminator 10
	mov	w3, 0
	mov	w2, w0
	ldp	x0, x1, [x29, 144]
	bl	_smc_files__parse_int_after
	.loc 1 343 17 is_stmt 1 discriminator 12
	sxtw	x0, w0
	str	x0, [x29, 1272]
	.loc 1 344 32
	bl	_smc_files__get_unix_time
	mov	x1, x0
	.loc 1 344 30 discriminator 2
	mov	x2, 0
	ldr	x0, [x29, 1272]
	subs	x0, x0, x1
	bvc	L604
	mov	x2, 1
L604:
	mov	x1, x0
	.loc 1 344 30 is_stmt 0 discriminator 3
	mov	x0, x2
	cmp	x0, 0
	beq	L606
	.loc 1 344 30 discriminator 4
	mov	w1, 344
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L606:
	.loc 1 344 30 discriminator 5
	mov	x0, x1
	.loc 1 344 20 is_stmt 1 discriminator 8
	str	x0, [x29, 1224]
	.loc 1 345 23
	ldr	x0, [x29, 1224]
	.loc 1 345 10
	cmp	x0, 0
	ble	L607
	.loc 1 346 20
	mov	w0, 1
	strb	w0, [x29, 1239]
	.loc 1 356 8
	b	L609
L607:
	.loc 1 349 13
	adrp	x0, _smc_files__precool_flag@PAGE
	add	x0, x0, _smc_files__precool_flag@PAGEOFF;
	str	x0, [x29, 160]
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	str	x0, [x29, 168]
	ldp	x0, x1, [x29, 160]
	bl	_smc_files__delete_file
	.loc 1 356 8
	b	L609
L601:
	.loc 1 353 17
	mov	w0, 1
	strb	w0, [x29, 1239]
	.loc 1 354 20
	mov	x0, 10
	str	x0, [x29, 1224]
	.loc 1 356 8
	b	L609
L611:
	.loc 1 329 10
	nop
L609:
LBE52:
	.loc 1 356 8 discriminator 1
	ldrb	w0, [x29, 1239]
	bfi	x24, x0, 0, 8
	ldr	x0, [x29, 1224]
	mov	x25, x0
	.loc 1 356 8 is_stmt 0 discriminator 3
	mov	x0, x24
	mov	x1, x25
	.loc 1 356 8
	ldp	x29, x30, [sp]
	ldp	x20, x21, [sp, 16]
	ldp	x22, x23, [sp, 32]
	ldp	x24, x25, [sp, 48]
	ldp	x26, x27, [sp, 64]
	add	sp, sp, 1280
LCFI61:
	ret
LFE14:
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
_smc_files__notify_user__B_12__B_14___finalizer.3:
LFB16:
	stp	x29, x30, [sp, -32]!
LCFI62:
	mov	x29, sp
LCFI63:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 24
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI64:
	ret
LFE16:
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
LFB15:
	.loc 1 362 4 is_stmt 1
	sub	sp, sp, #1968
LCFI65:
	stp	x29, x30, [sp, 16]
LCFI66:
	add	x29, sp, 16
LCFI67:
LEHB31:
	stp	x19, x20, [sp, 32]
	stp	x21, x22, [sp, 48]
	stp	x23, x24, [sp, 64]
	stp	x25, x26, [sp, 80]
	stp	x27, x28, [sp, 96]
LCFI68:
	add	x6, x29, 1536
	stp	x0, x1, [x6, -32]
	add	x0, x29, 1536
	stp	x2, x3, [x0, -48]
	.loc 1 362 4
	add	x0, x29, 1952
	.loc 1 362 4 is_stmt 0 discriminator 1
	str	x0, [x29, 1696]
	ldr	x0, [x29, 1496]
	ldr	w3, [x0]
	ldr	x0, [x29, 1496]
	ldr	w2, [x0, 4]
	cmp	w2, w3
	blt	L615
	.loc 1 362 4 discriminator 2
	sub	w0, w2, w3
	add	w0, w0, 1
	str	w0, [x29, 1260]
	b	L616
L615:
	.loc 1 362 4 discriminator 3
	str	wzr, [x29, 1260]
L616:
	.loc 1 362 4 discriminator 5
	ldr	x0, [x29, 1512]
	ldr	w7, [x0]
	ldr	x0, [x29, 1512]
	ldr	w6, [x0, 4]
	cmp	w6, w7
	blt	L617
	.loc 1 362 4 discriminator 6
	sub	w0, w6, w7
	add	w0, w0, 1
	str	w0, [x29, 1256]
	b	L618
L617:
	.loc 1 362 4 discriminator 7
	str	wzr, [x29, 1256]
L618:
LBB55:
	.loc 1 362 4 discriminator 9
	cmp	w2, w3
	.loc 1 362 4 discriminator 13
	cmp	w2, w3
	blt	L622
	.loc 1 362 4 discriminator 14
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
L622:
	.loc 1 362 4 discriminator 17
	cmp	w2, w3
	.loc 1 362 4 discriminator 21
	cmp	w6, w7
	.loc 1 362 4 discriminator 25
	cmp	w6, w7
	blt	L628
	.loc 1 362 4 discriminator 26
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
L628:
	.loc 1 362 4 discriminator 29
	cmp	w6, w7
	.loc 1 367 7 is_stmt 1
	str	xzr, [x29, 1640]
	.loc 1 368 7
	str	wzr, [x29, 1948]
	.loc 1 371 30
	bl	_ada__calendar__clock
	.loc 1 371 30 is_stmt 0 discriminator 2
	str	x0, [x29, 1936]
	.loc 1 379 7 is_stmt 1
	adrp	x0, _smc_files__notifications_log@PAGE
	add	x22, x0, _smc_files__notifications_log@PAGEOFF;
	adrp	x0, lC16@PAGE
	add	x23, x0, lC16@PAGEOFF;
	mov	x0, x22
	mov	x1, x23
	bl	_smc_files__ensure_directory_exists
	.loc 1 381 10
	adrp	x0, _smc_files__notifications_log@PAGE
	add	x24, x0, _smc_files__notifications_log@PAGEOFF;
	adrp	x0, lC16@PAGE
	add	x25, x0, lC16@PAGEOFF;
	mov	x0, x24
	mov	x1, x25
	bl	_ada__directories__exists
LEHE31:
	.loc 1 381 7 discriminator 2
	cmp	w0, 0
	beq	L631
LBB56:
LBB57:
	.loc 1 383 13
	ldr	x6, [x29, 1640]
	adrp	x0, _smc_files__notifications_log@PAGE
	add	x0, x0, _smc_files__notifications_log@PAGEOFF;
	str	x0, [x29, 144]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 152]
	adrp	x0, lC30@PAGE
	add	x26, x0, lC30@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x27, x0, lC0@PAGEOFF;
	mov	x4, x26
	mov	x5, x27
	ldp	x2, x3, [x29, 144]
	mov	w1, 0
	mov	x0, x6
LEHB32:
	bl	_ada__text_io__open
	.loc 1 383 13 is_stmt 0 discriminator 2
	str	x0, [x29, 1640]
L643:
LBE57:
	.loc 1 384 23 is_stmt 1
	ldr	x0, [x29, 1640]
	bl	_ada__text_io__end_of_file
LEHE32:
	.loc 1 384 19 discriminator 2
	cmp	w0, 0
	bne	L632
LBB58:
	add	x0, x29, 1672
	mov	x8, x0
LEHB33:
	bl	_system__secondary_stack__ss_mark
	.loc 1 386 45
	ldr	x0, [x29, 1640]
	bl	_ada__text_io__get_line__3
	.loc 1 386 45 is_stmt 0 discriminator 2
	mov	x2, x0
	mov	x3, x1
	mov	x0, x3
	ldr	w0, [x0]
	str	w0, [x29, 1932]
	mov	x0, x3
	ldr	w0, [x0, 4]
	str	w0, [x29, 1928]
	.loc 1 386 19 is_stmt 1 discriminator 2
	ldrsw	x0, [x29, 1932]
	str	x0, [x29, 1920]
	ldr	w1, [x29, 1928]
	ldr	w0, [x29, 1932]
	cmp	w1, w0
	blt	L633
	.loc 1 386 19 is_stmt 0 discriminator 3
	ldrsw	x0, [x29, 1928]
	str	x0, [x29, 1912]
	b	L634
L633:
	.loc 1 386 19 discriminator 4
	ldrsw	x0, [x29, 1932]
	sub	x0, x0, #1
	str	x0, [x29, 1912]
L634:
	.loc 1 386 19 discriminator 6
	ldr	w1, [x29, 1928]
	ldr	w0, [x29, 1932]
	cmp	w1, w0
	blt	L636
	.loc 1 386 19 discriminator 7
	ldrsw	x1, [x29, 1928]
	ldrsw	x0, [x29, 1932]
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x0, x21, 3
	str	x0, [x29, 1384]
	ldr	x0, [x29, 1384]
	add	x0, x1, x0
	str	x0, [x29, 1384]
	lsl	x0, x20, 3
	str	x0, [x29, 1376]
L636:
	.loc 1 386 19 discriminator 10
	ldr	w1, [x29, 1928]
	ldr	w0, [x29, 1932]
	cmp	w1, w0
	.loc 1 386 45 is_stmt 1 discriminator 14
	ldr	w1, [x29, 1928]
	ldr	w0, [x29, 1932]
	cmp	w1, w0
	blt	L639
	.loc 1 386 45 is_stmt 0 discriminator 15
	ldr	w0, [x29, 1932]
	cmp	w0, 0
	bgt	L639
	.loc 1 386 45 discriminator 17
	mov	w1, 386
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L639:
	.loc 1 386 19 is_stmt 1 discriminator 18
	mov	x0, x2
	str	x0, [x29, 1904]
	.loc 1 388 44
	ldr	w1, [x29, 1948]
	mov	w0, 2147483647
	cmp	w1, w0
	bne	L640
	.loc 1 388 30 discriminator 1
	mov	w1, 388
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
LEHE33:
L640:
	.loc 1 388 30 is_stmt 0 discriminator 2
	ldr	w0, [x29, 1948]
	add	w0, w0, 1
	str	w0, [x29, 1948]
	.loc 1 389 0 is_stmt 1
	mov	w19, 1
L791:
	.loc 1 389 0 is_stmt 0 discriminator 1
	add	x0, x29, 1648
	mov	x16, x0
LEHB34:
	bl	_smc_files__notify_user__B_12__B_14___finalizer.3
LEHE34:
	.loc 1 389 0 discriminator 3
	cmp	w19, 1
	bne	L641
	.loc 1 389 0
	nop
	.loc 1 389 19 is_stmt 1
	mov	w0, 1
L793:
	.loc 1 389 19 is_stmt 0 discriminator 4
	cmp	w0, 1
	bne	L642
LBE58:
	.loc 1 390 21 is_stmt 1
	b	L643
L632:
	.loc 1 391 13
	add	x0, x29, 1640
LEHB35:
	bl	_ada__text_io__close
LEHE35:
L631:
LBE56:
LBB60:
	.loc 1 399 10
	ldr	w0, [x29, 1948]
	cmp	w0, 999
	ble	L644
LBB61:
	.loc 1 400 13
	ldr	x6, [x29, 1640]
	adrp	x0, _smc_files__notifications_log@PAGE
	add	x0, x0, _smc_files__notifications_log@PAGEOFF;
	str	x0, [x29, 160]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 168]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 176]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 184]
	ldp	x4, x5, [x29, 176]
	ldp	x2, x3, [x29, 160]
	mov	w1, 2
	mov	x0, x6
LEHB36:
	bl	_ada__text_io__create
	.loc 1 400 13 is_stmt 0 discriminator 2
	str	x0, [x29, 1640]
LBE61:
	b	L645
L644:
LBB62:
	.loc 1 402 13 is_stmt 1
	ldr	x6, [x29, 1640]
	adrp	x0, _smc_files__notifications_log@PAGE
	add	x0, x0, _smc_files__notifications_log@PAGEOFF;
	str	x0, [x29, 192]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 200]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 208]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 216]
	ldp	x4, x5, [x29, 208]
	ldp	x2, x3, [x29, 192]
	mov	w1, 3
	mov	x0, x6
	bl	_ada__text_io__open
	.loc 1 402 13 is_stmt 0 discriminator 2
	str	x0, [x29, 1640]
L645:
LBE62:
LBB63:
	.loc 1 405 10 is_stmt 1
	add	x0, x29, 1616
	mov	x8, x0
	ldr	x0, [x29, 1936]
	bl	_ada__calendar__split
LEHE36:
	.loc 1 405 10 is_stmt 0 discriminator 2
	ldr	w0, [x29, 1616]
	str	w0, [x29, 1876]
	ldr	w0, [x29, 1620]
	str	w0, [x29, 1872]
	ldr	w0, [x29, 1624]
	str	w0, [x29, 1868]
	ldr	x0, [x29, 1632]
	str	x0, [x29, 1856]
LBE63:
	.loc 1 406 18 is_stmt 1
	ldr	x4, [x29, 1856]
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
LEHB37:
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
	bcc	L646
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L646:
	mov	x1, x5
	cmp	x1, 0
	blt	L647
	.loc 1 406 18 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L648
L647:
	.loc 1 406 18 discriminator 3
	mov	w1, 406
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
LEHB38:
	bl	___gnat_rcheck_CE_Range_Check
LEHE38:
L648:
	.loc 1 406 36 is_stmt 1 discriminator 4
	mov	w2, w1
	.loc 1 406 15 discriminator 4
	mov	w0, 46021
	movk	w0, 0x91a2, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	add	w0, w2, w0
	asr	w1, w0, 11
	asr	w0, w2, 31
	sub	w0, w1, w0
	str	w0, [x29, 1852]
	.loc 1 407 18
	ldr	x4, [x29, 1856]
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
LEHB39:
	sdiv	x5, x4, x0
LEHE39:
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
	bcc	L649
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L649:
	mov	x1, x5
	cmp	x1, 0
	blt	L650
	.loc 1 407 18 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L651
L650:
	.loc 1 407 18 discriminator 3
	mov	w1, 407
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
LEHB40:
	bl	___gnat_rcheck_CE_Range_Check
LEHE40:
L651:
	.loc 1 407 36 is_stmt 1 discriminator 4
	mov	w2, w1
	mov	w0, 3600
LEHB41:
	sdiv	w1, w2, w0
	mov	w0, 3600
	mul	w0, w1, w0
	sub	w2, w2, w0
	.loc 1 407 14 discriminator 4
	mov	w0, 34953
	movk	w0, 0x8888, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	add	w0, w2, w0
	asr	w1, w0, 5
	asr	w0, w2, 31
	sub	w0, w1, w0
	str	w0, [x29, 1848]
	.loc 1 408 17
	ldr	x4, [x29, 1856]
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	sdiv	x5, x4, x0
LEHE41:
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
	bcc	L652
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L652:
	mov	x1, x5
	cmp	x1, 0
	blt	L653
	.loc 1 408 17 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L654
L653:
	.loc 1 408 17 discriminator 3
	mov	w1, 408
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
LEHB42:
	bl	___gnat_rcheck_CE_Range_Check
LEHE42:
L654:
	.loc 1 408 35 is_stmt 1 discriminator 4
	mov	w2, w1
	.loc 1 408 14 discriminator 4
	mov	w0, 60
LEHB43:
	sdiv	w1, w2, w0
LEHE43:
	mov	w0, 60
	mul	w0, w1, w0
	sub	w0, w2, w0
	str	w0, [x29, 1844]
LBB64:
	add	x0, x29, 1648
	mov	x8, x0
LEHB44:
	bl	_system__secondary_stack__ss_mark
	.loc 1 411 30
	add	x0, x29, 1600
	str	x0, [x29, 224]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 232]
	ldp	x1, x2, [x29, 224]
	ldr	w0, [x29, 1876]
	bl	_system__img_int__impl__image_integer
	mov	w24, w0
	.loc 1 411 30 is_stmt 0 discriminator 2
	bic	w0, w24, w24, asr #31
	sxtw	x0, w0
	str	x0, [x29, 1360]
	str	xzr, [x29, 1368]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -176]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 1480]
	ldr	x0, [x29, 1480]
	add	x0, x1, x0
	str	x0, [x29, 1480]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1472]
	.loc 1 412 31 is_stmt 1
	add	x0, x29, 1584
	str	x0, [x29, 240]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 248]
	ldp	x1, x2, [x29, 240]
	ldr	w0, [x29, 1872]
	bl	_system__img_int__impl__image_integer
	mov	w23, w0
	.loc 1 412 31 is_stmt 0 discriminator 2
	bic	w0, w23, w23, asr #31
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
	.loc 1 413 29 is_stmt 1
	add	x0, x29, 1568
	str	x0, [x29, 256]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 264]
	ldp	x1, x2, [x29, 256]
	ldr	w0, [x29, 1868]
	bl	_system__img_int__impl__image_integer
	mov	w22, w0
	.loc 1 413 29 is_stmt 0 discriminator 2
	bic	w0, w22, w22, asr #31
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
	.loc 1 414 30 is_stmt 1
	add	x0, x29, 1552
	str	x0, [x29, 272]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 280]
	ldp	x1, x2, [x29, 272]
	ldr	w0, [x29, 1852]
	bl	_system__img_int__impl__image_integer
	mov	w21, w0
	.loc 1 414 30 is_stmt 0 discriminator 2
	bic	w0, w21, w21, asr #31
	sxtw	x0, w0
	str	x0, [x29, 912]
	str	xzr, [x29, 920]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -112]
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
	.loc 1 415 29 is_stmt 1
	add	x0, x29, 1536
	str	x0, [x29, 288]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 296]
	ldp	x1, x2, [x29, 288]
	ldr	w0, [x29, 1848]
	bl	_system__img_int__impl__image_integer
	mov	w20, w0
	.loc 1 415 29 is_stmt 0 discriminator 2
	bic	w0, w20, w20, asr #31
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
	.loc 1 416 29 is_stmt 1
	add	x0, x29, 1520
	str	x0, [x29, 304]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 312]
	ldp	x1, x2, [x29, 304]
	ldr	w0, [x29, 1844]
	bl	_system__img_int__impl__image_integer
	mov	w19, w0
	.loc 1 416 29 is_stmt 0 discriminator 2
	bic	w0, w19, w19, asr #31
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
	.loc 1 411 20 is_stmt 1
	add	x0, x29, 1600
	str	x0, [x29, 320]
	mov	w0, 1
	str	w0, [x29, 1704]
	str	w24, [x29, 1708]
	add	x0, x29, 1704
	str	x0, [x29, 328]
	mov	w2, 2
	ldp	x0, x1, [x29, 320]
	bl	_ada__strings__fixed__trim
	.loc 1 411 20 is_stmt 0 discriminator 4
	mov	x24, x0
	mov	x25, x1
	add	x0, x29, 1024
	stp	x24, x25, [x0, -112]
	.loc 1 412 20 is_stmt 1
	add	x0, x29, 1584
	str	x0, [x29, 336]
	mov	w0, 1
	str	w0, [x29, 1712]
	str	w23, [x29, 1716]
	add	x0, x29, 1712
	str	x0, [x29, 344]
	mov	w2, 2
	ldp	x0, x1, [x29, 336]
	bl	_ada__strings__fixed__trim
	.loc 1 412 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -144]
	.loc 1 413 20 is_stmt 1
	add	x0, x29, 1568
	str	x0, [x29, 352]
	mov	w0, 1
	str	w0, [x29, 1720]
	str	w22, [x29, 1724]
	add	x0, x29, 1720
	str	x0, [x29, 360]
	mov	w2, 2
	ldp	x0, x1, [x29, 352]
	bl	_ada__strings__fixed__trim
	.loc 1 413 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -160]
	.loc 1 414 20 is_stmt 1
	add	x0, x29, 1552
	str	x0, [x29, 368]
	mov	w0, 1
	str	w0, [x29, 1728]
	str	w21, [x29, 1732]
	add	x0, x29, 1728
	str	x0, [x29, 376]
	mov	w2, 2
	ldp	x0, x1, [x29, 368]
	bl	_ada__strings__fixed__trim
	.loc 1 414 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -176]
	.loc 1 415 20 is_stmt 1
	add	x0, x29, 1536
	str	x0, [x29, 384]
	mov	w0, 1
	str	w0, [x29, 1736]
	str	w20, [x29, 1740]
	add	x0, x29, 1736
	str	x0, [x29, 392]
	mov	w2, 2
	ldp	x0, x1, [x29, 384]
	bl	_ada__strings__fixed__trim
	.loc 1 415 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -192]
	.loc 1 416 20 is_stmt 1
	add	x0, x29, 1520
	str	x0, [x29, 400]
	mov	w0, 1
	str	w0, [x29, 1744]
	str	w19, [x29, 1748]
	add	x0, x29, 1744
	str	x0, [x29, 408]
	mov	w2, 2
	ldp	x0, x1, [x29, 400]
	bl	_ada__strings__fixed__trim
	.loc 1 416 20 is_stmt 0 discriminator 4
	add	x2, x29, 1536
	stp	x0, x1, [x2, -208]
	.loc 1 417 33 is_stmt 1
	mov	x0, x25
	ldr	w1, [x0, 4]
	mov	x0, x25
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L655
	.loc 1 417 33 is_stmt 0 discriminator 1
	mov	x0, x25
	ldr	w1, [x0, 4]
	mov	x0, x25
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L656
L655:
	.loc 1 417 33 discriminator 2
	mov	w0, 0
L656:
	.loc 1 417 33 discriminator 4
	add	w19, w0, 1
	add	w20, w19, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -144]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L657
	.loc 1 417 33 discriminator 5
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L658
L657:
	.loc 1 417 33 discriminator 6
	mov	w0, 0
L658:
	.loc 1 417 33 discriminator 8
	add	w21, w20, w0
	add	w23, w21, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -160]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L659
	.loc 1 417 33 discriminator 9
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L660
L659:
	.loc 1 417 33 discriminator 10
	mov	w0, 0
L660:
	.loc 1 417 33 discriminator 12
	add	w24, w23, w0
	add	w25, w24, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -176]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L661
	.loc 1 417 33 discriminator 13
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L662
L661:
	.loc 1 417 33 discriminator 14
	mov	w0, 0
L662:
	.loc 1 417 33 discriminator 16
	add	w26, w25, w0
	add	w27, w26, 1
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -192]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L663
	.loc 1 417 33 discriminator 17
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L664
L663:
	.loc 1 417 33 discriminator 18
	mov	w0, 0
L664:
	.loc 1 417 33 discriminator 20
	add	w28, w27, w0
	add	w0, w28, 1
	str	w0, [x29, 1472]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -208]
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L665
	.loc 1 417 33 discriminator 21
	mov	x0, x3
	ldr	w1, [x0, 4]
	mov	x0, x3
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L666
L665:
	.loc 1 417 33 discriminator 22
	mov	w0, 0
L666:
	.loc 1 417 33 discriminator 24
	ldr	w1, [x29, 1472]
	add	w0, w1, w0
	str	w0, [x29, 1456]
	add	w0, w0, 3
	str	w0, [x29, 1440]
	ldr	w1, [x29, 1256]
	add	w0, w0, w1
	str	w0, [x29, 1424]
	add	w0, w0, 2
	str	w0, [x29, 1408]
	ldr	w1, [x29, 1260]
	add	w0, w0, w1
	str	w0, [x29, 896]
	str	w0, [x29, 1840]
	ldrsw	x0, [x29, 1840]
	str	x0, [x29, 1832]
	ldrsw	x0, [x29, 1840]
	str	x0, [x29, 864]
	str	xzr, [x29, 872]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -160]
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
	ldrsw	x0, [x29, 1840]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 417 33 discriminator 26
	mov	x22, x0
	str	x22, [x29, 1824]
	mov	w0, 91
	strb	w0, [x22]
	.loc 1 417 33 discriminator 27
	cmp	w19, 0
	mov	w0, 1
	cmp	w19, 0
	csel	w0, w19, w0, gt
	sxtw	x0, w0
	sub	x0, x0, #1
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
	mov	w0, 1
	cmp	w19, 0
	csel	w0, w19, w0, gt
	sxtw	x0, w0
	sub	x4, x0, #1
	.loc 1 411 20 is_stmt 1
	add	x0, x29, 1024
	ldp	x1, x2, [x0, -112]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 411 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L670
	.loc 1 411 20 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 832]
	str	xzr, [x29, 840]
	add	x0, x29, 1024
	ldp	x5, x6, [x0, -192]
	mov	x0, x5
	lsr	x1, x0, 61
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 1240]
	ldr	x0, [x29, 1240]
	add	x0, x1, x0
	str	x0, [x29, 1240]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1232]
L670:
	.loc 1 411 20 discriminator 12
	cmp	w2, w3
	.loc 1 417 33 is_stmt 1
	ldr	x1, [x29, 912]
	add	x0, x22, 1
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 417 33 is_stmt 0 discriminator 28
	cmp	w19, w20
	.loc 1 417 33 discriminator 32
	cmp	w19, w20
	bge	L676
	.loc 1 417 33 discriminator 33
	sxtw	x1, w20
	add	w0, w19, 1
	sxtw	x0, w0
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
	str	x0, [x29, 1224]
	ldr	x0, [x29, 1224]
	add	x0, x1, x0
	str	x0, [x29, 1224]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1216]
L676:
	.loc 1 417 33 discriminator 36
	cmp	w19, w20
	.loc 1 417 33 discriminator 40
	add	w0, w19, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 45
	strb	w0, [x1, -1]
	.loc 1 417 33 discriminator 41
	cmp	w20, w21
	.loc 1 417 33 discriminator 45
	cmp	w20, w21
	bge	L682
	.loc 1 417 33 discriminator 46
	sxtw	x1, w21
	add	w0, w20, 1
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
L682:
	.loc 1 417 33 discriminator 49
	cmp	w20, w21
	bge	L683
	.loc 1 417 33 discriminator 50
	sxtw	x1, w21
	add	w0, w20, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L684
L683:
	.loc 1 417 33 discriminator 51
	mov	x4, 0
L684:
	.loc 1 412 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -144]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 412 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L688
	.loc 1 412 20 discriminator 9
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
	str	x0, [x29, 1192]
	ldr	x0, [x29, 1192]
	add	x0, x1, x0
	str	x0, [x29, 1192]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1184]
L688:
	.loc 1 412 20 discriminator 12
	cmp	w2, w3
	.loc 1 417 33 is_stmt 1
	ldr	x1, [x29, 1392]
	add	w0, w20, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 417 33 is_stmt 0 discriminator 52
	cmp	w21, w23
	.loc 1 417 33 discriminator 56
	cmp	w21, w23
	bge	L694
	.loc 1 417 33 discriminator 57
	sxtw	x1, w23
	add	w0, w21, 1
	sxtw	x0, w0
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
	str	x0, [x29, 1176]
	ldr	x0, [x29, 1176]
	add	x0, x1, x0
	str	x0, [x29, 1176]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1168]
L694:
	.loc 1 417 33 discriminator 60
	cmp	w21, w23
	.loc 1 417 33 discriminator 64
	add	w0, w21, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 45
	strb	w0, [x1, -1]
	.loc 1 417 33 discriminator 65
	cmp	w23, w24
	.loc 1 417 33 discriminator 69
	cmp	w23, w24
	bge	L700
	.loc 1 417 33 discriminator 70
	sxtw	x1, w24
	add	w0, w23, 1
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
L700:
	.loc 1 417 33 discriminator 73
	cmp	w23, w24
	bge	L701
	.loc 1 417 33 discriminator 74
	sxtw	x1, w24
	add	w0, w23, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L702
L701:
	.loc 1 417 33 discriminator 75
	mov	x4, 0
L702:
	.loc 1 413 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -160]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 413 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L706
	.loc 1 413 20 discriminator 9
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
	str	x0, [x29, 1144]
	ldr	x0, [x29, 1144]
	add	x0, x1, x0
	str	x0, [x29, 1144]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1136]
L706:
	.loc 1 413 20 discriminator 12
	cmp	w2, w3
	.loc 1 417 33 is_stmt 1
	ldr	x1, [x29, 1376]
	add	w0, w23, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 417 33 is_stmt 0 discriminator 76
	cmp	w24, w25
	.loc 1 417 33 discriminator 80
	cmp	w24, w25
	bge	L712
	.loc 1 417 33 discriminator 81
	sxtw	x1, w25
	add	w0, w24, 1
	sxtw	x0, w0
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
	str	x0, [x29, 1128]
	ldr	x0, [x29, 1128]
	add	x0, x1, x0
	str	x0, [x29, 1128]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1120]
L712:
	.loc 1 417 33 discriminator 84
	cmp	w24, w25
	.loc 1 417 33 discriminator 88
	add	w0, w24, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 32
	strb	w0, [x1, -1]
	.loc 1 417 33 discriminator 89
	cmp	w25, w26
	.loc 1 417 33 discriminator 93
	cmp	w25, w26
	bge	L718
	.loc 1 417 33 discriminator 94
	sxtw	x1, w26
	add	w0, w25, 1
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
L718:
	.loc 1 417 33 discriminator 97
	cmp	w25, w26
	bge	L719
	.loc 1 417 33 discriminator 98
	sxtw	x1, w26
	add	w0, w25, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L720
L719:
	.loc 1 417 33 discriminator 99
	mov	x4, 0
L720:
	.loc 1 414 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -176]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 414 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L724
	.loc 1 414 20 discriminator 9
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
	str	x0, [x29, 1096]
	ldr	x0, [x29, 1096]
	add	x0, x1, x0
	str	x0, [x29, 1096]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1088]
L724:
	.loc 1 414 20 discriminator 12
	cmp	w2, w3
	.loc 1 417 33 is_stmt 1
	ldr	x1, [x29, 1360]
	add	w0, w25, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 417 33 is_stmt 0 discriminator 100
	cmp	w26, w27
	.loc 1 417 33 discriminator 104
	cmp	w26, w27
	bge	L730
	.loc 1 417 33 discriminator 105
	sxtw	x1, w27
	add	w0, w26, 1
	sxtw	x0, w0
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
	str	x0, [x29, 1080]
	ldr	x0, [x29, 1080]
	add	x0, x1, x0
	str	x0, [x29, 1080]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1072]
L730:
	.loc 1 417 33 discriminator 108
	cmp	w26, w27
	.loc 1 417 33 discriminator 112
	add	w0, w26, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 58
	strb	w0, [x1, -1]
	.loc 1 417 33 discriminator 113
	cmp	w27, w28
	.loc 1 417 33 discriminator 117
	cmp	w27, w28
	bge	L736
	.loc 1 417 33 discriminator 118
	sxtw	x1, w28
	add	w0, w27, 1
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
L736:
	.loc 1 417 33 discriminator 121
	cmp	w27, w28
	bge	L737
	.loc 1 417 33 discriminator 122
	sxtw	x1, w28
	add	w0, w27, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L738
L737:
	.loc 1 417 33 discriminator 123
	mov	x4, 0
L738:
	.loc 1 415 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -192]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 415 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L742
	.loc 1 415 20 discriminator 9
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
	str	x0, [x29, 1048]
	ldr	x0, [x29, 1048]
	add	x0, x1, x0
	str	x0, [x29, 1048]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 1040]
L742:
	.loc 1 415 20 discriminator 12
	cmp	w2, w3
	.loc 1 417 33 is_stmt 1
	ldr	x1, [x29, 1344]
	add	w0, w27, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 417 33 is_stmt 0 discriminator 124
	ldr	w0, [x29, 1472]
	cmp	w28, w0
	.loc 1 417 33 discriminator 128
	cmp	w28, w0
	bge	L748
	.loc 1 417 33 discriminator 129
	sxtw	x1, w0
	add	w0, w28, 1
	sxtw	x0, w0
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
	str	x0, [x29, 1032]
	ldr	x0, [x29, 1032]
	add	x0, x1, x0
	str	x0, [x29, 1032]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1024]
L748:
	.loc 1 417 33 discriminator 132
	ldr	w2, [x29, 1472]
	cmp	w28, w2
	.loc 1 417 33 discriminator 136
	add	w0, w28, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 58
	strb	w0, [x1, -1]
	.loc 1 417 33 discriminator 137
	ldr	w0, [x29, 1456]
	cmp	w2, w0
	.loc 1 417 33 discriminator 141
	cmp	w2, w0
	bge	L754
	.loc 1 417 33 discriminator 142
	sxtw	x1, w0
	add	w0, w2, 1
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
L754:
	.loc 1 417 33 discriminator 145
	ldr	w0, [x29, 1472]
	ldr	w1, [x29, 1456]
	cmp	w0, w1
	bge	L755
	.loc 1 417 33 discriminator 146
	sxtw	x1, w1
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x4, x0, 1
	b	L756
L755:
	.loc 1 417 33 discriminator 147
	mov	x4, 0
L756:
	.loc 1 416 20 is_stmt 1
	add	x0, x29, 1536
	ldp	x1, x2, [x0, -208]
	mov	x0, x2
	ldr	w3, [x0]
	mov	x0, x2
	ldr	w2, [x0, 4]
	cmp	w2, w3
	.loc 1 416 20 is_stmt 0 discriminator 8
	cmp	w2, w3
	blt	L760
	.loc 1 416 20 discriminator 9
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
	str	x0, [x29, 1000]
	ldr	x0, [x29, 1000]
	add	x0, x1, x0
	str	x0, [x29, 1000]
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 992]
L760:
	.loc 1 416 20 discriminator 12
	cmp	w2, w3
	.loc 1 417 33 is_stmt 1
	ldr	x1, [x29, 1328]
	ldr	w0, [x29, 1472]
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x4
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 417 33 is_stmt 0 discriminator 148
	ldr	w0, [x29, 1456]
	ldr	w1, [x29, 1440]
	cmp	w0, w1
	.loc 1 417 33 discriminator 152
	cmp	w0, w1
	bge	L766
	.loc 1 417 33 discriminator 153
	sxtw	x1, w1
	add	w0, w0, 1
	sxtw	x0, w0
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
	str	x0, [x29, 984]
	ldr	x0, [x29, 984]
	add	x0, x1, x0
	str	x0, [x29, 984]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 976]
L766:
	.loc 1 417 33 discriminator 156
	ldr	w0, [x29, 1456]
	ldr	w3, [x29, 1440]
	cmp	w0, w3
	.loc 1 417 33 discriminator 160
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
	.loc 1 417 33 discriminator 161
	ldr	w0, [x29, 1424]
	cmp	w3, w0
	.loc 1 417 33 discriminator 165
	cmp	w3, w0
	bge	L772
	.loc 1 417 33 discriminator 166
	sxtw	x1, w0
	add	w0, w3, 1
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
L772:
	.loc 1 417 33 discriminator 169
	ldr	w0, [x29, 1440]
	ldr	w1, [x29, 1424]
	cmp	w0, w1
	bge	L773
	.loc 1 417 33 discriminator 170
	sxtw	x1, w1
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x2, x0, 1
	b	L774
L773:
	.loc 1 417 33 discriminator 171
	mov	x2, 0
L774:
	.loc 1 417 33 discriminator 173
	ldr	x1, [x29, 1504]
	ldr	w0, [x29, 1440]
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	mov	x3, x0
	mov	x0, x2
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 417 33 discriminator 174
	ldr	w0, [x29, 1424]
	ldr	w1, [x29, 1408]
	cmp	w0, w1
	.loc 1 417 33 discriminator 178
	cmp	w0, w1
	bge	L778
	.loc 1 417 33 discriminator 179
	sxtw	x1, w1
	add	w0, w0, 1
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
L778:
	.loc 1 417 33 discriminator 182
	ldr	w0, [x29, 1424]
	ldr	w2, [x29, 1408]
	cmp	w0, w2
	.loc 1 417 33 discriminator 186
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, x22, x0
	mov	w0, 8285
	strh	w0, [x1, -1]
	.loc 1 417 33 discriminator 187
	ldr	w0, [x29, 896]
	cmp	w2, w0
	.loc 1 417 33 discriminator 191
	cmp	w2, w0
	bge	L784
	.loc 1 417 33 discriminator 192
	sxtw	x1, w0
	add	w0, w2, 1
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
L784:
	.loc 1 417 33 discriminator 195
	ldr	w0, [x29, 1408]
	ldr	w1, [x29, 896]
	cmp	w0, w1
	bge	L785
	.loc 1 417 33 discriminator 196
	sxtw	x1, w1
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x1, x0
	add	x2, x0, 1
	b	L786
L785:
	.loc 1 417 33 discriminator 197
	mov	x2, 0
L786:
	.loc 1 417 33 discriminator 199
	ldr	x1, [x29, 1488]
	ldr	w0, [x29, 1408]
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x0, #1
	add	x0, x22, x0
	bl	_memcpy
	.loc 1 410 10 is_stmt 1
	ldr	x0, [x29, 1640]
	str	x22, [x29, 416]
	mov	w1, 1
	str	w1, [x29, 1752]
	ldr	w1, [x29, 1840]
	str	w1, [x29, 1756]
	add	x1, x29, 1752
	str	x1, [x29, 424]
	ldp	x1, x2, [x29, 416]
	bl	_ada__text_io__put_line
LEHE44:
	.loc 1 410 0 discriminator 2
	mov	w19, 1
L799:
	.loc 1 410 0 is_stmt 0 discriminator 3
	add	x0, x29, 1648
	mov	x16, x0
LEHB45:
	bl	_smc_files__notify_user__B_15__B348b___finalizer.4
LEHE45:
	.loc 1 410 0 discriminator 5
	cmp	w19, 1
	bne	L787
	.loc 1 410 0
	mov	w0, 1
L801:
	.loc 1 410 0 discriminator 6
	cmp	w0, 1
	bne	L788
	.loc 1 410 0
	nop
LBE64:
	.loc 1 418 10 is_stmt 1
	add	x0, x29, 1640
LEHB46:
	bl	_ada__text_io__close
LEHE46:
L805:
LBE60:
LBB66:
	.loc 1 423 7
	mov	x0, sp
	mov	x19, x0
	.loc 1 423 57 discriminator 1
	ldr	w0, [x29, 1256]
	add	w0, w0, 22
	add	w0, w0, 2
	ldr	w1, [x29, 1260]
	add	w0, w0, w1
	str	w0, [x29, 1796]
	ldrsw	x0, [x29, 1796]
	str	x0, [x29, 1784]
	ldrsw	x0, [x29, 1796]
	str	x0, [x29, 512]
	str	xzr, [x29, 520]
	add	x0, x29, 512
	ldp	x2, x3, [x0]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 1288]
	ldr	x1, [x29, 1288]
	add	x0, x0, x1
	str	x0, [x29, 1288]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 1280]
	ldrsw	x0, [x29, 1796]
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
	ldrsw	x0, [x29, 1796]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	add	x0, sp, 16
	str	x0, [x29, 1776]
LBB67:
	.loc 1 423 57 is_stmt 0 discriminator 2
	ldr	x0, [x29, 1776]
	str	x0, [x29, 432]
	mov	w0, 1
	str	w0, [x29, 1760]
	ldr	w0, [x29, 1796]
	str	w0, [x29, 1764]
	add	x0, x29, 1760
	str	x0, [x29, 440]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 448]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 456]
	adrp	x0, lC43@PAGE
	add	x0, x0, lC43@PAGEOFF;
	str	x0, [x29, 464]
	adrp	x0, lC18@PAGE
	add	x0, x0, lC18@PAGEOFF;
	str	x0, [x29, 472]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -48]
	stp	x0, x1, [sp]
	ldp	x6, x7, [x29, 464]
	add	x0, x29, 1536
	ldp	x4, x5, [x0, -32]
	ldp	x2, x3, [x29, 448]
	ldp	x0, x1, [x29, 432]
LEHB47:
	bl	_system__concat_4__str_concat_4
LBE67:
	.loc 1 423 7 is_stmt 1 discriminator 5
	ldr	x0, [x29, 1776]
	str	x0, [x29, 480]
	mov	w0, 1
	str	w0, [x29, 1768]
	ldr	w0, [x29, 1796]
	str	w0, [x29, 1772]
	add	x0, x29, 1768
	str	x0, [x29, 488]
	ldp	x0, x1, [x29, 480]
	bl	_ada__text_io__put_line__2
	.loc 1 423 0 discriminator 8
	mov	sp, x19
LBE66:
	.loc 1 424 8
	b	L815
L808:
	str	x0, [x29, 120]
	str	x1, [x29, 112]
	mov	w19, 0
LBB68:
LBB59:
	.loc 1 385 16
	b	L791
L641:
	ldr	x0, [x29, 120]
	str	x0, [x29, 1248]
	ldr	x28, [x29, 112]
	b	L792
L809:
	str	x0, [x29, 1248]
	mov	x28, x1
L792:
	mov	w0, 0
	b	L793
L642:
	ldr	x2, [x29, 1248]
	mov	x0, x28
	b	L794
L807:
LBE59:
LBE68:
LBE55:
	.loc 1 393 13
	mov	x2, x0
	mov	x0, x1
L794:
	cmp	x0, 1
	beq	L795
	mov	x0, x2
	bl	__Unwind_Resume
LEHE47:
L795:
LBB72:
LBB69:
	.loc 1 393 13 is_stmt 0 discriminator 1
	str	x2, [x29, 1896]
	.loc 1 393 13 discriminator 2
	ldr	x0, [x29, 1896]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 1888]
	.loc 1 394 19 is_stmt 1
	ldr	x0, [x29, 1640]
LEHB48:
	bl	_ada__text_io__is_open
	.loc 1 394 16 discriminator 2
	cmp	w0, 0
	beq	L796
	.loc 1 394 39 discriminator 3
	add	x0, x29, 1640
	bl	_ada__text_io__close
LEHE48:
L796:
	.loc 1 393 13
	mov	x2, 0
	ldr	x1, [x29, 1888]
	ldr	x0, [x29, 1896]
LEHB49:
	bl	___gnat_end_handler_v1
	b	L631
L810:
	mov	x19, x0
	str	x19, [x29, 1880]
	.loc 1 393 13 is_stmt 0 discriminator 5
	ldr	x2, [x29, 1880]
	ldr	x1, [x29, 1888]
	ldr	x0, [x29, 1896]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L812:
	str	x0, [x29, 104]
	str	x1, [x29, 96]
	mov	w19, 0
LBE69:
LBB70:
LBB65:
	.loc 1 410 10 is_stmt 1
	b	L799
L787:
	ldr	x0, [x29, 104]
	str	x0, [x29, 136]
	ldr	x0, [x29, 96]
	str	x0, [x29, 128]
	b	L800
L813:
	str	x0, [x29, 136]
	str	x1, [x29, 128]
L800:
	mov	w0, 0
	b	L801
L788:
	ldr	x0, [x29, 136]
	ldr	x1, [x29, 128]
	b	L802
L811:
L802:
LBE65:
LBE70:
LBE72:
	.loc 1 420 10
	cmp	x1, 2
	beq	L803
	bl	__Unwind_Resume
LEHE49:
L803:
LBB73:
LBB71:
	.loc 1 420 10 is_stmt 0 discriminator 1
	str	x0, [x29, 1816]
	.loc 1 420 10 discriminator 2
	ldr	x0, [x29, 1816]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 1808]
	.loc 1 421 16 is_stmt 1
	ldr	x0, [x29, 1640]
LEHB50:
	bl	_ada__text_io__is_open
	.loc 1 421 13 discriminator 2
	cmp	w0, 0
	beq	L804
	.loc 1 421 36 discriminator 3
	add	x0, x29, 1640
	bl	_ada__text_io__close
LEHE50:
L804:
	.loc 1 420 10
	mov	x2, 0
	ldr	x1, [x29, 1808]
	ldr	x0, [x29, 1816]
LEHB51:
	bl	___gnat_end_handler_v1
	b	L805
L814:
	mov	x19, x0
	str	x19, [x29, 1800]
	.loc 1 420 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 1800]
	ldr	x1, [x29, 1808]
	ldr	x0, [x29, 1816]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L815:
LBE71:
LBE73:
	.loc 1 424 8 is_stmt 1
LEHE51:
	sub	sp, x29, #16
LCFI69:
	ldp	x29, x30, [sp, 16]
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	ldp	x27, x28, [sp, 96]
	add	sp, sp, 1968
LCFI70:
	ret
LFE15:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
	.align	2
LLSDA15:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT15-LLSDATTD15
LLSDATTD15:
	.byte	0x1
	.uleb128 LLSDACSE15-LLSDACSB15
LLSDACSB15:
	.uleb128 LEHB31-LFB15
	.uleb128 LEHE31-LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB32-LFB15
	.uleb128 LEHE32-LEHB32
	.uleb128 L807-LFB15
	.uleb128 0x1
	.uleb128 LEHB33-LFB15
	.uleb128 LEHE33-LEHB33
	.uleb128 L808-LFB15
	.uleb128 0x3
	.uleb128 LEHB34-LFB15
	.uleb128 LEHE34-LEHB34
	.uleb128 L809-LFB15
	.uleb128 0x3
	.uleb128 LEHB35-LFB15
	.uleb128 LEHE35-LEHB35
	.uleb128 L807-LFB15
	.uleb128 0x1
	.uleb128 LEHB36-LFB15
	.uleb128 LEHE36-LEHB36
	.uleb128 L811-LFB15
	.uleb128 0x5
	.uleb128 LEHB37-LFB15
	.uleb128 LEHE37-LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB38-LFB15
	.uleb128 LEHE38-LEHB38
	.uleb128 L811-LFB15
	.uleb128 0x5
	.uleb128 LEHB39-LFB15
	.uleb128 LEHE39-LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB40-LFB15
	.uleb128 LEHE40-LEHB40
	.uleb128 L811-LFB15
	.uleb128 0x5
	.uleb128 LEHB41-LFB15
	.uleb128 LEHE41-LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB42-LFB15
	.uleb128 LEHE42-LEHB42
	.uleb128 L811-LFB15
	.uleb128 0x5
	.uleb128 LEHB43-LFB15
	.uleb128 LEHE43-LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB44-LFB15
	.uleb128 LEHE44-LEHB44
	.uleb128 L812-LFB15
	.uleb128 0x7
	.uleb128 LEHB45-LFB15
	.uleb128 LEHE45-LEHB45
	.uleb128 L813-LFB15
	.uleb128 0x7
	.uleb128 LEHB46-LFB15
	.uleb128 LEHE46-LEHB46
	.uleb128 L811-LFB15
	.uleb128 0x5
	.uleb128 LEHB47-LFB15
	.uleb128 LEHE47-LEHB47
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB48-LFB15
	.uleb128 LEHE48-LEHB48
	.uleb128 L810-LFB15
	.uleb128 0
	.uleb128 LEHB49-LFB15
	.uleb128 LEHE49-LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB50-LFB15
	.uleb128 LEHE50-LEHB50
	.uleb128 L814-LFB15
	.uleb128 0
	.uleb128 LEHB51-LFB15
	.uleb128 LEHE51-LEHB51
	.uleb128 0
	.uleb128 0
LLSDACSE15:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr8:
	.long	___gnat_others_value@GOT-L_got_pcr8
L_got_pcr9:
	.long	___gnat_others_value@GOT-L_got_pcr9
LLSDATT15:
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
_smc_files__notify_user__B_15__B348b___finalizer.4:
LFB17:
	stp	x29, x30, [sp, -32]!
LCFI71:
	mov	x29, sp
LCFI72:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI73:
	ret
LFE17:
	.align	2
_smc_files__write_earu_temp__B_16__B514b___finalizer.5:
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
lC44:
	.ascii "/usr/local/EnvironmentalAwareReferentialUnit/EARU_dataIO/sensor_temp_"
	.align	3
lC45:
	.ascii ".dat"
	.text
	.align	2
	.globl _smc_files__write_earu_temp
_smc_files__write_earu_temp:
LFB18:
	.loc 1 430 4
	stp	x29, x30, [sp, -448]!
LCFI77:
	mov	x29, sp
LCFI78:
LEHB52:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI79:
	stp	x0, x1, [x29, 272]
	str	s0, [x29, 268]
	.loc 1 430 4
	add	x0, x29, 448
	.loc 1 430 4 is_stmt 0 discriminator 1
	str	x0, [x29, 344]
	ldr	x0, [x29, 280]
	ldr	w3, [x0]
	ldr	x0, [x29, 280]
	ldr	w2, [x0, 4]
	cmp	w2, w3
	blt	L821
	.loc 1 430 4 discriminator 2
	sub	w0, w2, w3
	add	w14, w0, 1
	b	L822
L821:
	.loc 1 430 4 discriminator 3
	mov	w14, 0
L822:
LBB74:
	mov	x0, sp
	mov	x28, x0
	.loc 1 430 4 discriminator 5
	cmp	w2, w3
	.loc 1 430 4 discriminator 9
	cmp	w2, w3
	blt	L826
	.loc 1 430 4 discriminator 10
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
	.loc 1 430 4 discriminator 13
	cmp	w2, w3
	.loc 1 433 7 is_stmt 1
	str	xzr, [x29, 312]
	.loc 1 434 112
	add	w0, w14, 69
	add	w0, w0, 4
	str	w0, [x29, 444]
	ldrsw	x0, [x29, 444]
	str	x0, [x29, 432]
	ldrsw	x0, [x29, 444]
	mov	x6, x0
	mov	x7, 0
	lsr	x1, x6, 61
	lsl	x13, x7, 3
	mov	x0, x13
	add	x0, x1, x0
	mov	x13, x0
	lsl	x12, x6, 3
	ldrsw	x0, [x29, 444]
	mov	x8, x0
	mov	x9, 0
	lsr	x1, x8, 61
	lsl	x17, x9, 3
	mov	x0, x17
	add	x0, x1, x0
	mov	x17, x0
	lsl	x16, x8, 3
	ldrsw	x0, [x29, 444]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	str	x0, [x29, 424]
LBB75:
	.loc 1 434 112 is_stmt 0 discriminator 1
	ldr	x0, [x29, 424]
	str	x0, [x29, 128]
	mov	w0, 1
	str	w0, [x29, 352]
	ldr	w0, [x29, 444]
	str	w0, [x29, 356]
	add	x0, x29, 352
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
	ldp	x4, x5, [x29, 272]
	ldp	x2, x3, [x29, 144]
	ldp	x0, x1, [x29, 128]
	bl	_system__concat_3__str_concat_3
LBE75:
	.loc 1 434 7 is_stmt 1 discriminator 3
	ldrsw	x0, [x29, 444]
	str	x0, [x29, 416]
	ldrsw	x0, [x29, 444]
	mov	x22, x0
	mov	x23, 0
	lsr	x0, x22, 61
	lsl	x27, x23, 3
	mov	x1, x27
	add	x0, x0, x1
	mov	x27, x0
	lsl	x26, x22, 3
	ldr	x0, [x29, 424]
	str	x0, [x29, 408]
	.loc 1 437 7
	ldr	x0, [x29, 424]
	str	x0, [x29, 176]
	mov	w0, 1
	str	w0, [x29, 360]
	ldr	w0, [x29, 444]
	str	w0, [x29, 364]
	add	x0, x29, 360
	str	x0, [x29, 184]
	ldp	x0, x1, [x29, 176]
	bl	_smc_files__ensure_directory_exists
LEHE52:
LBB76:
LBB77:
	.loc 1 440 10
	ldr	x6, [x29, 312]
	ldr	x0, [x29, 424]
	str	x0, [x29, 192]
	mov	w0, 1
	str	w0, [x29, 368]
	ldr	w0, [x29, 444]
	str	w0, [x29, 372]
	add	x0, x29, 368
	str	x0, [x29, 200]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 208]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 216]
	ldp	x4, x5, [x29, 208]
	ldp	x2, x3, [x29, 192]
	mov	w1, 2
	mov	x0, x6
LEHB53:
	bl	_ada__text_io__create
LEHE53:
	.loc 1 440 10 is_stmt 0 discriminator 2
	str	x0, [x29, 312]
LBE77:
LBB78:
	add	x0, x29, 320
	mov	x8, x0
LEHB54:
	bl	_system__secondary_stack__ss_mark
	.loc 1 441 32 is_stmt 1
	add	x0, x29, 296
	str	x0, [x29, 224]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 232]
	mov	w2, 6
	ldp	x0, x1, [x29, 224]
	ldr	s0, [x29, 268]
	bl	_system__img_flt__impl__image_floating_point
	.loc 1 441 32 is_stmt 0 discriminator 2
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
	.loc 1 441 10 is_stmt 1 discriminator 2
	ldr	x19, [x29, 312]
	.loc 1 441 21 discriminator 2
	add	x1, x29, 296
	str	x1, [x29, 240]
	mov	w1, 1
	str	w1, [x29, 376]
	str	w0, [x29, 380]
	add	x0, x29, 376
	str	x0, [x29, 248]
	mov	w2, 2
	ldp	x0, x1, [x29, 240]
	bl	_ada__strings__fixed__trim
	.loc 1 441 10 discriminator 4
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ada__text_io__put__3
LEHE54:
	.loc 1 441 0 discriminator 6
	mov	w19, 1
L833:
	.loc 1 441 0 is_stmt 0 discriminator 7
	add	x0, x29, 320
	mov	x16, x0
LEHB55:
	bl	_smc_files__write_earu_temp__B_16__B514b___finalizer.5
LEHE55:
	.loc 1 441 0 discriminator 9
	cmp	w19, 1
	bne	L829
	.loc 1 441 0
	mov	w0, 1
L835:
	.loc 1 441 0 discriminator 10
	cmp	w0, 1
	bne	L830
	.loc 1 441 0
	nop
LBE78:
	.loc 1 442 10 is_stmt 1
	add	x0, x29, 312
LEHB56:
	bl	_ada__text_io__close
LEHE56:
L839:
LEHB57:
LBE76:
	.loc 1 447 8
	mov	sp, x28
	b	L845
L842:
	str	x0, [x29, 112]
	str	x1, [x29, 104]
	mov	w19, 0
LBB80:
LBB79:
	.loc 1 441 10
	b	L833
L829:
	ldr	x0, [x29, 112]
	str	x0, [x29, 256]
	ldr	x0, [x29, 104]
	str	x0, [x29, 120]
	b	L834
L843:
	str	x0, [x29, 256]
	str	x1, [x29, 120]
L834:
	mov	w0, 0
	b	L835
L830:
	ldr	x0, [x29, 256]
	ldr	x1, [x29, 120]
	b	L836
L841:
L836:
LBE79:
LBE80:
LBE74:
	.loc 1 444 10
	cmp	x1, 1
	beq	L837
	bl	__Unwind_Resume
LEHE57:
L837:
LBB82:
LBB81:
	.loc 1 444 10 is_stmt 0 discriminator 1
	str	x0, [x29, 400]
	.loc 1 444 10 discriminator 2
	ldr	x0, [x29, 400]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 392]
	.loc 1 445 16 is_stmt 1
	ldr	x0, [x29, 312]
LEHB58:
	bl	_ada__text_io__is_open
	.loc 1 445 13 discriminator 2
	cmp	w0, 0
	beq	L838
	.loc 1 445 36 discriminator 3
	add	x0, x29, 312
	bl	_ada__text_io__close
LEHE58:
L838:
	.loc 1 444 10
	mov	x2, 0
	ldr	x1, [x29, 392]
	ldr	x0, [x29, 400]
LEHB59:
	bl	___gnat_end_handler_v1
	b	L839
L844:
	mov	x19, x0
	str	x19, [x29, 384]
	.loc 1 444 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 384]
	ldr	x1, [x29, 392]
	ldr	x0, [x29, 400]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L845:
LBE81:
LBE82:
	.loc 1 447 8 is_stmt 1
LEHE59:
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 448
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
	.uleb128 LEHB52-LFB18
	.uleb128 LEHE52-LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB53-LFB18
	.uleb128 LEHE53-LEHB53
	.uleb128 L841-LFB18
	.uleb128 0x1
	.uleb128 LEHB54-LFB18
	.uleb128 LEHE54-LEHB54
	.uleb128 L842-LFB18
	.uleb128 0x3
	.uleb128 LEHB55-LFB18
	.uleb128 LEHE55-LEHB55
	.uleb128 L843-LFB18
	.uleb128 0x3
	.uleb128 LEHB56-LFB18
	.uleb128 LEHE56-LEHB56
	.uleb128 L841-LFB18
	.uleb128 0x1
	.uleb128 LEHB57-LFB18
	.uleb128 LEHE57-LEHB57
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB58-LFB18
	.uleb128 LEHE58-LEHB58
	.uleb128 L844-LFB18
	.uleb128 0
	.uleb128 LEHB59-LFB18
	.uleb128 LEHE59-LEHB59
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
lC19:
	.word	1
	.word	69
	.text
	.align	2
_smc_files__write_earu_fan__B_17__B530b___finalizer.6:
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
	.const
	.align	3
lC46:
	.ascii "/usr/local/EnvironmentalAwareReferentialUnit/EARU_dataIO/sensor_fan_"
	.text
	.align	2
	.globl _smc_files__write_earu_fan
_smc_files__write_earu_fan:
LFB20:
	.loc 1 453 4
	stp	x29, x30, [sp, -448]!
LCFI84:
	mov	x29, sp
LCFI85:
LEHB60:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI86:
	stp	x0, x1, [x29, 272]
	str	s0, [x29, 268]
	.loc 1 453 4
	add	x0, x29, 448
	.loc 1 453 4 is_stmt 0 discriminator 1
	str	x0, [x29, 344]
	ldr	x0, [x29, 280]
	ldr	w3, [x0]
	ldr	x0, [x29, 280]
	ldr	w2, [x0, 4]
	cmp	w2, w3
	blt	L849
	.loc 1 453 4 discriminator 2
	sub	w0, w2, w3
	add	w14, w0, 1
	b	L850
L849:
	.loc 1 453 4 discriminator 3
	mov	w14, 0
L850:
LBB83:
	mov	x0, sp
	mov	x28, x0
	.loc 1 453 4 discriminator 5
	cmp	w2, w3
	.loc 1 453 4 discriminator 9
	cmp	w2, w3
	blt	L854
	.loc 1 453 4 discriminator 10
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
L854:
	.loc 1 453 4 discriminator 13
	cmp	w2, w3
	.loc 1 456 7 is_stmt 1
	str	xzr, [x29, 312]
	.loc 1 457 111
	add	w0, w14, 68
	add	w0, w0, 4
	str	w0, [x29, 444]
	ldrsw	x0, [x29, 444]
	str	x0, [x29, 432]
	ldrsw	x0, [x29, 444]
	mov	x6, x0
	mov	x7, 0
	lsr	x1, x6, 61
	lsl	x13, x7, 3
	mov	x0, x13
	add	x0, x1, x0
	mov	x13, x0
	lsl	x12, x6, 3
	ldrsw	x0, [x29, 444]
	mov	x8, x0
	mov	x9, 0
	lsr	x1, x8, 61
	lsl	x17, x9, 3
	mov	x0, x17
	add	x0, x1, x0
	mov	x17, x0
	lsl	x16, x8, 3
	ldrsw	x0, [x29, 444]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	str	x0, [x29, 424]
LBB84:
	.loc 1 457 111 is_stmt 0 discriminator 1
	ldr	x0, [x29, 424]
	str	x0, [x29, 128]
	mov	w0, 1
	str	w0, [x29, 352]
	ldr	w0, [x29, 444]
	str	w0, [x29, 356]
	add	x0, x29, 352
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
	ldp	x4, x5, [x29, 272]
	ldp	x2, x3, [x29, 144]
	ldp	x0, x1, [x29, 128]
	bl	_system__concat_3__str_concat_3
LBE84:
	.loc 1 457 7 is_stmt 1 discriminator 3
	ldrsw	x0, [x29, 444]
	str	x0, [x29, 416]
	ldrsw	x0, [x29, 444]
	mov	x22, x0
	mov	x23, 0
	lsr	x0, x22, 61
	lsl	x27, x23, 3
	mov	x1, x27
	add	x0, x0, x1
	mov	x27, x0
	lsl	x26, x22, 3
	ldr	x0, [x29, 424]
	str	x0, [x29, 408]
	.loc 1 459 7
	ldr	x0, [x29, 424]
	str	x0, [x29, 176]
	mov	w0, 1
	str	w0, [x29, 360]
	ldr	w0, [x29, 444]
	str	w0, [x29, 364]
	add	x0, x29, 360
	str	x0, [x29, 184]
	ldp	x0, x1, [x29, 176]
	bl	_smc_files__ensure_directory_exists
LEHE60:
LBB85:
LBB86:
	.loc 1 462 10
	ldr	x6, [x29, 312]
	ldr	x0, [x29, 424]
	str	x0, [x29, 192]
	mov	w0, 1
	str	w0, [x29, 368]
	ldr	w0, [x29, 444]
	str	w0, [x29, 372]
	add	x0, x29, 368
	str	x0, [x29, 200]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 208]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 216]
	ldp	x4, x5, [x29, 208]
	ldp	x2, x3, [x29, 192]
	mov	w1, 2
	mov	x0, x6
LEHB61:
	bl	_ada__text_io__create
LEHE61:
	.loc 1 462 10 is_stmt 0 discriminator 2
	str	x0, [x29, 312]
LBE86:
LBB87:
	add	x0, x29, 320
	mov	x8, x0
LEHB62:
	bl	_system__secondary_stack__ss_mark
	.loc 1 463 32 is_stmt 1
	add	x0, x29, 296
	str	x0, [x29, 224]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 232]
	mov	w2, 6
	ldp	x0, x1, [x29, 224]
	ldr	s0, [x29, 268]
	bl	_system__img_flt__impl__image_floating_point
	.loc 1 463 32 is_stmt 0 discriminator 2
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
	.loc 1 463 10 is_stmt 1 discriminator 2
	ldr	x19, [x29, 312]
	.loc 1 463 21 discriminator 2
	add	x1, x29, 296
	str	x1, [x29, 240]
	mov	w1, 1
	str	w1, [x29, 376]
	str	w0, [x29, 380]
	add	x0, x29, 376
	str	x0, [x29, 248]
	mov	w2, 2
	ldp	x0, x1, [x29, 240]
	bl	_ada__strings__fixed__trim
	.loc 1 463 10 discriminator 4
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ada__text_io__put__3
LEHE62:
	.loc 1 463 0 discriminator 6
	mov	w19, 1
L861:
	.loc 1 463 0 is_stmt 0 discriminator 7
	add	x0, x29, 320
	mov	x16, x0
LEHB63:
	bl	_smc_files__write_earu_fan__B_17__B530b___finalizer.6
LEHE63:
	.loc 1 463 0 discriminator 9
	cmp	w19, 1
	bne	L857
	.loc 1 463 0
	mov	w0, 1
L863:
	.loc 1 463 0 discriminator 10
	cmp	w0, 1
	bne	L858
	.loc 1 463 0
	nop
LBE87:
	.loc 1 464 10 is_stmt 1
	add	x0, x29, 312
LEHB64:
	bl	_ada__text_io__close
LEHE64:
L867:
LEHB65:
LBE85:
	.loc 1 469 8
	mov	sp, x28
	b	L873
L870:
	str	x0, [x29, 112]
	str	x1, [x29, 104]
	mov	w19, 0
LBB89:
LBB88:
	.loc 1 463 10
	b	L861
L857:
	ldr	x0, [x29, 112]
	str	x0, [x29, 256]
	ldr	x0, [x29, 104]
	str	x0, [x29, 120]
	b	L862
L871:
	str	x0, [x29, 256]
	str	x1, [x29, 120]
L862:
	mov	w0, 0
	b	L863
L858:
	ldr	x0, [x29, 256]
	ldr	x1, [x29, 120]
	b	L864
L869:
L864:
LBE88:
LBE89:
LBE83:
	.loc 1 466 10
	cmp	x1, 1
	beq	L865
	bl	__Unwind_Resume
LEHE65:
L865:
LBB91:
LBB90:
	.loc 1 466 10 is_stmt 0 discriminator 1
	str	x0, [x29, 400]
	.loc 1 466 10 discriminator 2
	ldr	x0, [x29, 400]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 392]
	.loc 1 467 16 is_stmt 1
	ldr	x0, [x29, 312]
LEHB66:
	bl	_ada__text_io__is_open
	.loc 1 467 13 discriminator 2
	cmp	w0, 0
	beq	L866
	.loc 1 467 36 discriminator 3
	add	x0, x29, 312
	bl	_ada__text_io__close
LEHE66:
L866:
	.loc 1 466 10
	mov	x2, 0
	ldr	x1, [x29, 392]
	ldr	x0, [x29, 400]
LEHB67:
	bl	___gnat_end_handler_v1
	b	L867
L872:
	mov	x19, x0
	str	x19, [x29, 384]
	.loc 1 466 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 384]
	ldr	x1, [x29, 392]
	ldr	x0, [x29, 400]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L873:
LBE90:
LBE91:
	.loc 1 469 8 is_stmt 1
LEHE67:
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 448
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
	.uleb128 LEHB60-LFB20
	.uleb128 LEHE60-LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB61-LFB20
	.uleb128 LEHE61-LEHB61
	.uleb128 L869-LFB20
	.uleb128 0x1
	.uleb128 LEHB62-LFB20
	.uleb128 LEHE62-LEHB62
	.uleb128 L870-LFB20
	.uleb128 0x3
	.uleb128 LEHB63-LFB20
	.uleb128 LEHE63-LEHB63
	.uleb128 L871-LFB20
	.uleb128 0x3
	.uleb128 LEHB64-LFB20
	.uleb128 LEHE64-LEHB64
	.uleb128 L869-LFB20
	.uleb128 0x1
	.uleb128 LEHB65-LFB20
	.uleb128 LEHE65-LEHB65
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB66-LFB20
	.uleb128 LEHE66-LEHB66
	.uleb128 L872-LFB20
	.uleb128 0
	.uleb128 LEHB67-LFB20
	.uleb128 LEHE67-LEHB67
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
lC20:
	.word	1
	.word	68
	.text
	.align	2
_smc_files__write_earu_turbo__B_18__B539b___finalizer.7:
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
	.globl _smc_files__write_earu_turbo
_smc_files__write_earu_turbo:
LFB22:
	.loc 1 475 4
	stp	x29, x30, [sp, -256]!
LCFI91:
	mov	x29, sp
LCFI92:
LEHB68:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI93:
	str	w0, [x29, 156]
	.loc 1 475 4
	add	x0, x29, 256
	.loc 1 475 4 is_stmt 0 discriminator 1
	str	x0, [x29, 208]
	.loc 1 478 7 is_stmt 1
	str	xzr, [x29, 216]
	.loc 1 481 7
	adrp	x0, _path.15@PAGE
	add	x2, x0, _path.15@PAGEOFF;
	adrp	x0, lC21@PAGE
	add	x3, x0, lC21@PAGEOFF;
	mov	x0, x2
	mov	x1, x3
	bl	_smc_files__ensure_directory_exists
LEHE68:
LBB92:
LBB93:
	.loc 1 484 10
	ldr	x6, [x29, 216]
	adrp	x0, _path.15@PAGE
	add	x24, x0, _path.15@PAGEOFF;
	adrp	x0, lC21@PAGE
	add	x25, x0, lC21@PAGEOFF;
	adrp	x0, lC30@PAGE
	add	x26, x0, lC30@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x27, x0, lC0@PAGEOFF;
	mov	x4, x26
	mov	x5, x27
	mov	x2, x24
	mov	x3, x25
	mov	w1, 2
	mov	x0, x6
LEHB69:
	bl	_ada__text_io__create
LEHE69:
	.loc 1 484 10 is_stmt 0 discriminator 2
	str	x0, [x29, 216]
LBE93:
LBB94:
	add	x0, x29, 184
	mov	x8, x0
LEHB70:
	bl	_system__secondary_stack__ss_mark
	.loc 1 485 34 is_stmt 1
	add	x0, x29, 168
	str	x0, [x29, 112]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 120]
	ldp	x1, x2, [x29, 112]
	ldr	w0, [x29, 156]
	bl	_system__img_int__impl__image_integer
	.loc 1 485 34 is_stmt 0 discriminator 2
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
	.loc 1 485 10 is_stmt 1 discriminator 2
	ldr	x19, [x29, 216]
	.loc 1 485 21 discriminator 2
	add	x1, x29, 168
	str	x1, [x29, 128]
	mov	w1, 1
	str	w1, [x29, 224]
	str	w0, [x29, 228]
	add	x0, x29, 224
	str	x0, [x29, 136]
	mov	w2, 2
	ldp	x0, x1, [x29, 128]
	bl	_ada__strings__fixed__trim
	.loc 1 485 10 discriminator 4
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ada__text_io__put__3
LEHE70:
	.loc 1 485 0 discriminator 6
	mov	w19, 1
L881:
	.loc 1 485 0 is_stmt 0 discriminator 7
	add	x0, x29, 184
	mov	x16, x0
LEHB71:
	bl	_smc_files__write_earu_turbo__B_18__B539b___finalizer.7
LEHE71:
	.loc 1 485 0 discriminator 9
	cmp	w19, 1
	bne	L877
	.loc 1 485 0
	mov	w0, 1
L883:
	.loc 1 485 0 discriminator 10
	cmp	w0, 1
	bne	L878
	.loc 1 485 0
	nop
LBE94:
	.loc 1 486 10 is_stmt 1
	add	x0, x29, 216
LEHB72:
	bl	_ada__text_io__close
LEHE72:
LBE92:
	.loc 1 491 8
	b	L876
L890:
	str	x0, [x29, 104]
	str	x1, [x29, 96]
	mov	w19, 0
LBB96:
LBB95:
	.loc 1 485 10
	b	L881
L877:
	ldr	x0, [x29, 104]
	str	x0, [x29, 144]
	ldr	x28, [x29, 96]
	b	L882
L891:
	str	x0, [x29, 144]
	mov	x28, x1
L882:
	mov	w0, 0
	b	L883
L878:
	ldr	x0, [x29, 144]
	mov	x1, x28
	b	L884
L889:
L884:
LBE95:
LBE96:
	.loc 1 488 10
	cmp	x1, 1
	beq	L885
LEHB73:
	bl	__Unwind_Resume
LEHE73:
L885:
LBB97:
	.loc 1 488 10 is_stmt 0 discriminator 1
	str	x0, [x29, 248]
	.loc 1 488 10 discriminator 2
	ldr	x0, [x29, 248]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 240]
	.loc 1 489 16 is_stmt 1
	ldr	x0, [x29, 216]
LEHB74:
	bl	_ada__text_io__is_open
	.loc 1 489 13 discriminator 2
	cmp	w0, 0
	beq	L886
	.loc 1 489 36 discriminator 3
	add	x0, x29, 216
	bl	_ada__text_io__close
LEHE74:
L886:
	.loc 1 488 10
	mov	x2, 0
	ldr	x1, [x29, 240]
	ldr	x0, [x29, 248]
LEHB75:
	bl	___gnat_end_handler_v1
LBE97:
	.loc 1 491 8
	b	L876
L892:
LBB98:
	.loc 1 488 10
	mov	x19, x0
	str	x19, [x29, 232]
	.loc 1 488 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 232]
	ldr	x1, [x29, 240]
	ldr	x0, [x29, 248]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L876:
LBE98:
	.loc 1 491 8 is_stmt 1
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE75:
	ldp	x29, x30, [sp], 256
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
	.uleb128 LEHB68-LFB22
	.uleb128 LEHE68-LEHB68
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB69-LFB22
	.uleb128 LEHE69-LEHB69
	.uleb128 L889-LFB22
	.uleb128 0x1
	.uleb128 LEHB70-LFB22
	.uleb128 LEHE70-LEHB70
	.uleb128 L890-LFB22
	.uleb128 0x3
	.uleb128 LEHB71-LFB22
	.uleb128 LEHE71-LEHB71
	.uleb128 L891-LFB22
	.uleb128 0x3
	.uleb128 LEHB72-LFB22
	.uleb128 LEHE72-LEHB72
	.uleb128 L889-LFB22
	.uleb128 0x1
	.uleb128 LEHB73-LFB22
	.uleb128 LEHE73-LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB74-LFB22
	.uleb128 LEHE74-LEHB74
	.uleb128 L892-LFB22
	.uleb128 0
	.uleb128 LEHB75-LFB22
	.uleb128 LEHE75-LEHB75
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
lC21:
	.word	1
	.word	78
	.text
	.align	2
_smc_files__load_fan_calibration__B_19__B548b___finalizer.8:
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
	.globl _smc_files__load_fan_calibration
_smc_files__load_fan_calibration:
LFB24:
	.loc 1 497 4
	stp	x29, x30, [sp, -176]!
LCFI98:
	mov	x29, sp
LCFI99:
LEHB76:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
LCFI100:
	.loc 1 497 4
	add	x2, x29, 176
	.loc 1 497 4 is_stmt 0 discriminator 1
	str	x2, [x29, 136]
LBB99:
	.loc 1 499 7 is_stmt 1
	str	xzr, [x29, 104]
	.loc 1 501 22
	str	wzr, [x29, 148]
	.loc 1 502 29
	adrp	x2, _smc_files__calibration_file@PAGE
	add	x0, x2, _smc_files__calibration_file@PAGEOFF;
	adrp	x2, lC22@PAGE
	add	x1, x2, lC22@PAGEOFF;
	bl	_ada__directories__exists
LEHE76:
	.loc 1 502 29 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 502 7 is_stmt 1 discriminator 2
	cmp	w0, 0
	bne	L916
LBB100:
LBB101:
	.loc 1 507 10
	ldr	x6, [x29, 104]
	adrp	x0, _smc_files__calibration_file@PAGE
	add	x20, x0, _smc_files__calibration_file@PAGEOFF;
	adrp	x0, lC22@PAGE
	add	x21, x0, lC22@PAGEOFF;
	adrp	x0, lC30@PAGE
	add	x22, x0, lC30@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x23, x0, lC0@PAGEOFF;
	mov	x4, x22
	mov	x5, x23
	mov	x2, x20
	mov	x3, x21
	mov	w1, 0
	mov	x0, x6
LEHB77:
	bl	_ada__text_io__open
LEHE77:
	.loc 1 507 10 is_stmt 0 discriminator 2
	str	x0, [x29, 104]
LBE101:
LBB102:
	add	x0, x29, 112
	mov	x8, x0
LEHB78:
	bl	_system__secondary_stack__ss_mark
	.loc 1 508 41 is_stmt 1
	ldr	x0, [x29, 104]
	bl	_ada__text_io__get_line__3
	.loc 1 508 33 discriminator 2
	bl	_system__val_flt__impl__value_real
LEHE78:
	fmov	s31, s0
	.loc 1 508 25 discriminator 4
	str	s31, [x29, 148]
	.loc 1 508 0 discriminator 4
	mov	w19, 1
L903:
	.loc 1 508 0 is_stmt 0 discriminator 5
	add	x0, x29, 112
	mov	x16, x0
LEHB79:
	bl	_smc_files__load_fan_calibration__B_19__B548b___finalizer.8
LEHE79:
	.loc 1 508 0 discriminator 7
	cmp	w19, 1
	bne	L898
	.loc 1 508 0
	mov	w0, 1
L905:
	.loc 1 508 0 discriminator 8
	cmp	w0, 1
	bne	L899
	.loc 1 508 0
	nop
LBE102:
	.loc 1 509 10 is_stmt 1
	add	x0, x29, 104
LEHB80:
	bl	_ada__text_io__close
LEHE80:
LBE100:
	.loc 1 514 8
	b	L900
L916:
	.loc 1 503 10
	nop
L900:
LBE99:
	.loc 1 514 8 discriminator 1
	ldr	s31, [x29, 148]
	.loc 1 514 8 is_stmt 0
	b	L915
L912:
	mov	x27, x0
	mov	x26, x1
	mov	w19, 0
LBB107:
LBB104:
LBB103:
	.loc 1 508 25 is_stmt 1
	b	L903
L898:
	mov	x25, x27
	mov	x24, x26
	b	L904
L913:
	mov	x25, x0
	mov	x24, x1
L904:
	mov	w0, 0
	b	L905
L899:
	mov	x0, x25
	mov	x1, x24
	b	L906
L911:
L906:
LBE103:
LBE104:
LBE107:
	.loc 1 511 10
	cmp	x1, 1
	beq	L907
LEHB81:
	bl	__Unwind_Resume
LEHE81:
L907:
LBB108:
LBB105:
	.loc 1 511 10 is_stmt 0 discriminator 1
	str	x0, [x29, 168]
	.loc 1 511 10 discriminator 2
	ldr	x0, [x29, 168]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 160]
	.loc 1 512 16 is_stmt 1
	ldr	x0, [x29, 104]
LEHB82:
	bl	_ada__text_io__is_open
	.loc 1 512 13 discriminator 2
	cmp	w0, 0
	beq	L908
	.loc 1 512 36 discriminator 3
	add	x0, x29, 104
	bl	_ada__text_io__close
LEHE82:
L908:
	.loc 1 511 10
	mov	x2, 0
	ldr	x1, [x29, 160]
	ldr	x0, [x29, 168]
LEHB83:
	bl	___gnat_end_handler_v1
LBE105:
	.loc 1 514 8
	b	L900
L914:
LBB106:
	.loc 1 511 10
	mov	x19, x0
	str	x19, [x29, 152]
	.loc 1 511 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 152]
	ldr	x1, [x29, 160]
	ldr	x0, [x29, 168]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L915:
LBE106:
LBE108:
	.loc 1 514 8 is_stmt 1
	fmov	s0, s31
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
LEHE83:
	ldp	x29, x30, [sp], 176
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
	.uleb128 LEHB76-LFB24
	.uleb128 LEHE76-LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB77-LFB24
	.uleb128 LEHE77-LEHB77
	.uleb128 L911-LFB24
	.uleb128 0x1
	.uleb128 LEHB78-LFB24
	.uleb128 LEHE78-LEHB78
	.uleb128 L912-LFB24
	.uleb128 0x3
	.uleb128 LEHB79-LFB24
	.uleb128 LEHE79-LEHB79
	.uleb128 L913-LFB24
	.uleb128 0x3
	.uleb128 LEHB80-LFB24
	.uleb128 LEHE80-LEHB80
	.uleb128 L911-LFB24
	.uleb128 0x1
	.uleb128 LEHB81-LFB24
	.uleb128 LEHE81-LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB82-LFB24
	.uleb128 LEHE82-LEHB82
	.uleb128 L914-LFB24
	.uleb128 0
	.uleb128 LEHB83-LFB24
	.uleb128 LEHE83-LEHB83
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
	.const
	.align	2
lC22:
	.word	1
	.word	31
	.text
	.align	2
_smc_files__save_fan_calibration__B_20__B551b___finalizer.9:
LFB27:
	stp	x29, x30, [sp, -32]!
LCFI102:
	mov	x29, sp
LCFI103:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI104:
	ret
LFE27:
	.align	2
	.globl _smc_files__save_fan_calibration
_smc_files__save_fan_calibration:
LFB26:
	.loc 1 520 4
	stp	x29, x30, [sp, -256]!
LCFI105:
	mov	x29, sp
LCFI106:
LEHB84:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI107:
	str	s0, [x29, 156]
	.loc 1 520 4
	add	x2, x29, 256
	.loc 1 520 4 is_stmt 0 discriminator 1
	str	x2, [x29, 208]
	.loc 1 523 7 is_stmt 1
	str	xzr, [x29, 216]
	.loc 1 525 7
	adrp	x2, _smc_files__calibration_file@PAGE
	add	x0, x2, _smc_files__calibration_file@PAGEOFF;
	adrp	x2, lC22@PAGE
	add	x1, x2, lC22@PAGEOFF;
	bl	_smc_files__ensure_directory_exists
LEHE84:
LBB109:
LBB110:
	.loc 1 528 10
	ldr	x6, [x29, 216]
	adrp	x0, _smc_files__calibration_file@PAGE
	add	x24, x0, _smc_files__calibration_file@PAGEOFF;
	adrp	x0, lC22@PAGE
	add	x25, x0, lC22@PAGEOFF;
	adrp	x0, lC30@PAGE
	add	x26, x0, lC30@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x27, x0, lC0@PAGEOFF;
	mov	x4, x26
	mov	x5, x27
	mov	x2, x24
	mov	x3, x25
	mov	w1, 2
	mov	x0, x6
LEHB85:
	bl	_ada__text_io__create
LEHE85:
	.loc 1 528 10 is_stmt 0 discriminator 2
	str	x0, [x29, 216]
LBE110:
LBB111:
	add	x0, x29, 184
	mov	x8, x0
LEHB86:
	bl	_system__secondary_stack__ss_mark
	.loc 1 529 32 is_stmt 1
	add	x0, x29, 168
	str	x0, [x29, 112]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 120]
	mov	w2, 6
	ldp	x0, x1, [x29, 112]
	ldr	s0, [x29, 156]
	bl	_system__img_flt__impl__image_floating_point
	.loc 1 529 32 is_stmt 0 discriminator 2
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
	.loc 1 529 10 is_stmt 1 discriminator 2
	ldr	x19, [x29, 216]
	.loc 1 529 21 discriminator 2
	add	x1, x29, 168
	str	x1, [x29, 128]
	mov	w1, 1
	str	w1, [x29, 224]
	str	w0, [x29, 228]
	add	x0, x29, 224
	str	x0, [x29, 136]
	mov	w2, 2
	ldp	x0, x1, [x29, 128]
	bl	_ada__strings__fixed__trim
	.loc 1 529 10 discriminator 4
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ada__text_io__put__3
LEHE86:
	.loc 1 529 0 discriminator 6
	mov	w19, 1
L924:
	.loc 1 529 0 is_stmt 0 discriminator 7
	add	x0, x29, 184
	mov	x16, x0
LEHB87:
	bl	_smc_files__save_fan_calibration__B_20__B551b___finalizer.9
LEHE87:
	.loc 1 529 0 discriminator 9
	cmp	w19, 1
	bne	L920
	.loc 1 529 0
	mov	w0, 1
L926:
	.loc 1 529 0 discriminator 10
	cmp	w0, 1
	bne	L921
	.loc 1 529 0
	nop
LBE111:
	.loc 1 530 10 is_stmt 1
	add	x0, x29, 216
LEHB88:
	bl	_ada__text_io__close
LEHE88:
LBE109:
	.loc 1 535 8
	b	L919
L933:
	str	x0, [x29, 104]
	str	x1, [x29, 96]
	mov	w19, 0
LBB113:
LBB112:
	.loc 1 529 10
	b	L924
L920:
	ldr	x0, [x29, 104]
	str	x0, [x29, 144]
	ldr	x28, [x29, 96]
	b	L925
L934:
	str	x0, [x29, 144]
	mov	x28, x1
L925:
	mov	w0, 0
	b	L926
L921:
	ldr	x0, [x29, 144]
	mov	x1, x28
	b	L927
L932:
L927:
LBE112:
LBE113:
	.loc 1 532 10
	cmp	x1, 1
	beq	L928
LEHB89:
	bl	__Unwind_Resume
LEHE89:
L928:
LBB114:
	.loc 1 532 10 is_stmt 0 discriminator 1
	str	x0, [x29, 248]
	.loc 1 532 10 discriminator 2
	ldr	x0, [x29, 248]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 240]
	.loc 1 533 16 is_stmt 1
	ldr	x0, [x29, 216]
LEHB90:
	bl	_ada__text_io__is_open
	.loc 1 533 13 discriminator 2
	cmp	w0, 0
	beq	L929
	.loc 1 533 36 discriminator 3
	add	x0, x29, 216
	bl	_ada__text_io__close
LEHE90:
L929:
	.loc 1 532 10
	mov	x2, 0
	ldr	x1, [x29, 240]
	ldr	x0, [x29, 248]
LEHB91:
	bl	___gnat_end_handler_v1
LBE114:
	.loc 1 535 8
	b	L919
L935:
LBB115:
	.loc 1 532 10
	mov	x19, x0
	str	x19, [x29, 232]
	.loc 1 532 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 232]
	ldr	x1, [x29, 240]
	ldr	x0, [x29, 248]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L919:
LBE115:
	.loc 1 535 8 is_stmt 1
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE91:
	ldp	x29, x30, [sp], 256
LCFI108:
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
	.uleb128 LEHB84-LFB26
	.uleb128 LEHE84-LEHB84
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB85-LFB26
	.uleb128 LEHE85-LEHB85
	.uleb128 L932-LFB26
	.uleb128 0x1
	.uleb128 LEHB86-LFB26
	.uleb128 LEHE86-LEHB86
	.uleb128 L933-LFB26
	.uleb128 0x3
	.uleb128 LEHB87-LFB26
	.uleb128 LEHE87-LEHB87
	.uleb128 L934-LFB26
	.uleb128 0x3
	.uleb128 LEHB88-LFB26
	.uleb128 LEHE88-LEHB88
	.uleb128 L932-LFB26
	.uleb128 0x1
	.uleb128 LEHB89-LFB26
	.uleb128 LEHE89-LEHB89
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB90-LFB26
	.uleb128 LEHE90-LEHB90
	.uleb128 L935-LFB26
	.uleb128 0
	.uleb128 LEHB91-LFB26
	.uleb128 LEHE91-LEHB91
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
	.align	2
_smc_files__write_pressure_report__B_21__B559b___finalizer.10:
LFB29:
	stp	x29, x30, [sp, -32]!
LCFI109:
	mov	x29, sp
LCFI110:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 96
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI111:
	ret
LFE29:
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
LFB28:
	.loc 1 541 4
	sub	sp, sp, #1488
LCFI112:
	stp	x29, x30, [sp]
LCFI113:
	mov	x29, sp
LCFI114:
LEHB92:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI115:
	str	s0, [x29, 972]
	str	s1, [x29, 968]
	str	s2, [x29, 964]
	str	s3, [x29, 960]
	str	x0, [x29, 952]
	.loc 1 541 4
	add	x0, x29, 1488
	.loc 1 541 4 is_stmt 0 discriminator 1
	str	x0, [x29, 1200]
	.loc 1 544 7 is_stmt 1
	str	xzr, [x29, 1208]
	.loc 1 546 7
	adrp	x0, _smc_files__pressure_report_file@PAGE
	add	x2, x0, _smc_files__pressure_report_file@PAGEOFF;
	adrp	x0, lC23@PAGE
	add	x3, x0, lC23@PAGEOFF;
	mov	x0, x2
	mov	x1, x3
	bl	_smc_files__ensure_directory_exists
LEHE92:
LBB116:
LBB117:
	.loc 1 549 10
	ldr	x6, [x29, 1208]
	adrp	x0, _smc_files__pressure_report_file@PAGE
	add	x26, x0, _smc_files__pressure_report_file@PAGEOFF;
	adrp	x0, lC23@PAGE
	add	x27, x0, lC23@PAGEOFF;
	adrp	x0, lC30@PAGE
	add	x22, x0, lC30@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x23, x0, lC0@PAGEOFF;
	mov	x4, x22
	mov	x5, x23
	mov	x2, x26
	mov	x3, x27
	mov	w1, 2
	mov	x0, x6
LEHB93:
	bl	_ada__text_io__create
LEHE93:
	.loc 1 549 10 is_stmt 0 discriminator 2
	str	x0, [x29, 1208]
LBE117:
LBB118:
	add	x0, x29, 1176
	mov	x8, x0
LEHB94:
	bl	_system__secondary_stack__ss_mark
	.loc 1 550 56 is_stmt 1
	add	x0, x29, 1064
	str	x0, [x29, 240]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 248]
	mov	w2, 6
	ldp	x0, x1, [x29, 240]
	ldr	s0, [x29, 972]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 550 56 is_stmt 0 discriminator 2
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x0, x21, 3
	str	x0, [x29, 936]
	ldr	x0, [x29, 936]
	add	x0, x1, x0
	str	x0, [x29, 936]
	lsl	x0, x20, 3
	str	x0, [x29, 928]
	.loc 1 550 45 is_stmt 1 discriminator 2
	add	x0, x29, 1064
	str	x0, [x29, 256]
	mov	w0, 1
	str	w0, [x29, 1216]
	str	w2, [x29, 1220]
	add	x0, x29, 1216
	str	x0, [x29, 264]
	mov	w2, 2
	ldp	x0, x1, [x29, 256]
	bl	_ada__strings__fixed__trim
	.loc 1 550 45 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 550 43 is_stmt 1 discriminator 4
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L939
	.loc 1 550 43 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L940
L939:
	.loc 1 550 43 discriminator 6
	mov	w0, 0
L940:
	.loc 1 550 43 discriminator 8
	add	w0, w0, 14
	str	w0, [x29, 1484]
	ldrsw	x0, [x29, 1484]
	str	x0, [x29, 1472]
	ldrsw	x0, [x29, 1484]
	mov	x24, x0
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x0, x25, 3
	str	x0, [x29, 920]
	ldr	x0, [x29, 920]
	add	x0, x1, x0
	str	x0, [x29, 920]
	lsl	x0, x24, 3
	str	x0, [x29, 912]
	ldrsw	x0, [x29, 1484]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 550 43 discriminator 10
	mov	x19, x0
	str	x19, [x29, 1464]
LBB119:
	str	x19, [x29, 272]
	mov	w0, 1
	str	w0, [x29, 1224]
	ldr	w0, [x29, 1484]
	str	w0, [x29, 1228]
	add	x0, x29, 1224
	str	x0, [x29, 280]
	adrp	x0, lC47@PAGE
	add	x0, x0, lC47@PAGEOFF;
	str	x0, [x29, 288]
	adrp	x0, lC24@PAGE
	add	x0, x0, lC24@PAGEOFF;
	str	x0, [x29, 296]
	mov	x4, x20
	mov	x5, x21
	ldp	x2, x3, [x29, 288]
	ldp	x0, x1, [x29, 272]
	bl	_system__concat_2__str_concat_2
LBE119:
	.loc 1 550 10 is_stmt 1 discriminator 12
	ldr	x3, [x29, 1208]
	str	x19, [x29, 304]
	mov	w0, 1
	str	w0, [x29, 1232]
	ldr	w0, [x29, 1484]
	str	w0, [x29, 1236]
	add	x0, x29, 1232
	str	x0, [x29, 312]
	ldp	x1, x2, [x29, 304]
	mov	x0, x3
	bl	_ada__text_io__put_line
LEHE94:
	.loc 1 550 0 discriminator 14
	mov	w19, 1
L993:
	.loc 1 550 0 is_stmt 0 discriminator 15
	add	x0, x29, 1080
	mov	x16, x0
LEHB95:
	bl	_smc_files__write_pressure_report__B_21__B559b___finalizer.10
LEHE95:
	.loc 1 550 0 discriminator 17
	cmp	w19, 1
	bne	L941
	.loc 1 550 0
	mov	w0, 1
L995:
	.loc 1 550 0 discriminator 18
	cmp	w0, 1
	bne	L942
	.loc 1 550 0
	nop
LBE118:
LBB120:
	add	x0, x29, 1152
	mov	x8, x0
LEHB96:
	bl	_system__secondary_stack__ss_mark
	.loc 1 551 57 is_stmt 1
	add	x0, x29, 1048
	str	x0, [x29, 320]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 328]
	mov	w2, 6
	ldp	x0, x1, [x29, 320]
	ldr	s0, [x29, 968]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 551 57 is_stmt 0 discriminator 2
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 768]
	str	xzr, [x29, 776]
	add	x0, x29, 1024
	ldp	x3, x4, [x0, -256]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 904]
	ldr	x0, [x29, 904]
	add	x0, x1, x0
	str	x0, [x29, 904]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 896]
	.loc 1 551 46 is_stmt 1 discriminator 2
	add	x0, x29, 1048
	str	x0, [x29, 336]
	mov	w0, 1
	str	w0, [x29, 1240]
	str	w2, [x29, 1244]
	add	x0, x29, 1240
	str	x0, [x29, 344]
	mov	w2, 2
	ldp	x0, x1, [x29, 336]
	bl	_ada__strings__fixed__trim
	.loc 1 551 46 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 551 44 is_stmt 1 discriminator 4
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L943
	.loc 1 551 44 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L944
L943:
	.loc 1 551 44 discriminator 6
	mov	w0, 0
L944:
	.loc 1 551 44 discriminator 8
	add	w0, w0, 15
	str	w0, [x29, 1460]
	ldrsw	x0, [x29, 1460]
	str	x0, [x29, 1448]
	ldrsw	x0, [x29, 1460]
	str	x0, [x29, 752]
	str	xzr, [x29, 760]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 240]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 888]
	ldr	x0, [x29, 888]
	add	x0, x1, x0
	str	x0, [x29, 888]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 880]
	ldrsw	x0, [x29, 1460]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 551 44 discriminator 10
	mov	x19, x0
	str	x19, [x29, 1440]
LBB121:
	str	x19, [x29, 352]
	mov	w0, 1
	str	w0, [x29, 1248]
	ldr	w0, [x29, 1460]
	str	w0, [x29, 1252]
	add	x0, x29, 1248
	str	x0, [x29, 360]
	adrp	x0, lC48@PAGE
	add	x0, x0, lC48@PAGEOFF;
	str	x0, [x29, 368]
	adrp	x0, lC25@PAGE
	add	x0, x0, lC25@PAGEOFF;
	str	x0, [x29, 376]
	mov	x4, x20
	mov	x5, x21
	ldp	x2, x3, [x29, 368]
	ldp	x0, x1, [x29, 352]
	bl	_system__concat_2__str_concat_2
LBE121:
	.loc 1 551 10 is_stmt 1 discriminator 12
	ldr	x3, [x29, 1208]
	str	x19, [x29, 384]
	mov	w0, 1
	str	w0, [x29, 1256]
	ldr	w0, [x29, 1460]
	str	w0, [x29, 1260]
	add	x0, x29, 1256
	str	x0, [x29, 392]
	ldp	x1, x2, [x29, 384]
	mov	x0, x3
	bl	_ada__text_io__put_line
LEHE96:
	.loc 1 551 0 discriminator 14
	mov	w19, 1
L998:
	.loc 1 551 0 is_stmt 0 discriminator 15
	add	x0, x29, 1080
	mov	x16, x0
LEHB97:
	bl	_smc_files__write_pressure_report__B_21__B577b___finalizer.11
LEHE97:
	.loc 1 551 0 discriminator 17
	cmp	w19, 1
	bne	L945
	.loc 1 551 0
	mov	w0, 1
L1000:
	.loc 1 551 0 discriminator 18
	cmp	w0, 1
	bne	L946
	.loc 1 551 0
	nop
LBE120:
LBB122:
	add	x0, x29, 1128
	mov	x8, x0
LEHB98:
	bl	_system__secondary_stack__ss_mark
	.loc 1 552 38 is_stmt 1
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	bge	L1029
	b	L947
L1029:
	.loc 1 552 38 is_stmt 0 discriminator 1
	mov	w0, 43
	strb	w0, [x29, 1040]
L947:
	.loc 1 552 38 discriminator 3
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	.loc 1 552 38 discriminator 7
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	.loc 1 552 38 discriminator 11
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	.loc 1 552 38 discriminator 15
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	.loc 1 552 84 is_stmt 1 discriminator 19
	add	x0, x29, 1024
	str	x0, [x29, 400]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 408]
	mov	w2, 6
	ldp	x0, x1, [x29, 400]
	ldr	s0, [x29, 964]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 552 84 is_stmt 0 discriminator 21
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 736]
	str	xzr, [x29, 744]
	add	x0, x29, 512
	ldp	x3, x4, [x0, 224]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 872]
	ldr	x0, [x29, 872]
	add	x0, x1, x0
	str	x0, [x29, 872]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 864]
	.loc 1 552 73 is_stmt 1 discriminator 21
	add	x0, x29, 1024
	str	x0, [x29, 416]
	mov	w0, 1
	str	w0, [x29, 1264]
	str	w2, [x29, 1268]
	add	x0, x29, 1264
	str	x0, [x29, 424]
	mov	w2, 2
	ldp	x0, x1, [x29, 416]
	bl	_ada__strings__fixed__trim
	.loc 1 552 73 is_stmt 0 discriminator 23
	mov	x20, x0
	mov	x21, x1
	.loc 1 552 38 is_stmt 1 discriminator 23
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	.loc 1 552 38 is_stmt 0 discriminator 27
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	.loc 1 552 38 discriminator 31
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	.loc 1 552 38 discriminator 35
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	.loc 1 552 71 is_stmt 1 discriminator 39
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	bge	L1038
	b	L1040
L1038:
	.loc 1 552 71 is_stmt 0 discriminator 40
	mov	w0, 1
	b	L975
L1040:
	.loc 1 552 71 discriminator 41
	mov	w0, 0
L975:
	.loc 1 552 71 discriminator 43
	add	w2, w0, 6
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L976
	.loc 1 552 71 discriminator 44
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L977
L976:
	.loc 1 552 71 discriminator 45
	mov	w0, 0
L977:
	.loc 1 552 71 discriminator 47
	add	w0, w2, w0
	str	w0, [x29, 1436]
	ldrsw	x0, [x29, 1436]
	str	x0, [x29, 1424]
	ldrsw	x0, [x29, 1436]
	str	x0, [x29, 720]
	str	xzr, [x29, 728]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 208]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 856]
	ldr	x0, [x29, 856]
	add	x0, x1, x0
	str	x0, [x29, 856]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 848]
	ldrsw	x0, [x29, 1436]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 552 71 discriminator 49
	mov	x19, x0
	str	x19, [x29, 1416]
LBB123:
	str	x19, [x29, 432]
	mov	w0, 1
	str	w0, [x29, 1272]
	ldr	w0, [x29, 1436]
	str	w0, [x29, 1276]
	add	x0, x29, 1272
	str	x0, [x29, 440]
	adrp	x0, lC49@PAGE
	add	x0, x0, lC49@PAGEOFF;
	str	x0, [x29, 448]
	adrp	x0, lC26@PAGE
	add	x0, x0, lC26@PAGEOFF;
	str	x0, [x29, 456]
	add	x0, x29, 1040
	str	x0, [x29, 464]
	mov	w0, 1
	str	w0, [x29, 1280]
	.loc 1 552 38 is_stmt 1 discriminator 49
	ldr	s31, [x29, 964]
	fcmpe	s31, #0.0
	bge	L1039
	b	L1041
L1039:
	.loc 1 552 38 is_stmt 0 discriminator 50
	mov	w0, 1
	b	L980
L1041:
	.loc 1 552 38 discriminator 51
	mov	w0, 0
L980:
	.loc 1 552 71 is_stmt 1 discriminator 53
	str	w0, [x29, 1284]
	add	x0, x29, 1280
	str	x0, [x29, 472]
	mov	x6, x20
	mov	x7, x21
	ldp	x4, x5, [x29, 464]
	ldp	x2, x3, [x29, 448]
	ldp	x0, x1, [x29, 432]
	bl	_system__concat_3__str_concat_3
LBE123:
	.loc 1 552 10 discriminator 55
	ldr	x3, [x29, 1208]
	str	x19, [x29, 480]
	mov	w0, 1
	str	w0, [x29, 1288]
	ldr	w0, [x29, 1436]
	str	w0, [x29, 1292]
	add	x0, x29, 1288
	str	x0, [x29, 488]
	ldp	x1, x2, [x29, 480]
	mov	x0, x3
	bl	_ada__text_io__put_line
LEHE98:
	.loc 1 552 0 discriminator 57
	mov	w19, 1
L1002:
	.loc 1 552 0 is_stmt 0 discriminator 58
	add	x0, x29, 1080
	mov	x16, x0
LEHB99:
	bl	_smc_files__write_pressure_report__B_21__B595b___finalizer.12
LEHE99:
	.loc 1 552 0 discriminator 60
	cmp	w19, 1
	bne	L981
	.loc 1 552 0
	mov	w0, 1
L1004:
	.loc 1 552 0 discriminator 61
	cmp	w0, 1
	bne	L982
	.loc 1 552 0
	nop
LBE122:
LBB124:
	add	x0, x29, 1104
	mov	x8, x0
LEHB100:
	bl	_system__secondary_stack__ss_mark
	.loc 1 553 51 is_stmt 1
	add	x0, x29, 1008
	str	x0, [x29, 496]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 504]
	mov	w2, 6
	ldp	x0, x1, [x29, 496]
	ldr	s0, [x29, 960]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 553 51 is_stmt 0 discriminator 2
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 704]
	str	xzr, [x29, 712]
	add	x0, x29, 512
	ldp	x3, x4, [x0, 192]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 840]
	ldr	x0, [x29, 840]
	add	x0, x1, x0
	str	x0, [x29, 840]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 832]
	.loc 1 553 40 is_stmt 1 discriminator 2
	add	x0, x29, 1008
	str	x0, [x29, 512]
	mov	w0, 1
	str	w0, [x29, 1296]
	str	w2, [x29, 1300]
	add	x0, x29, 1296
	str	x0, [x29, 520]
	mov	w2, 2
	add	x0, x29, 512
	ldp	x0, x1, [x0]
	bl	_ada__strings__fixed__trim
	.loc 1 553 40 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 553 38 is_stmt 1 discriminator 4
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L983
	.loc 1 553 38 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L984
L983:
	.loc 1 553 38 discriminator 6
	mov	w0, 0
L984:
	.loc 1 553 38 discriminator 8
	add	w0, w0, 9
	str	w0, [x29, 1412]
	ldrsw	x0, [x29, 1412]
	str	x0, [x29, 1400]
	ldrsw	x0, [x29, 1412]
	str	x0, [x29, 688]
	str	xzr, [x29, 696]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 176]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 824]
	ldr	x0, [x29, 824]
	add	x0, x1, x0
	str	x0, [x29, 824]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 816]
	ldrsw	x0, [x29, 1412]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 553 38 discriminator 10
	mov	x19, x0
	str	x19, [x29, 1392]
LBB125:
	str	x19, [x29, 528]
	mov	w0, 1
	str	w0, [x29, 1304]
	ldr	w0, [x29, 1412]
	str	w0, [x29, 1308]
	add	x0, x29, 1304
	str	x0, [x29, 536]
	adrp	x0, lC50@PAGE
	add	x0, x0, lC50@PAGEOFF;
	str	x0, [x29, 544]
	adrp	x0, lC27@PAGE
	add	x0, x0, lC27@PAGEOFF;
	str	x0, [x29, 552]
	mov	x4, x20
	mov	x5, x21
	add	x0, x29, 512
	ldp	x2, x3, [x0, 32]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 16]
	bl	_system__concat_2__str_concat_2
LBE125:
	.loc 1 553 10 is_stmt 1 discriminator 12
	ldr	x3, [x29, 1208]
	str	x19, [x29, 560]
	mov	w0, 1
	str	w0, [x29, 1312]
	ldr	w0, [x29, 1412]
	str	w0, [x29, 1316]
	add	x0, x29, 1312
	str	x0, [x29, 568]
	add	x0, x29, 512
	ldp	x1, x2, [x0, 48]
	mov	x0, x3
	bl	_ada__text_io__put_line
LEHE100:
	.loc 1 553 0 discriminator 14
	mov	w19, 1
L1006:
	.loc 1 553 0 is_stmt 0 discriminator 15
	add	x0, x29, 1080
	mov	x16, x0
LEHB101:
	bl	_smc_files__write_pressure_report__B_21__B626b___finalizer.13
LEHE101:
	.loc 1 553 0 discriminator 17
	cmp	w19, 1
	bne	L985
	.loc 1 553 0
	mov	w0, 1
L1008:
	.loc 1 553 0 discriminator 18
	cmp	w0, 1
	bne	L986
	.loc 1 553 0
	nop
LBE124:
LBB126:
	add	x0, x29, 1080
	mov	x8, x0
LEHB102:
	bl	_system__secondary_stack__ss_mark
	.loc 1 554 60 is_stmt 1
	add	x0, x29, 984
	str	x0, [x29, 576]
	adrp	x0, lC28@PAGE
	add	x0, x0, lC28@PAGEOFF;
	str	x0, [x29, 584]
	add	x0, x29, 512
	ldp	x1, x2, [x0, 64]
	ldr	x0, [x29, 952]
	bl	_system__img_lli__impl__image_integer
	.loc 1 554 60 is_stmt 0 discriminator 2
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	str	x1, [x29, 672]
	str	xzr, [x29, 680]
	add	x1, x29, 512
	ldp	x3, x4, [x1, 160]
	mov	x1, x3
	lsr	x1, x1, 61
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 808]
	ldr	x2, [x29, 808]
	add	x1, x1, x2
	str	x1, [x29, 808]
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 800]
	.loc 1 554 42 is_stmt 1 discriminator 2
	add	x1, x29, 984
	str	x1, [x29, 592]
	mov	w1, 1
	str	w1, [x29, 1320]
	str	w0, [x29, 1324]
	add	x0, x29, 1320
	str	x0, [x29, 600]
	mov	w2, 2
	add	x0, x29, 512
	ldp	x0, x1, [x0, 80]
	bl	_ada__strings__fixed__trim
	.loc 1 554 42 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 554 40 is_stmt 1 discriminator 4
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L987
	.loc 1 554 40 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L988
L987:
	.loc 1 554 40 discriminator 6
	mov	w0, 0
L988:
	.loc 1 554 40 discriminator 8
	add	w0, w0, 11
	str	w0, [x29, 1388]
	ldrsw	x0, [x29, 1388]
	str	x0, [x29, 1376]
	ldrsw	x0, [x29, 1388]
	str	x0, [x29, 656]
	str	xzr, [x29, 664]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 144]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 792]
	ldr	x1, [x29, 792]
	add	x0, x0, x1
	str	x0, [x29, 792]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 784]
	ldrsw	x0, [x29, 1388]
	mov	x1, 1
	bl	_system__secondary_stack__ss_allocate
	.loc 1 554 40 discriminator 10
	mov	x19, x0
	str	x19, [x29, 1368]
LBB127:
	str	x19, [x29, 608]
	mov	w0, 1
	str	w0, [x29, 1328]
	ldr	w0, [x29, 1388]
	str	w0, [x29, 1332]
	add	x0, x29, 1328
	str	x0, [x29, 616]
	adrp	x0, lC51@PAGE
	add	x0, x0, lC51@PAGEOFF;
	str	x0, [x29, 624]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 632]
	mov	x4, x20
	mov	x5, x21
	add	x0, x29, 512
	ldp	x2, x3, [x0, 112]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 96]
	bl	_system__concat_2__str_concat_2
LBE127:
	.loc 1 554 10 is_stmt 1 discriminator 12
	ldr	x0, [x29, 1208]
	str	x19, [x29, 640]
	mov	w1, 1
	str	w1, [x29, 1336]
	ldr	w1, [x29, 1388]
	str	w1, [x29, 1340]
	add	x1, x29, 1336
	str	x1, [x29, 648]
	add	x1, x29, 512
	ldp	x1, x2, [x1, 128]
	bl	_ada__text_io__put_line
LEHE102:
	.loc 1 554 0 discriminator 14
	mov	w19, 1
L1010:
	.loc 1 554 0 is_stmt 0 discriminator 15
	add	x0, x29, 1080
	mov	x16, x0
LEHB103:
	bl	_smc_files__write_pressure_report__B_21__B644b___finalizer.14
LEHE103:
	.loc 1 554 0 discriminator 17
	cmp	w19, 1
	bne	L989
	.loc 1 554 0
	mov	w0, 1
L1012:
	.loc 1 554 0 discriminator 18
	cmp	w0, 1
	bne	L990
	.loc 1 554 0
	nop
LBE126:
	.loc 1 555 10 is_stmt 1
	add	x0, x29, 1208
LEHB104:
	bl	_ada__text_io__close
LEHE104:
LBE116:
	.loc 1 560 8
	b	L938
L1018:
	str	x0, [x29, 168]
	str	x1, [x29, 160]
	mov	w19, 0
LBB133:
LBB128:
	.loc 1 550 10
	b	L993
L941:
	ldr	x0, [x29, 168]
	str	x0, [x29, 944]
	ldr	x28, [x29, 160]
	b	L994
L1019:
	str	x0, [x29, 944]
	mov	x28, x1
L994:
	mov	w0, 0
	b	L995
L942:
	ldr	x0, [x29, 944]
	mov	x1, x28
	b	L996
L1020:
	str	x0, [x29, 152]
	str	x1, [x29, 144]
	mov	w19, 0
LBE128:
LBB129:
	.loc 1 551 10
	b	L998
L945:
	ldr	x0, [x29, 152]
	str	x0, [x29, 232]
	ldr	x0, [x29, 144]
	str	x0, [x29, 224]
	b	L999
L1021:
	str	x0, [x29, 232]
	str	x1, [x29, 224]
L999:
	mov	w0, 0
	b	L1000
L946:
	ldr	x0, [x29, 232]
	ldr	x1, [x29, 224]
	b	L996
L1022:
	str	x0, [x29, 136]
	str	x1, [x29, 128]
	mov	w19, 0
LBE129:
LBB130:
	.loc 1 552 10
	b	L1002
L981:
	ldr	x0, [x29, 136]
	str	x0, [x29, 216]
	ldr	x0, [x29, 128]
	str	x0, [x29, 208]
	b	L1003
L1023:
	str	x0, [x29, 216]
	str	x1, [x29, 208]
L1003:
	mov	w0, 0
	b	L1004
L982:
	ldr	x0, [x29, 216]
	ldr	x1, [x29, 208]
	b	L996
L1024:
	str	x0, [x29, 120]
	str	x1, [x29, 112]
	mov	w19, 0
LBE130:
LBB131:
	.loc 1 553 10
	b	L1006
L985:
	ldr	x0, [x29, 120]
	str	x0, [x29, 200]
	ldr	x0, [x29, 112]
	str	x0, [x29, 192]
	b	L1007
L1025:
	str	x0, [x29, 200]
	str	x1, [x29, 192]
L1007:
	mov	w0, 0
	b	L1008
L986:
	ldr	x0, [x29, 200]
	ldr	x1, [x29, 192]
	b	L996
L1026:
	str	x0, [x29, 104]
	str	x1, [x29, 96]
	mov	w19, 0
LBE131:
LBB132:
	.loc 1 554 10
	b	L1010
L989:
	ldr	x0, [x29, 104]
	str	x0, [x29, 184]
	ldr	x0, [x29, 96]
	str	x0, [x29, 176]
	b	L1011
L1027:
	str	x0, [x29, 184]
	str	x1, [x29, 176]
L1011:
	mov	w0, 0
	b	L1012
L990:
	ldr	x0, [x29, 184]
	ldr	x1, [x29, 176]
	b	L996
L1017:
L996:
LBE132:
LBE133:
	.loc 1 557 10
	cmp	x1, 1
	beq	L1013
LEHB105:
	bl	__Unwind_Resume
LEHE105:
L1013:
LBB134:
	.loc 1 557 10 is_stmt 0 discriminator 1
	str	x0, [x29, 1360]
	.loc 1 557 10 discriminator 2
	ldr	x0, [x29, 1360]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 1352]
	.loc 1 558 16 is_stmt 1
	ldr	x0, [x29, 1208]
LEHB106:
	bl	_ada__text_io__is_open
	.loc 1 558 13 discriminator 2
	cmp	w0, 0
	beq	L1014
	.loc 1 558 36 discriminator 3
	add	x0, x29, 1208
	bl	_ada__text_io__close
LEHE106:
L1014:
	.loc 1 557 10
	mov	x2, 0
	ldr	x1, [x29, 1352]
	ldr	x0, [x29, 1360]
LEHB107:
	bl	___gnat_end_handler_v1
LBE134:
	.loc 1 560 8
	b	L938
L1028:
LBB135:
	.loc 1 557 10
	mov	x19, x0
	str	x19, [x29, 1344]
	.loc 1 557 10 is_stmt 0 discriminator 5
	ldr	x2, [x29, 1344]
	ldr	x1, [x29, 1352]
	ldr	x0, [x29, 1360]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L938:
LBE135:
	.loc 1 560 8 is_stmt 1
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE107:
	add	sp, sp, 1488
LCFI116:
	ret
LFE28:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table11:
	.align	2
LLSDA28:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT28-LLSDATTD28
LLSDATTD28:
	.byte	0x1
	.uleb128 LLSDACSE28-LLSDACSB28
LLSDACSB28:
	.uleb128 LEHB92-LFB28
	.uleb128 LEHE92-LEHB92
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB93-LFB28
	.uleb128 LEHE93-LEHB93
	.uleb128 L1017-LFB28
	.uleb128 0x1
	.uleb128 LEHB94-LFB28
	.uleb128 LEHE94-LEHB94
	.uleb128 L1018-LFB28
	.uleb128 0x3
	.uleb128 LEHB95-LFB28
	.uleb128 LEHE95-LEHB95
	.uleb128 L1019-LFB28
	.uleb128 0x3
	.uleb128 LEHB96-LFB28
	.uleb128 LEHE96-LEHB96
	.uleb128 L1020-LFB28
	.uleb128 0x3
	.uleb128 LEHB97-LFB28
	.uleb128 LEHE97-LEHB97
	.uleb128 L1021-LFB28
	.uleb128 0x3
	.uleb128 LEHB98-LFB28
	.uleb128 LEHE98-LEHB98
	.uleb128 L1022-LFB28
	.uleb128 0x3
	.uleb128 LEHB99-LFB28
	.uleb128 LEHE99-LEHB99
	.uleb128 L1023-LFB28
	.uleb128 0x3
	.uleb128 LEHB100-LFB28
	.uleb128 LEHE100-LEHB100
	.uleb128 L1024-LFB28
	.uleb128 0x3
	.uleb128 LEHB101-LFB28
	.uleb128 LEHE101-LEHB101
	.uleb128 L1025-LFB28
	.uleb128 0x3
	.uleb128 LEHB102-LFB28
	.uleb128 LEHE102-LEHB102
	.uleb128 L1026-LFB28
	.uleb128 0x3
	.uleb128 LEHB103-LFB28
	.uleb128 LEHE103-LEHB103
	.uleb128 L1027-LFB28
	.uleb128 0x3
	.uleb128 LEHB104-LFB28
	.uleb128 LEHE104-LEHB104
	.uleb128 L1017-LFB28
	.uleb128 0x1
	.uleb128 LEHB105-LFB28
	.uleb128 LEHE105-LEHB105
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB106-LFB28
	.uleb128 LEHE106-LEHB106
	.uleb128 L1028-LFB28
	.uleb128 0
	.uleb128 LEHB107-LFB28
	.uleb128 LEHE107-LEHB107
	.uleb128 0
	.uleb128 0
LLSDACSE28:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
L_got_pcr15:
	.long	___gnat_others_value@GOT-L_got_pcr15
LLSDATT28:
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
_smc_files__write_pressure_report__B_21__B577b___finalizer.11:
LFB30:
	stp	x29, x30, [sp, -32]!
LCFI117:
	mov	x29, sp
LCFI118:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 72
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI119:
	ret
LFE30:
	.align	2
_smc_files__write_pressure_report__B_21__B595b___finalizer.12:
LFB31:
	stp	x29, x30, [sp, -32]!
LCFI120:
	mov	x29, sp
LCFI121:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 48
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI122:
	ret
LFE31:
	.align	2
_smc_files__write_pressure_report__B_21__B626b___finalizer.13:
LFB32:
	stp	x29, x30, [sp, -32]!
LCFI123:
	mov	x29, sp
LCFI124:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 24
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI125:
	ret
LFE32:
	.align	2
_smc_files__write_pressure_report__B_21__B644b___finalizer.14:
LFB33:
	stp	x29, x30, [sp, -32]!
LCFI126:
	mov	x29, sp
LCFI127:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI128:
	ret
LFE33:
	.align	2
	.globl _smc_files__delete_file
_smc_files__delete_file:
LFB34:
	.loc 1 566 4
	stp	x29, x30, [sp, -48]!
LCFI129:
	mov	x29, sp
LCFI130:
LEHB108:
LEHE108:
	stp	x0, x1, [x29, 16]
	.loc 1 566 4
	ldr	x0, [x29, 24]
	ldr	w0, [x0]
	ldr	x1, [x29, 24]
	ldr	w1, [x1, 4]
LBB136:
	cmp	w1, w0
	.loc 1 566 4 is_stmt 0 discriminator 4
	cmp	w1, w0
	blt	L1054
	.loc 1 566 4 discriminator 5
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
L1054:
	.loc 1 566 4 discriminator 8
	cmp	w1, w0
	.loc 1 568 25 is_stmt 1
	ldp	x0, x1, [x29, 16]
LEHB109:
	bl	_ada__directories__exists
	.loc 1 568 7 discriminator 2
	cmp	w0, 0
	beq	L1063
	.loc 1 569 25
	ldp	x0, x1, [x29, 16]
	bl	_ada__directories__delete_file
LEHE109:
	.loc 1 574 8
	b	L1063
L1062:
LBE136:
	.loc 1 572 7
	cmp	x1, 1
	beq	L1060
LEHB110:
	bl	__Unwind_Resume
L1060:
LBB137:
	.loc 1 572 7 is_stmt 0 discriminator 1
	str	x0, [x29, 40]
	.loc 1 572 7 discriminator 2
	ldr	x0, [x29, 40]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 32]
	.loc 1 573 10 is_stmt 1
	nop
	.loc 1 574 8
	nop
	.loc 1 572 7
	mov	x2, 0
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	___gnat_end_handler_v1
LBE137:
	.loc 1 574 8
	b	L1050
L1063:
LBB138:
	nop
L1050:
LBE138:
LEHE110:
	ldp	x29, x30, [sp], 48
LCFI131:
	ret
LFE34:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table12:
	.align	2
LLSDA34:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT34-LLSDATTD34
LLSDATTD34:
	.byte	0x1
	.uleb128 LLSDACSE34-LLSDACSB34
LLSDACSB34:
	.uleb128 LEHB108-LFB34
	.uleb128 LEHE108-LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB109-LFB34
	.uleb128 LEHE109-LEHB109
	.uleb128 L1062-LFB34
	.uleb128 0x1
	.uleb128 LEHB110-LFB34
	.uleb128 LEHE110-LEHB110
	.uleb128 0
	.uleb128 0
LLSDACSE34:
	.byte	0x1
	.byte	0
	.align	2
L_got_pcr16:
	.long	___gnat_others_value@GOT-L_got_pcr16
LLSDATT34:
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
_path.15:
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
	.uleb128 0xe0
	.byte	0x9d
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1b
	.byte	0x4
	.set L$set$11,LCFI4-LCFI3
	.long L$set$11
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
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
	.quad	LFB5
	.set L$set$16,LFE5-LFB5
	.quad L$set$16
	.byte	0x4
	.set L$set$17,LCFI7-LFB5
	.long L$set$17
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$18,LCFI8-LCFI7
	.long L$set$18
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$19,LCFI9-LCFI8
	.long L$set$19
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE4:
LSFDE6:
	.set L$set$20,LEFDE6-LASFDE6
	.long L$set$20
LASFDE6:
	.set L$set$21,Lframe0-Lsection__debug_frame
	.long L$set$21
	.quad	LFB4
	.set L$set$22,LFE4-LFB4
	.quad L$set$22
	.byte	0x4
	.set L$set$23,LCFI10-LFB4
	.long L$set$23
	.byte	0xe
	.uleb128 0x170
	.byte	0x9d
	.uleb128 0x2e
	.byte	0x9e
	.uleb128 0x2d
	.byte	0x4
	.set L$set$24,LCFI11-LCFI10
	.long L$set$24
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$25,LCFI12-LCFI11
	.long L$set$25
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
	.set L$set$26,LCFI13-LCFI12
	.long L$set$26
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
LEFDE6:
LSFDE8:
	.set L$set$27,LEFDE8-LASFDE8
	.long L$set$27
LASFDE8:
	.set L$set$28,Lframe0-Lsection__debug_frame
	.long L$set$28
	.quad	LFB6
	.set L$set$29,LFE6-LFB6
	.quad L$set$29
	.byte	0x4
	.set L$set$30,LCFI14-LFB6
	.long L$set$30
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$31,LCFI15-LCFI14
	.long L$set$31
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$32,LCFI16-LCFI15
	.long L$set$32
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0xa
	.byte	0x4
	.set L$set$33,LCFI17-LCFI16
	.long L$set$33
	.byte	0xde
	.byte	0xdd
	.byte	0x6
	.uleb128 0x4f
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
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$38,LCFI19-LCFI18
	.long L$set$38
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$39,LCFI20-LCFI19
	.long L$set$39
	.byte	0x93
	.uleb128 0xa
	.byte	0x4
	.set L$set$40,LCFI21-LCFI20
	.long L$set$40
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE10:
LSFDE12:
	.set L$set$41,LEFDE12-LASFDE12
	.long L$set$41
LASFDE12:
	.set L$set$42,Lframe0-Lsection__debug_frame
	.long L$set$42
	.quad	LFB8
	.set L$set$43,LFE8-LFB8
	.quad L$set$43
	.byte	0x4
	.set L$set$44,LCFI22-LFB8
	.long L$set$44
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$45,LCFI23-LCFI22
	.long L$set$45
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$46,LCFI24-LCFI23
	.long L$set$46
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE12:
LSFDE14:
	.set L$set$47,LEFDE14-LASFDE14
	.long L$set$47
LASFDE14:
	.set L$set$48,Lframe0-Lsection__debug_frame
	.long L$set$48
	.quad	LFB9
	.set L$set$49,LFE9-LFB9
	.quad L$set$49
	.byte	0x4
	.set L$set$50,LCFI25-LFB9
	.long L$set$50
	.byte	0xe
	.uleb128 0x220
	.byte	0x4
	.set L$set$51,LCFI26-LCFI25
	.long L$set$51
	.byte	0xe
	.uleb128 0x10220
	.byte	0x4
	.set L$set$52,LCFI27-LCFI26
	.long L$set$52
	.byte	0x9d
	.uleb128 0x2044
	.byte	0x9e
	.uleb128 0x2043
	.byte	0x4
	.set L$set$53,LCFI28-LCFI27
	.long L$set$53
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$54,LCFI29-LCFI28
	.long L$set$54
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
	.set L$set$55,LCFI30-LCFI29
	.long L$set$55
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
	.set L$set$56,LCFI31-LCFI30
	.long L$set$56
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$57,LCFI32-LCFI31
	.long L$set$57
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE14:
LSFDE16:
	.set L$set$58,LEFDE16-LASFDE16
	.long L$set$58
LASFDE16:
	.set L$set$59,Lframe0-Lsection__debug_frame
	.long L$set$59
	.quad	LFB10
	.set L$set$60,LFE10-LFB10
	.quad L$set$60
	.byte	0x4
	.set L$set$61,LCFI33-LFB10
	.long L$set$61
	.byte	0xe
	.uleb128 0x1c0
	.byte	0x4
	.set L$set$62,LCFI34-LCFI33
	.long L$set$62
	.byte	0xe
	.uleb128 0x101c0
	.byte	0x4
	.set L$set$63,LCFI35-LCFI34
	.long L$set$63
	.byte	0x9d
	.uleb128 0x2038
	.byte	0x9e
	.uleb128 0x2037
	.byte	0x4
	.set L$set$64,LCFI36-LCFI35
	.long L$set$64
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$65,LCFI37-LCFI36
	.long L$set$65
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
	.set L$set$66,LCFI38-LCFI37
	.long L$set$66
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
	.set L$set$67,LCFI39-LCFI38
	.long L$set$67
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$68,LCFI40-LCFI39
	.long L$set$68
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE16:
LSFDE18:
	.set L$set$69,LEFDE18-LASFDE18
	.long L$set$69
LASFDE18:
	.set L$set$70,Lframe0-Lsection__debug_frame
	.long L$set$70
	.quad	LFB11
	.set L$set$71,LFE11-LFB11
	.quad L$set$71
	.byte	0x4
	.set L$set$72,LCFI41-LFB11
	.long L$set$72
	.byte	0xe
	.uleb128 0xa0
	.byte	0x4
	.set L$set$73,LCFI42-LCFI41
	.long L$set$73
	.byte	0xe
	.uleb128 0x100a0
	.byte	0x4
	.set L$set$74,LCFI43-LCFI42
	.long L$set$74
	.byte	0x9d
	.uleb128 0x2014
	.byte	0x9e
	.uleb128 0x2013
	.byte	0x4
	.set L$set$75,LCFI44-LCFI43
	.long L$set$75
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$76,LCFI45-LCFI44
	.long L$set$76
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
	.set L$set$77,LCFI46-LCFI45
	.long L$set$77
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
	.set L$set$78,LCFI47-LCFI46
	.long L$set$78
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$79,LCFI48-LCFI47
	.long L$set$79
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE18:
LSFDE20:
	.set L$set$80,LEFDE20-LASFDE20
	.long L$set$80
LASFDE20:
	.set L$set$81,Lframe0-Lsection__debug_frame
	.long L$set$81
	.quad	LFB13
	.set L$set$82,LFE13-LFB13
	.quad L$set$82
	.byte	0x4
	.set L$set$83,LCFI49-LFB13
	.long L$set$83
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$84,LCFI50-LCFI49
	.long L$set$84
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$85,LCFI51-LCFI50
	.long L$set$85
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE20:
LSFDE22:
	.set L$set$86,LEFDE22-LASFDE22
	.long L$set$86
LASFDE22:
	.set L$set$87,Lframe0-Lsection__debug_frame
	.long L$set$87
	.quad	LFB12
	.set L$set$88,LFE12-LFB12
	.quad L$set$88
	.byte	0x4
	.set L$set$89,LCFI52-LFB12
	.long L$set$89
	.byte	0xe
	.uleb128 0x800
	.byte	0x4
	.set L$set$90,LCFI53-LCFI52
	.long L$set$90
	.byte	0x9d
	.uleb128 0x100
	.byte	0x9e
	.uleb128 0xff
	.byte	0x4
	.set L$set$91,LCFI54-LCFI53
	.long L$set$91
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$92,LCFI55-LCFI54
	.long L$set$92
	.byte	0x93
	.uleb128 0xfe
	.byte	0x94
	.uleb128 0xfd
	.byte	0x95
	.uleb128 0xfc
	.byte	0x96
	.uleb128 0xfb
	.byte	0x97
	.uleb128 0xfa
	.byte	0x98
	.uleb128 0xf9
	.byte	0x99
	.uleb128 0xf8
	.byte	0x9a
	.uleb128 0xf7
	.byte	0x9b
	.uleb128 0xf6
	.byte	0x9c
	.uleb128 0xf5
	.byte	0x4
	.set L$set$93,LCFI56-LCFI55
	.long L$set$93
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
LEFDE22:
LSFDE24:
	.set L$set$94,LEFDE24-LASFDE24
	.long L$set$94
LASFDE24:
	.set L$set$95,Lframe0-Lsection__debug_frame
	.long L$set$95
	.quad	LFB14
	.set L$set$96,LFE14-LFB14
	.quad L$set$96
	.byte	0x4
	.set L$set$97,LCFI57-LFB14
	.long L$set$97
	.byte	0xe
	.uleb128 0x500
	.byte	0x4
	.set L$set$98,LCFI58-LCFI57
	.long L$set$98
	.byte	0x9d
	.uleb128 0xa0
	.byte	0x9e
	.uleb128 0x9f
	.byte	0x4
	.set L$set$99,LCFI59-LCFI58
	.long L$set$99
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$100,LCFI60-LCFI59
	.long L$set$100
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
	.set L$set$101,LCFI61-LCFI60
	.long L$set$101
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
LEFDE24:
LSFDE26:
	.set L$set$102,LEFDE26-LASFDE26
	.long L$set$102
LASFDE26:
	.set L$set$103,Lframe0-Lsection__debug_frame
	.long L$set$103
	.quad	LFB16
	.set L$set$104,LFE16-LFB16
	.quad L$set$104
	.byte	0x4
	.set L$set$105,LCFI62-LFB16
	.long L$set$105
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$106,LCFI63-LCFI62
	.long L$set$106
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$107,LCFI64-LCFI63
	.long L$set$107
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE26:
LSFDE28:
	.set L$set$108,LEFDE28-LASFDE28
	.long L$set$108
LASFDE28:
	.set L$set$109,Lframe0-Lsection__debug_frame
	.long L$set$109
	.quad	LFB15
	.set L$set$110,LFE15-LFB15
	.quad L$set$110
	.byte	0x4
	.set L$set$111,LCFI65-LFB15
	.long L$set$111
	.byte	0xe
	.uleb128 0x7b0
	.byte	0x4
	.set L$set$112,LCFI66-LCFI65
	.long L$set$112
	.byte	0x9d
	.uleb128 0xf4
	.byte	0x9e
	.uleb128 0xf3
	.byte	0x4
	.set L$set$113,LCFI67-LCFI66
	.long L$set$113
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x7a0
	.byte	0x4
	.set L$set$114,LCFI68-LCFI67
	.long L$set$114
	.byte	0x93
	.uleb128 0xf2
	.byte	0x94
	.uleb128 0xf1
	.byte	0x95
	.uleb128 0xf0
	.byte	0x96
	.uleb128 0xef
	.byte	0x97
	.uleb128 0xee
	.byte	0x98
	.uleb128 0xed
	.byte	0x99
	.uleb128 0xec
	.byte	0x9a
	.uleb128 0xeb
	.byte	0x9b
	.uleb128 0xea
	.byte	0x9c
	.uleb128 0xe9
	.byte	0x4
	.set L$set$115,LCFI69-LCFI68
	.long L$set$115
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x7b0
	.byte	0x4
	.set L$set$116,LCFI70-LCFI69
	.long L$set$116
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
LEFDE28:
LSFDE30:
	.set L$set$117,LEFDE30-LASFDE30
	.long L$set$117
LASFDE30:
	.set L$set$118,Lframe0-Lsection__debug_frame
	.long L$set$118
	.quad	LFB17
	.set L$set$119,LFE17-LFB17
	.quad L$set$119
	.byte	0x4
	.set L$set$120,LCFI71-LFB17
	.long L$set$120
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$121,LCFI72-LCFI71
	.long L$set$121
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$122,LCFI73-LCFI72
	.long L$set$122
	.byte	0xde
	.byte	0xdd
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
	.uleb128 0x1c0
	.byte	0x9d
	.uleb128 0x38
	.byte	0x9e
	.uleb128 0x37
	.byte	0x4
	.set L$set$133,LCFI78-LCFI77
	.long L$set$133
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$134,LCFI79-LCFI78
	.long L$set$134
	.byte	0x93
	.uleb128 0x36
	.byte	0x94
	.uleb128 0x35
	.byte	0x95
	.uleb128 0x34
	.byte	0x96
	.uleb128 0x33
	.byte	0x97
	.uleb128 0x32
	.byte	0x98
	.uleb128 0x31
	.byte	0x99
	.uleb128 0x30
	.byte	0x9a
	.uleb128 0x2f
	.byte	0x9b
	.uleb128 0x2e
	.byte	0x9c
	.uleb128 0x2d
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
	.uleb128 0x1c0
	.byte	0x9d
	.uleb128 0x38
	.byte	0x9e
	.uleb128 0x37
	.byte	0x4
	.set L$set$146,LCFI85-LCFI84
	.long L$set$146
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$147,LCFI86-LCFI85
	.long L$set$147
	.byte	0x93
	.uleb128 0x36
	.byte	0x94
	.uleb128 0x35
	.byte	0x95
	.uleb128 0x34
	.byte	0x96
	.uleb128 0x33
	.byte	0x97
	.uleb128 0x32
	.byte	0x98
	.uleb128 0x31
	.byte	0x99
	.uleb128 0x30
	.byte	0x9a
	.uleb128 0x2f
	.byte	0x9b
	.uleb128 0x2e
	.byte	0x9c
	.uleb128 0x2d
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
	.uleb128 0x100
	.byte	0x9d
	.uleb128 0x20
	.byte	0x9e
	.uleb128 0x1f
	.byte	0x4
	.set L$set$159,LCFI92-LCFI91
	.long L$set$159
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$160,LCFI93-LCFI92
	.long L$set$160
	.byte	0x93
	.uleb128 0x1e
	.byte	0x94
	.uleb128 0x1d
	.byte	0x95
	.uleb128 0x1c
	.byte	0x96
	.uleb128 0x1b
	.byte	0x97
	.uleb128 0x1a
	.byte	0x98
	.uleb128 0x19
	.byte	0x99
	.uleb128 0x18
	.byte	0x9a
	.uleb128 0x17
	.byte	0x9b
	.uleb128 0x16
	.byte	0x9c
	.uleb128 0x15
	.byte	0x4
	.set L$set$161,LCFI94-LCFI93
	.long L$set$161
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
	.uleb128 0xb0
	.byte	0x9d
	.uleb128 0x16
	.byte	0x9e
	.uleb128 0x15
	.byte	0x4
	.set L$set$172,LCFI99-LCFI98
	.long L$set$172
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$173,LCFI100-LCFI99
	.long L$set$173
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
	.set L$set$174,LCFI101-LCFI100
	.long L$set$174
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
	.uleb128 0x100
	.byte	0x9d
	.uleb128 0x20
	.byte	0x9e
	.uleb128 0x1f
	.byte	0x4
	.set L$set$185,LCFI106-LCFI105
	.long L$set$185
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$186,LCFI107-LCFI106
	.long L$set$186
	.byte	0x93
	.uleb128 0x1e
	.byte	0x94
	.uleb128 0x1d
	.byte	0x95
	.uleb128 0x1c
	.byte	0x96
	.uleb128 0x1b
	.byte	0x97
	.uleb128 0x1a
	.byte	0x98
	.uleb128 0x19
	.byte	0x99
	.uleb128 0x18
	.byte	0x9a
	.uleb128 0x17
	.byte	0x9b
	.uleb128 0x16
	.byte	0x9c
	.uleb128 0x15
	.byte	0x4
	.set L$set$187,LCFI108-LCFI107
	.long L$set$187
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
LEFDE50:
LSFDE52:
	.set L$set$188,LEFDE52-LASFDE52
	.long L$set$188
LASFDE52:
	.set L$set$189,Lframe0-Lsection__debug_frame
	.long L$set$189
	.quad	LFB29
	.set L$set$190,LFE29-LFB29
	.quad L$set$190
	.byte	0x4
	.set L$set$191,LCFI109-LFB29
	.long L$set$191
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$192,LCFI110-LCFI109
	.long L$set$192
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$193,LCFI111-LCFI110
	.long L$set$193
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE52:
LSFDE54:
	.set L$set$194,LEFDE54-LASFDE54
	.long L$set$194
LASFDE54:
	.set L$set$195,Lframe0-Lsection__debug_frame
	.long L$set$195
	.quad	LFB28
	.set L$set$196,LFE28-LFB28
	.quad L$set$196
	.byte	0x4
	.set L$set$197,LCFI112-LFB28
	.long L$set$197
	.byte	0xe
	.uleb128 0x5d0
	.byte	0x4
	.set L$set$198,LCFI113-LCFI112
	.long L$set$198
	.byte	0x9d
	.uleb128 0xba
	.byte	0x9e
	.uleb128 0xb9
	.byte	0x4
	.set L$set$199,LCFI114-LCFI113
	.long L$set$199
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$200,LCFI115-LCFI114
	.long L$set$200
	.byte	0x93
	.uleb128 0xb8
	.byte	0x94
	.uleb128 0xb7
	.byte	0x95
	.uleb128 0xb6
	.byte	0x96
	.uleb128 0xb5
	.byte	0x97
	.uleb128 0xb4
	.byte	0x98
	.uleb128 0xb3
	.byte	0x99
	.uleb128 0xb2
	.byte	0x9a
	.uleb128 0xb1
	.byte	0x9b
	.uleb128 0xb0
	.byte	0x9c
	.uleb128 0xaf
	.byte	0x4
	.set L$set$201,LCFI116-LCFI115
	.long L$set$201
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
LEFDE54:
LSFDE56:
	.set L$set$202,LEFDE56-LASFDE56
	.long L$set$202
LASFDE56:
	.set L$set$203,Lframe0-Lsection__debug_frame
	.long L$set$203
	.quad	LFB30
	.set L$set$204,LFE30-LFB30
	.quad L$set$204
	.byte	0x4
	.set L$set$205,LCFI117-LFB30
	.long L$set$205
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$206,LCFI118-LCFI117
	.long L$set$206
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$207,LCFI119-LCFI118
	.long L$set$207
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE56:
LSFDE58:
	.set L$set$208,LEFDE58-LASFDE58
	.long L$set$208
LASFDE58:
	.set L$set$209,Lframe0-Lsection__debug_frame
	.long L$set$209
	.quad	LFB31
	.set L$set$210,LFE31-LFB31
	.quad L$set$210
	.byte	0x4
	.set L$set$211,LCFI120-LFB31
	.long L$set$211
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$212,LCFI121-LCFI120
	.long L$set$212
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$213,LCFI122-LCFI121
	.long L$set$213
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE58:
LSFDE60:
	.set L$set$214,LEFDE60-LASFDE60
	.long L$set$214
LASFDE60:
	.set L$set$215,Lframe0-Lsection__debug_frame
	.long L$set$215
	.quad	LFB32
	.set L$set$216,LFE32-LFB32
	.quad L$set$216
	.byte	0x4
	.set L$set$217,LCFI123-LFB32
	.long L$set$217
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$218,LCFI124-LCFI123
	.long L$set$218
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$219,LCFI125-LCFI124
	.long L$set$219
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE60:
LSFDE62:
	.set L$set$220,LEFDE62-LASFDE62
	.long L$set$220
LASFDE62:
	.set L$set$221,Lframe0-Lsection__debug_frame
	.long L$set$221
	.quad	LFB33
	.set L$set$222,LFE33-LFB33
	.quad L$set$222
	.byte	0x4
	.set L$set$223,LCFI126-LFB33
	.long L$set$223
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$224,LCFI127-LCFI126
	.long L$set$224
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$225,LCFI128-LCFI127
	.long L$set$225
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE62:
LSFDE64:
	.set L$set$226,LEFDE64-LASFDE64
	.long L$set$226
LASFDE64:
	.set L$set$227,Lframe0-Lsection__debug_frame
	.long L$set$227
	.quad	LFB34
	.set L$set$228,LFE34-LFB34
	.quad L$set$228
	.byte	0x4
	.set L$set$229,LCFI129-LFB34
	.long L$set$229
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$230,LCFI130-LCFI129
	.long L$set$230
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$231,LCFI131-LCFI130
	.long L$set$231
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE64:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$232,LECIE1-LSCIE1
	.long L$set$232
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zPLR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x7
	.byte	0x9b
L_got_pcr17:
	.long	___gnat_personality_v0@GOT-L_got_pcr17
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE67:
	.set L$set$233,LEFDE67-LASFDE67
	.long L$set$233
LASFDE67:
	.long	LASFDE67-EH_frame1
	.quad	LFB3-.
	.set L$set$234,LFE3-LFB3
	.quad L$set$234
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$235,LCFI0-LFB3
	.long L$set$235
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$236,LCFI1-LCFI0
	.long L$set$236
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$237,LCFI2-LCFI1
	.long L$set$237
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE67:
LSFDE69:
	.set L$set$238,LEFDE69-LASFDE69
	.long L$set$238
LASFDE69:
	.long	LASFDE69-EH_frame1
	.quad	LFB2-.
	.set L$set$239,LFE2-LFB2
	.quad L$set$239
	.uleb128 0x8
	.quad	LLSDA2-.
	.byte	0x4
	.set L$set$240,LCFI3-LFB2
	.long L$set$240
	.byte	0xe
	.uleb128 0xe0
	.byte	0x9d
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1b
	.byte	0x4
	.set L$set$241,LCFI4-LCFI3
	.long L$set$241
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$242,LCFI5-LCFI4
	.long L$set$242
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
	.set L$set$243,LCFI6-LCFI5
	.long L$set$243
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
LEFDE69:
LSFDE71:
	.set L$set$244,LEFDE71-LASFDE71
	.long L$set$244
LASFDE71:
	.long	LASFDE71-EH_frame1
	.quad	LFB5-.
	.set L$set$245,LFE5-LFB5
	.quad L$set$245
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$246,LCFI7-LFB5
	.long L$set$246
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$247,LCFI8-LCFI7
	.long L$set$247
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$248,LCFI9-LCFI8
	.long L$set$248
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE71:
LSFDE73:
	.set L$set$249,LEFDE73-LASFDE73
	.long L$set$249
LASFDE73:
	.long	LASFDE73-EH_frame1
	.quad	LFB4-.
	.set L$set$250,LFE4-LFB4
	.quad L$set$250
	.uleb128 0x8
	.quad	LLSDA4-.
	.byte	0x4
	.set L$set$251,LCFI10-LFB4
	.long L$set$251
	.byte	0xe
	.uleb128 0x170
	.byte	0x9d
	.uleb128 0x2e
	.byte	0x9e
	.uleb128 0x2d
	.byte	0x4
	.set L$set$252,LCFI11-LCFI10
	.long L$set$252
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$253,LCFI12-LCFI11
	.long L$set$253
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
	.set L$set$254,LCFI13-LCFI12
	.long L$set$254
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
LEFDE73:
LSFDE75:
	.set L$set$255,LEFDE75-LASFDE75
	.long L$set$255
LASFDE75:
	.long	LASFDE75-EH_frame1
	.quad	LFB6-.
	.set L$set$256,LFE6-LFB6
	.quad L$set$256
	.uleb128 0x8
	.quad	LLSDA6-.
	.byte	0x4
	.set L$set$257,LCFI14-LFB6
	.long L$set$257
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$258,LCFI15-LCFI14
	.long L$set$258
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$259,LCFI16-LCFI15
	.long L$set$259
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0xa
	.byte	0x4
	.set L$set$260,LCFI17-LCFI16
	.long L$set$260
	.byte	0xde
	.byte	0xdd
	.byte	0x6
	.uleb128 0x4f
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE75:
LSFDE77:
	.set L$set$261,LEFDE77-LASFDE77
	.long L$set$261
LASFDE77:
	.long	LASFDE77-EH_frame1
	.quad	LFB7-.
	.set L$set$262,LFE7-LFB7
	.quad L$set$262
	.uleb128 0x8
	.quad	LLSDA7-.
	.byte	0x4
	.set L$set$263,LCFI18-LFB7
	.long L$set$263
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$264,LCFI19-LCFI18
	.long L$set$264
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$265,LCFI20-LCFI19
	.long L$set$265
	.byte	0x93
	.uleb128 0xa
	.byte	0x4
	.set L$set$266,LCFI21-LCFI20
	.long L$set$266
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE77:
LSFDE79:
	.set L$set$267,LEFDE79-LASFDE79
	.long L$set$267
LASFDE79:
	.long	LASFDE79-EH_frame1
	.quad	LFB8-.
	.set L$set$268,LFE8-LFB8
	.quad L$set$268
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$269,LCFI22-LFB8
	.long L$set$269
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$270,LCFI23-LCFI22
	.long L$set$270
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$271,LCFI24-LCFI23
	.long L$set$271
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE79:
LSFDE81:
	.set L$set$272,LEFDE81-LASFDE81
	.long L$set$272
LASFDE81:
	.long	LASFDE81-EH_frame1
	.quad	LFB9-.
	.set L$set$273,LFE9-LFB9
	.quad L$set$273
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$274,LCFI25-LFB9
	.long L$set$274
	.byte	0xe
	.uleb128 0x220
	.byte	0x4
	.set L$set$275,LCFI26-LCFI25
	.long L$set$275
	.byte	0xe
	.uleb128 0x10220
	.byte	0x4
	.set L$set$276,LCFI27-LCFI26
	.long L$set$276
	.byte	0x9d
	.uleb128 0x2044
	.byte	0x9e
	.uleb128 0x2043
	.byte	0x4
	.set L$set$277,LCFI28-LCFI27
	.long L$set$277
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$278,LCFI29-LCFI28
	.long L$set$278
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
	.set L$set$279,LCFI30-LCFI29
	.long L$set$279
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
	.set L$set$280,LCFI31-LCFI30
	.long L$set$280
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$281,LCFI32-LCFI31
	.long L$set$281
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE81:
LSFDE83:
	.set L$set$282,LEFDE83-LASFDE83
	.long L$set$282
LASFDE83:
	.long	LASFDE83-EH_frame1
	.quad	LFB10-.
	.set L$set$283,LFE10-LFB10
	.quad L$set$283
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$284,LCFI33-LFB10
	.long L$set$284
	.byte	0xe
	.uleb128 0x1c0
	.byte	0x4
	.set L$set$285,LCFI34-LCFI33
	.long L$set$285
	.byte	0xe
	.uleb128 0x101c0
	.byte	0x4
	.set L$set$286,LCFI35-LCFI34
	.long L$set$286
	.byte	0x9d
	.uleb128 0x2038
	.byte	0x9e
	.uleb128 0x2037
	.byte	0x4
	.set L$set$287,LCFI36-LCFI35
	.long L$set$287
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$288,LCFI37-LCFI36
	.long L$set$288
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
	.set L$set$289,LCFI38-LCFI37
	.long L$set$289
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
	.set L$set$290,LCFI39-LCFI38
	.long L$set$290
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$291,LCFI40-LCFI39
	.long L$set$291
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE83:
LSFDE85:
	.set L$set$292,LEFDE85-LASFDE85
	.long L$set$292
LASFDE85:
	.long	LASFDE85-EH_frame1
	.quad	LFB11-.
	.set L$set$293,LFE11-LFB11
	.quad L$set$293
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$294,LCFI41-LFB11
	.long L$set$294
	.byte	0xe
	.uleb128 0xa0
	.byte	0x4
	.set L$set$295,LCFI42-LCFI41
	.long L$set$295
	.byte	0xe
	.uleb128 0x100a0
	.byte	0x4
	.set L$set$296,LCFI43-LCFI42
	.long L$set$296
	.byte	0x9d
	.uleb128 0x2014
	.byte	0x9e
	.uleb128 0x2013
	.byte	0x4
	.set L$set$297,LCFI44-LCFI43
	.long L$set$297
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$298,LCFI45-LCFI44
	.long L$set$298
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
	.set L$set$299,LCFI46-LCFI45
	.long L$set$299
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
	.set L$set$300,LCFI47-LCFI46
	.long L$set$300
	.byte	0xe
	.uleb128 0x10000
	.byte	0x4
	.set L$set$301,LCFI48-LCFI47
	.long L$set$301
	.byte	0xe
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
	.quad	0
	.byte	0x4
	.set L$set$304,LCFI49-LFB13
	.long L$set$304
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$305,LCFI50-LCFI49
	.long L$set$305
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$306,LCFI51-LCFI50
	.long L$set$306
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE87:
LSFDE89:
	.set L$set$307,LEFDE89-LASFDE89
	.long L$set$307
LASFDE89:
	.long	LASFDE89-EH_frame1
	.quad	LFB12-.
	.set L$set$308,LFE12-LFB12
	.quad L$set$308
	.uleb128 0x8
	.quad	LLSDA12-.
	.byte	0x4
	.set L$set$309,LCFI52-LFB12
	.long L$set$309
	.byte	0xe
	.uleb128 0x800
	.byte	0x4
	.set L$set$310,LCFI53-LCFI52
	.long L$set$310
	.byte	0x9d
	.uleb128 0x100
	.byte	0x9e
	.uleb128 0xff
	.byte	0x4
	.set L$set$311,LCFI54-LCFI53
	.long L$set$311
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$312,LCFI55-LCFI54
	.long L$set$312
	.byte	0x93
	.uleb128 0xfe
	.byte	0x94
	.uleb128 0xfd
	.byte	0x95
	.uleb128 0xfc
	.byte	0x96
	.uleb128 0xfb
	.byte	0x97
	.uleb128 0xfa
	.byte	0x98
	.uleb128 0xf9
	.byte	0x99
	.uleb128 0xf8
	.byte	0x9a
	.uleb128 0xf7
	.byte	0x9b
	.uleb128 0xf6
	.byte	0x9c
	.uleb128 0xf5
	.byte	0x4
	.set L$set$313,LCFI56-LCFI55
	.long L$set$313
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
LEFDE89:
LSFDE91:
	.set L$set$314,LEFDE91-LASFDE91
	.long L$set$314
LASFDE91:
	.long	LASFDE91-EH_frame1
	.quad	LFB14-.
	.set L$set$315,LFE14-LFB14
	.quad L$set$315
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$316,LCFI57-LFB14
	.long L$set$316
	.byte	0xe
	.uleb128 0x500
	.byte	0x4
	.set L$set$317,LCFI58-LCFI57
	.long L$set$317
	.byte	0x9d
	.uleb128 0xa0
	.byte	0x9e
	.uleb128 0x9f
	.byte	0x4
	.set L$set$318,LCFI59-LCFI58
	.long L$set$318
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$319,LCFI60-LCFI59
	.long L$set$319
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
	.set L$set$320,LCFI61-LCFI60
	.long L$set$320
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
LEFDE91:
LSFDE93:
	.set L$set$321,LEFDE93-LASFDE93
	.long L$set$321
LASFDE93:
	.long	LASFDE93-EH_frame1
	.quad	LFB16-.
	.set L$set$322,LFE16-LFB16
	.quad L$set$322
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$323,LCFI62-LFB16
	.long L$set$323
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$324,LCFI63-LCFI62
	.long L$set$324
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$325,LCFI64-LCFI63
	.long L$set$325
	.byte	0xde
	.byte	0xdd
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
	.quad	LFB15-.
	.set L$set$327,LFE15-LFB15
	.quad L$set$327
	.uleb128 0x8
	.quad	LLSDA15-.
	.byte	0x4
	.set L$set$328,LCFI65-LFB15
	.long L$set$328
	.byte	0xe
	.uleb128 0x7b0
	.byte	0x4
	.set L$set$329,LCFI66-LCFI65
	.long L$set$329
	.byte	0x9d
	.uleb128 0xf4
	.byte	0x9e
	.uleb128 0xf3
	.byte	0x4
	.set L$set$330,LCFI67-LCFI66
	.long L$set$330
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x7a0
	.byte	0x4
	.set L$set$331,LCFI68-LCFI67
	.long L$set$331
	.byte	0x93
	.uleb128 0xf2
	.byte	0x94
	.uleb128 0xf1
	.byte	0x95
	.uleb128 0xf0
	.byte	0x96
	.uleb128 0xef
	.byte	0x97
	.uleb128 0xee
	.byte	0x98
	.uleb128 0xed
	.byte	0x99
	.uleb128 0xec
	.byte	0x9a
	.uleb128 0xeb
	.byte	0x9b
	.uleb128 0xea
	.byte	0x9c
	.uleb128 0xe9
	.byte	0x4
	.set L$set$332,LCFI69-LCFI68
	.long L$set$332
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x7b0
	.byte	0x4
	.set L$set$333,LCFI70-LCFI69
	.long L$set$333
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
LEFDE95:
LSFDE97:
	.set L$set$334,LEFDE97-LASFDE97
	.long L$set$334
LASFDE97:
	.long	LASFDE97-EH_frame1
	.quad	LFB17-.
	.set L$set$335,LFE17-LFB17
	.quad L$set$335
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$336,LCFI71-LFB17
	.long L$set$336
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$337,LCFI72-LCFI71
	.long L$set$337
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$338,LCFI73-LCFI72
	.long L$set$338
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE97:
LSFDE99:
	.set L$set$339,LEFDE99-LASFDE99
	.long L$set$339
LASFDE99:
	.long	LASFDE99-EH_frame1
	.quad	LFB19-.
	.set L$set$340,LFE19-LFB19
	.quad L$set$340
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$341,LCFI74-LFB19
	.long L$set$341
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$342,LCFI75-LCFI74
	.long L$set$342
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$343,LCFI76-LCFI75
	.long L$set$343
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE99:
LSFDE101:
	.set L$set$344,LEFDE101-LASFDE101
	.long L$set$344
LASFDE101:
	.long	LASFDE101-EH_frame1
	.quad	LFB18-.
	.set L$set$345,LFE18-LFB18
	.quad L$set$345
	.uleb128 0x8
	.quad	LLSDA18-.
	.byte	0x4
	.set L$set$346,LCFI77-LFB18
	.long L$set$346
	.byte	0xe
	.uleb128 0x1c0
	.byte	0x9d
	.uleb128 0x38
	.byte	0x9e
	.uleb128 0x37
	.byte	0x4
	.set L$set$347,LCFI78-LCFI77
	.long L$set$347
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$348,LCFI79-LCFI78
	.long L$set$348
	.byte	0x93
	.uleb128 0x36
	.byte	0x94
	.uleb128 0x35
	.byte	0x95
	.uleb128 0x34
	.byte	0x96
	.uleb128 0x33
	.byte	0x97
	.uleb128 0x32
	.byte	0x98
	.uleb128 0x31
	.byte	0x99
	.uleb128 0x30
	.byte	0x9a
	.uleb128 0x2f
	.byte	0x9b
	.uleb128 0x2e
	.byte	0x9c
	.uleb128 0x2d
	.byte	0x4
	.set L$set$349,LCFI80-LCFI79
	.long L$set$349
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
	.set L$set$350,LEFDE103-LASFDE103
	.long L$set$350
LASFDE103:
	.long	LASFDE103-EH_frame1
	.quad	LFB21-.
	.set L$set$351,LFE21-LFB21
	.quad L$set$351
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$352,LCFI81-LFB21
	.long L$set$352
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$353,LCFI82-LCFI81
	.long L$set$353
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$354,LCFI83-LCFI82
	.long L$set$354
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE103:
LSFDE105:
	.set L$set$355,LEFDE105-LASFDE105
	.long L$set$355
LASFDE105:
	.long	LASFDE105-EH_frame1
	.quad	LFB20-.
	.set L$set$356,LFE20-LFB20
	.quad L$set$356
	.uleb128 0x8
	.quad	LLSDA20-.
	.byte	0x4
	.set L$set$357,LCFI84-LFB20
	.long L$set$357
	.byte	0xe
	.uleb128 0x1c0
	.byte	0x9d
	.uleb128 0x38
	.byte	0x9e
	.uleb128 0x37
	.byte	0x4
	.set L$set$358,LCFI85-LCFI84
	.long L$set$358
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$359,LCFI86-LCFI85
	.long L$set$359
	.byte	0x93
	.uleb128 0x36
	.byte	0x94
	.uleb128 0x35
	.byte	0x95
	.uleb128 0x34
	.byte	0x96
	.uleb128 0x33
	.byte	0x97
	.uleb128 0x32
	.byte	0x98
	.uleb128 0x31
	.byte	0x99
	.uleb128 0x30
	.byte	0x9a
	.uleb128 0x2f
	.byte	0x9b
	.uleb128 0x2e
	.byte	0x9c
	.uleb128 0x2d
	.byte	0x4
	.set L$set$360,LCFI87-LCFI86
	.long L$set$360
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
LEFDE105:
LSFDE107:
	.set L$set$361,LEFDE107-LASFDE107
	.long L$set$361
LASFDE107:
	.long	LASFDE107-EH_frame1
	.quad	LFB23-.
	.set L$set$362,LFE23-LFB23
	.quad L$set$362
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$363,LCFI88-LFB23
	.long L$set$363
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$364,LCFI89-LCFI88
	.long L$set$364
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$365,LCFI90-LCFI89
	.long L$set$365
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE107:
LSFDE109:
	.set L$set$366,LEFDE109-LASFDE109
	.long L$set$366
LASFDE109:
	.long	LASFDE109-EH_frame1
	.quad	LFB22-.
	.set L$set$367,LFE22-LFB22
	.quad L$set$367
	.uleb128 0x8
	.quad	LLSDA22-.
	.byte	0x4
	.set L$set$368,LCFI91-LFB22
	.long L$set$368
	.byte	0xe
	.uleb128 0x100
	.byte	0x9d
	.uleb128 0x20
	.byte	0x9e
	.uleb128 0x1f
	.byte	0x4
	.set L$set$369,LCFI92-LCFI91
	.long L$set$369
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$370,LCFI93-LCFI92
	.long L$set$370
	.byte	0x93
	.uleb128 0x1e
	.byte	0x94
	.uleb128 0x1d
	.byte	0x95
	.uleb128 0x1c
	.byte	0x96
	.uleb128 0x1b
	.byte	0x97
	.uleb128 0x1a
	.byte	0x98
	.uleb128 0x19
	.byte	0x99
	.uleb128 0x18
	.byte	0x9a
	.uleb128 0x17
	.byte	0x9b
	.uleb128 0x16
	.byte	0x9c
	.uleb128 0x15
	.byte	0x4
	.set L$set$371,LCFI94-LCFI93
	.long L$set$371
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
	.set L$set$372,LEFDE111-LASFDE111
	.long L$set$372
LASFDE111:
	.long	LASFDE111-EH_frame1
	.quad	LFB25-.
	.set L$set$373,LFE25-LFB25
	.quad L$set$373
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$374,LCFI95-LFB25
	.long L$set$374
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$375,LCFI96-LCFI95
	.long L$set$375
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$376,LCFI97-LCFI96
	.long L$set$376
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE111:
LSFDE113:
	.set L$set$377,LEFDE113-LASFDE113
	.long L$set$377
LASFDE113:
	.long	LASFDE113-EH_frame1
	.quad	LFB24-.
	.set L$set$378,LFE24-LFB24
	.quad L$set$378
	.uleb128 0x8
	.quad	LLSDA24-.
	.byte	0x4
	.set L$set$379,LCFI98-LFB24
	.long L$set$379
	.byte	0xe
	.uleb128 0xb0
	.byte	0x9d
	.uleb128 0x16
	.byte	0x9e
	.uleb128 0x15
	.byte	0x4
	.set L$set$380,LCFI99-LCFI98
	.long L$set$380
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$381,LCFI100-LCFI99
	.long L$set$381
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
	.set L$set$382,LCFI101-LCFI100
	.long L$set$382
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
LEFDE113:
LSFDE115:
	.set L$set$383,LEFDE115-LASFDE115
	.long L$set$383
LASFDE115:
	.long	LASFDE115-EH_frame1
	.quad	LFB27-.
	.set L$set$384,LFE27-LFB27
	.quad L$set$384
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$385,LCFI102-LFB27
	.long L$set$385
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$386,LCFI103-LCFI102
	.long L$set$386
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$387,LCFI104-LCFI103
	.long L$set$387
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE115:
LSFDE117:
	.set L$set$388,LEFDE117-LASFDE117
	.long L$set$388
LASFDE117:
	.long	LASFDE117-EH_frame1
	.quad	LFB26-.
	.set L$set$389,LFE26-LFB26
	.quad L$set$389
	.uleb128 0x8
	.quad	LLSDA26-.
	.byte	0x4
	.set L$set$390,LCFI105-LFB26
	.long L$set$390
	.byte	0xe
	.uleb128 0x100
	.byte	0x9d
	.uleb128 0x20
	.byte	0x9e
	.uleb128 0x1f
	.byte	0x4
	.set L$set$391,LCFI106-LCFI105
	.long L$set$391
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$392,LCFI107-LCFI106
	.long L$set$392
	.byte	0x93
	.uleb128 0x1e
	.byte	0x94
	.uleb128 0x1d
	.byte	0x95
	.uleb128 0x1c
	.byte	0x96
	.uleb128 0x1b
	.byte	0x97
	.uleb128 0x1a
	.byte	0x98
	.uleb128 0x19
	.byte	0x99
	.uleb128 0x18
	.byte	0x9a
	.uleb128 0x17
	.byte	0x9b
	.uleb128 0x16
	.byte	0x9c
	.uleb128 0x15
	.byte	0x4
	.set L$set$393,LCFI108-LCFI107
	.long L$set$393
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
LEFDE117:
LSFDE119:
	.set L$set$394,LEFDE119-LASFDE119
	.long L$set$394
LASFDE119:
	.long	LASFDE119-EH_frame1
	.quad	LFB29-.
	.set L$set$395,LFE29-LFB29
	.quad L$set$395
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$396,LCFI109-LFB29
	.long L$set$396
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$397,LCFI110-LCFI109
	.long L$set$397
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$398,LCFI111-LCFI110
	.long L$set$398
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE119:
LSFDE121:
	.set L$set$399,LEFDE121-LASFDE121
	.long L$set$399
LASFDE121:
	.long	LASFDE121-EH_frame1
	.quad	LFB28-.
	.set L$set$400,LFE28-LFB28
	.quad L$set$400
	.uleb128 0x8
	.quad	LLSDA28-.
	.byte	0x4
	.set L$set$401,LCFI112-LFB28
	.long L$set$401
	.byte	0xe
	.uleb128 0x5d0
	.byte	0x4
	.set L$set$402,LCFI113-LCFI112
	.long L$set$402
	.byte	0x9d
	.uleb128 0xba
	.byte	0x9e
	.uleb128 0xb9
	.byte	0x4
	.set L$set$403,LCFI114-LCFI113
	.long L$set$403
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$404,LCFI115-LCFI114
	.long L$set$404
	.byte	0x93
	.uleb128 0xb8
	.byte	0x94
	.uleb128 0xb7
	.byte	0x95
	.uleb128 0xb6
	.byte	0x96
	.uleb128 0xb5
	.byte	0x97
	.uleb128 0xb4
	.byte	0x98
	.uleb128 0xb3
	.byte	0x99
	.uleb128 0xb2
	.byte	0x9a
	.uleb128 0xb1
	.byte	0x9b
	.uleb128 0xb0
	.byte	0x9c
	.uleb128 0xaf
	.byte	0x4
	.set L$set$405,LCFI116-LCFI115
	.long L$set$405
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
LEFDE121:
LSFDE123:
	.set L$set$406,LEFDE123-LASFDE123
	.long L$set$406
LASFDE123:
	.long	LASFDE123-EH_frame1
	.quad	LFB30-.
	.set L$set$407,LFE30-LFB30
	.quad L$set$407
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$408,LCFI117-LFB30
	.long L$set$408
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$409,LCFI118-LCFI117
	.long L$set$409
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$410,LCFI119-LCFI118
	.long L$set$410
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE123:
LSFDE125:
	.set L$set$411,LEFDE125-LASFDE125
	.long L$set$411
LASFDE125:
	.long	LASFDE125-EH_frame1
	.quad	LFB31-.
	.set L$set$412,LFE31-LFB31
	.quad L$set$412
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$413,LCFI120-LFB31
	.long L$set$413
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$414,LCFI121-LCFI120
	.long L$set$414
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$415,LCFI122-LCFI121
	.long L$set$415
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE125:
LSFDE127:
	.set L$set$416,LEFDE127-LASFDE127
	.long L$set$416
LASFDE127:
	.long	LASFDE127-EH_frame1
	.quad	LFB32-.
	.set L$set$417,LFE32-LFB32
	.quad L$set$417
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$418,LCFI123-LFB32
	.long L$set$418
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$419,LCFI124-LCFI123
	.long L$set$419
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$420,LCFI125-LCFI124
	.long L$set$420
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE127:
LSFDE129:
	.set L$set$421,LEFDE129-LASFDE129
	.long L$set$421
LASFDE129:
	.long	LASFDE129-EH_frame1
	.quad	LFB33-.
	.set L$set$422,LFE33-LFB33
	.quad L$set$422
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$423,LCFI126-LFB33
	.long L$set$423
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$424,LCFI127-LCFI126
	.long L$set$424
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$425,LCFI128-LCFI127
	.long L$set$425
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE129:
LSFDE131:
	.set L$set$426,LEFDE131-LASFDE131
	.long L$set$426
LASFDE131:
	.long	LASFDE131-EH_frame1
	.quad	LFB34-.
	.set L$set$427,LFE34-LFB34
	.quad L$set$427
	.uleb128 0x8
	.quad	LLSDA34-.
	.byte	0x4
	.set L$set$428,LCFI129-LFB34
	.long L$set$428
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$429,LCFI130-LCFI129
	.long L$set$429
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$430,LCFI131-LCFI130
	.long L$set$430
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE131:
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
	.long	0x238a
	.short	0x4
	.set L$set$431,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$431
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU Ada 15.0.1 20250418 (prerelease) -gnatA -gnat2012 -gnato -gnatwa -gnata -g -gnatR2js -gnatws -gnatis -gnatec=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.89204/GNAT-TEMP-000003.TMP -gnatem=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.89204/GNAT-TEMP-000004.TMP -mmacosx-version-min=14.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -fPIC\0"
	.byte	0xd
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_files.adb\0"
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/obj/gnatprove/data_representation\0"
	.set L$set$432,Ldebug_ranges0+0x760-Lsection__debug_ranges
	.long L$set$432
	.quad	0
	.set L$set$433,Ldebug_line0-Lsection__debug_line
	.long L$set$433
	.uleb128 0x2
	.long	0x236
	.long	0x226
	.uleb128 0x3
	.long	0x22b
	.sleb128 43
	.byte	0
	.uleb128 0x4
	.long	0x216
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "integer\0"
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.ascii "character\0"
	.uleb128 0x2
	.long	0x236
	.long	0x253
	.uleb128 0x3
	.long	0x22b
	.sleb128 41
	.byte	0
	.uleb128 0x4
	.long	0x243
	.uleb128 0x2
	.long	0x236
	.long	0x268
	.uleb128 0x3
	.long	0x22b
	.sleb128 58
	.byte	0
	.uleb128 0x4
	.long	0x258
	.uleb128 0x2
	.long	0x236
	.long	0x27d
	.uleb128 0x3
	.long	0x22b
	.sleb128 40
	.byte	0
	.uleb128 0x4
	.long	0x26d
	.uleb128 0x2
	.long	0x236
	.long	0x292
	.uleb128 0x3
	.long	0x22b
	.sleb128 31
	.byte	0
	.uleb128 0x4
	.long	0x282
	.uleb128 0x2
	.long	0x236
	.long	0x2a8
	.uleb128 0x3
	.long	0x22b
	.sleb128 83
	.byte	0
	.uleb128 0x4
	.long	0x297
	.uleb128 0x2
	.long	0x236
	.long	0x2bd
	.uleb128 0x3
	.long	0x22b
	.sleb128 51
	.byte	0
	.uleb128 0x4
	.long	0x2ad
	.uleb128 0x6
	.byte	0x10
	.byte	0x2
	.byte	0xe
	.byte	0xe
	.long	0x2fa
	.uleb128 0x7
	.ascii "x\0"
	.byte	0x2
	.byte	0xe
	.byte	0x1f
	.long	0x2fa
	.byte	0
	.uleb128 0x7
	.ascii "y\0"
	.byte	0x2
	.byte	0xe
	.byte	0x22
	.long	0x2fa
	.byte	0x4
	.uleb128 0x7
	.ascii "z\0"
	.byte	0x2
	.byte	0xe
	.byte	0x25
	.long	0x2fa
	.byte	0x8
	.uleb128 0x8
	.set L$set$434,LASF0-Lsection__debug_str
	.long L$set$434
	.byte	0x2
	.byte	0xe
	.byte	0x36
	.long	0x30a
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "integer\0"
	.uleb128 0x9
	.long	0x2fa
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.ascii "boolean\0"
	.uleb128 0x6
	.byte	0x8
	.byte	0x2
	.byte	0x11
	.byte	0xe
	.long	0x33c
	.uleb128 0x8
	.set L$set$435,LASF1-Lsection__debug_str
	.long L$set$435
	.byte	0x2
	.byte	0x11
	.byte	0x25
	.long	0x33c
	.byte	0
	.uleb128 0x7
	.ascii "status\0"
	.byte	0x2
	.byte	0x11
	.byte	0x3b
	.long	0x2fa
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x9
	.long	0x33c
	.uleb128 0x6
	.byte	0x10
	.byte	0x2
	.byte	0x25
	.byte	0xe
	.long	0x36e
	.uleb128 0x8
	.set L$set$436,LASF2-Lsection__debug_str
	.long L$set$436
	.byte	0x2
	.byte	0x25
	.byte	0x22
	.long	0x30a
	.byte	0
	.uleb128 0x8
	.set L$set$437,LASF3-Lsection__debug_str
	.long L$set$437
	.byte	0x2
	.byte	0x25
	.byte	0x38
	.long	0x36e
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "long_integer\0"
	.uleb128 0x9
	.long	0x36e
	.uleb128 0x6
	.byte	0x8
	.byte	0x1
	.byte	0x1c
	.byte	0xe
	.long	0x3a7
	.uleb128 0x8
	.set L$set$438,LASF4-Lsection__debug_str
	.long L$set$438
	.byte	0x1
	.byte	0x1c
	.byte	0x46
	.long	0x3a7
	.byte	0
	.uleb128 0x8
	.set L$set$439,LASF0-Lsection__debug_str
	.long L$set$439
	.byte	0x1
	.byte	0x1c
	.byte	0x5c
	.long	0x30a
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.sleb128 0
	.sleb128 2147483647
	.ascii "natural\0"
	.long	0x22b
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.ascii "system__parameters__Tsize_typeB\0"
	.uleb128 0x5
	.byte	0x1
	.byte	0x7
	.ascii "system__storage_elements__storage_element\0"
	.uleb128 0xc
	.ascii "ada__text_io__file_type\0"
	.byte	0x4
	.short	0x2a6
	.byte	0x9
	.long	0x42b
	.uleb128 0xd
	.byte	0x8
	.long	0x431
	.uleb128 0xe
	.ascii "ada__text_io__text_afcb\0"
	.byte	0x80
	.byte	0x4
	.short	0x2a8
	.byte	0x9
	.long	0x556
	.uleb128 0x7
	.ascii "_parent\0"
	.byte	0x3
	.byte	0x46
	.byte	0x35
	.long	0x556
	.byte	0
	.uleb128 0xf
	.ascii "page\0"
	.byte	0x4
	.short	0x2a9
	.byte	0x7
	.long	0xb77
	.byte	0x58
	.uleb128 0xf
	.ascii "line\0"
	.byte	0x4
	.short	0x2aa
	.byte	0x7
	.long	0xb77
	.byte	0x5c
	.uleb128 0xf
	.ascii "col\0"
	.byte	0x4
	.short	0x2ab
	.byte	0x7
	.long	0xb77
	.byte	0x60
	.uleb128 0xf
	.ascii "line_length\0"
	.byte	0x4
	.short	0x2ac
	.byte	0x7
	.long	0xb77
	.byte	0x64
	.uleb128 0xf
	.ascii "page_length\0"
	.byte	0x4
	.short	0x2ad
	.byte	0x7
	.long	0xb77
	.byte	0x68
	.uleb128 0xf
	.ascii "self\0"
	.byte	0x4
	.short	0x2af
	.byte	0x7
	.long	0x40a
	.byte	0x70
	.uleb128 0xf
	.ascii "before_lm\0"
	.byte	0x4
	.short	0x2b5
	.byte	0x7
	.long	0x30a
	.byte	0x78
	.uleb128 0xf
	.ascii "before_lm_pm\0"
	.byte	0x4
	.short	0x2be
	.byte	0x7
	.long	0x30a
	.byte	0x79
	.uleb128 0xf
	.ascii "wc_method\0"
	.byte	0x4
	.short	0x2c3
	.byte	0x7
	.long	0xbaf
	.byte	0x7a
	.uleb128 0xf
	.ascii "before_upper_half_character\0"
	.byte	0x4
	.short	0x2c8
	.byte	0x7
	.long	0x30a
	.byte	0x7b
	.uleb128 0xf
	.ascii "saved_upper_half_character\0"
	.byte	0x4
	.short	0x2d1
	.byte	0x7
	.long	0x236
	.byte	0x7c
	.byte	0
	.uleb128 0x10
	.ascii "system__file_control_block__afcb\0"
	.byte	0x58
	.byte	0x5
	.byte	0x54
	.byte	0x9
	.long	0x68c
	.uleb128 0xf
	.ascii "_parent\0"
	.byte	0x6
	.short	0x10e
	.byte	0x9
	.long	0x68c
	.byte	0
	.uleb128 0x7
	.ascii "stream\0"
	.byte	0x5
	.byte	0x56
	.byte	0x7
	.long	0x72f
	.byte	0x8
	.uleb128 0x7
	.ascii "name\0"
	.byte	0x5
	.byte	0x59
	.byte	0x7
	.long	0x76d
	.byte	0x10
	.uleb128 0x7
	.ascii "encoding\0"
	.byte	0x5
	.byte	0x5e
	.byte	0x7
	.long	0x86a
	.byte	0x20
	.uleb128 0x7
	.ascii "form\0"
	.byte	0x5
	.byte	0x61
	.byte	0x7
	.long	0x76d
	.byte	0x28
	.uleb128 0x7
	.ascii "mode\0"
	.byte	0x5
	.byte	0x66
	.byte	0x7
	.long	0x8e1
	.byte	0x38
	.uleb128 0x7
	.ascii "is_regular_file\0"
	.byte	0x5
	.byte	0x6a
	.byte	0x7
	.long	0x30a
	.byte	0x39
	.uleb128 0x7
	.ascii "is_temporary_file\0"
	.byte	0x5
	.byte	0x6d
	.byte	0x7
	.long	0x30a
	.byte	0x3a
	.uleb128 0x7
	.ascii "is_system_file\0"
	.byte	0x5
	.byte	0x71
	.byte	0x7
	.long	0x30a
	.byte	0x3b
	.uleb128 0x7
	.ascii "text_encoding\0"
	.byte	0x5
	.byte	0x74
	.byte	0x7
	.long	0x9b1
	.byte	0x3c
	.uleb128 0x7
	.ascii "shared_status\0"
	.byte	0x5
	.byte	0x77
	.byte	0x7
	.long	0xaa5
	.byte	0x40
	.uleb128 0x7
	.ascii "access_method\0"
	.byte	0x5
	.byte	0x7a
	.byte	0x7
	.long	0x236
	.byte	0x41
	.uleb128 0x7
	.ascii "next\0"
	.byte	0x5
	.byte	0x7e
	.byte	0x7
	.long	0xb44
	.byte	0x48
	.uleb128 0x7
	.ascii "prev\0"
	.byte	0x5
	.byte	0x7f
	.byte	0x7
	.long	0xb44
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.ascii "ada__streams__root_stream_type\0"
	.byte	0x8
	.byte	0x3
	.byte	0x46
	.byte	0x9
	.long	0x6c3
	.uleb128 0x7
	.ascii "_tag\0"
	.byte	0x3
	.byte	0x46
	.byte	0x35
	.long	0x6c3
	.byte	0
	.byte	0
	.uleb128 0xc
	.ascii "ada__tags__tag\0"
	.byte	0x6
	.short	0x10e
	.byte	0x9
	.long	0x6db
	.uleb128 0xd
	.byte	0x8
	.long	0x6e1
	.uleb128 0x11
	.ascii "ada__tags__dispatch_table\0"
	.long	0x70b
	.long	0x70b
	.uleb128 0x3
	.long	0x22b
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.ascii "ada__tags__prim_ptr\0"
	.byte	0x6
	.short	0x105
	.byte	0x9
	.long	0x728
	.uleb128 0xd
	.byte	0x8
	.long	0x72e
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "interfaces__c_streams__files\0"
	.long	0x75a
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.ascii "system__address\0"
	.uleb128 0x14
	.ascii "system__file_control_block__pstring\0"
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x799
	.uleb128 0x15
	.ascii "string\0"
	.byte	0x10
	.byte	0x7
	.byte	0
	.long	0x7f1
	.uleb128 0x16
	.ascii "P_ARRAY\0"
	.byte	0x7
	.byte	0
	.long	0x7b8
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x82d
	.uleb128 0x17
	.byte	0x8
	.byte	0x7
	.byte	0
	.long	0x7df
	.uleb128 0x16
	.ascii "LB0\0"
	.byte	0x7
	.byte	0
	.long	0x84c
	.byte	0
	.uleb128 0x16
	.ascii "UB0\0"
	.byte	0x7
	.byte	0
	.long	0x84c
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.ascii "P_BOUNDS\0"
	.byte	0x7
	.byte	0
	.long	0x864
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x4
	.long	0x799
	.uleb128 0x2
	.long	0x236
	.long	0x84c
	.uleb128 0x18
	.long	0x22b
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
	.uleb128 0x19
	.sleb128 2147483647
	.ascii "positive\0"
	.long	0x22b
	.uleb128 0x9
	.long	0x84c
	.uleb128 0xd
	.byte	0x8
	.long	0x7be
	.uleb128 0x1a
	.ascii "system__crtl__filename_encoding\0"
	.byte	0x4
	.byte	0x8
	.byte	0x45
	.byte	0x9
	.long	0x8e1
	.uleb128 0x1b
	.ascii "system__crtl__utf8\0"
	.byte	0
	.uleb128 0x1b
	.ascii "system__crtl__ascii_8bits\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "system__crtl__unspecified\0"
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.ascii "system__file_control_block__file_mode\0"
	.byte	0x1
	.byte	0x5
	.byte	0x3f
	.byte	0x9
	.long	0x9b1
	.uleb128 0x1b
	.ascii "system__file_control_block__in_file\0"
	.byte	0
	.uleb128 0x1b
	.ascii "system__file_control_block__inout_file\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "system__file_control_block__out_file\0"
	.byte	0x2
	.uleb128 0x1b
	.ascii "system__file_control_block__append_file\0"
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.ascii "interfaces__c_streams__content_encoding\0"
	.byte	0x4
	.byte	0x9
	.byte	0xe5
	.byte	0x9
	.long	0xaa5
	.uleb128 0x1b
	.ascii "interfaces__c_streams__none\0"
	.byte	0
	.uleb128 0x1b
	.ascii "interfaces__c_streams__default_text\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "interfaces__c_streams__text\0"
	.byte	0x2
	.uleb128 0x1b
	.ascii "interfaces__c_streams__u8text\0"
	.byte	0x3
	.uleb128 0x1b
	.ascii "interfaces__c_streams__wtext\0"
	.byte	0x4
	.uleb128 0x1b
	.ascii "interfaces__c_streams__u16text\0"
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.ascii "system__file_control_block__shared_status_type\0"
	.byte	0x1
	.byte	0x5
	.byte	0x45
	.byte	0x9
	.long	0xb44
	.uleb128 0x1b
	.ascii "system__file_control_block__yes\0"
	.byte	0
	.uleb128 0x1b
	.ascii "system__file_control_block__no\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "system__file_control_block__none\0"
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.ascii "system__file_control_block__afcb_ptr\0"
	.byte	0x5
	.byte	0x52
	.byte	0x9
	.long	0xb71
	.uleb128 0xd
	.byte	0x8
	.long	0x556
	.uleb128 0xa
	.sleb128 0
	.sleb128 2147483647
	.ascii "ada__text_io__count\0"
	.long	0xb96
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.ascii "ada__text_io__TcountB\0"
	.uleb128 0x19
	.sleb128 6
	.ascii "system__wch_con__wc_encoding_method\0"
	.long	0xbd9
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.ascii "system__wch_con__Twc_encoding_methodB\0"
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.ascii "system__val_flt__impl__num\0"
	.uleb128 0xa
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "ada__calendar__time\0"
	.long	0xc4d
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.ascii "ada__calendar__TtimeB\0"
	.uleb128 0xa
	.sleb128 1901
	.sleb128 2399
	.ascii "ada__calendar__year_number\0"
	.long	0x22b
	.uleb128 0x19
	.sleb128 12
	.ascii "ada__calendar__month_number\0"
	.long	0x22b
	.uleb128 0x19
	.sleb128 31
	.ascii "ada__calendar__day_number\0"
	.long	0x22b
	.uleb128 0xa
	.sleb128 0
	.sleb128 86400000000000
	.ascii "ada__calendar__day_duration\0"
	.long	0xcf5
	.uleb128 0x1c
	.byte	0x8
	.byte	0xd
	.sleb128 -9
	.ascii "duration\0"
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.ascii "ada__directories__Tfile_sizeB\0"
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.ascii "system__img_flt__impl__num\0"
	.uleb128 0xb
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
	.long	0x226
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__telemetry_csv
	.uleb128 0x1d
	.ascii "smc_files__precool_flag\0"
	.byte	0x2
	.byte	0x5
	.byte	0x4
	.long	0x253
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__precool_flag
	.uleb128 0x1d
	.ascii "smc_files__earu_data_file\0"
	.byte	0x2
	.byte	0x6
	.byte	0x4
	.long	0x268
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__earu_data_file
	.uleb128 0x1d
	.ascii "smc_files__silent_mode_flag\0"
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.long	0x27d
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__silent_mode_flag
	.uleb128 0x1d
	.ascii "smc_files__calibration_file\0"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.long	0x292
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__calibration_file
	.uleb128 0x1d
	.ascii "smc_files__pressure_report_file\0"
	.byte	0x2
	.byte	0xa
	.byte	0x4
	.long	0x2a8
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__pressure_report_file
	.uleb128 0x1d
	.ascii "smc_files__notifications_log\0"
	.byte	0x2
	.byte	0xb
	.byte	0x4
	.long	0x2bd
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_files__notifications_log
	.uleb128 0x1e
	.ascii "smc_files__delete_file\0"
	.byte	0x1
	.short	0x236
	.byte	0x4
	.quad	LFB34
	.set L$set$440,LFE34-LFB34
	.quad L$set$440
	.uleb128 0x1
	.byte	0x9c
	.long	0xf2b
	.uleb128 0x1f
	.set L$set$441,LASF7-Lsection__debug_str
	.long L$set$441
	.byte	0x2
	.byte	0x35
	.byte	0x1b
	.long	0x828
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.set L$set$442,Ldebug_ranges0+0x720-Lsection__debug_ranges
	.long L$set$442
	.uleb128 0x21
	.set L$set$443,LASF5-Lsection__debug_str
	.long L$set$443
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$444,LASF6-Lsection__debug_str
	.long L$set$444
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.set L$set$445,LASF8-Lsection__debug_str
	.long L$set$445
	.long	0xf2b
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x8
	.uleb128 0x1e
	.ascii "smc_files__write_pressure_report\0"
	.byte	0x1
	.short	0x21d
	.byte	0x4
	.quad	LFB28
	.set L$set$446,LFE28-LFB28
	.quad L$set$446
	.uleb128 0x1
	.byte	0x9c
	.long	0x1286
	.uleb128 0x24
	.ascii "ref_rpm\0"
	.byte	0x2
	.byte	0x32
	.byte	0x25
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x24
	.ascii "cur_rpm\0"
	.byte	0x2
	.byte	0x32
	.byte	0x2e
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x24
	.ascii "diff\0"
	.byte	0x2
	.byte	0x32
	.byte	0x37
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x24
	.ascii "est_hpa\0"
	.byte	0x2
	.byte	0x32
	.byte	0x3d
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x24
	.ascii "timestamp\0"
	.byte	0x2
	.byte	0x32
	.byte	0x4e
	.long	0x37e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x25
	.byte	0x1
	.short	0x21e
	.byte	0x7
	.long	0x1292
	.uleb128 0x25
	.byte	0x1
	.short	0x21f
	.byte	0x7
	.long	0x12ae
	.uleb128 0x26
	.set L$set$447,LASF10-Lsection__debug_str
	.long L$set$447
	.byte	0x1
	.short	0x220
	.byte	0x7
	.long	0x40a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x20
	.set L$set$448,Ldebug_ranges0+0x5e0-Lsection__debug_ranges
	.long L$set$448
	.uleb128 0x21
	.set L$set$449,LASF5-Lsection__debug_str
	.long L$set$449
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.set L$set$450,LASF6-Lsection__debug_str
	.long L$set$450
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.set L$set$451,LASF8-Lsection__debug_str
	.long L$set$451
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.set L$set$452,Ldebug_ranges0+0x630-Lsection__debug_ranges
	.long L$set$452
	.long	0x1090
	.uleb128 0x28
	.ascii "smc_files__write_pressure_report__B_21__B559b__TA572bP1___U\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2
	.long	0x236
	.long	0x107b
	.uleb128 0x29
	.long	0x22b
	.long	0x1024
	.byte	0
	.uleb128 0x28
	.ascii "S571b\0"
	.long	0x1089
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.byte	0x8
	.long	0x1068
	.byte	0
	.uleb128 0x27
	.set L$set$453,Ldebug_ranges0+0x660-Lsection__debug_ranges
	.long L$set$453
	.long	0x1105
	.uleb128 0x28
	.ascii "smc_files__write_pressure_report__B_21__B577b__TA590bP1___U\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.long	0x236
	.long	0x10f0
	.uleb128 0x29
	.long	0x22b
	.long	0x1099
	.byte	0
	.uleb128 0x28
	.ascii "S589b\0"
	.long	0x10fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.byte	0x8
	.long	0x10dd
	.byte	0
	.uleb128 0x27
	.set L$set$454,Ldebug_ranges0+0x690-Lsection__debug_ranges
	.long L$set$454
	.long	0x119a
	.uleb128 0x2
	.long	0x236
	.long	0x111e
	.uleb128 0x3
	.long	0x22b
	.sleb128 1
	.byte	0
	.uleb128 0x28
	.ascii "C598b\0"
	.long	0x110e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x28
	.ascii "smc_files__write_pressure_report__B_21__B595b__TA621bP1___U\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2
	.long	0x236
	.long	0x1184
	.uleb128 0x29
	.long	0x22b
	.long	0x112d
	.byte	0
	.uleb128 0x28
	.ascii "S620b\0"
	.long	0x1193
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.byte	0x8
	.long	0x1171
	.byte	0
	.uleb128 0x27
	.set L$set$455,Ldebug_ranges0+0x6c0-Lsection__debug_ranges
	.long L$set$455
	.long	0x1211
	.uleb128 0x28
	.ascii "smc_files__write_pressure_report__B_21__B626b__TA639bP1___U\0"
	.long	0x22b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.long	0x236
	.long	0x11fb
	.uleb128 0x29
	.long	0x22b
	.long	0x11a3
	.byte	0
	.uleb128 0x28
	.ascii "S638b\0"
	.long	0x120a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.byte	0x8
	.long	0x11e8
	.byte	0
	.uleb128 0x20
	.set L$set$456,Ldebug_ranges0+0x6f0-Lsection__debug_ranges
	.long L$set$456
	.uleb128 0x28
	.ascii "smc_files__write_pressure_report__B_21__B644b__TA657bP1___U\0"
	.long	0x22b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2
	.long	0x236
	.long	0x126e
	.uleb128 0x29
	.long	0x22b
	.long	0x1216
	.byte	0
	.uleb128 0x28
	.ascii "S656b\0"
	.long	0x127d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.byte	0x8
	.long	0x125b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.ascii "ada\0"
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.long	0x12d7
	.uleb128 0x2c
	.ascii "text_io\0"
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.uleb128 0x2b
	.ascii "strings\0"
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.long	0x12b9
	.uleb128 0x2c
	.ascii "fixed\0"
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.byte	0
	.uleb128 0x2c
	.ascii "directories\0"
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.uleb128 0x2c
	.ascii "calendar\0"
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.ascii "smc_files__save_fan_calibration\0"
	.byte	0x1
	.short	0x208
	.byte	0x4
	.quad	LFB26
	.set L$set$457,LFE26-LFB26
	.quad L$set$457
	.uleb128 0x1
	.byte	0x9c
	.long	0x136f
	.uleb128 0x1f
	.set L$set$458,LASF9-Lsection__debug_str
	.long L$set$458
	.byte	0x2
	.byte	0x31
	.byte	0x24
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.byte	0x1
	.short	0x209
	.byte	0x7
	.long	0x1292
	.uleb128 0x25
	.byte	0x1
	.short	0x20a
	.byte	0x7
	.long	0x12ae
	.uleb128 0x26
	.set L$set$459,LASF10-Lsection__debug_str
	.long L$set$459
	.byte	0x1
	.short	0x20b
	.byte	0x7
	.long	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.set L$set$460,Ldebug_ranges0+0x590-Lsection__debug_ranges
	.long L$set$460
	.uleb128 0x21
	.set L$set$461,LASF5-Lsection__debug_str
	.long L$set$461
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$462,LASF6-Lsection__debug_str
	.long L$set$462
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$463,LASF8-Lsection__debug_str
	.long L$set$463
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.ascii "smc_files__load_fan_calibration\0"
	.byte	0x1
	.short	0x1f1
	.byte	0x4
	.long	0x33c
	.quad	LFB24
	.set L$set$464,LFE24-LFB24
	.quad L$set$464
	.uleb128 0x1
	.byte	0x9c
	.long	0x1408
	.uleb128 0x1f
	.set L$set$465,LASF9-Lsection__debug_str
	.long L$set$465
	.byte	0x2
	.byte	0x30
	.byte	0x24
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.set L$set$466,Ldebug_ranges0+0x500-Lsection__debug_ranges
	.long L$set$466
	.uleb128 0x25
	.byte	0x1
	.short	0x1f2
	.byte	0x7
	.long	0x1292
	.uleb128 0x26
	.set L$set$467,LASF10-Lsection__debug_str
	.long L$set$467
	.byte	0x1
	.short	0x1f3
	.byte	0x7
	.long	0x40a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.set L$set$468,Ldebug_ranges0+0x540-Lsection__debug_ranges
	.long L$set$468
	.uleb128 0x21
	.set L$set$469,LASF5-Lsection__debug_str
	.long L$set$469
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$470,LASF6-Lsection__debug_str
	.long L$set$470
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$471,LASF8-Lsection__debug_str
	.long L$set$471
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.ascii "smc_files__write_earu_turbo\0"
	.byte	0x1
	.short	0x1db
	.byte	0x4
	.quad	LFB22
	.set L$set$472,LFE22-LFB22
	.quad L$set$472
	.uleb128 0x1
	.byte	0x9c
	.long	0x14c9
	.uleb128 0x1f
	.set L$set$473,LASF2-Lsection__debug_str
	.long L$set$473
	.byte	0x2
	.byte	0x2d
	.byte	0x20
	.long	0x305
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.byte	0x1
	.short	0x1dc
	.byte	0x7
	.long	0x1292
	.uleb128 0x25
	.byte	0x1
	.short	0x1dd
	.byte	0x7
	.long	0x12ae
	.uleb128 0x26
	.set L$set$474,LASF10-Lsection__debug_str
	.long L$set$474
	.byte	0x1
	.short	0x1de
	.byte	0x7
	.long	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	0x236
	.long	0x1482
	.uleb128 0x3
	.long	0x22b
	.sleb128 78
	.byte	0
	.uleb128 0x4
	.long	0x1471
	.uleb128 0x26
	.set L$set$475,LASF7-Lsection__debug_str
	.long L$set$475
	.byte	0x1
	.short	0x1df
	.byte	0x7
	.long	0x1482
	.uleb128 0x9
	.byte	0x3
	.quad	_path.15
	.uleb128 0x20
	.set L$set$476,Ldebug_ranges0+0x4b0-Lsection__debug_ranges
	.long L$set$476
	.uleb128 0x21
	.set L$set$477,LASF5-Lsection__debug_str
	.long L$set$477
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$478,LASF6-Lsection__debug_str
	.long L$set$478
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$479,LASF8-Lsection__debug_str
	.long L$set$479
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1e
	.ascii "smc_files__write_earu_fan\0"
	.byte	0x1
	.short	0x1c5
	.byte	0x4
	.quad	LFB20
	.set L$set$480,LFE20-LFB20
	.quad L$set$480
	.uleb128 0x1
	.byte	0x9c
	.long	0x15f0
	.uleb128 0x24
	.ascii "name\0"
	.byte	0x2
	.byte	0x2c
	.byte	0x1e
	.long	0x823
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.ascii "val\0"
	.byte	0x2
	.byte	0x2c
	.byte	0x2d
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x20
	.set L$set$481,Ldebug_ranges0+0x440-Lsection__debug_ranges
	.long L$set$481
	.uleb128 0x25
	.byte	0x1
	.short	0x1c6
	.byte	0x7
	.long	0x1292
	.uleb128 0x25
	.byte	0x1
	.short	0x1c7
	.byte	0x7
	.long	0x12ae
	.uleb128 0x26
	.set L$set$482,LASF10-Lsection__debug_str
	.long L$set$482
	.byte	0x1
	.short	0x1c8
	.byte	0x7
	.long	0x40a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.ascii "smc_files__write_earu_fan__TTS527bSP1___U\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2
	.long	0x236
	.long	0x158c
	.uleb128 0x29
	.long	0x22b
	.long	0x1547
	.byte	0
	.uleb128 0x28
	.ascii "S527b\0"
	.long	0x1579
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.uleb128 0x2
	.long	0x236
	.long	0x15ae
	.uleb128 0x29
	.long	0x22b
	.long	0x1547
	.byte	0
	.uleb128 0x26
	.set L$set$483,LASF7-Lsection__debug_str
	.long L$set$483
	.byte	0x1
	.short	0x1c9
	.byte	0x7
	.long	0x15be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.byte	0x8
	.long	0x159b
	.uleb128 0x20
	.set L$set$484,Ldebug_ranges0+0x470-Lsection__debug_ranges
	.long L$set$484
	.uleb128 0x21
	.set L$set$485,LASF5-Lsection__debug_str
	.long L$set$485
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.set L$set$486,LASF6-Lsection__debug_str
	.long L$set$486
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.set L$set$487,LASF8-Lsection__debug_str
	.long L$set$487
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.ascii "smc_files__write_earu_temp\0"
	.byte	0x1
	.short	0x1ae
	.byte	0x4
	.quad	LFB18
	.set L$set$488,LFE18-LFB18
	.quad L$set$488
	.uleb128 0x1
	.byte	0x9c
	.long	0x1719
	.uleb128 0x24
	.ascii "name\0"
	.byte	0x2
	.byte	0x2b
	.byte	0x1f
	.long	0x81e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.ascii "val\0"
	.byte	0x2
	.byte	0x2b
	.byte	0x2e
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x20
	.set L$set$489,Ldebug_ranges0+0x3d0-Lsection__debug_ranges
	.long L$set$489
	.uleb128 0x25
	.byte	0x1
	.short	0x1af
	.byte	0x7
	.long	0x1292
	.uleb128 0x25
	.byte	0x1
	.short	0x1b0
	.byte	0x7
	.long	0x12ae
	.uleb128 0x26
	.set L$set$490,LASF10-Lsection__debug_str
	.long L$set$490
	.byte	0x1
	.short	0x1b1
	.byte	0x7
	.long	0x40a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.ascii "smc_files__write_earu_temp__TTS511bSP1___U\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2
	.long	0x236
	.long	0x16b5
	.uleb128 0x29
	.long	0x22b
	.long	0x166f
	.byte	0
	.uleb128 0x28
	.ascii "S511b\0"
	.long	0x16a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.uleb128 0x2
	.long	0x236
	.long	0x16d7
	.uleb128 0x29
	.long	0x22b
	.long	0x166f
	.byte	0
	.uleb128 0x26
	.set L$set$491,LASF7-Lsection__debug_str
	.long L$set$491
	.byte	0x1
	.short	0x1b2
	.byte	0x7
	.long	0x16e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.byte	0x8
	.long	0x16c4
	.uleb128 0x20
	.set L$set$492,Ldebug_ranges0+0x400-Lsection__debug_ranges
	.long L$set$492
	.uleb128 0x21
	.set L$set$493,LASF5-Lsection__debug_str
	.long L$set$493
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.set L$set$494,LASF6-Lsection__debug_str
	.long L$set$494
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.set L$set$495,LASF8-Lsection__debug_str
	.long L$set$495
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.ascii "smc_files__notify_user\0"
	.byte	0x1
	.short	0x16a
	.byte	0x4
	.quad	LFB15
	.set L$set$496,LFE15-LFB15
	.quad L$set$496
	.uleb128 0x1
	.byte	0x9c
	.long	0x19d8
	.uleb128 0x24
	.ascii "title\0"
	.byte	0x2
	.byte	0x28
	.byte	0x1b
	.long	0x819
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x24
	.ascii "message\0"
	.byte	0x2
	.byte	0x28
	.byte	0x22
	.long	0x814
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x20
	.set L$set$497,Ldebug_ranges0+0x2b0-Lsection__debug_ranges
	.long L$set$497
	.uleb128 0x25
	.byte	0x1
	.short	0x16b
	.byte	0x7
	.long	0x1292
	.uleb128 0x25
	.byte	0x1
	.short	0x16c
	.byte	0x7
	.long	0x12b9
	.uleb128 0x25
	.byte	0x1
	.short	0x16d
	.byte	0x7
	.long	0x12c9
	.uleb128 0x25
	.byte	0x1
	.short	0x16e
	.byte	0x7
	.long	0x12ae
	.uleb128 0x26
	.set L$set$498,LASF10-Lsection__debug_str
	.long L$set$498
	.byte	0x1
	.short	0x16f
	.byte	0x7
	.long	0x40a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2e
	.ascii "line_count\0"
	.byte	0x1
	.short	0x170
	.byte	0x7
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2e
	.ascii "now\0"
	.byte	0x1
	.short	0x173
	.byte	0x7
	.long	0xc20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.ascii "year\0"
	.byte	0x1
	.short	0x174
	.byte	0x7
	.long	0xc66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.ascii "month\0"
	.byte	0x1
	.short	0x175
	.byte	0x7
	.long	0xc8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.ascii "day\0"
	.byte	0x1
	.short	0x176
	.byte	0x7
	.long	0xcac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.ascii "seconds\0"
	.byte	0x1
	.short	0x177
	.byte	0x7
	.long	0xccc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.ascii "hour\0"
	.byte	0x1
	.short	0x178
	.byte	0x7
	.long	0x3a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.ascii "min\0"
	.byte	0x1
	.short	0x178
	.byte	0xd
	.long	0x3a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.ascii "sec\0"
	.byte	0x1
	.short	0x178
	.byte	0x12
	.long	0x3a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x27
	.set L$set$499,Ldebug_ranges0+0x2f0-Lsection__debug_ranges
	.long L$set$499
	.long	0x18d0
	.uleb128 0x21
	.set L$set$500,LASF5-Lsection__debug_str
	.long L$set$500
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.set L$set$501,LASF6-Lsection__debug_str
	.long L$set$501
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.set L$set$502,LASF8-Lsection__debug_str
	.long L$set$502
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.set L$set$503,Ldebug_ranges0+0x330-Lsection__debug_ranges
	.long L$set$503
	.uleb128 0x28
	.ascii "B337b\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.ascii "B341b\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.long	0x236
	.long	0x18b7
	.uleb128 0x2f
	.long	0x22b
	.long	0x1884
	.long	0x1892
	.byte	0
	.uleb128 0x2e
	.ascii "line\0"
	.byte	0x1
	.short	0x182
	.byte	0x13
	.long	0x18c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.byte	0x8
	.long	0x18a0
	.byte	0
	.byte	0
	.uleb128 0x27
	.set L$set$504,Ldebug_ranges0+0x360-Lsection__debug_ranges
	.long L$set$504
	.long	0x196a
	.uleb128 0x21
	.set L$set$505,LASF5-Lsection__debug_str
	.long L$set$505
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.set L$set$506,LASF6-Lsection__debug_str
	.long L$set$506
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x21
	.set L$set$507,LASF8-Lsection__debug_str
	.long L$set$507
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x20
	.set L$set$508,Ldebug_ranges0+0x3a0-Lsection__debug_ranges
	.long L$set$508
	.uleb128 0x28
	.ascii "smc_files__notify_user__B_15__B348b__TA441bP1___U\0"
	.long	0x22b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2
	.long	0x236
	.long	0x1953
	.uleb128 0x29
	.long	0x22b
	.long	0x1905
	.byte	0
	.uleb128 0x28
	.ascii "S440b\0"
	.long	0x1962
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.byte	0x8
	.long	0x1940
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	LBB66
	.set L$set$509,LBE66-LBB66
	.quad L$set$509
	.uleb128 0x28
	.ascii "smc_files__notify_user__B496b__TTS504bSP1___U\0"
	.long	0x22b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2
	.long	0x236
	.long	0x19c5
	.uleb128 0x29
	.long	0x22b
	.long	0x197b
	.byte	0
	.uleb128 0x28
	.ascii "S504b\0"
	.long	0x19b2
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
	.short	0x13f
	.byte	0x4
	.long	0x34a
	.quad	LFB14
	.set L$set$510,LFE14-LFB14
	.quad L$set$510
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ab4
	.uleb128 0x1f
	.set L$set$511,LASF2-Lsection__debug_str
	.long L$set$511
	.byte	0x2
	.byte	0x25
	.byte	0x22
	.long	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1f
	.set L$set$512,LASF3-Lsection__debug_str
	.long L$set$512
	.byte	0x2
	.byte	0x25
	.byte	0x38
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.quad	LBB52
	.set L$set$513,LBE52-LBB52
	.quad L$set$513
	.uleb128 0x2
	.long	0x236
	.long	0x1a55
	.uleb128 0x3
	.long	0x22b
	.sleb128 1024
	.byte	0
	.uleb128 0x26
	.set L$set$514,LASF11-Lsection__debug_str
	.long L$set$514
	.byte	0x1
	.short	0x140
	.byte	0x7
	.long	0x1a44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x26
	.set L$set$515,LASF4-Lsection__debug_str
	.long L$set$515
	.byte	0x1
	.short	0x141
	.byte	0x7
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.set L$set$516,LASF12-Lsection__debug_str
	.long L$set$516
	.byte	0x1
	.short	0x142
	.byte	0x7
	.long	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x25
	.byte	0x1
	.short	0x143
	.byte	0x7
	.long	0x12ae
	.uleb128 0x2e
	.ascii "idx\0"
	.byte	0x1
	.short	0x144
	.byte	0x7
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.ascii "expiry\0"
	.byte	0x1
	.short	0x145
	.byte	0x7
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0x31
	.ascii "smc_files__log_telemetry_csv\0"
	.byte	0x1
	.byte	0xff
	.byte	0x4
	.quad	LFB12
	.set L$set$517,LFE12-LFB12
	.quad L$set$517
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cf1
	.uleb128 0x24
	.ascii "day_str\0"
	.byte	0x2
	.byte	0x18
	.byte	0x7
	.long	0x80f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x24
	.ascii "time_only\0"
	.byte	0x2
	.byte	0x19
	.byte	0x7
	.long	0x80a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x24
	.ascii "tcmz_temp\0"
	.byte	0x2
	.byte	0x1a
	.byte	0x7
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x24
	.ascii "gpu_temp\0"
	.byte	0x2
	.byte	0x1b
	.byte	0x7
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x24
	.ascii "battery_temp\0"
	.byte	0x2
	.byte	0x1c
	.byte	0x7
	.long	0x305
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x24
	.ascii "power\0"
	.byte	0x2
	.byte	0x1d
	.byte	0x7
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x24
	.ascii "manual_takeover\0"
	.byte	0x2
	.byte	0x1e
	.byte	0x7
	.long	0x305
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x24
	.ascii "overdrive\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x7
	.long	0x305
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x24
	.ascii "temp_gradient\0"
	.byte	0x2
	.byte	0x20
	.byte	0x7
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x24
	.ascii "rpm_gradient\0"
	.byte	0x2
	.byte	0x21
	.byte	0x7
	.long	0x345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x20
	.set L$set$518,Ldebug_ranges0+0x1c0-Lsection__debug_ranges
	.long L$set$518
	.uleb128 0x25
	.byte	0x1
	.short	0x10b
	.byte	0x7
	.long	0x1292
	.uleb128 0x25
	.byte	0x1
	.short	0x10c
	.byte	0x7
	.long	0x12b9
	.uleb128 0x25
	.byte	0x1
	.short	0x10d
	.byte	0x7
	.long	0x12ae
	.uleb128 0x26
	.set L$set$519,LASF10-Lsection__debug_str
	.long L$set$519
	.byte	0x1
	.short	0x10e
	.byte	0x7
	.long	0x40a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2e
	.ascii "exists_flag\0"
	.byte	0x1
	.short	0x10f
	.byte	0x7
	.long	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x27
	.set L$set$520,Ldebug_ranges0+0x200-Lsection__debug_ranges
	.long L$set$520
	.long	0x1c44
	.uleb128 0x21
	.set L$set$521,LASF5-Lsection__debug_str
	.long L$set$521
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$522,LASF6-Lsection__debug_str
	.long L$set$522
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.set L$set$523,LASF8-Lsection__debug_str
	.long L$set$523
	.long	0xf2b
	.byte	0
	.uleb128 0x20
	.set L$set$524,Ldebug_ranges0+0x230-Lsection__debug_ranges
	.long L$set$524
	.uleb128 0x21
	.set L$set$525,LASF5-Lsection__debug_str
	.long L$set$525
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.set L$set$526,LASF6-Lsection__debug_str
	.long L$set$526
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.set L$set$527,LASF8-Lsection__debug_str
	.long L$set$527
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.set L$set$528,Ldebug_ranges0+0x280-Lsection__debug_ranges
	.long L$set$528
	.uleb128 0x28
	.ascii "L255b\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x28
	.ascii "smc_files__log_telemetry_csv__B_11__B153b__TA257bP1___U\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.long	0x236
	.long	0x1cd9
	.uleb128 0x2f
	.long	0x22b
	.long	0x1c74
	.long	0x1c82
	.byte	0
	.uleb128 0x28
	.ascii "S256b\0"
	.long	0x1ce7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.byte	0x8
	.long	0x1cc2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.ascii "smc_files__get_battery_percent\0"
	.byte	0x1
	.byte	0xe7
	.byte	0x4
	.long	0x2fa
	.quad	LFB11
	.set L$set$529,LFE11-LFB11
	.quad L$set$529
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d87
	.uleb128 0x2
	.long	0x236
	.long	0x1d40
	.uleb128 0x3
	.long	0x22b
	.sleb128 65536
	.byte	0
	.uleb128 0x33
	.set L$set$530,LASF11-Lsection__debug_str
	.long L$set$530
	.byte	0x1
	.byte	0xe8
	.byte	0x7
	.long	0x1d2e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65568
	.uleb128 0x33
	.set L$set$531,LASF4-Lsection__debug_str
	.long L$set$531
	.byte	0x1
	.byte	0xe9
	.byte	0x7
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x33
	.set L$set$532,LASF12-Lsection__debug_str
	.long L$set$532
	.byte	0x1
	.byte	0xea
	.byte	0x7
	.long	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x34
	.byte	0x1
	.byte	0xeb
	.byte	0x7
	.long	0x12ae
	.uleb128 0x35
	.ascii "idx\0"
	.byte	0x1
	.byte	0xec
	.byte	0x7
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x32
	.ascii "smc_files__check_load_avg_status\0"
	.byte	0x1
	.byte	0xb9
	.byte	0x4
	.long	0x315
	.quad	LFB10
	.set L$set$533,LFE10-LFB10
	.quad L$set$533
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e93
	.uleb128 0x1f
	.set L$set$534,LASF1-Lsection__debug_str
	.long L$set$534
	.byte	0x2
	.byte	0x11
	.byte	0x25
	.long	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.ascii "status\0"
	.byte	0x2
	.byte	0x11
	.byte	0x3b
	.long	0x2fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.quad	LBB30
	.set L$set$535,LBE30-LBB30
	.quad L$set$535
	.uleb128 0x2
	.long	0x236
	.long	0x1e0c
	.uleb128 0x3
	.long	0x22b
	.sleb128 65536
	.byte	0
	.uleb128 0x33
	.set L$set$536,LASF11-Lsection__debug_str
	.long L$set$536
	.byte	0x1
	.byte	0xba
	.byte	0x7
	.long	0x1dfa
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65632
	.uleb128 0x33
	.set L$set$537,LASF4-Lsection__debug_str
	.long L$set$537
	.byte	0x1
	.byte	0xbb
	.byte	0x7
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.set L$set$538,LASF12-Lsection__debug_str
	.long L$set$538
	.byte	0x1
	.byte	0xbc
	.byte	0x7
	.long	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x34
	.byte	0x1
	.byte	0xbd
	.byte	0x7
	.long	0x12ae
	.uleb128 0x35
	.ascii "idx\0"
	.byte	0x1
	.byte	0xbe
	.byte	0x7
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.ascii "comma_idx\0"
	.byte	0x1
	.byte	0xbe
	.byte	0xc
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.ascii "l1\0"
	.byte	0x1
	.byte	0xbf
	.byte	0x7
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x35
	.ascii "l2\0"
	.byte	0x1
	.byte	0xbf
	.byte	0xb
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x35
	.ascii "l3\0"
	.byte	0x1
	.byte	0xbf
	.byte	0xf
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0x32
	.ascii "smc_files__read_sms_values\0"
	.byte	0x1
	.byte	0x8f
	.byte	0x4
	.long	0x2c2
	.quad	LFB9
	.set L$set$539,LFE9-LFB9
	.quad L$set$539
	.uleb128 0x1
	.byte	0x9c
	.long	0x1faf
	.uleb128 0x24
	.ascii "x\0"
	.byte	0x2
	.byte	0xe
	.byte	0x1f
	.long	0x2fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.ascii "y\0"
	.byte	0x2
	.byte	0xe
	.byte	0x22
	.long	0x2fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.ascii "z\0"
	.byte	0x2
	.byte	0xe
	.byte	0x25
	.long	0x2fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1f
	.set L$set$540,LASF0-Lsection__debug_str
	.long L$set$540
	.byte	0x2
	.byte	0xe
	.byte	0x36
	.long	0x30a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x30
	.quad	LBB24
	.set L$set$541,LBE24-LBB24
	.quad L$set$541
	.uleb128 0x2
	.long	0x236
	.long	0x1f29
	.uleb128 0x3
	.long	0x22b
	.sleb128 65536
	.byte	0
	.uleb128 0x33
	.set L$set$542,LASF11-Lsection__debug_str
	.long L$set$542
	.byte	0x1
	.byte	0x90
	.byte	0x7
	.long	0x1f17
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65640
	.uleb128 0x33
	.set L$set$543,LASF4-Lsection__debug_str
	.long L$set$543
	.byte	0x1
	.byte	0x91
	.byte	0x7
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.set L$set$544,LASF12-Lsection__debug_str
	.long L$set$544
	.byte	0x1
	.byte	0x92
	.byte	0x7
	.long	0x30a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x34
	.byte	0x1
	.byte	0x93
	.byte	0x7
	.long	0x12ae
	.uleb128 0x35
	.ascii "idx\0"
	.byte	0x1
	.byte	0x94
	.byte	0x7
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.ascii "temp_idx\0"
	.byte	0x1
	.byte	0x94
	.byte	0xc
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.ascii "fx\0"
	.byte	0x1
	.byte	0x95
	.byte	0x7
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x35
	.ascii "fy\0"
	.byte	0x1
	.byte	0x95
	.byte	0xb
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x35
	.ascii "fz\0"
	.byte	0x1
	.byte	0x95
	.byte	0xf
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x36
	.ascii "smc_files__get_unix_time\0"
	.byte	0x1
	.byte	0x84
	.byte	0x4
	.long	0x36e
	.quad	LFB8
	.set L$set$545,LFE8-LFB8
	.quad L$set$545
	.uleb128 0x1
	.byte	0x9c
	.long	0x2000
	.uleb128 0x34
	.byte	0x1
	.byte	0x85
	.byte	0x7
	.long	0x12c9
	.uleb128 0x35
	.ascii "epoch\0"
	.byte	0x1
	.byte	0x86
	.byte	0x7
	.long	0xc20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x36
	.ascii "smc_files__parse_int_after\0"
	.byte	0x1
	.byte	0x69
	.byte	0x4
	.long	0x2fa
	.quad	LFB7
	.set L$set$546,LFE7-LFB7
	.quad L$set$546
	.uleb128 0x1
	.byte	0x9c
	.long	0x20b4
	.uleb128 0x24
	.ascii "str\0"
	.byte	0x1
	.byte	0x69
	.byte	0x1e
	.long	0x805
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.set L$set$547,LASF13-Lsection__debug_str
	.long L$set$547
	.byte	0x1
	.byte	0x69
	.byte	0x2c
	.long	0x85f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.ascii "default\0"
	.byte	0x1
	.byte	0x69
	.byte	0x42
	.long	0x305
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.set L$set$548,Ldebug_ranges0+0x190-Lsection__debug_ranges
	.long L$set$548
	.uleb128 0x35
	.ascii "idx\0"
	.byte	0x1
	.byte	0x6a
	.byte	0x7
	.long	0x84c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x35
	.ascii "end_idx\0"
	.byte	0x1
	.byte	0x6b
	.byte	0x7
	.long	0x84c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$549,LASF5-Lsection__debug_str
	.long L$set$549
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$550,LASF6-Lsection__debug_str
	.long L$set$550
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.set L$set$551,LASF8-Lsection__debug_str
	.long L$set$551
	.long	0xf2b
	.byte	0
	.byte	0
	.uleb128 0x36
	.ascii "smc_files__parse_float_after\0"
	.byte	0x1
	.byte	0x4d
	.byte	0x4
	.long	0x33c
	.quad	LFB6
	.set L$set$552,LFE6-LFB6
	.quad L$set$552
	.uleb128 0x1
	.byte	0x9c
	.long	0x216a
	.uleb128 0x24
	.ascii "str\0"
	.byte	0x1
	.byte	0x4d
	.byte	0x20
	.long	0x800
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.set L$set$553,LASF13-Lsection__debug_str
	.long L$set$553
	.byte	0x1
	.byte	0x4d
	.byte	0x2e
	.long	0x85f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.ascii "default\0"
	.byte	0x1
	.byte	0x4d
	.byte	0x44
	.long	0x345
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.set L$set$554,Ldebug_ranges0+0x160-Lsection__debug_ranges
	.long L$set$554
	.uleb128 0x35
	.ascii "idx\0"
	.byte	0x1
	.byte	0x4e
	.byte	0x7
	.long	0x84c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x35
	.ascii "end_idx\0"
	.byte	0x1
	.byte	0x4f
	.byte	0x7
	.long	0x84c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.set L$set$555,LASF5-Lsection__debug_str
	.long L$set$555
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.set L$set$556,LASF6-Lsection__debug_str
	.long L$set$556
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.set L$set$557,LASF8-Lsection__debug_str
	.long L$set$557
	.long	0xf2b
	.byte	0
	.byte	0
	.uleb128 0x36
	.ascii "smc_files__read_file_content\0"
	.byte	0x1
	.byte	0x1c
	.byte	0x4
	.long	0x383
	.quad	LFB4
	.set L$set$558,LFE4-LFB4
	.quad L$set$558
	.uleb128 0x1
	.byte	0x9c
	.long	0x22ca
	.uleb128 0x1f
	.set L$set$559,LASF7-Lsection__debug_str
	.long L$set$559
	.byte	0x1
	.byte	0x1c
	.byte	0x21
	.long	0x7fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.set L$set$560,LASF11-Lsection__debug_str
	.long L$set$560
	.byte	0x1
	.byte	0x1c
	.byte	0x30
	.long	0x7f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.set L$set$561,LASF4-Lsection__debug_str
	.long L$set$561
	.byte	0x1
	.byte	0x1c
	.byte	0x46
	.long	0x3a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1f
	.set L$set$562,LASF0-Lsection__debug_str
	.long L$set$562
	.byte	0x1
	.byte	0x1c
	.byte	0x5c
	.long	0x30a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x20
	.set L$set$563,Ldebug_ranges0+0x60-Lsection__debug_ranges
	.long L$set$563
	.uleb128 0x34
	.byte	0x1
	.byte	0x1d
	.byte	0x7
	.long	0x1292
	.uleb128 0x33
	.set L$set$564,LASF10-Lsection__debug_str
	.long L$set$564
	.byte	0x1
	.byte	0x1e
	.byte	0x7
	.long	0x40a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.set L$set$565,Ldebug_ranges0+0xb0-Lsection__debug_ranges
	.long L$set$565
	.long	0x222f
	.uleb128 0x21
	.set L$set$566,LASF5-Lsection__debug_str
	.long L$set$566
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.set L$set$567,LASF6-Lsection__debug_str
	.long L$set$567
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.set L$set$568,LASF8-Lsection__debug_str
	.long L$set$568
	.long	0xf2b
	.byte	0
	.uleb128 0x20
	.set L$set$569,Ldebug_ranges0+0xe0-Lsection__debug_ranges
	.long L$set$569
	.uleb128 0x21
	.set L$set$570,LASF5-Lsection__debug_str
	.long L$set$570
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.set L$set$571,LASF6-Lsection__debug_str
	.long L$set$571
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.set L$set$572,LASF8-Lsection__debug_str
	.long L$set$572
	.long	0xf2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.set L$set$573,Ldebug_ranges0+0x130-Lsection__debug_ranges
	.long L$set$573
	.uleb128 0x28
	.ascii "B16b\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x28
	.ascii "B20b\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2
	.long	0x236
	.long	0x228f
	.uleb128 0x2f
	.long	0x22b
	.long	0x225e
	.long	0x226b
	.byte	0
	.uleb128 0x35
	.ascii "line\0"
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.long	0x229f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.byte	0x8
	.long	0x2278
	.uleb128 0x21
	.set L$set$574,LASF5-Lsection__debug_str
	.long L$set$574
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.set L$set$575,LASF6-Lsection__debug_str
	.long L$set$575
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.set L$set$576,LASF8-Lsection__debug_str
	.long L$set$576
	.long	0xf2b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.ascii "smc_files__ensure_directory_exists\0"
	.byte	0x1
	.byte	0x9
	.byte	0x4
	.quad	LFB2
	.set L$set$577,LFE2-LFB2
	.quad L$set$577
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.set L$set$578,LASF7-Lsection__debug_str
	.long L$set$578
	.byte	0x1
	.byte	0x9
	.byte	0x27
	.long	0x7f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.set L$set$579,Ldebug_ranges0+0-Lsection__debug_ranges
	.long L$set$579
	.uleb128 0x34
	.byte	0x1
	.byte	0xa
	.byte	0x7
	.long	0x12b9
	.uleb128 0x21
	.set L$set$580,LASF5-Lsection__debug_str
	.long L$set$580
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.set L$set$581,LASF6-Lsection__debug_str
	.long L$set$581
	.long	0xf2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.set L$set$582,LASF8-Lsection__debug_str
	.long L$set$582
	.long	0xf2b
	.uleb128 0x20
	.set L$set$583,Ldebug_ranges0+0x30-Lsection__debug_ranges
	.long L$set$583
	.uleb128 0x28
	.ascii "B3b\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x28
	.ascii "B7b\0"
	.long	0x22b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2
	.long	0x236
	.long	0x2375
	.uleb128 0x2f
	.long	0x22b
	.long	0x2346
	.long	0x2352
	.byte	0
	.uleb128 0x35
	.ascii "dir\0"
	.byte	0x1
	.byte	0xd
	.byte	0xa
	.long	0x2384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.byte	0x8
	.long	0x235e
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x35
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
	.long	0x380
	.short	0x2
	.set L$set$584,Ldebug_info0-Lsection__debug_info
	.long L$set$584
	.long	0x238e
	.long	0xd84
	.ascii "smc_files__telemetry_csv\0"
	.long	0xdaf
	.ascii "smc_files__precool_flag\0"
	.long	0xdd9
	.ascii "smc_files__earu_data_file\0"
	.long	0xe05
	.ascii "smc_files__silent_mode_flag\0"
	.long	0xe33
	.ascii "smc_files__calibration_file\0"
	.long	0xe61
	.ascii "smc_files__pressure_report_file\0"
	.long	0xe93
	.ascii "smc_files__notifications_log\0"
	.long	0xec2
	.ascii "smc_files__delete_file\0"
	.long	0xf2d
	.ascii "smc_files__write_pressure_report\0"
	.long	0x1286
	.ascii "ada\0"
	.long	0x1292
	.ascii "text_io\0"
	.long	0x129e
	.ascii "strings\0"
	.long	0x12ae
	.ascii "fixed\0"
	.long	0x12d7
	.ascii "smc_files__save_fan_calibration\0"
	.long	0x136f
	.ascii "smc_files__load_fan_calibration\0"
	.long	0x1408
	.ascii "smc_files__write_earu_turbo\0"
	.long	0x14c9
	.ascii "smc_files__write_earu_fan\0"
	.long	0x15f0
	.ascii "smc_files__write_earu_temp\0"
	.long	0x1719
	.ascii "smc_files__notify_user\0"
	.long	0x12b9
	.ascii "directories\0"
	.long	0x12c9
	.ascii "calendar\0"
	.long	0x19d8
	.ascii "smc_files__check_precool_mode\0"
	.long	0x1ab4
	.ascii "smc_files__log_telemetry_csv\0"
	.long	0x1cf1
	.ascii "smc_files__get_battery_percent\0"
	.long	0x1d87
	.ascii "smc_files__check_load_avg_status\0"
	.long	0x1e93
	.ascii "smc_files__read_sms_values\0"
	.long	0x1faf
	.ascii "smc_files__get_unix_time\0"
	.long	0x2000
	.ascii "smc_files__parse_int_after\0"
	.long	0x20b4
	.ascii "smc_files__parse_float_after\0"
	.long	0x216a
	.ascii "smc_files__read_file_content\0"
	.long	0x22ca
	.ascii "smc_files__ensure_directory_exists\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x2d0
	.short	0x2
	.set L$set$585,Ldebug_info0-Lsection__debug_info
	.long L$set$585
	.long	0x238e
	.long	0x22b
	.ascii "integer\0"
	.long	0x236
	.ascii "character\0"
	.long	0x2fa
	.ascii "integer\0"
	.long	0x30a
	.ascii "boolean\0"
	.long	0x33c
	.ascii "float\0"
	.long	0x36e
	.ascii "long_integer\0"
	.long	0x3dd
	.ascii "system__storage_elements__storage_element\0"
	.long	0x70b
	.ascii "ada__tags__prim_ptr\0"
	.long	0x6e1
	.ascii "ada__tags__dispatch_table\0"
	.long	0x6c3
	.ascii "ada__tags__tag\0"
	.long	0x68c
	.ascii "ada__streams__root_stream_type\0"
	.long	0x75a
	.ascii "system__address\0"
	.long	0x799
	.ascii "string\0"
	.long	0x76d
	.ascii "system__file_control_block__pstring\0"
	.long	0x86a
	.ascii "system__crtl__filename_encoding\0"
	.long	0x8e1
	.ascii "system__file_control_block__file_mode\0"
	.long	0x9b1
	.ascii "interfaces__c_streams__content_encoding\0"
	.long	0xaa5
	.ascii "system__file_control_block__shared_status_type\0"
	.long	0xb44
	.ascii "system__file_control_block__afcb_ptr\0"
	.long	0x556
	.ascii "system__file_control_block__afcb\0"
	.long	0x431
	.ascii "ada__text_io__text_afcb\0"
	.long	0x40a
	.ascii "ada__text_io__file_type\0"
	.long	0xc02
	.ascii "system__val_flt__impl__num\0"
	.long	0xcf5
	.ascii "duration\0"
	.long	0xd23
	.ascii "system__img_flt__impl__num\0"
	.long	0xd6f
	.ascii "long_long_integer\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0xcc
	.short	0x2
	.set L$set$586,Ldebug_info0-Lsection__debug_info
	.long L$set$586
	.byte	0x8
	.byte	0
	.short	0
	.short	0
	.quad	Ltext0
	.set L$set$587,LFE2-Ltext0
	.quad L$set$587
	.quad	LFB4
	.set L$set$588,LFE11-LFB4
	.quad L$set$588
	.quad	LFB12
	.set L$set$589,LFE14-LFB12
	.quad L$set$589
	.quad	LFB15
	.set L$set$590,LFE15-LFB15
	.quad L$set$590
	.quad	LFB18
	.set L$set$591,LFE18-LFB18
	.quad L$set$591
	.quad	LFB20
	.set L$set$592,LFE20-LFB20
	.quad L$set$592
	.quad	LFB22
	.set L$set$593,LFE22-LFB22
	.quad L$set$593
	.quad	LFB24
	.set L$set$594,LFE24-LFB24
	.quad L$set$594
	.quad	LFB26
	.set L$set$595,LFE26-LFB26
	.quad L$set$595
	.quad	LFB28
	.set L$set$596,LFE28-LFB28
	.quad L$set$596
	.quad	LFB34
	.set L$set$597,Letext0-LFB34
	.quad L$set$597
	.quad	0
	.quad	0
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
Ldebug_ranges0:
	.quad	LBB2
	.quad	LBE2
	.quad	LBB6
	.quad	LBE6
	.quad	0
	.quad	0
	.quad	LBB3
	.quad	LBE3
	.quad	LBB5
	.quad	LBE5
	.quad	0
	.quad	0
	.quad	LBB7
	.quad	LBE7
	.quad	LBB17
	.quad	LBE17
	.quad	LBB18
	.quad	LBE18
	.quad	LBB19
	.quad	LBE19
	.quad	0
	.quad	0
	.quad	LBB8
	.quad	LBE8
	.quad	LBB13
	.quad	LBE13
	.quad	0
	.quad	0
	.quad	LBB10
	.quad	LBE10
	.quad	LBB14
	.quad	LBE14
	.quad	LBB15
	.quad	LBE15
	.quad	LBB16
	.quad	LBE16
	.quad	0
	.quad	0
	.quad	LBB11
	.quad	LBE11
	.quad	LBB12
	.quad	LBE12
	.quad	0
	.quad	0
	.quad	LBB20
	.quad	LBE20
	.quad	LBB21
	.quad	LBE21
	.quad	0
	.quad	0
	.quad	LBB22
	.quad	LBE22
	.quad	LBB23
	.quad	LBE23
	.quad	0
	.quad	0
	.quad	LBB37
	.quad	LBE37
	.quad	LBB50
	.quad	LBE50
	.quad	LBB51
	.quad	LBE51
	.quad	0
	.quad	0
	.quad	LBB38
	.quad	LBE38
	.quad	LBB46
	.quad	LBE46
	.quad	0
	.quad	0
	.quad	LBB40
	.quad	LBE40
	.quad	LBB47
	.quad	LBE47
	.quad	LBB48
	.quad	LBE48
	.quad	LBB49
	.quad	LBE49
	.quad	0
	.quad	0
	.quad	LBB44
	.quad	LBE44
	.quad	LBB45
	.quad	LBE45
	.quad	0
	.quad	0
	.quad	LBB55
	.quad	LBE55
	.quad	LBB72
	.quad	LBE72
	.quad	LBB73
	.quad	LBE73
	.quad	0
	.quad	0
	.quad	LBB56
	.quad	LBE56
	.quad	LBB68
	.quad	LBE68
	.quad	LBB69
	.quad	LBE69
	.quad	0
	.quad	0
	.quad	LBB58
	.quad	LBE58
	.quad	LBB59
	.quad	LBE59
	.quad	0
	.quad	0
	.quad	LBB60
	.quad	LBE60
	.quad	LBB70
	.quad	LBE70
	.quad	LBB71
	.quad	LBE71
	.quad	0
	.quad	0
	.quad	LBB64
	.quad	LBE64
	.quad	LBB65
	.quad	LBE65
	.quad	0
	.quad	0
	.quad	LBB74
	.quad	LBE74
	.quad	LBB82
	.quad	LBE82
	.quad	0
	.quad	0
	.quad	LBB76
	.quad	LBE76
	.quad	LBB80
	.quad	LBE80
	.quad	LBB81
	.quad	LBE81
	.quad	0
	.quad	0
	.quad	LBB83
	.quad	LBE83
	.quad	LBB91
	.quad	LBE91
	.quad	0
	.quad	0
	.quad	LBB85
	.quad	LBE85
	.quad	LBB89
	.quad	LBE89
	.quad	LBB90
	.quad	LBE90
	.quad	0
	.quad	0
	.quad	LBB92
	.quad	LBE92
	.quad	LBB96
	.quad	LBE96
	.quad	LBB97
	.quad	LBE97
	.quad	LBB98
	.quad	LBE98
	.quad	0
	.quad	0
	.quad	LBB99
	.quad	LBE99
	.quad	LBB107
	.quad	LBE107
	.quad	LBB108
	.quad	LBE108
	.quad	0
	.quad	0
	.quad	LBB100
	.quad	LBE100
	.quad	LBB104
	.quad	LBE104
	.quad	LBB105
	.quad	LBE105
	.quad	LBB106
	.quad	LBE106
	.quad	0
	.quad	0
	.quad	LBB109
	.quad	LBE109
	.quad	LBB113
	.quad	LBE113
	.quad	LBB114
	.quad	LBE114
	.quad	LBB115
	.quad	LBE115
	.quad	0
	.quad	0
	.quad	LBB116
	.quad	LBE116
	.quad	LBB133
	.quad	LBE133
	.quad	LBB134
	.quad	LBE134
	.quad	LBB135
	.quad	LBE135
	.quad	0
	.quad	0
	.quad	LBB118
	.quad	LBE118
	.quad	LBB128
	.quad	LBE128
	.quad	0
	.quad	0
	.quad	LBB120
	.quad	LBE120
	.quad	LBB129
	.quad	LBE129
	.quad	0
	.quad	0
	.quad	LBB122
	.quad	LBE122
	.quad	LBB130
	.quad	LBE130
	.quad	0
	.quad	0
	.quad	LBB124
	.quad	LBE124
	.quad	LBB131
	.quad	LBE131
	.quad	0
	.quad	0
	.quad	LBB126
	.quad	LBE126
	.quad	LBB132
	.quad	LBE132
	.quad	0
	.quad	0
	.quad	LBB136
	.quad	LBE136
	.quad	LBB137
	.quad	LBE137
	.quad	LBB138
	.quad	LBE138
	.quad	0
	.quad	0
	.quad	Ltext0
	.quad	LFE2
	.quad	LFB4
	.quad	LFE11
	.quad	LFB12
	.quad	LFE14
	.quad	LFB15
	.quad	LFE15
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
	.quad	LFB28
	.quad	LFE28
	.quad	LFB34
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
LASF7:
	.ascii "path\0"
LASF4:
	.ascii "length\0"
LASF9:
	.ascii "calibrated_rpm\0"
LASF6:
	.ascii "EXCLN\0"
LASF11:
	.ascii "content\0"
LASF8:
	.ascii "EXPRP\0"
LASF0:
	.ascii "success\0"
LASF10:
	.ascii "file\0"
LASF13:
	.ascii "start_pos\0"
LASF3:
	.ascii "time_left\0"
LASF2:
	.ascii "active\0"
LASF5:
	.ascii "EXPTR\0"
LASF12:
	.ascii "file_success\0"
	.ident	"GCC: (GNU) 15.0.1 20250418 (prerelease)"
	.subsections_via_symbols
