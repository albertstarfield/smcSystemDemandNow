	.arch armv8.5-a
	.build_version macos,  14, 0
	.text
Ltext0:
	.file 1 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_math.adb"
	.align	2
	.globl _smc_math__pid_stateIP
_smc_math__pid_stateIP:
LFB2:
	sub	sp, sp, #32
LCFI0:
	str	wzr, [sp]
	str	wzr, [sp, 4]
	strb	wzr, [sp, 8]
	add	x0, sp, 16
	mov	x1, sp
	ldr	x4, [x1]
	ldr	w1, [x1, 8]
	str	x4, [x0]
	str	w1, [x0, 8]
	ldr	x4, [sp, 16]
	mov	x0, 0
	ldr	w1, [sp, 24]
	bfi	x0, x1, 0, 32
	mov	x2, x4
	mov	x3, x0
	mov	x0, x2
	mov	x1, x3
	add	sp, sp, 32
LCFI1:
	ret
LFE2:
	.const
	.align	3
lC2:
	.ascii "smc_math.adb"
	.space 1
	.text
	.align	2
	.globl _smc_math__compute_target_rpm
_smc_math__compute_target_rpm:
LFB3:
	.loc 1 7 4
	stp	x29, x30, [sp, -48]!
LCFI2:
	mov	x29, sp
LCFI3:
	str	s0, [x29, 28]
	str	s1, [x29, 24]
	mov	w4, w1
	mov	w1, w3
	str	s2, [x29, 16]
	strb	w0, [x29, 23]
	mov	w0, w4
	strb	w0, [x29, 22]
	mov	w0, w2
	strb	w0, [x29, 21]
	mov	w0, w1
	strb	w0, [x29, 20]
	.loc 1 19 7
	ldrb	w0, [x29, 23]
	cmp	w0, 0
	beq	L3
	.loc 1 20 10
	movi	v31.2s, #0
	b	L4
L3:
	.loc 1 23 27
	ldrb	w1, [x29, 22]
	ldrb	w0, [x29, 21]
	cmp	w1, 0
	ccmp	w0, 0, 0, eq
	cset	w0, ne
	and	w0, w0, 255
	.loc 1 23 7
	cmp	w0, 0
	beq	L5
	.loc 1 24 10
	mov	w0, 53248
	movk	w0, 0x461d, lsl 16
	fmov	s31, w0
	b	L4
L5:
	.loc 1 27 7
	ldrb	w0, [x29, 20]
	cmp	w0, 0
	beq	L6
	.loc 1 28 10
	ldr	s31, [x29, 28]
	mov	w0, 1119748096
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L27
	b	L34
L27:
	.loc 1 29 13
	mov	w0, 53248
	movk	w0, 0x461d, lsl 16
	fmov	s31, w0
	b	L4
L34:
	.loc 1 31 13
	mov	w0, 32768
	movk	w0, 0x45d4, lsl 16
	fmov	s31, w0
	b	L4
L6:
	.loc 1 35 7
	ldr	s31, [x29, 28]
	mov	w0, 1119748096
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L28
	b	L35
L28:
	.loc 1 36 10
	mov	w0, 53248
	movk	w0, 0x461d, lsl 16
	fmov	s31, w0
	b	L4
L35:
	.loc 1 37 26
	ldr	s31, [x29, 28]
	mov	w0, 1118568448
	fmov	s30, w0
	fcmpe	s31, s30
	cset	w0, ge
	and	w1, w0, 255
	.loc 1 37 64
	ldr	s31, [x29, 24]
	mov	w0, 1109393408
	fmov	s30, w0
	fcmpe	s31, s30
	cset	w0, ge
	and	w0, w0, 255
	.loc 1 37 55
	cmp	w1, 0
	ccmp	w0, 0, 0, eq
	cset	w0, ne
	and	w0, w0, 255
	.loc 1 37 7
	cmp	w0, 0
	beq	L11
	.loc 1 38 10
	ldr	s31, [x29, 28]
	mov	w0, 1118568448
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L29
	b	L36
L29:
	.loc 1 41 32
	ldr	s31, [x29, 28]
	mov	w0, 1118568448
	fmov	s30, w0
	fsub	s30, s31, s30
	.loc 1 41 15
	fmov	s31, 8.0e+0
	fdiv	s31, s30, s31
	str	s31, [x29, 40]
	.loc 1 42 13
	ldr	s31, [x29, 40]
	fcmpe	s31, #0.0
	bmi	L30
	b	L37
L30:
	.loc 1 43 18
	str	wzr, [x29, 40]
	b	L16
L37:
	.loc 1 44 13
	ldr	s30, [x29, 40]
	fmov	s31, 1.0e+0
	fcmpe	s30, s31
	bgt	L31
	b	L16
L31:
	.loc 1 45 18
	fmov	s31, 1.0e+0
	str	s31, [x29, 40]
L16:
	.loc 1 47 51
	ldr	s31, [x29, 40]
	mov	w0, 32768
	movk	w0, 0x456d, lsl 16
	fmov	s30, w0
	fmul	s31, s31, s30
	.loc 1 47 24
	mov	w0, 32768
	movk	w0, 0x453b, lsl 16
	fmov	s30, w0
	fadd	s31, s31, s30
	str	s31, [x29, 44]
	b	L18
L36:
	.loc 1 49 24
	mov	w0, 32768
	movk	w0, 0x453b, lsl 16
	fmov	s31, w0
	str	s31, [x29, 44]
L18:
	.loc 1 53 24
	ldr	s30, [x29, 16]
	fmov	s31, 1.5e+0
	fcmpe	s30, s31
	cset	w0, gt
	and	w1, w0, 255
	.loc 1 53 64
	ldr	s31, [x29, 28]
	mov	w0, 1118568448
	fmov	s30, w0
	fcmpe	s31, s30
	cset	w0, ge
	and	w0, w0, 255
	.loc 1 53 47
	cmp	w1, 0
	ccmp	w0, 0, 4, ne
	cset	w0, ne
	and	w0, w0, 255
	.loc 1 53 10
	cmp	w0, 0
	beq	L19
	.loc 1 54 24
	mov	w0, 32768
	movk	w0, 0x45d4, lsl 16
	fmov	s31, w0
	str	s31, [x29, 44]
L19:
	.loc 1 58 10
	ldr	s31, [x29, 44]
	mov	w0, 32768
	movk	w0, 0x453b, lsl 16
	fmov	s30, w0
	fcmpe	s31, s30
	bmi	L32
	b	L38
L32:
	.loc 1 59 24
	mov	w0, 32768
	movk	w0, 0x453b, lsl 16
	fmov	s31, w0
	str	s31, [x29, 44]
	b	L22
L38:
	.loc 1 60 10
	ldr	s31, [x29, 44]
	mov	w0, 32768
	movk	w0, 0x45d4, lsl 16
	fmov	s30, w0
	fcmpe	s31, s30
	bgt	L33
	b	L22
L33:
	.loc 1 61 24
	mov	w0, 32768
	movk	w0, 0x45d4, lsl 16
	fmov	s31, w0
	str	s31, [x29, 44]
L22:
	.loc 1 64 17
	ldr	s31, [x29, 44]
	fcmp	s31, #0.0
	blt	L24
	.loc 1 64 17 is_stmt 0 discriminator 2
	ldr	s31, [x29, 44]
	mov	w0, 53248
	movk	w0, 0x461d, lsl 16
	fmov	s30, w0
	fcmp	s31, s30
	bhi	L24
	b	L39
L24:
	.loc 1 64 17 discriminator 3
	mov	w1, 64
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L39:
	.loc 1 64 10 is_stmt 1 discriminator 4
	ldr	s31, [x29, 44]
	.loc 1 64 10 is_stmt 0
	b	L4
L11:
	.loc 1 66 10 is_stmt 1
	movi	v31.2s, #0
L4:
	.loc 1 68 8
	fmov	s0, s31
	ldp	x29, x30, [sp], 48
LCFI4:
	ret
LFE3:
	.align	2
_smc_math__update_battery_pid___wrapped_statements.0:
LFB5:
	.loc 1 74 4
	stp	x29, x30, [sp, -64]!
LCFI5:
	mov	x29, sp
LCFI6:
	mov	x0, x16
	str	x16, [x29, 24]
	.loc 1 85 10
	ldr	x1, [x0]
	ldrb	w1, [x1, 8]
	eor	w1, w1, 1
	and	w1, w1, 255
	.loc 1 85 7
	cmp	w1, 0
	beq	L41
	.loc 1 86 28
	ldr	x1, [x0]
	str	wzr, [x1, 4]
	.loc 1 87 28
	ldr	x1, [x0]
	str	wzr, [x1]
	.loc 1 88 28
	ldr	x1, [x0]
	mov	w2, 1
	strb	w2, [x1, 8]
	.loc 1 89 28
	mov	w1, 32768
	movk	w1, 0x453b, lsl 16
	fmov	s31, w1
	str	s31, [x0, 16]
	.loc 1 90 10
	b	L40
L41:
	.loc 1 93 13
	ldr	s31, [x0, 12]
	mov	w1, 1109131264
	fmov	s30, w1
	fsub	s31, s31, s30
	str	s31, [x29, 60]
	.loc 1 96 9
	ldr	s31, [x29, 60]
	mov	w1, 1128792064
	fmov	s30, w1
	fmul	s31, s31, s30
	str	s31, [x29, 56]
	.loc 1 99 40
	ldr	x1, [x0]
	ldr	s30, [x1]
	.loc 1 99 49
	ldr	s29, [x0, 8]
	ldr	s31, [x29, 60]
	fmul	s31, s29, s31
	.loc 1 99 40
	fadd	s31, s30, s31
	.loc 1 99 22
	ldr	x1, [x0]
	str	s31, [x1]
	.loc 1 100 25
	ldr	x1, [x0]
	ldr	s31, [x1]
	.loc 1 100 7
	mov	w1, 1148846080
	fmov	s30, w1
	fcmpe	s31, s30
	bgt	L55
	b	L59
L55:
	.loc 1 101 25
	ldr	x1, [x0]
	mov	w2, 1148846080
	fmov	s31, w2
	str	s31, [x1]
	b	L45
L59:
	.loc 1 102 28
	ldr	x1, [x0]
	ldr	s31, [x1]
	.loc 1 102 7
	mov	w1, -998637568
	fmov	s30, w1
	fcmpe	s31, s30
	bmi	L56
	b	L45
L56:
	.loc 1 103 25
	ldr	x1, [x0]
	mov	w2, -998637568
	fmov	s31, w2
	str	s31, [x1]
L45:
	.loc 1 106 19
	ldr	x1, [x0]
	ldr	s30, [x1]
	.loc 1 106 9
	fmov	s31, 2.0e+1
	fmul	s31, s30, s31
	str	s31, [x29, 52]
	.loc 1 109 31
	ldr	x1, [x0]
	ldr	s31, [x1, 4]
	ldr	s30, [x29, 60]
	fsub	s30, s30, s31
	.loc 1 109 21
	ldr	s31, [x0, 8]
	fdiv	s31, s30, s31
	str	s31, [x29, 48]
	.loc 1 110 9
	ldr	s31, [x29, 48]
	mov	w1, 1112014848
	fmov	s30, w1
	fmul	s31, s31, s30
	str	s31, [x29, 44]
	.loc 1 112 24
	ldr	s30, [x29, 56]
	ldr	s31, [x29, 52]
	fadd	s31, s30, s31
	.loc 1 112 19
	ldr	s30, [x29, 44]
	fadd	s31, s30, s31
	str	s31, [x29, 40]
	.loc 1 115 7
	ldr	s31, [x29, 40]
	mov	w1, 32768
	movk	w1, 0x453b, lsl 16
	fmov	s30, w1
	fcmpe	s31, s30
	bmi	L57
	b	L60
L57:
	.loc 1 116 17
	mov	w1, 32768
	movk	w1, 0x453b, lsl 16
	fmov	s31, w1
	str	s31, [x0, 16]
	b	L49
L60:
	.loc 1 117 7
	ldr	s31, [x29, 40]
	mov	w1, 32768
	movk	w1, 0x45d4, lsl 16
	fmov	s30, w1
	fcmpe	s31, s30
	bgt	L58
	b	L61
L58:
	.loc 1 118 17
	mov	w1, 32768
	movk	w1, 0x45d4, lsl 16
	fmov	s31, w1
	str	s31, [x0, 16]
	b	L49
L61:
	.loc 1 120 20
	ldr	s31, [x29, 40]
	fcmp	s31, #0.0
	blt	L52
	.loc 1 120 20 is_stmt 0 discriminator 2
	ldr	s31, [x29, 40]
	mov	w1, 53248
	movk	w1, 0x461d, lsl 16
	fmov	s30, w1
	fcmp	s31, s30
	bhi	L52
	b	L62
L52:
	.loc 1 120 20 discriminator 3
	mov	w1, 120
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L62:
	.loc 1 120 17 is_stmt 1 discriminator 4
	ldr	s31, [x29, 40]
	str	s31, [x0, 16]
L49:
	.loc 1 124 24
	ldr	x0, [x0]
	ldr	s31, [x29, 60]
	str	s31, [x0, 4]
	.loc 1 125 8
	nop
L40:
	ldp	x29, x30, [sp], 64
LCFI7:
	ret
LFE5:
	.const
	.align	3
lC3:
	.ascii "failed precondition from smc_math.ads:45"
	.align	3
lC4:
	.ascii "failed postcondition from smc_math.ads:47"
	.text
	.align	2
	.globl _smc_math__update_battery_pid
_smc_math__update_battery_pid:
LFB4:
	.loc 1 74 4
	stp	x29, x30, [sp, -144]!
LCFI8:
	mov	x29, sp
LCFI9:
LEHB0:
LEHE0:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	x23, [sp, 48]
LCFI10:
	str	s0, [x29, 76]
	str	s1, [x29, 72]
	str	x0, [x29, 80]
	ldr	w0, [x29, 88]
	bfi	w0, w1, 0, 32
	str	w0, [x29, 88]
	.loc 1 74 4
	add	x1, x29, 144
	.loc 1 74 4 is_stmt 0 discriminator 1
	add	x0, x29, 80
	str	x1, [x29, 120]
	str	x0, [x29, 96]
	ldr	s31, [x29, 76]
	str	s31, [x29, 108]
	ldr	s31, [x29, 72]
	str	s31, [x29, 104]
LBB2:
	.file 2 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_math.ads"
	.loc 2 45 28 is_stmt 1
	ldr	s31, [x29, 80]
	mov	w0, -998637568
	fmov	s30, w0
	fcmp	s31, s30
	blt	L64
	.loc 2 45 28 is_stmt 0 discriminator 2
	ldr	s31, [x29, 80]
	mov	w0, 1148846080
	fmov	s30, w0
	fcmp	s31, s30
	bhi	L64
	b	L82
L64:
	.loc 2 45 28 discriminator 3
	mov	w1, 1
	.loc 2 45 28
	b	L67
L82:
	.loc 2 45 28 discriminator 4
	mov	w1, 0
L67:
	.loc 2 46 30 is_stmt 1
	ldr	s31, [x29, 84]
	mov	w0, -998637568
	fmov	s30, w0
	fcmp	s31, s30
	blt	L68
	.loc 2 46 30 is_stmt 0 discriminator 2
	ldr	s31, [x29, 84]
	mov	w0, 1148846080
	fmov	s30, w0
	fcmp	s31, s30
	bhi	L68
	b	L83
L68:
	.loc 2 46 30 discriminator 3
	mov	w0, 1
	.loc 2 46 30
	b	L71
L83:
	.loc 2 46 30 discriminator 4
	mov	w0, 0
L71:
	.loc 2 45 49 is_stmt 1
	cmp	w1, 0
	ccmp	w0, 0, 0, eq
	cset	w0, ne
	and	w0, w0, 255
	.loc 2 45 13
	cmp	w0, 0
	beq	L72
LBB3:
	.loc 2 45 13 is_stmt 0 discriminator 5
	adrp	x0, lC3@PAGE
	add	x2, x0, lC3@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x3, x0, lC0@PAGEOFF;
	mov	x0, x2
	mov	x1, x3
LEHB1:
	bl	_system__assertions__raise_assert_failure
L72:
LBE3:
	.loc 1 74 4 is_stmt 1
	add	x0, x29, 96
	mov	x16, x0
	bl	_smc_math__update_battery_pid___wrapped_statements.0
	.loc 2 47 21
	ldr	s31, [x29, 112]
	.loc 2 47 14
	mov	w0, 32768
	movk	w0, 0x453b, lsl 16
	fmov	s30, w0
	fcmp	s31, s30
	blt	L73
	.loc 2 47 21 discriminator 2
	ldr	s31, [x29, 112]
	mov	w0, 32768
	movk	w0, 0x45d4, lsl 16
	fmov	s30, w0
	fcmp	s31, s30
	bhi	L73
	.loc 1 74 4
	nop
LBE2:
	add	x0, x29, 128
	add	x1, x29, 80
	ldr	x2, [x1]
	ldr	w1, [x1, 8]
	str	x2, [x0]
	str	w1, [x0, 8]
	ldr	s31, [x29, 112]
	str	s31, [x29, 140]
	mov	w0, 0
	b	L79
L73:
LBB5:
LBB4:
	.loc 2 47 14 discriminator 3
	adrp	x0, lC4@PAGE
	add	x20, x0, lC4@PAGEOFF;
	adrp	x0, lC1@PAGE
	add	x21, x0, lC1@PAGEOFF;
	mov	x0, x20
	mov	x1, x21
	bl	_system__assertions__raise_assert_failure
LEHE1:
L79:
LBE4:
LBE5:
	cmp	w0, 1
	beq	L76
	.loc 1 74 4
	ldr	x1, [x29, 128]
	ldr	x0, [x29, 136]
	mov	x22, x1
	mov	x23, x0
	mov	x0, x22
	mov	x1, x23
	b	L84
L80:
	mov	x19, x0
	mov	w0, 1
	b	L79
L76:
	mov	x0, x19
LEHB2:
	bl	__Unwind_Resume
L84:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
LEHE2:
	ldp	x29, x30, [sp], 144
LCFI11:
	ret
LFE4:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
LLSDA4:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE4-LLSDACSB4
LLSDACSB4:
	.uleb128 LEHB0-LFB4
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB4
	.uleb128 LEHE1-LEHB1
	.uleb128 L80-LFB4
	.uleb128 0
	.uleb128 LEHB2-LFB4
	.uleb128 LEHE2-LEHB2
	.uleb128 0
	.uleb128 0
LLSDACSE4:
	.text
	.const
	.align	2
lC0:
	.word	1
	.word	40
	.align	2
lC1:
	.word	1
	.word	41
	.text
	.globl _smc_math_E
	.data
	.align	1
_smc_math_E:
	.space 2
	.globl _smc_math__temp_activate_fan_control
	.const
	.align	2
_smc_math__temp_activate_fan_control:
	.word	1118568448
	.globl _smc_math__temp_overdrive
	.align	2
_smc_math__temp_overdrive:
	.word	1119748096
	.globl _smc_math__power_activate
	.align	2
_smc_math__power_activate:
	.word	1109393408
	.globl _smc_math__min_manual_fan_rpm
	.align	2
_smc_math__min_manual_fan_rpm:
	.word	1161527296
	.globl _smc_math__max_normal_fan_rpm
	.align	2
_smc_math__max_normal_fan_rpm:
	.word	1171554304
	.globl _smc_math__derivative_threshold
	.align	2
_smc_math__derivative_threshold:
	.word	1069547520
	.globl _smc_math__pid_target_battery_temp
	.align	2
_smc_math__pid_target_battery_temp:
	.word	1109131264
	.globl _smc_math__pid_kp
	.align	2
_smc_math__pid_kp:
	.word	1128792064
	.globl _smc_math__pid_ki
	.align	2
_smc_math__pid_ki:
	.word	1101004800
	.globl _smc_math__pid_kd
	.align	2
_smc_math__pid_kd:
	.word	1112014848
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
	.quad	LFB2
	.set L$set$3,LFE2-LFB2
	.quad L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB2
	.long L$set$4
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$5,LCFI1-LCFI0
	.long L$set$5
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE0:
LSFDE2:
	.set L$set$6,LEFDE2-LASFDE2
	.long L$set$6
LASFDE2:
	.set L$set$7,Lframe0-Lsection__debug_frame
	.long L$set$7
	.quad	LFB3
	.set L$set$8,LFE3-LFB3
	.quad L$set$8
	.byte	0x4
	.set L$set$9,LCFI2-LFB3
	.long L$set$9
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$10,LCFI3-LCFI2
	.long L$set$10
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$11,LCFI4-LCFI3
	.long L$set$11
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE2:
LSFDE4:
	.set L$set$12,LEFDE4-LASFDE4
	.long L$set$12
LASFDE4:
	.set L$set$13,Lframe0-Lsection__debug_frame
	.long L$set$13
	.quad	LFB5
	.set L$set$14,LFE5-LFB5
	.quad L$set$14
	.byte	0x4
	.set L$set$15,LCFI5-LFB5
	.long L$set$15
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$16,LCFI6-LCFI5
	.long L$set$16
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$17,LCFI7-LCFI6
	.long L$set$17
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE4:
LSFDE6:
	.set L$set$18,LEFDE6-LASFDE6
	.long L$set$18
LASFDE6:
	.set L$set$19,Lframe0-Lsection__debug_frame
	.long L$set$19
	.quad	LFB4
	.set L$set$20,LFE4-LFB4
	.quad L$set$20
	.byte	0x4
	.set L$set$21,LCFI8-LFB4
	.long L$set$21
	.byte	0xe
	.uleb128 0x90
	.byte	0x9d
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x11
	.byte	0x4
	.set L$set$22,LCFI9-LCFI8
	.long L$set$22
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$23,LCFI10-LCFI9
	.long L$set$23
	.byte	0x93
	.uleb128 0x10
	.byte	0x94
	.uleb128 0xf
	.byte	0x95
	.uleb128 0xe
	.byte	0x96
	.uleb128 0xd
	.byte	0x97
	.uleb128 0xc
	.byte	0x4
	.set L$set$24,LCFI11-LCFI10
	.long L$set$24
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE6:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$25,LECIE1-LSCIE1
	.long L$set$25
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zPLR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x7
	.byte	0x9b
L_got_pcr0:
	.long	___gnat_personality_v0@GOT-L_got_pcr0
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE9:
	.set L$set$26,LEFDE9-LASFDE9
	.long L$set$26
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB2-.
	.set L$set$27,LFE2-LFB2
	.quad L$set$27
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$28,LCFI0-LFB2
	.long L$set$28
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$29,LCFI1-LCFI0
	.long L$set$29
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE9:
LSFDE11:
	.set L$set$30,LEFDE11-LASFDE11
	.long L$set$30
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB3-.
	.set L$set$31,LFE3-LFB3
	.quad L$set$31
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$32,LCFI2-LFB3
	.long L$set$32
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$33,LCFI3-LCFI2
	.long L$set$33
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$34,LCFI4-LCFI3
	.long L$set$34
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE11:
LSFDE13:
	.set L$set$35,LEFDE13-LASFDE13
	.long L$set$35
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB5-.
	.set L$set$36,LFE5-LFB5
	.quad L$set$36
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$37,LCFI5-LFB5
	.long L$set$37
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$38,LCFI6-LCFI5
	.long L$set$38
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$39,LCFI7-LCFI6
	.long L$set$39
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE13:
LSFDE15:
	.set L$set$40,LEFDE15-LASFDE15
	.long L$set$40
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB4-.
	.set L$set$41,LFE4-LFB4
	.quad L$set$41
	.uleb128 0x8
	.quad	LLSDA4-.
	.byte	0x4
	.set L$set$42,LCFI8-LFB4
	.long L$set$42
	.byte	0xe
	.uleb128 0x90
	.byte	0x9d
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x11
	.byte	0x4
	.set L$set$43,LCFI9-LCFI8
	.long L$set$43
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$44,LCFI10-LCFI9
	.long L$set$44
	.byte	0x93
	.uleb128 0x10
	.byte	0x94
	.uleb128 0xf
	.byte	0x95
	.uleb128 0xe
	.byte	0x96
	.uleb128 0xd
	.byte	0x97
	.uleb128 0xc
	.byte	0x4
	.set L$set$45,LCFI11-LCFI10
	.long L$set$45
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE15:
	.text
Letext0:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x71c
	.short	0x4
	.set L$set$46,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$46
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU Ada 15.0.1 20250418 (prerelease) -gnatA -gnat2012 -gnato -gnatwa -gnata -g -gnatR2js -gnatws -gnatis -gnatec=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.7888/GNAT-TEMP-000003.TMP -gnatem=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.7888/GNAT-TEMP-000004.TMP -mmacosx-version-min=14.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -fPIC\0"
	.byte	0xd
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_math.adb\0"
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/obj/gnatprove/data_representation\0"
	.quad	Ltext0
	.set L$set$47,Letext0-Ltext0
	.quad L$set$47
	.set L$set$48,Ldebug_line0-Lsection__debug_line
	.long L$set$48
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "smc_math__rpm_value\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "smc_math__temperature_value\0"
	.uleb128 0x3
	.long	0x22e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "smc_math__power_value\0"
	.uleb128 0x3
	.long	0x252
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "smc_math__dt_value\0"
	.uleb128 0x3
	.long	0x270
	.uleb128 0x4
	.ascii "smc_math__pid_state\0"
	.byte	0xc
	.byte	0x2
	.byte	0x15
	.byte	0x9
	.long	0x2e4
	.uleb128 0x5
	.ascii "integral\0"
	.byte	0x2
	.byte	0x16
	.byte	0x7
	.long	0x2e4
	.byte	0
	.uleb128 0x5
	.ascii "prev_error\0"
	.byte	0x2
	.byte	0x17
	.byte	0x7
	.long	0x2e4
	.byte	0x4
	.uleb128 0x5
	.ascii "initialized\0"
	.byte	0x2
	.byte	0x18
	.byte	0x7
	.long	0x2f2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x3
	.long	0x2e4
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "boolean\0"
	.uleb128 0x3
	.long	0x2f2
	.uleb128 0x6
	.byte	0x10
	.byte	0x2
	.byte	0x27
	.byte	0xe
	.long	0x32b
	.uleb128 0x5
	.ascii "state\0"
	.byte	0x2
	.byte	0x28
	.byte	0x7
	.long	0x28b
	.byte	0
	.uleb128 0x5
	.ascii "output\0"
	.byte	0x2
	.byte	0x2b
	.byte	0x7
	.long	0x217
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.ascii "smc_math__temp_activate_fan_control\0"
	.byte	0x2
	.byte	0x9
	.byte	0x4
	.long	0x2ed
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_math__temp_activate_fan_control
	.uleb128 0x7
	.ascii "smc_math__temp_overdrive\0"
	.byte	0x2
	.byte	0xa
	.byte	0x4
	.long	0x2ed
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_math__temp_overdrive
	.uleb128 0x7
	.ascii "smc_math__power_activate\0"
	.byte	0x2
	.byte	0xb
	.byte	0x4
	.long	0x2ed
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_math__power_activate
	.uleb128 0x7
	.ascii "smc_math__min_manual_fan_rpm\0"
	.byte	0x2
	.byte	0xc
	.byte	0x4
	.long	0x2ed
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_math__min_manual_fan_rpm
	.uleb128 0x7
	.ascii "smc_math__max_normal_fan_rpm\0"
	.byte	0x2
	.byte	0xd
	.byte	0x4
	.long	0x2ed
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_math__max_normal_fan_rpm
	.uleb128 0x7
	.ascii "smc_math__derivative_threshold\0"
	.byte	0x2
	.byte	0xe
	.byte	0x4
	.long	0x2ed
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_math__derivative_threshold
	.uleb128 0x7
	.ascii "smc_math__pid_target_battery_temp\0"
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.long	0x2ed
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_math__pid_target_battery_temp
	.uleb128 0x7
	.ascii "smc_math__pid_kp\0"
	.byte	0x2
	.byte	0x11
	.byte	0x4
	.long	0x2ed
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_math__pid_kp
	.uleb128 0x7
	.ascii "smc_math__pid_ki\0"
	.byte	0x2
	.byte	0x12
	.byte	0x4
	.long	0x2ed
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_math__pid_ki
	.uleb128 0x7
	.ascii "smc_math__pid_kd\0"
	.byte	0x2
	.byte	0x13
	.byte	0x4
	.long	0x2ed
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_math__pid_kd
	.uleb128 0x8
	.ascii "smc_math__update_battery_pid\0"
	.byte	0x1
	.byte	0x4a
	.byte	0x4
	.long	0x302
	.quad	LFB4
	.set L$set$49,LFE4-LFB4
	.quad L$set$49
	.uleb128 0x1
	.byte	0x9c
	.long	0x620
	.uleb128 0x9
	.ascii "state\0"
	.byte	0x2
	.byte	0x28
	.byte	0x7
	.long	0x28b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.set L$set$50,LASF0-Lsection__debug_str
	.long L$set$50
	.byte	0x2
	.byte	0x29
	.byte	0x7
	.long	0x24d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.ascii "dt\0"
	.byte	0x2
	.byte	0x2a
	.byte	0x7
	.long	0x286
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.ascii "output\0"
	.byte	0x2
	.byte	0x2b
	.byte	0x7
	.long	0x217
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.set L$set$51,Ldebug_ranges0+0-Lsection__debug_ranges
	.long L$set$51
	.uleb128 0xc
	.ascii "smc_math__update_battery_pid___wrapped_statements\0"
	.quad	LFB5
	.set L$set$52,LFE5-LFB5
	.quad L$set$52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.uleb128 0xd
	.ascii "error\0"
	.byte	0x1
	.byte	0x50
	.byte	0x7
	.long	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xd
	.ascii "p\0"
	.byte	0x1
	.byte	0x51
	.byte	0x7
	.long	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0xd
	.ascii "i\0"
	.byte	0x1
	.byte	0x51
	.byte	0xa
	.long	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii "d\0"
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.long	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.ascii "derived_error\0"
	.byte	0x1
	.byte	0x52
	.byte	0x7
	.long	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xd
	.ascii "temp_output\0"
	.byte	0x1
	.byte	0x53
	.byte	0x7
	.long	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.ascii "smc_math__compute_target_rpm\0"
	.byte	0x1
	.byte	0x7
	.byte	0x4
	.long	0x217
	.quad	LFB3
	.set L$set$53,LFE3-LFB3
	.quad L$set$53
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.set L$set$54,LASF0-Lsection__debug_str
	.long L$set$54
	.byte	0x2
	.byte	0x1d
	.byte	0x7
	.long	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "power\0"
	.byte	0x2
	.byte	0x1e
	.byte	0x7
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.ascii "battery_low_survival\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x7
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x9
	.ascii "endurance_active\0"
	.byte	0x2
	.byte	0x20
	.byte	0x7
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x9
	.ascii "emergency_load\0"
	.byte	0x2
	.byte	0x21
	.byte	0x7
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x9
	.ascii "turbo_active\0"
	.byte	0x2
	.byte	0x22
	.byte	0x7
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.ascii "derivative\0"
	.byte	0x2
	.byte	0x23
	.byte	0x7
	.long	0x2ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.ascii "target_rpm\0"
	.byte	0x1
	.byte	0x10
	.byte	0x7
	.long	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xd
	.ascii "t\0"
	.byte	0x1
	.byte	0x11
	.byte	0x7
	.long	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x48
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.byte	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x17c
	.short	0x2
	.set L$set$55,Ldebug_info0-Lsection__debug_info
	.long L$set$55
	.long	0x720
	.long	0x32b
	.ascii "smc_math__temp_activate_fan_control\0"
	.long	0x361
	.ascii "smc_math__temp_overdrive\0"
	.long	0x38c
	.ascii "smc_math__power_activate\0"
	.long	0x3b7
	.ascii "smc_math__min_manual_fan_rpm\0"
	.long	0x3e6
	.ascii "smc_math__max_normal_fan_rpm\0"
	.long	0x415
	.ascii "smc_math__derivative_threshold\0"
	.long	0x446
	.ascii "smc_math__pid_target_battery_temp\0"
	.long	0x47a
	.ascii "smc_math__pid_kp\0"
	.long	0x49d
	.ascii "smc_math__pid_ki\0"
	.long	0x4c0
	.ascii "smc_math__pid_kd\0"
	.long	0x4e3
	.ascii "smc_math__update_battery_pid\0"
	.long	0x620
	.ascii "smc_math__compute_target_rpm\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0xa5
	.short	0x2
	.set L$set$56,Ldebug_info0-Lsection__debug_info
	.long L$set$56
	.long	0x720
	.long	0x217
	.ascii "smc_math__rpm_value\0"
	.long	0x22e
	.ascii "smc_math__temperature_value\0"
	.long	0x252
	.ascii "smc_math__power_value\0"
	.long	0x270
	.ascii "smc_math__dt_value\0"
	.long	0x2e4
	.ascii "float\0"
	.long	0x2f2
	.ascii "boolean\0"
	.long	0x28b
	.ascii "smc_math__pid_state\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x2c
	.short	0x2
	.set L$set$57,Ldebug_info0-Lsection__debug_info
	.long L$set$57
	.byte	0x8
	.byte	0
	.short	0
	.short	0
	.quad	Ltext0
	.set L$set$58,Letext0-Ltext0
	.quad L$set$58
	.quad	0
	.quad	0
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
Ldebug_ranges0:
	.set L$set$59,LBB2-Ltext0
	.quad L$set$59
	.set L$set$60,LBE2-Ltext0
	.quad L$set$60
	.set L$set$61,LBB5-Ltext0
	.quad L$set$61
	.set L$set$62,LBE5-Ltext0
	.quad L$set$62
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
LASF0:
	.ascii "current_temp\0"
	.ident	"GCC: (GNU) 15.0.1 20250418 (prerelease)"
	.subsections_via_symbols
