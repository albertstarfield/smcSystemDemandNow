	.arch armv8.5-a
	.build_version macos,  14, 0
	.text
Ltext0:
	.file 1 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_daemon_state.adb"
	.align	2
	.globl _smc_daemon_state__daemon_stateTVIP
_smc_daemon_state__daemon_stateTVIP:
LFB2:
	stp	x29, x30, [sp, -32]!
LCFI0:
	mov	x29, sp
LCFI1:
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	ldr	x0, [x29, 24]
	mov	w1, 1
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	strb	wzr, [x0, 1]
	ldr	x0, [x29, 24]
	str	wzr, [x0, 4]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	bl	_system__tasking__protected_objects__protectionIP
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	mov	w1, -1
	bl	_system__tasking__protected_objects__initialize_protection
	ldp	x29, x30, [sp], 32
LCFI2:
	ret
LFE2:
	.align	2
	.globl _smc_daemon_state__daemon_stateT_17FD
_smc_daemon_state__daemon_stateT_17FD:
LFB3:
	stp	x29, x30, [sp, -48]!
LCFI3:
	mov	x29, sp
LCFI4:
LEHB0:
LEHE0:
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
LEHB1:
	bl	_system__tasking__protected_objects__finalize_protection
LEHE1:
	b	L3
L7:
	cmp	x1, 1
	beq	L6
LEHB2:
	bl	__Unwind_Resume
L6:
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 32]
	mov	x2, 0
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	___gnat_end_handler_v1
L3:
LEHE2:
	ldp	x29, x30, [sp], 48
LCFI5:
	ret
LFE3:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
	.align	2
LLSDA3:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT3-LLSDATTD3
LLSDATTD3:
	.byte	0x1
	.uleb128 LLSDACSE3-LLSDACSB3
LLSDACSB3:
	.uleb128 LEHB0-LFB3
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB3
	.uleb128 LEHE1-LEHB1
	.uleb128 L7-LFB3
	.uleb128 0x1
	.uleb128 LEHB2-LFB3
	.uleb128 LEHE2-LEHB2
	.uleb128 0
	.uleb128 0
LLSDACSE3:
	.byte	0x1
	.byte	0
	.align	2
L_got_pcr0:
	.long	___gnat_others_value@GOT-L_got_pcr0
LLSDATT3:
	.text
	.align	2
	.globl _smc_daemon_state__latency_monitor_tVIP
_smc_daemon_state__latency_monitor_tVIP:
LFB4:
	sub	sp, sp, #128
LCFI6:
	stp	x29, x30, [sp, 64]
LCFI7:
	add	x29, sp, 64
LCFI8:
	str	x0, [x29, 56]
	str	w1, [x29, 52]
	str	x2, [x29, 40]
	stp	x3, x4, [x29, 24]
	str	w5, [x29, 48]
	ldr	x0, [x29, 32]
	ldr	w0, [x0]
	ldr	x1, [x29, 32]
	ldr	w1, [x1, 4]
	cmp	w1, w0
	cmp	w1, w0
	blt	L12
	sxtw	x3, w1
	sxtw	x2, w0
	sub	x2, x3, x2
	add	x2, x2, 1
	mov	x6, x2
	mov	x7, 0
	lsr	x2, x6, 61
	lsl	x9, x7, 3
	mov	x3, x9
	add	x2, x2, x3
	mov	x9, x2
	lsl	x8, x6, 3
L12:
	cmp	w1, w0
	ldr	x0, [x29, 56]
	str	xzr, [x0]
	adrp	x0, _smc_daemon_state__latency_monitor_tZ@PAGE
	add	x0, x0, _smc_daemon_state__latency_monitor_tZ@PAGEOFF;
	ldr	x8, [x0]
	mov	x10, 0
	adrp	x0, lC0@PAGE
	add	x11, x0, lC0@PAGEOFF;
	ldr	x2, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldp	x0, x1, [x29, 24]
	stp	x0, x1, [sp, 40]
	ldr	x0, [x29, 40]
	str	x0, [sp, 32]
	adrp	x0, _smc_daemon_state__latency_monitor_tE@PAGE
	add	x0, x0, _smc_daemon_state__latency_monitor_tE@PAGEOFF;
	str	x0, [sp, 24]
	str	x2, [sp, 16]
	adrp	x0, _smc_daemon_state__latency_monitor_tTB@PAGE
	add	x0, x0, _smc_daemon_state__latency_monitor_tTB@PAGEOFF;
	str	x0, [sp, 8]
	ldr	w0, [x29, 52]
	str	w0, [sp, 4]
	str	wzr, [sp]
	mov	x6, x10
	mov	x7, x11
	mov	x5, 0
	mov	w4, -1
	mov	w3, 2
	mov	x2, -9223372036854775808
	mov	x1, x8
	mov	w0, -1
	bl	_system__tasking__stages__create_task
	mov	x1, x0
	ldr	x0, [x29, 56]
	str	x1, [x0]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 128
LCFI9:
	ret
LFE4:
	.const
	.align	2
lC0:
	.space 8
	.text
	.align	2
	.globl _smc_daemon_state__thermal_suspender_tVIP
_smc_daemon_state__thermal_suspender_tVIP:
LFB5:
	sub	sp, sp, #128
LCFI10:
	stp	x29, x30, [sp, 64]
LCFI11:
	add	x29, sp, 64
LCFI12:
	str	x0, [x29, 56]
	str	w1, [x29, 52]
	str	x2, [x29, 40]
	stp	x3, x4, [x29, 24]
	str	w5, [x29, 48]
	ldr	x0, [x29, 32]
	ldr	w0, [x0]
	ldr	x1, [x29, 32]
	ldr	w1, [x1, 4]
	cmp	w1, w0
	cmp	w1, w0
	blt	L20
	sxtw	x3, w1
	sxtw	x2, w0
	sub	x2, x3, x2
	add	x2, x2, 1
	mov	x6, x2
	mov	x7, 0
	lsr	x2, x6, 61
	lsl	x9, x7, 3
	mov	x3, x9
	add	x2, x2, x3
	mov	x9, x2
	lsl	x8, x6, 3
L20:
	cmp	w1, w0
	ldr	x0, [x29, 56]
	str	xzr, [x0]
	adrp	x0, _smc_daemon_state__thermal_suspender_tZ@PAGE
	add	x0, x0, _smc_daemon_state__thermal_suspender_tZ@PAGEOFF;
	ldr	x8, [x0]
	mov	x10, 0
	adrp	x0, lC0@PAGE
	add	x11, x0, lC0@PAGEOFF;
	ldr	x2, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldp	x0, x1, [x29, 24]
	stp	x0, x1, [sp, 40]
	ldr	x0, [x29, 40]
	str	x0, [sp, 32]
	adrp	x0, _smc_daemon_state__thermal_suspender_tE@PAGE
	add	x0, x0, _smc_daemon_state__thermal_suspender_tE@PAGEOFF;
	str	x0, [sp, 24]
	str	x2, [sp, 16]
	adrp	x0, _smc_daemon_state__thermal_suspender_tTB@PAGE
	add	x0, x0, _smc_daemon_state__thermal_suspender_tTB@PAGEOFF;
	str	x0, [sp, 8]
	ldr	w0, [x29, 52]
	str	w0, [sp, 4]
	str	wzr, [sp]
	mov	x6, x10
	mov	x7, x11
	mov	x5, 0
	mov	w4, -1
	mov	w3, 2
	mov	x2, -9223372036854775808
	mov	x1, x8
	mov	w0, -1
	bl	_system__tasking__stages__create_task
	mov	x1, x0
	ldr	x0, [x29, 56]
	str	x1, [x0]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 128
LCFI13:
	ret
LFE5:
	.align	2
	.globl _smc_daemon_state__finalize_spec
_smc_daemon_state__finalize_spec:
LFB6:
	stp	x29, x30, [sp, -64]!
LCFI14:
	mov	x29, sp
LCFI15:
LEHB3:
	str	x19, [sp, 16]
LCFI16:
	mov	w19, 0
	adrp	x0, _system__soft_links__abort_defer@GOTPAGE
	ldr	x0, [x0, _system__soft_links__abort_defer@GOTPAGEOFF]
	ldr	x0, [x0]
	blr	x0
LEHE3:
	adrp	x0, _smc_daemon_state__daemon_stateT_17FD@PAGE
	add	x1, x0, _smc_daemon_state__daemon_stateT_17FD@PAGEOFF;
	adrp	x0, _smc_daemon_state__daemon_stateMN@PAGE
	add	x0, x0, _smc_daemon_state__daemon_stateMN@PAGEOFF;
LEHB4:
	bl	_system__finalization_primitives__finalize_object
LEHE4:
L29:
	adrp	x0, _system__soft_links__abort_undefer@GOTPAGE
	ldr	x0, [x0, _system__soft_links__abort_undefer@GOTPAGEOFF]
	ldr	x0, [x0]
LEHB5:
	blr	x0
	b	L33
L31:
	cmp	x1, 1
	beq	L27
	bl	__Unwind_Resume
LEHE5:
L27:
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 48]
	eor	w0, w19, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	L28
	mov	x0, 0
LEHB6:
	bl	_system__soft_links__save_library_occurrence
LEHE6:
L28:
	mov	x2, 0
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
LEHB7:
	bl	___gnat_end_handler_v1
	b	L29
L32:
	mov	x19, x0
	str	x19, [x29, 40]
	ldr	x2, [x29, 40]
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
	bl	___gnat_end_handler_v1
	mov	x0, x19
	bl	__Unwind_Resume
L33:
	ldr	x19, [sp, 16]
LEHE7:
	ldp	x29, x30, [sp], 64
LCFI17:
	ret
LFE6:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
	.align	2
LLSDA6:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT6-LLSDATTD6
LLSDATTD6:
	.byte	0x1
	.uleb128 LLSDACSE6-LLSDACSB6
LLSDACSB6:
	.uleb128 LEHB3-LFB6
	.uleb128 LEHE3-LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB4-LFB6
	.uleb128 LEHE4-LEHB4
	.uleb128 L31-LFB6
	.uleb128 0x1
	.uleb128 LEHB5-LFB6
	.uleb128 LEHE5-LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB6-LFB6
	.uleb128 LEHE6-LEHB6
	.uleb128 L32-LFB6
	.uleb128 0
	.uleb128 LEHB7-LFB6
	.uleb128 LEHE7-LEHB7
	.uleb128 0
	.uleb128 0
LLSDACSE6:
	.byte	0x1
	.byte	0
	.align	2
L_got_pcr1:
	.long	___gnat_others_value@GOT-L_got_pcr1
LLSDATT6:
	.text
	.align	2
	.globl _smc_daemon_state__daemon_state__request_shutdownN
_smc_daemon_state__daemon_state__request_shutdownN:
LFB7:
	.loc 1 13 7
	stp	x29, x30, [sp, -80]!
LCFI18:
	mov	x29, sp
LCFI19:
	str	x0, [x29, 24]
	.loc 1 13 7
	ldr	x0, [x29, 24]
	bl	_system__atomic_primitives__lock_free_read_8
L38:
LBB6:
	.loc 1 13 7 is_stmt 0 discriminator 2
	ldr	x1, [x29, 24]
	add	x1, x1, 8
	str	x1, [x29, 72]
	mov	w1, w0
	strb	w1, [x29, 47]
	.file 2 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_daemon_state.ads"
	.loc 2 15 7 is_stmt 1
	add	x1, x29, 47
	str	x1, [x29, 64]
	.loc 2 16 7
	ldr	x1, [x29, 24]
	add	x1, x1, 1
	str	x1, [x29, 56]
	.loc 2 17 7
	ldr	x1, [x29, 24]
	add	x1, x1, 4
	str	x1, [x29, 48]
	.loc 1 15 23
	strb	wzr, [x29, 47]
	.loc 1 13 7 discriminator 2
	ldr	x3, [x29, 24]
	ldrb	w1, [x29, 47]
	mov	w2, w1
	mov	w1, w0
	mov	x0, x3
	bl	_system__atomic_primitives__lock_free_try_write_8
	mov	x1, x0
	.loc 1 13 7 is_stmt 0 discriminator 5
	ubfx	x0, x1, 8, 8
	and	w0, w0, 255
	and	w1, w1, 255
	cmp	w1, 0
	bne	L39
LBE6:
	.loc 1 13 7
	b	L38
L39:
	nop
	ldp	x29, x30, [sp], 80
LCFI20:
	ret
LFE7:
	.align	2
	.globl _smc_daemon_state__daemon_state__request_shutdownP
_smc_daemon_state__daemon_state__request_shutdownP:
LFB8:
	.loc 1 13 7 is_stmt 1
	stp	x29, x30, [sp, -32]!
LCFI21:
	mov	x29, sp
LCFI22:
	str	x0, [x29, 24]
	.loc 1 13 7
	ldr	x0, [x29, 24]
	bl	_smc_daemon_state__daemon_state__request_shutdownN
	ldp	x29, x30, [sp], 32
LCFI23:
	ret
LFE8:
	.align	2
	.globl _smc_daemon_state__daemon_state__should_keep_runningN
_smc_daemon_state__daemon_state__should_keep_runningN:
LFB9:
	.loc 1 18 7
	stp	x29, x30, [sp, -80]!
LCFI24:
	mov	x29, sp
LCFI25:
	str	x0, [x29, 24]
	.loc 1 18 7
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	str	x0, [x29, 72]
	ldr	x0, [x29, 24]
	bl	_system__atomic_primitives__lock_free_read_8
	.loc 1 18 7 is_stmt 0 discriminator 3
	strb	w0, [x29, 47]
	.loc 2 15 7 is_stmt 1
	add	x0, x29, 47
	str	x0, [x29, 64]
	.loc 2 16 7
	ldr	x0, [x29, 24]
	add	x0, x0, 1
	str	x0, [x29, 56]
	.loc 2 17 7
	ldr	x0, [x29, 24]
	add	x0, x0, 4
	str	x0, [x29, 48]
	.loc 1 20 10
	ldrb	w0, [x29, 47]
	.loc 1 18 7
	ldp	x29, x30, [sp], 80
LCFI26:
	ret
LFE9:
	.align	2
	.globl _smc_daemon_state__daemon_state__should_keep_runningP
_smc_daemon_state__daemon_state__should_keep_runningP:
LFB10:
	.loc 1 18 7
	stp	x29, x30, [sp, -32]!
LCFI27:
	mov	x29, sp
LCFI28:
	str	x0, [x29, 24]
	.loc 1 18 7
	ldr	x0, [x29, 24]
	bl	_smc_daemon_state__daemon_state__should_keep_runningN
	ldp	x29, x30, [sp], 32
LCFI29:
	ret
LFE10:
	.align	2
	.globl _smc_daemon_state__daemon_state__set_turboN
_smc_daemon_state__daemon_state__set_turboN:
LFB11:
	.loc 1 23 7
	stp	x29, x30, [sp, -80]!
LCFI30:
	mov	x29, sp
LCFI31:
	str	x0, [x29, 24]
	mov	w0, w1
	strb	w0, [x29, 23]
	.loc 1 23 7
	ldr	x0, [x29, 24]
	add	x0, x0, 1
	bl	_system__atomic_primitives__lock_free_read_8
L50:
LBB7:
	.loc 1 23 7 is_stmt 0 discriminator 2
	ldr	x1, [x29, 24]
	add	x1, x1, 8
	str	x1, [x29, 72]
	.loc 2 15 7 is_stmt 1
	ldr	x1, [x29, 24]
	str	x1, [x29, 64]
	.loc 1 23 7 discriminator 2
	mov	w1, w0
	strb	w1, [x29, 47]
	.loc 2 16 7
	add	x1, x29, 47
	str	x1, [x29, 56]
	.loc 2 17 7
	ldr	x1, [x29, 24]
	add	x1, x1, 4
	str	x1, [x29, 48]
	.loc 1 25 23
	ldrb	w1, [x29, 23]
	strb	w1, [x29, 47]
	.loc 1 23 7 discriminator 2
	ldr	x1, [x29, 24]
	add	x1, x1, 1
	mov	x3, x1
	ldrb	w1, [x29, 47]
	mov	w2, w1
	mov	w1, w0
	mov	x0, x3
	bl	_system__atomic_primitives__lock_free_try_write_8
	mov	x1, x0
	.loc 1 23 7 is_stmt 0 discriminator 5
	ubfx	x0, x1, 8, 8
	and	w0, w0, 255
	and	w1, w1, 255
	cmp	w1, 0
	bne	L51
LBE7:
	.loc 1 23 7
	b	L50
L51:
	nop
	ldp	x29, x30, [sp], 80
LCFI32:
	ret
LFE11:
	.align	2
	.globl _smc_daemon_state__daemon_state__set_turboP
_smc_daemon_state__daemon_state__set_turboP:
LFB12:
	.loc 1 23 7 is_stmt 1
	stp	x29, x30, [sp, -32]!
LCFI33:
	mov	x29, sp
LCFI34:
	str	x0, [x29, 24]
	mov	w0, w1
	strb	w0, [x29, 23]
	.loc 1 23 7
	ldrb	w0, [x29, 23]
	mov	w1, w0
	ldr	x0, [x29, 24]
	bl	_smc_daemon_state__daemon_state__set_turboN
	ldp	x29, x30, [sp], 32
LCFI35:
	ret
LFE12:
	.align	2
	.globl _smc_daemon_state__daemon_state__is_turbo_activeN
_smc_daemon_state__daemon_state__is_turbo_activeN:
LFB13:
	.loc 1 28 7
	stp	x29, x30, [sp, -80]!
LCFI36:
	mov	x29, sp
LCFI37:
	str	x0, [x29, 24]
	.loc 2 15 7
	ldr	x0, [x29, 24]
	str	x0, [x29, 72]
	.loc 1 28 7
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	str	x0, [x29, 64]
	ldr	x0, [x29, 24]
	add	x0, x0, 1
	bl	_system__atomic_primitives__lock_free_read_8
	.loc 1 28 7 is_stmt 0 discriminator 3
	strb	w0, [x29, 47]
	.loc 2 16 7 is_stmt 1
	add	x0, x29, 47
	str	x0, [x29, 56]
	.loc 2 17 7
	ldr	x0, [x29, 24]
	add	x0, x0, 4
	str	x0, [x29, 48]
	.loc 1 30 10
	ldrb	w0, [x29, 47]
	.loc 1 28 7
	ldp	x29, x30, [sp], 80
LCFI38:
	ret
LFE13:
	.align	2
	.globl _smc_daemon_state__daemon_state__is_turbo_activeP
_smc_daemon_state__daemon_state__is_turbo_activeP:
LFB14:
	.loc 1 28 7
	stp	x29, x30, [sp, -32]!
LCFI39:
	mov	x29, sp
LCFI40:
	str	x0, [x29, 24]
	.loc 1 28 7
	ldr	x0, [x29, 24]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeN
	ldp	x29, x30, [sp], 32
LCFI41:
	ret
LFE14:
	.const
	.align	3
lC11:
	.ascii "smc_daemon_state.adb"
	.space 1
	.text
	.align	2
	.globl _smc_daemon_state__daemon_state__register_spikeN
_smc_daemon_state__daemon_state__register_spikeN:
LFB15:
	.loc 1 33 7
	stp	x29, x30, [sp, -80]!
LCFI42:
	mov	x29, sp
LCFI43:
	str	x0, [x29, 24]
	.loc 1 33 7
	ldr	x0, [x29, 24]
	add	x0, x0, 4
	bl	_system__atomic_primitives__lock_free_read_32
L63:
LBB8:
	.loc 1 33 7 is_stmt 0 discriminator 2
	ldr	x1, [x29, 24]
	add	x1, x1, 8
	str	x1, [x29, 72]
	.loc 2 15 7 is_stmt 1
	ldr	x1, [x29, 24]
	str	x1, [x29, 64]
	.loc 2 16 7
	ldr	x1, [x29, 24]
	add	x1, x1, 1
	str	x1, [x29, 56]
	.loc 1 33 7 discriminator 2
	str	w0, [x29, 44]
	.loc 2 17 7
	add	x1, x29, 44
	str	x1, [x29, 48]
	.loc 1 35 37
	ldr	w2, [x29, 44]
	mov	w1, 2147483647
	cmp	w2, w1
	bne	L59
	.loc 1 35 37 is_stmt 0 discriminator 1
	mov	w1, 35
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L59:
	.loc 1 35 37 discriminator 2
	ldr	w1, [x29, 44]
	add	w1, w1, 1
	.loc 1 35 22 is_stmt 1 discriminator 5
	str	w1, [x29, 44]
	.loc 1 33 7
	ldr	x1, [x29, 24]
	add	x1, x1, 4
	mov	x3, x1
	ldr	w1, [x29, 44]
	mov	w2, w1
	mov	w1, w0
	mov	x0, x3
	bl	_system__atomic_primitives__lock_free_try_write_32
	mov	x1, x0
	.loc 1 33 7 is_stmt 0 discriminator 5
	lsr	x0, x1, 32
	and	w1, w1, 255
	cmp	w1, 0
	bne	L64
LBE8:
	.loc 1 33 7
	b	L63
L64:
	nop
	ldp	x29, x30, [sp], 80
LCFI44:
	ret
LFE15:
	.align	2
	.globl _smc_daemon_state__daemon_state__register_spikeP
_smc_daemon_state__daemon_state__register_spikeP:
LFB16:
	.loc 1 33 7 is_stmt 1
	stp	x29, x30, [sp, -32]!
LCFI45:
	mov	x29, sp
LCFI46:
	str	x0, [x29, 24]
	.loc 1 33 7
	ldr	x0, [x29, 24]
	bl	_smc_daemon_state__daemon_state__register_spikeN
	ldp	x29, x30, [sp], 32
LCFI47:
	ret
LFE16:
	.align	2
	.globl _smc_daemon_state__daemon_state__reset_spikesN
_smc_daemon_state__daemon_state__reset_spikesN:
LFB17:
	.loc 1 38 7
	stp	x29, x30, [sp, -80]!
LCFI48:
	mov	x29, sp
LCFI49:
	str	x0, [x29, 24]
	.loc 1 38 7
	ldr	x0, [x29, 24]
	add	x0, x0, 4
	bl	_system__atomic_primitives__lock_free_read_32
L71:
LBB9:
	.loc 1 38 7 is_stmt 0 discriminator 2
	ldr	x1, [x29, 24]
	add	x1, x1, 8
	str	x1, [x29, 72]
	.loc 2 15 7 is_stmt 1
	ldr	x1, [x29, 24]
	str	x1, [x29, 64]
	.loc 2 16 7
	ldr	x1, [x29, 24]
	add	x1, x1, 1
	str	x1, [x29, 56]
	.loc 1 38 7 discriminator 2
	str	w0, [x29, 44]
	.loc 2 17 7
	add	x1, x29, 44
	str	x1, [x29, 48]
	.loc 1 40 22
	str	wzr, [x29, 44]
	.loc 1 38 7 discriminator 2
	ldr	x1, [x29, 24]
	add	x1, x1, 4
	mov	x3, x1
	ldr	w1, [x29, 44]
	mov	w2, w1
	mov	w1, w0
	mov	x0, x3
	bl	_system__atomic_primitives__lock_free_try_write_32
	mov	x1, x0
	.loc 1 38 7 is_stmt 0 discriminator 5
	lsr	x0, x1, 32
	and	w1, w1, 255
	cmp	w1, 0
	bne	L72
LBE9:
	.loc 1 38 7
	b	L71
L72:
	nop
	ldp	x29, x30, [sp], 80
LCFI50:
	ret
LFE17:
	.align	2
	.globl _smc_daemon_state__daemon_state__reset_spikesP
_smc_daemon_state__daemon_state__reset_spikesP:
LFB18:
	.loc 1 38 7 is_stmt 1
	stp	x29, x30, [sp, -32]!
LCFI51:
	mov	x29, sp
LCFI52:
	str	x0, [x29, 24]
	.loc 1 38 7
	ldr	x0, [x29, 24]
	bl	_smc_daemon_state__daemon_state__reset_spikesN
	ldp	x29, x30, [sp], 32
LCFI53:
	ret
LFE18:
	.align	2
	.globl _smc_daemon_state__daemon_state__get_spike_countN
_smc_daemon_state__daemon_state__get_spike_countN:
LFB19:
	.loc 1 43 7
	stp	x29, x30, [sp, -80]!
LCFI54:
	mov	x29, sp
LCFI55:
	str	x0, [x29, 24]
	.loc 2 16 7
	ldr	x0, [x29, 24]
	add	x0, x0, 1
	str	x0, [x29, 72]
	.loc 2 15 7
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	.loc 1 43 7
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	str	x0, [x29, 56]
	ldr	x0, [x29, 24]
	add	x0, x0, 4
	bl	_system__atomic_primitives__lock_free_read_32
	.loc 1 43 7 is_stmt 0 discriminator 3
	str	w0, [x29, 44]
	.loc 2 17 7 is_stmt 1
	add	x0, x29, 44
	str	x0, [x29, 48]
	.loc 1 45 10
	ldr	w0, [x29, 44]
	.loc 1 43 7
	ldp	x29, x30, [sp], 80
LCFI56:
	ret
LFE19:
	.align	2
	.globl _smc_daemon_state__daemon_state__get_spike_countP
_smc_daemon_state__daemon_state__get_spike_countP:
LFB20:
	.loc 1 43 7
	stp	x29, x30, [sp, -32]!
LCFI57:
	mov	x29, sp
LCFI58:
	str	x0, [x29, 24]
	.loc 1 43 7
	ldr	x0, [x29, 24]
	bl	_smc_daemon_state__daemon_state__get_spike_countN
	ldp	x29, x30, [sp], 32
LCFI59:
	ret
LFE20:
	.align	2
_smc_daemon_state__latency_monitor_t__sort.0:
LFB22:
	.loc 1 73 7
	sub	sp, sp, #32
LCFI60:
	str	x0, [sp, 8]
	str	x16, [sp]
LBB10:
	.loc 1 76 14
	mov	w0, 1
	str	w0, [sp, 28]
L85:
	.loc 1 76 14 is_stmt 0 discriminator 1
	ldr	w0, [sp, 28]
	cmp	w0, 100
	bgt	L88
LBB11:
	.loc 1 77 17 is_stmt 1
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 20]
LBB12:
	ldr	w0, [sp, 20]
	str	w0, [sp, 24]
L84:
	.loc 1 77 17 is_stmt 0 discriminator 1
	ldr	w0, [sp, 24]
	cmp	w0, 100
	bgt	L81
	.loc 1 78 27 is_stmt 1
	ldrsw	x1, [sp, 24]
	ldr	x0, [sp, 8]
	sub	x1, x1, #1
	ldr	s30, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x0, [sp, 8]
	sub	x1, x1, #1
	ldr	s31, [x0, x1, lsl 2]
	.loc 1 78 16
	fcmpe	s30, s31
	bmi	L87
	b	L82
L87:
	.loc 1 79 24
	ldrsw	x1, [sp, 28]
	ldr	x0, [sp, 8]
	sub	x1, x1, #1
	ldr	s31, [x0, x1, lsl 2]
	str	s31, [sp, 16]
	.loc 1 80 27
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	ldr	x0, [sp, 8]
	sub	x2, x2, #1
	ldr	s31, [x0, x2, lsl 2]
	ldr	x0, [sp, 8]
	sub	x1, x1, #1
	str	s31, [x0, x1, lsl 2]
	.loc 1 81 27
	ldrsw	x1, [sp, 24]
	ldr	x0, [sp, 8]
	sub	x1, x1, #1
	ldr	s31, [sp, 16]
	str	s31, [x0, x1, lsl 2]
L82:
	.loc 1 77 17 discriminator 2
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	.loc 1 83 21
	b	L84
L81:
LBE12:
LBE11:
	.loc 1 76 14 discriminator 2
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	.loc 1 84 18
	b	L85
L88:
LBE10:
	.loc 1 85 11
	nop
	add	sp, sp, 32
LCFI61:
	ret
LFE22:
	.const
	.align	3
lC12:
	.ascii "[LATENCY SPIKE] Current median: "
	.align	3
lC13:
	.ascii " exceeds 2x baseline: "
	.align	3
lC14:
	.ascii "[LATENCY MONITOR] Recalibrated baseline median: "
	.text
	.align	2
	.globl _smc_daemon_state__latency_monitor_tTB
_smc_daemon_state__latency_monitor_tTB:
LFB21:
	.loc 1 53 4
	sub	sp, sp, #1808
LCFI62:
	stp	x29, x30, [sp, 16]
LCFI63:
	add	x29, sp, 16
LCFI64:
LEHB8:
LEHE8:
	stp	x19, x20, [sp, 32]
	stp	x21, x22, [sp, 48]
	stp	x23, x24, [sp, 64]
	stp	x25, x26, [sp, 80]
	str	x27, [sp, 96]
LCFI65:
	str	x0, [x29, 520]
	str	w1, [x29, 516]
	.loc 1 53 4
	add	x0, x29, 1792
	.loc 1 53 4 is_stmt 0 discriminator 1
	str	x0, [x29, 1048]
	ldr	w0, [x29, 516]
	cmp	w0, 2
	adrp	x0, _system__soft_links__abort_undefer@GOTPAGE
	ldr	x0, [x0, _system__soft_links__abort_undefer@GOTPAGEOFF]
	ldr	x0, [x0]
LEHB9:
	blr	x0
LVL0:
	.loc 1 62 7 is_stmt 1
	add	x3, x29, 1296
	mov	x0, 400
	mov	x2, x0
	mov	w1, 0
	mov	x0, x3
	bl	_memset
	.loc 1 63 7
	mov	w0, 1
	str	w0, [x29, 1788]
	.loc 1 66 7
	add	x0, x29, 1056
	movi	v31.4s, 0
	str	q31, [x0]
	str	q31, [x0, 16]
	str	q31, [x0, 32]
	str	q31, [x0, 48]
	str	q31, [x0, 64]
	str	q31, [x0, 80]
	str	q31, [x0, 96]
	str	q31, [x0, 112]
	str	q31, [x0, 128]
	str	q31, [x0, 144]
	str	q31, [x0, 160]
	str	q31, [x0, 176]
	str	q31, [x0, 192]
	str	q31, [x0, 208]
	str	q31, [x0, 224]
	.loc 1 67 7
	mov	w0, 1
	str	w0, [x29, 1784]
	.loc 1 69 7
	str	wzr, [x29, 1780]
	.loc 1 53 4 discriminator 3
	bl	_system__tasking__stages__complete_activation
	.loc 1 102 7
	mov	x0, 37888
	movk	x0, 0x7735, lsl 16
	bl	_ada__calendar__delays__delay_for
L112:
LBB13:
	.loc 1 104 25
	adrp	x0, _smc_daemon_state__daemon_state@PAGE
	add	x0, x0, _smc_daemon_state__daemon_state@PAGEOFF;
	bl	_smc_daemon_state__daemon_state__should_keep_runningP
	.loc 1 104 25 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	L90
	.loc 1 105 37 is_stmt 1
	bl	_ada__real_time__clock
	.loc 1 105 37 is_stmt 0 discriminator 2
	str	x0, [x29, 1768]
LBB14:
	.loc 1 108 14 is_stmt 1
	mov	w0, 1
	str	w0, [x29, 1776]
L92:
	.loc 1 108 14 is_stmt 0 discriminator 1
	ldr	w0, [x29, 1776]
	cmp	w0, 1000
	bgt	L91
	.loc 1 109 25 is_stmt 1
	ldr	s31, [x29, 1776]
	scvtf	s31, s31
	.loc 1 109 20
	mov	w0, 4719
	movk	w0, 0x3a83, lsl 16
	fmov	s30, w0
	fmul	s31, s31, s30
	fmov	s0, s31
	bl	_ada__numerics__elementary_functions__sin
	fmov	s31, s0
	.loc 1 109 20 is_stmt 0 discriminator 2
	str	s31, [x29, 1740]
	.loc 1 108 14 is_stmt 1 discriminator 2
	ldr	w0, [x29, 1776]
	add	w0, w0, 1
	str	w0, [x29, 1776]
	.loc 1 110 18
	b	L92
L91:
LBE14:
	.loc 1 112 35
	bl	_ada__real_time__clock
	.loc 1 112 35 is_stmt 0 discriminator 2
	str	x0, [x29, 1760]
	.loc 1 113 30 is_stmt 1
	ldr	x1, [x29, 1768]
	ldr	x0, [x29, 1760]
	bl	_ada__real_time__Osubtract__2
	.loc 1 113 30 is_stmt 0 discriminator 2
	str	x0, [x29, 1752]
	.loc 1 114 36 is_stmt 1
	ldr	x0, [x29, 1752]
	bl	_ada__real_time__to_duration
	.loc 1 114 36 is_stmt 0 discriminator 2
	scvtf	d31, x0
	.loc 1 114 29 is_stmt 1 discriminator 2
	adrp	x0, lC15@PAGE
	ldr	d30, [x0, #lC15@PAGEOFF]
	fmul	d31, d31, d30
	.loc 1 114 26 discriminator 2
	fcvt	s31, d31
	str	s31, [x29, 1748]
	.loc 1 116 10
	ldr	w0, [x29, 1788]
	cmp	w0, 0
	ble	L93
	.loc 1 116 10 is_stmt 0 discriminator 2
	ldr	w0, [x29, 1788]
	cmp	w0, 100
	ble	L94
L93:
	.loc 1 116 10 discriminator 3
	mov	w1, 116
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L94:
	.loc 1 116 24 is_stmt 1 discriminator 4
	ldr	w0, [x29, 1788]
	cmp	w0, 0
	beq	L95
	.loc 1 116 24 is_stmt 0 discriminator 7
	cmp	w0, 0
	bge	L96
L95:
	.loc 1 116 24 discriminator 8
	mov	w1, 116
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	bl	___gnat_rcheck_CE_Invalid_Data
L96:
	.loc 1 116 33 is_stmt 1 discriminator 9
	sxtw	x0, w0
	sub	x0, x0, #1
	lsl	x1, x0, 2
	add	x0, x29, 1296
	ldr	s31, [x29, 1748]
	str	s31, [x0, x1]
	.loc 1 118 10
	ldr	w0, [x29, 1788]
	cmp	w0, 100
	bne	L97
LBB15:
	.loc 1 121 16
	add	x3, x29, 600
	add	x1, x29, 1296
	mov	x0, 400
	mov	x2, x0
	mov	x0, x3
	bl	_memcpy
	.loc 1 123 16
	add	x1, x29, 600
	add	x0, x29, 1048
	mov	x16, x0
	mov	x0, x1
	bl	_smc_daemon_state__latency_monitor_t__sort.0
	.loc 1 124 31
	ldr	s31, [x29, 796]
	str	s31, [x29, 1744]
LBE15:
	.loc 1 128 13
	ldr	s31, [x29, 1780]
	fcmpe	s31, #0.0
	bgt	L118
	b	L98
L118:
	.loc 1 128 61 discriminator 1
	ldr	s31, [x29, 1780]
	fadd	s31, s31, s31
	.loc 1 128 31 discriminator 1
	ldr	s30, [x29, 1744]
	fcmpe	s30, s31
	bgt	L119
	b	L98
L119:
	.loc 1 129 28
	adrp	x0, _smc_daemon_state__daemon_state@PAGE
	add	x0, x0, _smc_daemon_state__daemon_state@PAGEOFF;
	bl	_smc_daemon_state__daemon_state__register_spikeP
LBB16:
	.loc 1 130 80
	add	x0, x29, 1032
	str	x0, [x29, 96]
	adrp	x0, lC1@PAGE
	add	x0, x0, lC1@PAGEOFF;
	str	x0, [x29, 104]
	mov	w2, 6
	ldp	x0, x1, [x29, 96]
	ldr	s0, [x29, 1744]
	bl	_system__img_flt__impl__image_floating_point
	mov	w20, w0
	.loc 1 130 80 is_stmt 0 discriminator 3
	bic	w0, w20, w20, asr #31
	sxtw	x0, w0
	mov	x22, x0
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x0, x23, 3
	str	x0, [x29, 504]
	ldr	x0, [x29, 504]
	add	x0, x1, x0
	str	x0, [x29, 504]
	lsl	x0, x22, 3
	str	x0, [x29, 496]
	.loc 1 131 69 is_stmt 1
	add	x0, x29, 1016
	str	x0, [x29, 112]
	adrp	x0, lC1@PAGE
	add	x0, x0, lC1@PAGEOFF;
	str	x0, [x29, 120]
	mov	w2, 6
	ldp	x0, x1, [x29, 112]
	ldr	s0, [x29, 1780]
	bl	_system__img_flt__impl__image_floating_point
	mov	w3, w0
	.loc 1 131 69 is_stmt 0 discriminator 2
	bic	w0, w3, w3, asr #31
	sxtw	x0, w0
	str	x0, [x29, 368]
	str	xzr, [x29, 376]
	ldp	x4, x5, [x29, 368]
	mov	x0, x4
	lsr	x1, x0, 61
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 488]
	ldr	x0, [x29, 488]
	add	x0, x1, x0
	str	x0, [x29, 488]
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 480]
	.loc 1 130 80 is_stmt 1
	bic	w0, w20, w20, asr #31
	sxtw	x0, w0
	str	x0, [x29, 352]
	str	xzr, [x29, 360]
	ldp	x4, x5, [x29, 352]
	mov	x0, x4
	lsr	x1, x0, 61
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 472]
	ldr	x0, [x29, 472]
	add	x0, x1, x0
	str	x0, [x29, 472]
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 464]
	.loc 1 131 62 discriminator 2
	bic	w0, w20, w20, asr #31
	add	w0, w0, 32
	add	w2, w0, 22
	.loc 1 131 69 discriminator 2
	bic	w0, w3, w3, asr #31
	sxtw	x0, w0
	str	x0, [x29, 336]
	str	xzr, [x29, 344]
	ldp	x4, x5, [x29, 336]
	mov	x0, x4
	lsr	x1, x0, 61
	mov	x0, x5
	lsl	x0, x0, 3
	str	x0, [x29, 456]
	ldr	x0, [x29, 456]
	add	x0, x1, x0
	str	x0, [x29, 456]
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 448]
	.loc 1 131 62 discriminator 2
	bic	w0, w3, w3, asr #31
	add	w19, w2, w0
LBB17:
	add	x0, x29, 600
	str	x0, [x29, 128]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 136]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 144]
	adrp	x0, lC3@PAGE
	add	x0, x0, lC3@PAGEOFF;
	str	x0, [x29, 152]
	add	x0, x29, 1032
	str	x0, [x29, 160]
	mov	w0, 1
	str	w0, [x29, 1696]
	str	w20, [x29, 1700]
	add	x0, x29, 1696
	str	x0, [x29, 168]
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	str	x0, [x29, 176]
	adrp	x0, lC4@PAGE
	add	x0, x0, lC4@PAGEOFF;
	str	x0, [x29, 184]
	add	x0, x29, 1016
	str	x0, [x29, 192]
	mov	w0, 1
	str	w0, [x29, 1704]
	str	w3, [x29, 1708]
	add	x0, x29, 1704
	str	x0, [x29, 200]
	ldp	x0, x1, [x29, 192]
	stp	x0, x1, [sp]
	ldp	x6, x7, [x29, 176]
	ldp	x4, x5, [x29, 160]
	ldp	x2, x3, [x29, 144]
	ldp	x0, x1, [x29, 128]
	bl	_system__concat_4__str_concat_4
LBE17:
	.loc 1 131 62 is_stmt 0 discriminator 4
	cmp	w19, 78
	ble	L101
	.loc 1 131 62 discriminator 5
	mov	w1, 131
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L101:
	.loc 1 131 62 discriminator 6
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	mov	x24, x0
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x0, x25, 3
	str	x0, [x29, 440]
	ldr	x0, [x29, 440]
	add	x0, x1, x0
	str	x0, [x29, 440]
	lsl	x0, x24, 3
	str	x0, [x29, 432]
	.loc 1 130 27 is_stmt 1 discriminator 5
	add	x0, x29, 600
	str	x0, [x29, 208]
	mov	w0, 1
	str	w0, [x29, 1712]
	str	w19, [x29, 1716]
	add	x0, x29, 1712
	str	x0, [x29, 216]
	ldp	x0, x1, [x29, 208]
	bl	_ada__text_io__put_line__2
L98:
LBE16:
	.loc 1 134 13
	ldr	w0, [x29, 1784]
	cmp	w0, 0
	ble	L102
	.loc 1 134 13 is_stmt 0 discriminator 2
	ldr	w0, [x29, 1784]
	cmp	w0, 60
	ble	L103
L102:
	.loc 1 134 13 discriminator 3
	mov	w1, 134
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L103:
	.loc 1 134 30 is_stmt 1 discriminator 4
	ldr	w0, [x29, 1784]
	cmp	w0, 0
	beq	L104
	.loc 1 134 30 is_stmt 0 discriminator 7
	cmp	w0, 0
	bge	L105
L104:
	.loc 1 134 30 discriminator 8
	mov	w1, 134
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	bl	___gnat_rcheck_CE_Invalid_Data
L105:
	.loc 1 134 42 is_stmt 1 discriminator 9
	sxtw	x0, w0
	sub	x0, x0, #1
	lsl	x1, x0, 2
	add	x0, x29, 1056
	ldr	s31, [x29, 1744]
	str	s31, [x0, x1]
	.loc 1 136 13
	ldr	w0, [x29, 1784]
	cmp	w0, 60
	bne	L106
LBB18:
	.loc 1 139 19
	add	x1, x29, 600
	add	x0, x29, 1056
	ldr	q26, [x0]
	ldr	q27, [x0, 16]
	ldr	q28, [x0, 32]
	ldr	q29, [x0, 48]
	ldr	q30, [x0, 64]
	ldr	q31, [x0, 80]
	str	q26, [x1]
	str	q27, [x1, 16]
	str	q28, [x1, 32]
	str	q29, [x1, 48]
	str	q30, [x1, 64]
	str	q31, [x1, 80]
	ldr	q26, [x0, 96]
	ldr	q27, [x0, 112]
	ldr	q28, [x0, 128]
	ldr	q29, [x0, 144]
	ldr	q30, [x0, 160]
	ldr	q31, [x0, 176]
	str	q26, [x1, 96]
	str	q27, [x1, 112]
	str	q28, [x1, 128]
	str	q29, [x1, 144]
	str	q30, [x1, 160]
	str	q31, [x1, 176]
	ldr	q29, [x0, 192]
	ldr	q30, [x0, 208]
	ldr	q31, [x0, 224]
	str	q29, [x1, 192]
	str	q30, [x1, 208]
	str	q31, [x1, 224]
	.loc 1 141 19
	add	x1, x29, 600
	add	x0, x29, 1048
	mov	x16, x0
	mov	x0, x1
	bl	_smc_daemon_state__latency_monitor_t__sort_medians.1
	.loc 1 142 28
	ldr	s31, [x29, 716]
	str	s31, [x29, 1780]
LBB19:
	.loc 1 143 99
	add	x0, x29, 1000
	str	x0, [x29, 224]
	adrp	x0, lC1@PAGE
	add	x0, x0, lC1@PAGEOFF;
	str	x0, [x29, 232]
	mov	w2, 6
	ldp	x0, x1, [x29, 224]
	ldr	s0, [x29, 1780]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 143 99 is_stmt 0 discriminator 3
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
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 304]
	str	xzr, [x29, 312]
	ldp	x3, x4, [x29, 304]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 408]
	ldr	x0, [x29, 408]
	add	x0, x1, x0
	str	x0, [x29, 408]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 400]
	.loc 1 143 92 is_stmt 1 discriminator 3
	bic	w0, w2, w2, asr #31
	add	w19, w0, 48
LBB20:
	add	x0, x29, 536
	str	x0, [x29, 240]
	adrp	x0, lC5@PAGE
	add	x0, x0, lC5@PAGEOFF;
	str	x0, [x29, 248]
	adrp	x0, lC14@PAGE
	add	x0, x0, lC14@PAGEOFF;
	str	x0, [x29, 256]
	adrp	x0, lC6@PAGE
	add	x0, x0, lC6@PAGEOFF;
	str	x0, [x29, 264]
	add	x0, x29, 1000
	str	x0, [x29, 272]
	mov	w0, 1
	str	w0, [x29, 1720]
	str	w2, [x29, 1724]
	add	x0, x29, 1720
	str	x0, [x29, 280]
	ldp	x4, x5, [x29, 272]
	ldp	x2, x3, [x29, 256]
	ldp	x0, x1, [x29, 240]
	bl	_system__concat_2__str_concat_2
LBE20:
	.loc 1 143 92 is_stmt 0 discriminator 6
	cmp	w19, 60
	ble	L107
	.loc 1 143 92 discriminator 7
	mov	w1, 143
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L107:
	.loc 1 143 92 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	mov	x26, x0
	mov	x27, 0
	lsr	x1, x26, 61
	lsl	x0, x27, 3
	str	x0, [x29, 392]
	ldr	x0, [x29, 392]
	add	x0, x1, x0
	str	x0, [x29, 392]
	lsl	x0, x26, 3
	str	x0, [x29, 384]
	.loc 1 143 30 is_stmt 1 discriminator 8
	add	x0, x29, 536
	str	x0, [x29, 288]
	mov	w0, 1
	str	w0, [x29, 1728]
	str	w19, [x29, 1732]
	add	x0, x29, 1728
	str	x0, [x29, 296]
	ldp	x0, x1, [x29, 288]
	bl	_ada__text_io__put_line__2
LBE19:
LBE18:
	.loc 1 145 27
	mov	w0, 1
	str	w0, [x29, 1784]
	b	L108
L106:
	.loc 1 147 41
	ldr	w1, [x29, 1784]
	mov	w0, 2147483647
	cmp	w1, w0
	bne	L109
	.loc 1 147 27 discriminator 1
	mov	w1, 147
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L109:
	.loc 1 147 27 is_stmt 0 discriminator 2
	ldr	w0, [x29, 1784]
	add	w0, w0, 1
	str	w0, [x29, 1784]
L108:
	.loc 1 150 21 is_stmt 1
	mov	w0, 1
	str	w0, [x29, 1788]
	b	L110
L97:
	.loc 1 152 32
	ldr	w1, [x29, 1788]
	mov	w0, 2147483647
	cmp	w1, w0
	bne	L111
	.loc 1 152 21 discriminator 1
	mov	w1, 152
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L111:
	.loc 1 152 21 is_stmt 0 discriminator 2
	ldr	w0, [x29, 1788]
	add	w0, w0, 1
	str	w0, [x29, 1788]
L110:
	.loc 1 155 10 is_stmt 1
	mov	x0, 38528
	movk	x0, 0x98, lsl 16
	bl	_ada__calendar__delays__delay_for
LEHE9:
LBE13:
	.loc 1 156 15
	b	L112
L90:
	.loc 1 157 8
	mov	w19, 0
L116:
	.loc 1 157 0 discriminator 1
	add	x0, x29, 1048
	mov	x16, x0
LEHB10:
	bl	_smc_daemon_state__latency_monitor_t___finalizer.2
	.loc 1 157 0 is_stmt 0 discriminator 4
	cmp	w19, 1
	beq	L113
	.loc 1 157 8 is_stmt 1
	b	L120
L117:
	mov	x21, x0
	mov	w19, 1
	.loc 1 53 4
	b	L116
L113:
	mov	x0, x21
	bl	__Unwind_Resume
L120:
	.loc 1 157 8
	ldp	x29, x30, [sp, 16]
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	ldr	x27, [sp, 96]
LEHE10:
	add	sp, sp, 1808
LCFI66:
	ret
LFE21:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
LLSDA21:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE21-LLSDACSB21
LLSDACSB21:
	.uleb128 LEHB8-LFB21
	.uleb128 LEHE8-LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB9-LFB21
	.uleb128 LEHE9-LEHB9
	.uleb128 L117-LFB21
	.uleb128 0
	.uleb128 LEHB10-LFB21
	.uleb128 LEHE10-LEHB10
	.uleb128 0
	.uleb128 0
LLSDACSE21:
	.text
	.const
	.align	2
lC1:
	.word	1
	.word	12
	.align	2
lC2:
	.word	1
	.word	78
	.align	2
lC3:
	.word	1
	.word	32
	.align	2
lC4:
	.word	1
	.word	22
	.align	2
lC5:
	.word	1
	.word	60
	.align	2
lC6:
	.word	1
	.word	48
	.text
	.align	2
_smc_daemon_state__latency_monitor_t__sort_medians.1:
LFB23:
	.loc 1 87 7
	sub	sp, sp, #32
LCFI67:
	str	x0, [sp, 8]
	str	x16, [sp]
LBB21:
	.loc 1 90 14
	mov	w0, 1
	str	w0, [sp, 28]
L127:
	.loc 1 90 14 is_stmt 0 discriminator 1
	ldr	w0, [sp, 28]
	cmp	w0, 60
	bgt	L130
LBB22:
	.loc 1 91 17 is_stmt 1
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 20]
LBB23:
	ldr	w0, [sp, 20]
	str	w0, [sp, 24]
L126:
	.loc 1 91 17 is_stmt 0 discriminator 1
	ldr	w0, [sp, 24]
	cmp	w0, 60
	bgt	L123
	.loc 1 92 27 is_stmt 1
	ldrsw	x1, [sp, 24]
	ldr	x0, [sp, 8]
	sub	x1, x1, #1
	ldr	s30, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x0, [sp, 8]
	sub	x1, x1, #1
	ldr	s31, [x0, x1, lsl 2]
	.loc 1 92 16
	fcmpe	s30, s31
	bmi	L129
	b	L124
L129:
	.loc 1 93 24
	ldrsw	x1, [sp, 28]
	ldr	x0, [sp, 8]
	sub	x1, x1, #1
	ldr	s31, [x0, x1, lsl 2]
	str	s31, [sp, 16]
	.loc 1 94 27
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	ldr	x0, [sp, 8]
	sub	x2, x2, #1
	ldr	s31, [x0, x2, lsl 2]
	ldr	x0, [sp, 8]
	sub	x1, x1, #1
	str	s31, [x0, x1, lsl 2]
	.loc 1 95 27
	ldrsw	x1, [sp, 24]
	ldr	x0, [sp, 8]
	sub	x1, x1, #1
	ldr	s31, [sp, 16]
	str	s31, [x0, x1, lsl 2]
L124:
	.loc 1 91 17 discriminator 2
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	.loc 1 97 21
	b	L126
L123:
LBE23:
LBE22:
	.loc 1 90 14 discriminator 2
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	.loc 1 98 18
	b	L127
L130:
LBE21:
	.loc 1 99 11
	nop
	add	sp, sp, 32
LCFI68:
	ret
LFE23:
	.align	2
_smc_daemon_state__latency_monitor_t___finalizer.2:
LFB24:
	stp	x29, x30, [sp, -32]!
LCFI69:
	mov	x29, sp
LCFI70:
	str	x16, [x29, 24]
	adrp	x0, _system__soft_links__abort_defer@GOTPAGE
	ldr	x0, [x0, _system__soft_links__abort_defer@GOTPAGEOFF]
	ldr	x0, [x0]
	blr	x0
	bl	_system__tasking__stages__complete_task
	adrp	x0, _system__soft_links__abort_undefer@GOTPAGE
	ldr	x0, [x0, _system__soft_links__abort_undefer@GOTPAGEOFF]
	ldr	x0, [x0]
	blr	x0
	ldp	x29, x30, [sp], 32
LCFI71:
	ret
LFE24:
	.align	2
_smc_daemon_state__thermal_suspender_t___finalizer.3:
LFB26:
	stp	x29, x30, [sp, -32]!
LCFI72:
	mov	x29, sp
LCFI73:
	str	x16, [x29, 24]
	adrp	x0, _system__soft_links__abort_defer@GOTPAGE
	ldr	x0, [x0, _system__soft_links__abort_defer@GOTPAGEOFF]
	ldr	x0, [x0]
	blr	x0
	bl	_system__tasking__stages__complete_task
	adrp	x0, _system__soft_links__abort_undefer@GOTPAGE
	ldr	x0, [x0, _system__soft_links__abort_undefer@GOTPAGEOFF]
	ldr	x0, [x0]
	blr	x0
	ldp	x29, x30, [sp], 32
LCFI74:
	ret
LFE26:
	.const
	.align	3
lC17:
	.ascii "/usr/bin/pkill"
	.text
	.align	2
	.globl _smc_daemon_state__thermal_suspender_tTB
_smc_daemon_state__thermal_suspender_tTB:
LFB25:
	.loc 1 163 4
	stp	x29, x30, [sp, -176]!
LCFI75:
	mov	x29, sp
LCFI76:
LEHB11:
LEHE11:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI77:
	str	x0, [x29, 120]
	str	w1, [x29, 116]
	.loc 1 163 4
	add	x0, x29, 176
	.loc 1 163 4 is_stmt 0 discriminator 1
	str	x0, [x29, 128]
	ldr	w0, [x29, 116]
	cmp	w0, 2
	adrp	x0, _system__soft_links__abort_undefer@GOTPAGE
	ldr	x0, [x0, _system__soft_links__abort_undefer@GOTPAGEOFF]
	ldr	x0, [x0]
LEHB12:
	blr	x0
LVL1:
	.loc 1 165 7 is_stmt 1
	add	x0, x29, 136
	mov	x24, x0
	adrp	x0, lC7@PAGE
	add	x25, x0, lC7@PAGEOFF;
	mov	x0, x24
	mov	x1, x25
	bl	_system__strings__string_listIP
	.loc 1 163 4
	bl	_system__tasking__stages__complete_activation
	.loc 1 167 19
	mov	x0, 16
	bl	___gnat_malloc
	.loc 1 167 19 is_stmt 0 discriminator 2
	mov	w1, 1
	str	w1, [x0]
	mov	w1, 5
	str	w1, [x0, 4]
	add	x3, x0, 8
	adrp	x1, lC16@PAGE
	add	x2, x1, lC16@PAGEOFF;
	mov	x1, x3
	ldr	w3, [x2]
	ldrb	w2, [x2, 4]
	str	w3, [x1]
	strb	w2, [x1, 4]
	add	x1, x0, 8
	str	x1, [x29, 96]
	str	x0, [x29, 104]
	ldp	x0, x1, [x29, 96]
	.loc 1 167 16 is_stmt 1 discriminator 2
	stp	x0, x1, [x29, 136]
	.loc 1 168 19
	mov	x0, 24
	bl	___gnat_malloc
	.loc 1 168 19 is_stmt 0 discriminator 2
	adrp	x1, lC8@PAGE
	add	x2, x1, lC8@PAGEOFF;
	mov	x1, x0
	mov	x4, x2
	ldp	x2, x3, [x4]
	ldr	x4, [x4, 16]
	stp	x2, x3, [x1]
	str	x4, [x1, 16]
	add	x1, x0, 8
	mov	x26, x1
	mov	x27, x0
	mov	x0, x26
	mov	x1, x27
	.loc 1 168 16 is_stmt 1 discriminator 2
	stp	x0, x1, [x29, 152]
L137:
	.loc 1 170 25
	adrp	x0, _smc_daemon_state__daemon_state@PAGE
	add	x0, x0, _smc_daemon_state__daemon_state@PAGEOFF;
	bl	_smc_daemon_state__daemon_state__should_keep_runningP
	.loc 1 170 25 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	L136
LBB24:
	.loc 1 171 21 is_stmt 1
	adrp	x0, lC17@PAGE
	add	x20, x0, lC17@PAGEOFF;
	adrp	x0, lC9@PAGE
	add	x21, x0, lC9@PAGEOFF;
	add	x0, x29, 136
	mov	x22, x0
	adrp	x0, lC7@PAGE
	add	x23, x0, lC7@PAGEOFF;
	mov	x2, x22
	mov	x3, x23
	mov	x0, x20
	mov	x1, x21
	bl	_system__os_lib__spawn
	.loc 1 171 21 is_stmt 0 discriminator 2
	strb	w0, [x29, 171]
LBE24:
	.loc 1 172 10 is_stmt 1
	mov	x0, 61952
	movk	x0, 0x2a05, lsl 16
	movk	x0, 0x1, lsl 32
	bl	_ada__calendar__delays__delay_for
	.loc 1 173 15
	b	L137
L136:
LBB25:
	.loc 1 175 11
	mov	w0, 1
	str	w0, [x29, 172]
L140:
	.loc 1 175 11 is_stmt 0 discriminator 1
	ldr	w0, [x29, 172]
	cmp	w0, 2
	bgt	L138
	.loc 1 176 21 is_stmt 1
	ldrsw	x0, [x29, 172]
	sub	x0, x0, #1
	lsl	x0, x0, 4
	add	x1, x29, 136
	ldr	x0, [x1, x0]
	.loc 1 176 21 is_stmt 0 discriminator 1
	cmp	x0, 0
	beq	L139
	.loc 1 176 21 discriminator 2
	ldrsw	x0, [x29, 172]
	sub	x0, x0, #1
	lsl	x0, x0, 4
	add	x1, x29, 136
	ldr	x0, [x1, x0]
	.loc 1 176 21 discriminator 3
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 176 21 discriminator 5
	ldrsw	x0, [x29, 172]
	sub	x1, x0, #1
	lsl	x1, x1, 4
	add	x2, x29, 136
	str	xzr, [x2, x1]
	.loc 1 176 21 discriminator 6
	sub	x0, x0, #1
	lsl	x0, x0, 4
	add	x1, x29, 144
	adrp	x2, lC10@PAGE
	add	x2, x2, lC10@PAGEOFF;
	str	x2, [x1, x0]
LEHE12:
L139:
	.loc 1 175 11 is_stmt 1 discriminator 2
	ldr	w0, [x29, 172]
	add	w0, w0, 1
	str	w0, [x29, 172]
	.loc 1 177 15
	b	L140
L138:
LBE25:
	.loc 1 178 8
	mov	w19, 0
L144:
	.loc 1 178 0 discriminator 1
	add	x0, x29, 128
	mov	x16, x0
LEHB13:
	bl	_smc_daemon_state__thermal_suspender_t___finalizer.3
	.loc 1 178 0 is_stmt 0 discriminator 4
	cmp	w19, 1
	beq	L141
	.loc 1 178 8 is_stmt 1
	b	L146
L145:
	mov	x28, x0
	mov	w19, 1
	.loc 1 163 4
	b	L144
L141:
	mov	x0, x28
	bl	__Unwind_Resume
L146:
	.loc 1 178 8
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
LEHE13:
	ldp	x29, x30, [sp], 176
LCFI78:
	ret
LFE25:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
LLSDA25:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE25-LLSDACSB25
LLSDACSB25:
	.uleb128 LEHB11-LFB25
	.uleb128 LEHE11-LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB12-LFB25
	.uleb128 LEHE12-LEHB12
	.uleb128 L145-LFB25
	.uleb128 0
	.uleb128 LEHB13-LFB25
	.uleb128 LEHE13-LEHB13
	.uleb128 0
	.uleb128 0
LLSDACSE25:
	.text
	.const
	.align	2
lC7:
	.word	1
	.word	2
	.align	3
lC16:
	.ascii "-STOP"
	.align	2
lC8:
	.word	1
	.word	15
	.ascii "thermalmonitord"
	.space 1
	.align	2
lC9:
	.word	1
	.word	14
	.align	2
lC10:
	.space 8
	.text
	.align	2
	.globl _smc_daemon_state___elabb
_smc_daemon_state___elabb:
LFB0:
	.loc 1 6 1
	.loc 1 53 4
	adrp	x0, _smc_daemon_state__latency_monitor_tE@PAGE
	add	x0, x0, _smc_daemon_state__latency_monitor_tE@PAGEOFF;
	mov	w1, 1
	strb	w1, [x0]
	.loc 1 163 4
	adrp	x0, _smc_daemon_state__thermal_suspender_tE@PAGE
	add	x0, x0, _smc_daemon_state__thermal_suspender_tE@PAGEOFF;
	mov	w1, 1
	strb	w1, [x0]
	.loc 1 180 5
	nop
	ret
LFE0:
	.align	2
	.globl _smc_daemon_state___elabs
_smc_daemon_state___elabs:
LFB1:
	.loc 2 1 1
	stp	x29, x30, [sp, -16]!
LCFI79:
	mov	x29, sp
LCFI80:
	.loc 2 1 1
	adrp	x0, _smc_daemon_state__daemon_stateMN@PAGE
	add	x0, x0, _smc_daemon_state__daemon_stateMN@PAGEOFF;
	bl	_system__finalization_primitives__master_nodeIP
	.loc 2 4 4
	mov	w1, 0
	adrp	x0, _smc_daemon_state__daemon_state@PAGE
	add	x0, x0, _smc_daemon_state__daemon_state@PAGEOFF;
	bl	_smc_daemon_state__daemon_stateTVIP
	.loc 2 4 4 is_stmt 0 discriminator 1
	adrp	x0, _smc_daemon_state__daemon_state@PAGE
	add	x3, x0, _smc_daemon_state__daemon_state@PAGEOFF;
	adrp	x0, _smc_daemon_state__daemon_stateMN@PAGE
	add	x2, x0, _smc_daemon_state__daemon_stateMN@PAGEOFF;
	adrp	x0, _smc_daemon_state__daemon_stateT_17FD@PAGE
	add	x1, x0, _smc_daemon_state__daemon_stateT_17FD@PAGEOFF;
	mov	x0, x3
	bl	_system__finalization_primitives__attach_object_to_node
	.loc 2 24 5 is_stmt 1
	nop
	ldp	x29, x30, [sp], 16
LCFI81:
	ret
LFE1:
	.globl _smc_daemon_state_E
	.data
	.align	1
_smc_daemon_state_E:
	.space 2
	.globl _smc_daemon_state__latency_monitor_tE
_smc_daemon_state__latency_monitor_tE:
	.space 1
	.globl _smc_daemon_state__latency_monitor_tZ
	.align	3
_smc_daemon_state__latency_monitor_tZ:
	.xword	-9223372036854775808
	.globl _smc_daemon_state__thermal_suspender_tE
_smc_daemon_state__thermal_suspender_tE:
	.space 1
	.globl _smc_daemon_state__thermal_suspender_tZ
	.align	3
_smc_daemon_state__thermal_suspender_tZ:
	.xword	-9223372036854775808
	.globl _smc_daemon_state__daemon_stateMN
	.zerofill __DATA,__common,_smc_daemon_state__daemon_stateMN,24,3
	.globl _smc_daemon_state__daemon_state
	.zerofill __DATA,__common,_smc_daemon_state__daemon_state,136,3
	.literal8
	.align	3
lC15:
	.word	-400107883
	.word	1041313291
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
	.quad	LFB3
	.set L$set$9,LFE3-LFB3
	.quad L$set$9
	.byte	0x4
	.set L$set$10,LCFI3-LFB3
	.long L$set$10
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$11,LCFI4-LCFI3
	.long L$set$11
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE2:
LSFDE4:
	.set L$set$13,LEFDE4-LASFDE4
	.long L$set$13
LASFDE4:
	.set L$set$14,Lframe0-Lsection__debug_frame
	.long L$set$14
	.quad	LFB4
	.set L$set$15,LFE4-LFB4
	.quad L$set$15
	.byte	0x4
	.set L$set$16,LCFI6-LFB4
	.long L$set$16
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.set L$set$17,LCFI7-LCFI6
	.long L$set$17
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$18,LCFI8-LCFI7
	.long L$set$18
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x4
	.set L$set$19,LCFI9-LCFI8
	.long L$set$19
	.byte	0xdd
	.byte	0xde
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
	.quad	LFB5
	.set L$set$22,LFE5-LFB5
	.quad L$set$22
	.byte	0x4
	.set L$set$23,LCFI10-LFB5
	.long L$set$23
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.set L$set$24,LCFI11-LCFI10
	.long L$set$24
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$25,LCFI12-LCFI11
	.long L$set$25
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x4
	.set L$set$26,LCFI13-LCFI12
	.long L$set$26
	.byte	0xdd
	.byte	0xde
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
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$31,LCFI15-LCFI14
	.long L$set$31
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$32,LCFI16-LCFI15
	.long L$set$32
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$33,LCFI17-LCFI16
	.long L$set$33
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
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
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$38,LCFI19-LCFI18
	.long L$set$38
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$39,LCFI20-LCFI19
	.long L$set$39
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE10:
LSFDE12:
	.set L$set$40,LEFDE12-LASFDE12
	.long L$set$40
LASFDE12:
	.set L$set$41,Lframe0-Lsection__debug_frame
	.long L$set$41
	.quad	LFB8
	.set L$set$42,LFE8-LFB8
	.quad L$set$42
	.byte	0x4
	.set L$set$43,LCFI21-LFB8
	.long L$set$43
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$44,LCFI22-LCFI21
	.long L$set$44
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$45,LCFI23-LCFI22
	.long L$set$45
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE12:
LSFDE14:
	.set L$set$46,LEFDE14-LASFDE14
	.long L$set$46
LASFDE14:
	.set L$set$47,Lframe0-Lsection__debug_frame
	.long L$set$47
	.quad	LFB9
	.set L$set$48,LFE9-LFB9
	.quad L$set$48
	.byte	0x4
	.set L$set$49,LCFI24-LFB9
	.long L$set$49
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$50,LCFI25-LCFI24
	.long L$set$50
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$51,LCFI26-LCFI25
	.long L$set$51
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE14:
LSFDE16:
	.set L$set$52,LEFDE16-LASFDE16
	.long L$set$52
LASFDE16:
	.set L$set$53,Lframe0-Lsection__debug_frame
	.long L$set$53
	.quad	LFB10
	.set L$set$54,LFE10-LFB10
	.quad L$set$54
	.byte	0x4
	.set L$set$55,LCFI27-LFB10
	.long L$set$55
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$56,LCFI28-LCFI27
	.long L$set$56
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$57,LCFI29-LCFI28
	.long L$set$57
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE16:
LSFDE18:
	.set L$set$58,LEFDE18-LASFDE18
	.long L$set$58
LASFDE18:
	.set L$set$59,Lframe0-Lsection__debug_frame
	.long L$set$59
	.quad	LFB11
	.set L$set$60,LFE11-LFB11
	.quad L$set$60
	.byte	0x4
	.set L$set$61,LCFI30-LFB11
	.long L$set$61
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$62,LCFI31-LCFI30
	.long L$set$62
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$63,LCFI32-LCFI31
	.long L$set$63
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE18:
LSFDE20:
	.set L$set$64,LEFDE20-LASFDE20
	.long L$set$64
LASFDE20:
	.set L$set$65,Lframe0-Lsection__debug_frame
	.long L$set$65
	.quad	LFB12
	.set L$set$66,LFE12-LFB12
	.quad L$set$66
	.byte	0x4
	.set L$set$67,LCFI33-LFB12
	.long L$set$67
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$68,LCFI34-LCFI33
	.long L$set$68
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$69,LCFI35-LCFI34
	.long L$set$69
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE20:
LSFDE22:
	.set L$set$70,LEFDE22-LASFDE22
	.long L$set$70
LASFDE22:
	.set L$set$71,Lframe0-Lsection__debug_frame
	.long L$set$71
	.quad	LFB13
	.set L$set$72,LFE13-LFB13
	.quad L$set$72
	.byte	0x4
	.set L$set$73,LCFI36-LFB13
	.long L$set$73
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$74,LCFI37-LCFI36
	.long L$set$74
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$75,LCFI38-LCFI37
	.long L$set$75
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE22:
LSFDE24:
	.set L$set$76,LEFDE24-LASFDE24
	.long L$set$76
LASFDE24:
	.set L$set$77,Lframe0-Lsection__debug_frame
	.long L$set$77
	.quad	LFB14
	.set L$set$78,LFE14-LFB14
	.quad L$set$78
	.byte	0x4
	.set L$set$79,LCFI39-LFB14
	.long L$set$79
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$80,LCFI40-LCFI39
	.long L$set$80
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$81,LCFI41-LCFI40
	.long L$set$81
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE24:
LSFDE26:
	.set L$set$82,LEFDE26-LASFDE26
	.long L$set$82
LASFDE26:
	.set L$set$83,Lframe0-Lsection__debug_frame
	.long L$set$83
	.quad	LFB15
	.set L$set$84,LFE15-LFB15
	.quad L$set$84
	.byte	0x4
	.set L$set$85,LCFI42-LFB15
	.long L$set$85
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$86,LCFI43-LCFI42
	.long L$set$86
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$87,LCFI44-LCFI43
	.long L$set$87
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE26:
LSFDE28:
	.set L$set$88,LEFDE28-LASFDE28
	.long L$set$88
LASFDE28:
	.set L$set$89,Lframe0-Lsection__debug_frame
	.long L$set$89
	.quad	LFB16
	.set L$set$90,LFE16-LFB16
	.quad L$set$90
	.byte	0x4
	.set L$set$91,LCFI45-LFB16
	.long L$set$91
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$92,LCFI46-LCFI45
	.long L$set$92
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$93,LCFI47-LCFI46
	.long L$set$93
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE28:
LSFDE30:
	.set L$set$94,LEFDE30-LASFDE30
	.long L$set$94
LASFDE30:
	.set L$set$95,Lframe0-Lsection__debug_frame
	.long L$set$95
	.quad	LFB17
	.set L$set$96,LFE17-LFB17
	.quad L$set$96
	.byte	0x4
	.set L$set$97,LCFI48-LFB17
	.long L$set$97
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$98,LCFI49-LCFI48
	.long L$set$98
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$99,LCFI50-LCFI49
	.long L$set$99
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE30:
LSFDE32:
	.set L$set$100,LEFDE32-LASFDE32
	.long L$set$100
LASFDE32:
	.set L$set$101,Lframe0-Lsection__debug_frame
	.long L$set$101
	.quad	LFB18
	.set L$set$102,LFE18-LFB18
	.quad L$set$102
	.byte	0x4
	.set L$set$103,LCFI51-LFB18
	.long L$set$103
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$104,LCFI52-LCFI51
	.long L$set$104
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$105,LCFI53-LCFI52
	.long L$set$105
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE32:
LSFDE34:
	.set L$set$106,LEFDE34-LASFDE34
	.long L$set$106
LASFDE34:
	.set L$set$107,Lframe0-Lsection__debug_frame
	.long L$set$107
	.quad	LFB19
	.set L$set$108,LFE19-LFB19
	.quad L$set$108
	.byte	0x4
	.set L$set$109,LCFI54-LFB19
	.long L$set$109
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$110,LCFI55-LCFI54
	.long L$set$110
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$111,LCFI56-LCFI55
	.long L$set$111
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE34:
LSFDE36:
	.set L$set$112,LEFDE36-LASFDE36
	.long L$set$112
LASFDE36:
	.set L$set$113,Lframe0-Lsection__debug_frame
	.long L$set$113
	.quad	LFB20
	.set L$set$114,LFE20-LFB20
	.quad L$set$114
	.byte	0x4
	.set L$set$115,LCFI57-LFB20
	.long L$set$115
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$116,LCFI58-LCFI57
	.long L$set$116
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$117,LCFI59-LCFI58
	.long L$set$117
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE36:
LSFDE38:
	.set L$set$118,LEFDE38-LASFDE38
	.long L$set$118
LASFDE38:
	.set L$set$119,Lframe0-Lsection__debug_frame
	.long L$set$119
	.quad	LFB22
	.set L$set$120,LFE22-LFB22
	.quad L$set$120
	.byte	0x4
	.set L$set$121,LCFI60-LFB22
	.long L$set$121
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$122,LCFI61-LCFI60
	.long L$set$122
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE38:
LSFDE40:
	.set L$set$123,LEFDE40-LASFDE40
	.long L$set$123
LASFDE40:
	.set L$set$124,Lframe0-Lsection__debug_frame
	.long L$set$124
	.quad	LFB21
	.set L$set$125,LFE21-LFB21
	.quad L$set$125
	.byte	0x4
	.set L$set$126,LCFI62-LFB21
	.long L$set$126
	.byte	0xe
	.uleb128 0x710
	.byte	0x4
	.set L$set$127,LCFI63-LCFI62
	.long L$set$127
	.byte	0x9d
	.uleb128 0xe0
	.byte	0x9e
	.uleb128 0xdf
	.byte	0x4
	.set L$set$128,LCFI64-LCFI63
	.long L$set$128
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x700
	.byte	0x4
	.set L$set$129,LCFI65-LCFI64
	.long L$set$129
	.byte	0x93
	.uleb128 0xde
	.byte	0x94
	.uleb128 0xdd
	.byte	0x95
	.uleb128 0xdc
	.byte	0x96
	.uleb128 0xdb
	.byte	0x97
	.uleb128 0xda
	.byte	0x98
	.uleb128 0xd9
	.byte	0x99
	.uleb128 0xd8
	.byte	0x9a
	.uleb128 0xd7
	.byte	0x9b
	.uleb128 0xd6
	.byte	0x4
	.set L$set$130,LCFI66-LCFI65
	.long L$set$130
	.byte	0xdb
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
LEFDE40:
LSFDE42:
	.set L$set$131,LEFDE42-LASFDE42
	.long L$set$131
LASFDE42:
	.set L$set$132,Lframe0-Lsection__debug_frame
	.long L$set$132
	.quad	LFB23
	.set L$set$133,LFE23-LFB23
	.quad L$set$133
	.byte	0x4
	.set L$set$134,LCFI67-LFB23
	.long L$set$134
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$135,LCFI68-LCFI67
	.long L$set$135
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE42:
LSFDE44:
	.set L$set$136,LEFDE44-LASFDE44
	.long L$set$136
LASFDE44:
	.set L$set$137,Lframe0-Lsection__debug_frame
	.long L$set$137
	.quad	LFB24
	.set L$set$138,LFE24-LFB24
	.quad L$set$138
	.byte	0x4
	.set L$set$139,LCFI69-LFB24
	.long L$set$139
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$140,LCFI70-LCFI69
	.long L$set$140
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$141,LCFI71-LCFI70
	.long L$set$141
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE44:
LSFDE46:
	.set L$set$142,LEFDE46-LASFDE46
	.long L$set$142
LASFDE46:
	.set L$set$143,Lframe0-Lsection__debug_frame
	.long L$set$143
	.quad	LFB26
	.set L$set$144,LFE26-LFB26
	.quad L$set$144
	.byte	0x4
	.set L$set$145,LCFI72-LFB26
	.long L$set$145
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$146,LCFI73-LCFI72
	.long L$set$146
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$147,LCFI74-LCFI73
	.long L$set$147
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE46:
LSFDE48:
	.set L$set$148,LEFDE48-LASFDE48
	.long L$set$148
LASFDE48:
	.set L$set$149,Lframe0-Lsection__debug_frame
	.long L$set$149
	.quad	LFB25
	.set L$set$150,LFE25-LFB25
	.quad L$set$150
	.byte	0x4
	.set L$set$151,LCFI75-LFB25
	.long L$set$151
	.byte	0xe
	.uleb128 0xb0
	.byte	0x9d
	.uleb128 0x16
	.byte	0x9e
	.uleb128 0x15
	.byte	0x4
	.set L$set$152,LCFI76-LCFI75
	.long L$set$152
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$153,LCFI77-LCFI76
	.long L$set$153
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
	.byte	0x9c
	.uleb128 0xb
	.byte	0x4
	.set L$set$154,LCFI78-LCFI77
	.long L$set$154
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
LEFDE48:
LSFDE50:
	.set L$set$155,LEFDE50-LASFDE50
	.long L$set$155
LASFDE50:
	.set L$set$156,Lframe0-Lsection__debug_frame
	.long L$set$156
	.quad	LFB0
	.set L$set$157,LFE0-LFB0
	.quad L$set$157
	.align	3
LEFDE50:
LSFDE52:
	.set L$set$158,LEFDE52-LASFDE52
	.long L$set$158
LASFDE52:
	.set L$set$159,Lframe0-Lsection__debug_frame
	.long L$set$159
	.quad	LFB1
	.set L$set$160,LFE1-LFB1
	.quad L$set$160
	.byte	0x4
	.set L$set$161,LCFI79-LFB1
	.long L$set$161
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$162,LCFI80-LCFI79
	.long L$set$162
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$163,LCFI81-LCFI80
	.long L$set$163
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE52:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$164,LECIE1-LSCIE1
	.long L$set$164
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zPLR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x7
	.byte	0x9b
L_got_pcr2:
	.long	___gnat_personality_v0@GOT-L_got_pcr2
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE55:
	.set L$set$165,LEFDE55-LASFDE55
	.long L$set$165
LASFDE55:
	.long	LASFDE55-EH_frame1
	.quad	LFB2-.
	.set L$set$166,LFE2-LFB2
	.quad L$set$166
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$167,LCFI0-LFB2
	.long L$set$167
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$168,LCFI1-LCFI0
	.long L$set$168
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$169,LCFI2-LCFI1
	.long L$set$169
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE55:
LSFDE57:
	.set L$set$170,LEFDE57-LASFDE57
	.long L$set$170
LASFDE57:
	.long	LASFDE57-EH_frame1
	.quad	LFB3-.
	.set L$set$171,LFE3-LFB3
	.quad L$set$171
	.uleb128 0x8
	.quad	LLSDA3-.
	.byte	0x4
	.set L$set$172,LCFI3-LFB3
	.long L$set$172
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$173,LCFI4-LCFI3
	.long L$set$173
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$174,LCFI5-LCFI4
	.long L$set$174
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE57:
LSFDE59:
	.set L$set$175,LEFDE59-LASFDE59
	.long L$set$175
LASFDE59:
	.long	LASFDE59-EH_frame1
	.quad	LFB4-.
	.set L$set$176,LFE4-LFB4
	.quad L$set$176
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$177,LCFI6-LFB4
	.long L$set$177
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.set L$set$178,LCFI7-LCFI6
	.long L$set$178
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$179,LCFI8-LCFI7
	.long L$set$179
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x4
	.set L$set$180,LCFI9-LCFI8
	.long L$set$180
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE59:
LSFDE61:
	.set L$set$181,LEFDE61-LASFDE61
	.long L$set$181
LASFDE61:
	.long	LASFDE61-EH_frame1
	.quad	LFB5-.
	.set L$set$182,LFE5-LFB5
	.quad L$set$182
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$183,LCFI10-LFB5
	.long L$set$183
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.set L$set$184,LCFI11-LCFI10
	.long L$set$184
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$185,LCFI12-LCFI11
	.long L$set$185
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x4
	.set L$set$186,LCFI13-LCFI12
	.long L$set$186
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE61:
LSFDE63:
	.set L$set$187,LEFDE63-LASFDE63
	.long L$set$187
LASFDE63:
	.long	LASFDE63-EH_frame1
	.quad	LFB6-.
	.set L$set$188,LFE6-LFB6
	.quad L$set$188
	.uleb128 0x8
	.quad	LLSDA6-.
	.byte	0x4
	.set L$set$189,LCFI14-LFB6
	.long L$set$189
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$190,LCFI15-LCFI14
	.long L$set$190
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$191,LCFI16-LCFI15
	.long L$set$191
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$192,LCFI17-LCFI16
	.long L$set$192
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE63:
LSFDE65:
	.set L$set$193,LEFDE65-LASFDE65
	.long L$set$193
LASFDE65:
	.long	LASFDE65-EH_frame1
	.quad	LFB7-.
	.set L$set$194,LFE7-LFB7
	.quad L$set$194
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$195,LCFI18-LFB7
	.long L$set$195
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$196,LCFI19-LCFI18
	.long L$set$196
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$197,LCFI20-LCFI19
	.long L$set$197
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE65:
LSFDE67:
	.set L$set$198,LEFDE67-LASFDE67
	.long L$set$198
LASFDE67:
	.long	LASFDE67-EH_frame1
	.quad	LFB8-.
	.set L$set$199,LFE8-LFB8
	.quad L$set$199
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$200,LCFI21-LFB8
	.long L$set$200
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$201,LCFI22-LCFI21
	.long L$set$201
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$202,LCFI23-LCFI22
	.long L$set$202
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE67:
LSFDE69:
	.set L$set$203,LEFDE69-LASFDE69
	.long L$set$203
LASFDE69:
	.long	LASFDE69-EH_frame1
	.quad	LFB9-.
	.set L$set$204,LFE9-LFB9
	.quad L$set$204
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$205,LCFI24-LFB9
	.long L$set$205
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$206,LCFI25-LCFI24
	.long L$set$206
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$207,LCFI26-LCFI25
	.long L$set$207
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE69:
LSFDE71:
	.set L$set$208,LEFDE71-LASFDE71
	.long L$set$208
LASFDE71:
	.long	LASFDE71-EH_frame1
	.quad	LFB10-.
	.set L$set$209,LFE10-LFB10
	.quad L$set$209
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$210,LCFI27-LFB10
	.long L$set$210
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$211,LCFI28-LCFI27
	.long L$set$211
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$212,LCFI29-LCFI28
	.long L$set$212
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE71:
LSFDE73:
	.set L$set$213,LEFDE73-LASFDE73
	.long L$set$213
LASFDE73:
	.long	LASFDE73-EH_frame1
	.quad	LFB11-.
	.set L$set$214,LFE11-LFB11
	.quad L$set$214
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$215,LCFI30-LFB11
	.long L$set$215
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$216,LCFI31-LCFI30
	.long L$set$216
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$217,LCFI32-LCFI31
	.long L$set$217
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE73:
LSFDE75:
	.set L$set$218,LEFDE75-LASFDE75
	.long L$set$218
LASFDE75:
	.long	LASFDE75-EH_frame1
	.quad	LFB12-.
	.set L$set$219,LFE12-LFB12
	.quad L$set$219
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$220,LCFI33-LFB12
	.long L$set$220
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$221,LCFI34-LCFI33
	.long L$set$221
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$222,LCFI35-LCFI34
	.long L$set$222
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE75:
LSFDE77:
	.set L$set$223,LEFDE77-LASFDE77
	.long L$set$223
LASFDE77:
	.long	LASFDE77-EH_frame1
	.quad	LFB13-.
	.set L$set$224,LFE13-LFB13
	.quad L$set$224
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$225,LCFI36-LFB13
	.long L$set$225
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$226,LCFI37-LCFI36
	.long L$set$226
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$227,LCFI38-LCFI37
	.long L$set$227
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE77:
LSFDE79:
	.set L$set$228,LEFDE79-LASFDE79
	.long L$set$228
LASFDE79:
	.long	LASFDE79-EH_frame1
	.quad	LFB14-.
	.set L$set$229,LFE14-LFB14
	.quad L$set$229
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$230,LCFI39-LFB14
	.long L$set$230
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$231,LCFI40-LCFI39
	.long L$set$231
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$232,LCFI41-LCFI40
	.long L$set$232
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE79:
LSFDE81:
	.set L$set$233,LEFDE81-LASFDE81
	.long L$set$233
LASFDE81:
	.long	LASFDE81-EH_frame1
	.quad	LFB15-.
	.set L$set$234,LFE15-LFB15
	.quad L$set$234
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$235,LCFI42-LFB15
	.long L$set$235
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$236,LCFI43-LCFI42
	.long L$set$236
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$237,LCFI44-LCFI43
	.long L$set$237
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE81:
LSFDE83:
	.set L$set$238,LEFDE83-LASFDE83
	.long L$set$238
LASFDE83:
	.long	LASFDE83-EH_frame1
	.quad	LFB16-.
	.set L$set$239,LFE16-LFB16
	.quad L$set$239
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$240,LCFI45-LFB16
	.long L$set$240
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$241,LCFI46-LCFI45
	.long L$set$241
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$242,LCFI47-LCFI46
	.long L$set$242
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE83:
LSFDE85:
	.set L$set$243,LEFDE85-LASFDE85
	.long L$set$243
LASFDE85:
	.long	LASFDE85-EH_frame1
	.quad	LFB17-.
	.set L$set$244,LFE17-LFB17
	.quad L$set$244
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$245,LCFI48-LFB17
	.long L$set$245
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$246,LCFI49-LCFI48
	.long L$set$246
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$247,LCFI50-LCFI49
	.long L$set$247
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE85:
LSFDE87:
	.set L$set$248,LEFDE87-LASFDE87
	.long L$set$248
LASFDE87:
	.long	LASFDE87-EH_frame1
	.quad	LFB18-.
	.set L$set$249,LFE18-LFB18
	.quad L$set$249
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$250,LCFI51-LFB18
	.long L$set$250
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$251,LCFI52-LCFI51
	.long L$set$251
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$252,LCFI53-LCFI52
	.long L$set$252
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE87:
LSFDE89:
	.set L$set$253,LEFDE89-LASFDE89
	.long L$set$253
LASFDE89:
	.long	LASFDE89-EH_frame1
	.quad	LFB19-.
	.set L$set$254,LFE19-LFB19
	.quad L$set$254
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$255,LCFI54-LFB19
	.long L$set$255
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$256,LCFI55-LCFI54
	.long L$set$256
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$257,LCFI56-LCFI55
	.long L$set$257
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE89:
LSFDE91:
	.set L$set$258,LEFDE91-LASFDE91
	.long L$set$258
LASFDE91:
	.long	LASFDE91-EH_frame1
	.quad	LFB20-.
	.set L$set$259,LFE20-LFB20
	.quad L$set$259
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$260,LCFI57-LFB20
	.long L$set$260
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$261,LCFI58-LCFI57
	.long L$set$261
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$262,LCFI59-LCFI58
	.long L$set$262
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE91:
LSFDE93:
	.set L$set$263,LEFDE93-LASFDE93
	.long L$set$263
LASFDE93:
	.long	LASFDE93-EH_frame1
	.quad	LFB22-.
	.set L$set$264,LFE22-LFB22
	.quad L$set$264
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$265,LCFI60-LFB22
	.long L$set$265
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$266,LCFI61-LCFI60
	.long L$set$266
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE93:
LSFDE95:
	.set L$set$267,LEFDE95-LASFDE95
	.long L$set$267
LASFDE95:
	.long	LASFDE95-EH_frame1
	.quad	LFB21-.
	.set L$set$268,LFE21-LFB21
	.quad L$set$268
	.uleb128 0x8
	.quad	LLSDA21-.
	.byte	0x4
	.set L$set$269,LCFI62-LFB21
	.long L$set$269
	.byte	0xe
	.uleb128 0x710
	.byte	0x4
	.set L$set$270,LCFI63-LCFI62
	.long L$set$270
	.byte	0x9d
	.uleb128 0xe0
	.byte	0x9e
	.uleb128 0xdf
	.byte	0x4
	.set L$set$271,LCFI64-LCFI63
	.long L$set$271
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x700
	.byte	0x4
	.set L$set$272,LCFI65-LCFI64
	.long L$set$272
	.byte	0x93
	.uleb128 0xde
	.byte	0x94
	.uleb128 0xdd
	.byte	0x95
	.uleb128 0xdc
	.byte	0x96
	.uleb128 0xdb
	.byte	0x97
	.uleb128 0xda
	.byte	0x98
	.uleb128 0xd9
	.byte	0x99
	.uleb128 0xd8
	.byte	0x9a
	.uleb128 0xd7
	.byte	0x9b
	.uleb128 0xd6
	.byte	0x4
	.set L$set$273,LCFI66-LCFI65
	.long L$set$273
	.byte	0xdb
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
LEFDE95:
LSFDE97:
	.set L$set$274,LEFDE97-LASFDE97
	.long L$set$274
LASFDE97:
	.long	LASFDE97-EH_frame1
	.quad	LFB23-.
	.set L$set$275,LFE23-LFB23
	.quad L$set$275
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$276,LCFI67-LFB23
	.long L$set$276
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.set L$set$277,LCFI68-LCFI67
	.long L$set$277
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE97:
LSFDE99:
	.set L$set$278,LEFDE99-LASFDE99
	.long L$set$278
LASFDE99:
	.long	LASFDE99-EH_frame1
	.quad	LFB24-.
	.set L$set$279,LFE24-LFB24
	.quad L$set$279
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$280,LCFI69-LFB24
	.long L$set$280
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$281,LCFI70-LCFI69
	.long L$set$281
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$282,LCFI71-LCFI70
	.long L$set$282
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE99:
LSFDE101:
	.set L$set$283,LEFDE101-LASFDE101
	.long L$set$283
LASFDE101:
	.long	LASFDE101-EH_frame1
	.quad	LFB26-.
	.set L$set$284,LFE26-LFB26
	.quad L$set$284
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$285,LCFI72-LFB26
	.long L$set$285
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$286,LCFI73-LCFI72
	.long L$set$286
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$287,LCFI74-LCFI73
	.long L$set$287
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE101:
LSFDE103:
	.set L$set$288,LEFDE103-LASFDE103
	.long L$set$288
LASFDE103:
	.long	LASFDE103-EH_frame1
	.quad	LFB25-.
	.set L$set$289,LFE25-LFB25
	.quad L$set$289
	.uleb128 0x8
	.quad	LLSDA25-.
	.byte	0x4
	.set L$set$290,LCFI75-LFB25
	.long L$set$290
	.byte	0xe
	.uleb128 0xb0
	.byte	0x9d
	.uleb128 0x16
	.byte	0x9e
	.uleb128 0x15
	.byte	0x4
	.set L$set$291,LCFI76-LCFI75
	.long L$set$291
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$292,LCFI77-LCFI76
	.long L$set$292
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
	.byte	0x9c
	.uleb128 0xb
	.byte	0x4
	.set L$set$293,LCFI78-LCFI77
	.long L$set$293
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
LEFDE103:
LSFDE105:
	.set L$set$294,LEFDE105-LASFDE105
	.long L$set$294
LASFDE105:
	.long	LASFDE105-EH_frame1
	.quad	LFB0-.
	.set L$set$295,LFE0-LFB0
	.quad L$set$295
	.uleb128 0x8
	.quad	0
	.align	3
LEFDE105:
LSFDE107:
	.set L$set$296,LEFDE107-LASFDE107
	.long L$set$296
LASFDE107:
	.long	LASFDE107-EH_frame1
	.quad	LFB1-.
	.set L$set$297,LFE1-LFB1
	.quad L$set$297
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$298,LCFI79-LFB1
	.long L$set$298
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$299,LCFI80-LCFI79
	.long L$set$299
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$300,LCFI81-LCFI80
	.long L$set$300
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE107:
	.text
Letext0:
	.file 3 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-oslock.ads"
	.file 4 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-taspri.ads"
	.file 5 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-taskin.ads"
	.file 6 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/a-except.ads"
	.file 7 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-stalib.ads"
	.file 8 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-osinte.ads"
	.file 9 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-soflin.ads"
	.file 10 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-stache.ads"
	.file 11 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-secsta.ads"
	.file 12 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-stausa.ads"
	.file 13 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-multip.ads"
	.file 14 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-taprob.ads"
	.file 15 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-string.ads"
	.file 16 "<built-in>"
	.file 17 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-tasinf.ads"
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x30f7
	.short	0x4
	.set L$set$301,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$301
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU Ada 15.0.1 20250418 (prerelease) -gnatA -gnat2012 -gnato -gnatwa -gnata -g -gnatR2js -gnatws -gnatis -gnatec=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.7888/GNAT-TEMP-000003.TMP -gnatem=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.7888/GNAT-TEMP-000004.TMP -mmacosx-version-min=14.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -fPIC\0"
	.byte	0xd
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_daemon_state.adb\0"
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/obj/gnatprove/data_representation\0"
	.set L$set$302,Ldebug_ranges0+0-Lsection__debug_ranges
	.long L$set$302
	.quad	0
	.set L$set$303,Ldebug_line0-Lsection__debug_line
	.long L$set$303
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "system__address\0"
	.uleb128 0x3
	.long	0x21b
	.uleb128 0x4
	.byte	0
	.byte	0xff
	.ascii "interfaces__c__char\0"
	.long	0x24e
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.ascii "interfaces__c__TcharB\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "interfaces__c__size_t\0"
	.uleb128 0x6
	.long	0x233
	.long	0x290
	.uleb128 0x7
	.long	0x267
	.byte	0x38
	.byte	0
	.uleb128 0x8
	.ascii "system__os_locks__pthread_mutex_t\0"
	.byte	0x38
	.byte	0x3
	.byte	0x33
	.byte	0x9
	.long	0x2ca
	.uleb128 0x9
	.ascii "data\0"
	.byte	0x3
	.byte	0x34
	.byte	0x7
	.long	0x280
	.byte	0
	.byte	0
	.uleb128 0x8
	.ascii "system__task_primitives__lock\0"
	.byte	0x70
	.byte	0x4
	.byte	0x47
	.byte	0x9
	.long	0x30a
	.uleb128 0x9
	.ascii "rw\0"
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x290
	.byte	0
	.uleb128 0x9
	.ascii "wo\0"
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x290
	.byte	0x38
	.byte	0
	.uleb128 0xa
	.sleb128 0
	.sleb128 63
	.ascii "system__any_priority\0"
	.long	0x326
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "integer\0"
	.uleb128 0xb
	.ascii "system__tasking__task_id\0"
	.byte	0x5
	.byte	0x6d
	.byte	0x9
	.long	0x357
	.uleb128 0x3
	.long	0x331
	.uleb128 0xc
	.byte	0x8
	.long	0x35d
	.uleb128 0xd
	.ascii "system__tasking__ada_task_control_block\0"
	.uleb128 0x8
	.byte	0x97
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0xdb
	.byte	0x40
	.byte	0x1e
	.byte	0x5
	.short	0x3db
	.byte	0x9
	.long	0x655
	.uleb128 0xe
	.ascii "entry_num\0"
	.byte	0x5
	.short	0x3db
	.byte	0x21
	.long	0x655
	.byte	0
	.uleb128 0xe
	.ascii "common\0"
	.byte	0x5
	.short	0x3dc
	.byte	0x7
	.long	0x6a9
	.byte	0x8
	.uleb128 0xf
	.ascii "entry_calls\0"
	.byte	0x5
	.short	0x3df
	.byte	0x7
	.long	0x1e56
	.short	0x530
	.uleb128 0xf
	.ascii "new_base_priority\0"
	.byte	0x5
	.short	0x3e6
	.byte	0x7
	.long	0x30a
	.short	0xc50
	.uleb128 0xf
	.ascii "open_accepts\0"
	.byte	0x5
	.short	0x3eb
	.byte	0x7
	.long	0x1e88
	.short	0xc58
	.uleb128 0xf
	.ascii "chosen_index\0"
	.byte	0x5
	.short	0x3f2
	.byte	0x7
	.long	0x1fcb
	.short	0xc68
	.uleb128 0xf
	.ascii "master_of_task\0"
	.byte	0x5
	.short	0x3fc
	.byte	0x7
	.long	0x1ff4
	.short	0xc6c
	.uleb128 0xf
	.ascii "master_within\0"
	.byte	0x5
	.short	0x403
	.byte	0x7
	.long	0x1ff4
	.short	0xc70
	.uleb128 0xf
	.ascii "alive_count\0"
	.byte	0x5
	.short	0x40c
	.byte	0x7
	.long	0xccb
	.short	0xc74
	.uleb128 0xf
	.ascii "awake_count\0"
	.byte	0x5
	.short	0x412
	.byte	0x7
	.long	0xccb
	.short	0xc78
	.uleb128 0xf
	.ascii "aborting\0"
	.byte	0x5
	.short	0x41d
	.byte	0x7
	.long	0xc6d
	.short	0xc7c
	.uleb128 0xf
	.ascii "atc_hack\0"
	.byte	0x5
	.short	0x42b
	.byte	0x7
	.long	0xc6d
	.short	0xc7d
	.uleb128 0xf
	.ascii "callable\0"
	.byte	0x5
	.short	0x433
	.byte	0x7
	.long	0xc62
	.short	0xc7e
	.uleb128 0xf
	.ascii "dependents_aborted\0"
	.byte	0x5
	.short	0x436
	.byte	0x7
	.long	0xc62
	.short	0xc7f
	.uleb128 0xf
	.ascii "interrupt_entry\0"
	.byte	0x5
	.short	0x43c
	.byte	0x7
	.long	0xc62
	.short	0xc80
	.uleb128 0xf
	.ascii "pending_action\0"
	.byte	0x5
	.short	0x440
	.byte	0x7
	.long	0xc62
	.short	0xc81
	.uleb128 0xf
	.ascii "pending_priority_change\0"
	.byte	0x5
	.short	0x450
	.byte	0x7
	.long	0xc62
	.short	0xc82
	.uleb128 0xf
	.ascii "terminate_alternative\0"
	.byte	0x5
	.short	0x457
	.byte	0x7
	.long	0xc62
	.short	0xc83
	.uleb128 0xf
	.ascii "atc_nesting_level\0"
	.byte	0x5
	.short	0x460
	.byte	0x7
	.long	0x11b3
	.short	0xc84
	.uleb128 0xf
	.ascii "deferral_level\0"
	.byte	0x5
	.short	0x46c
	.byte	0x7
	.long	0xccb
	.short	0xc88
	.uleb128 0xf
	.ascii "pending_atc_level\0"
	.byte	0x5
	.short	0x474
	.byte	0x7
	.long	0x2021
	.short	0xc8c
	.uleb128 0xf
	.ascii "serial_number\0"
	.byte	0x5
	.short	0x482
	.byte	0x7
	.long	0x2048
	.short	0xc90
	.uleb128 0xf
	.ascii "known_tasks_index\0"
	.byte	0x5
	.short	0x485
	.byte	0x7
	.long	0x206f
	.short	0xc98
	.uleb128 0xf
	.ascii "user_state\0"
	.byte	0x5
	.short	0x488
	.byte	0x7
	.long	0x207a
	.short	0xca0
	.uleb128 0xf
	.ascii "free_on_termination\0"
	.byte	0x5
	.short	0x48c
	.byte	0x7
	.long	0xc62
	.short	0xca8
	.uleb128 0xf
	.ascii "attributes\0"
	.byte	0x5
	.short	0x492
	.byte	0x7
	.long	0x208a
	.short	0xcb0
	.uleb128 0x6
	.long	0x20bb
	.long	0x63c
	.uleb128 0x10
	.long	0x682
	.long	0x397
	.byte	0
	.uleb128 0xf
	.ascii "entry_queues\0"
	.byte	0x5
	.short	0x498
	.byte	0x7
	.long	0x629
	.short	0xdb0
	.byte	0
	.uleb128 0xa
	.sleb128 0
	.sleb128 2147483647
	.ascii "system__tasking__task_entry_index\0"
	.long	0x682
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "system__tasking__Ttask_entry_indexB\0"
	.uleb128 0x11
	.ascii "system__tasking__common_atcb\0"
	.short	0x528
	.byte	0x5
	.short	0x1f6
	.byte	0x9
	.long	0x980
	.uleb128 0xe
	.ascii "state\0"
	.byte	0x5
	.short	0x1f7
	.byte	0x7
	.long	0xc5d
	.byte	0
	.uleb128 0xe
	.ascii "parent\0"
	.byte	0x5
	.short	0x1ff
	.byte	0x7
	.long	0x331
	.byte	0x8
	.uleb128 0xe
	.ascii "base_priority\0"
	.byte	0x5
	.short	0x203
	.byte	0x7
	.long	0x30a
	.byte	0x10
	.uleb128 0xe
	.ascii "cpu_is_explicit\0"
	.byte	0x5
	.short	0x209
	.byte	0x7
	.long	0xc62
	.byte	0x14
	.uleb128 0xe
	.ascii "base_cpu\0"
	.byte	0x5
	.short	0x214
	.byte	0x7
	.long	0xc77
	.byte	0x18
	.uleb128 0xe
	.ascii "current_priority\0"
	.byte	0x5
	.short	0x219
	.byte	0x7
	.long	0x30a
	.byte	0x1c
	.uleb128 0xe
	.ascii "protected_action_nesting\0"
	.byte	0x5
	.short	0x230
	.byte	0x7
	.long	0xcde
	.byte	0x20
	.uleb128 0x6
	.long	0xce8
	.long	0x786
	.uleb128 0x12
	.long	0x326
	.sleb128 256
	.byte	0
	.uleb128 0xe
	.ascii "task_image\0"
	.byte	0x5
	.short	0x237
	.byte	0x7
	.long	0x775
	.byte	0x24
	.uleb128 0xf
	.ascii "task_image_len\0"
	.byte	0x5
	.short	0x23b
	.byte	0x7
	.long	0xccb
	.short	0x124
	.uleb128 0xf
	.ascii "call\0"
	.byte	0x5
	.short	0x23e
	.byte	0x7
	.long	0xcf5
	.short	0x128
	.uleb128 0xf
	.ascii "ll\0"
	.byte	0x5
	.short	0x246
	.byte	0x7
	.long	0x124b
	.short	0x130
	.uleb128 0xf
	.ascii "task_arg\0"
	.byte	0x5
	.short	0x24d
	.byte	0x7
	.long	0x21b
	.short	0x1a8
	.uleb128 0xf
	.ascii "task_alternate_stack\0"
	.byte	0x5
	.short	0x255
	.byte	0x7
	.long	0x21b
	.short	0x1b0
	.uleb128 0xf
	.ascii "task_entry_point\0"
	.byte	0x5
	.short	0x25a
	.byte	0x7
	.long	0x13c6
	.short	0x1b8
	.uleb128 0xf
	.ascii "compiler_data\0"
	.byte	0x5
	.short	0x262
	.byte	0x7
	.long	0x1407
	.short	0x1c0
	.uleb128 0xf
	.ascii "all_tasks_link\0"
	.byte	0x5
	.short	0x268
	.byte	0x7
	.long	0x331
	.short	0x460
	.uleb128 0xf
	.ascii "activation_link\0"
	.byte	0x5
	.short	0x26d
	.byte	0x7
	.long	0x331
	.short	0x468
	.uleb128 0xf
	.ascii "activator\0"
	.byte	0x5
	.short	0x272
	.byte	0x7
	.long	0x352
	.short	0x470
	.uleb128 0xf
	.ascii "wait_count\0"
	.byte	0x5
	.short	0x27c
	.byte	0x7
	.long	0xccb
	.short	0x478
	.uleb128 0xf
	.ascii "elaborated\0"
	.byte	0x5
	.short	0x297
	.byte	0x7
	.long	0x198e
	.short	0x480
	.uleb128 0xf
	.ascii "activation_failed\0"
	.byte	0x5
	.short	0x2a0
	.byte	0x7
	.long	0xc62
	.short	0x488
	.uleb128 0xf
	.ascii "task_info\0"
	.byte	0x5
	.short	0x2a4
	.byte	0x7
	.long	0x19bd
	.short	0x489
	.uleb128 0xf
	.ascii "analyzer\0"
	.byte	0x5
	.short	0x2a8
	.byte	0x7
	.long	0x1a61
	.short	0x490
	.uleb128 0xf
	.ascii "global_task_lock_nesting\0"
	.byte	0x5
	.short	0x2ab
	.byte	0x7
	.long	0xccb
	.short	0x4e8
	.uleb128 0xf
	.ascii "fall_back_handler\0"
	.byte	0x5
	.short	0x2b4
	.byte	0x7
	.long	0x1c2c
	.short	0x4f0
	.uleb128 0xf
	.ascii "specific_handler\0"
	.byte	0x5
	.short	0x2ba
	.byte	0x7
	.long	0x1c2c
	.short	0x500
	.uleb128 0xf
	.ascii "debug_events\0"
	.byte	0x5
	.short	0x2c0
	.byte	0x7
	.long	0x1d2d
	.short	0x510
	.uleb128 0xf
	.ascii "domain\0"
	.byte	0x5
	.short	0x2c4
	.byte	0x7
	.long	0x1d61
	.short	0x518
	.byte	0
	.uleb128 0x13
	.ascii "system__tasking__task_states\0"
	.byte	0x1
	.byte	0x5
	.byte	0x84
	.byte	0x9
	.long	0xc5d
	.uleb128 0x14
	.ascii "system__tasking__unactivated\0"
	.byte	0
	.uleb128 0x14
	.ascii "system__tasking__runnable\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "system__tasking__terminated\0"
	.byte	0x2
	.uleb128 0x14
	.ascii "system__tasking__activator_sleep\0"
	.byte	0x3
	.uleb128 0x14
	.ascii "system__tasking__acceptor_sleep\0"
	.byte	0x4
	.uleb128 0x14
	.ascii "system__tasking__entry_caller_sleep\0"
	.byte	0x5
	.uleb128 0x14
	.ascii "system__tasking__async_select_sleep\0"
	.byte	0x6
	.uleb128 0x14
	.ascii "system__tasking__delay_sleep\0"
	.byte	0x7
	.uleb128 0x14
	.ascii "system__tasking__master_completion_sleep\0"
	.byte	0x8
	.uleb128 0x14
	.ascii "system__tasking__master_phase_2_sleep\0"
	.byte	0x9
	.uleb128 0x14
	.ascii "system__tasking__interrupt_server_idle_sleep\0"
	.byte	0xa
	.uleb128 0x14
	.ascii "system__tasking__interrupt_server_blocked_interrupt_sleep\0"
	.byte	0xb
	.uleb128 0x14
	.ascii "system__tasking__timer_server_sleep\0"
	.byte	0xc
	.uleb128 0x14
	.ascii "system__tasking__ast_server_sleep\0"
	.byte	0xd
	.uleb128 0x14
	.ascii "system__tasking__asynchronous_hold\0"
	.byte	0xe
	.uleb128 0x14
	.ascii "system__tasking__interrupt_server_blocked_on_event_flag\0"
	.byte	0xf
	.uleb128 0x14
	.ascii "system__tasking__activating\0"
	.byte	0x10
	.uleb128 0x14
	.ascii "system__tasking__acceptor_delay_sleep\0"
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.long	0x980
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "boolean\0"
	.uleb128 0x3
	.long	0xc62
	.uleb128 0x15
	.long	0xc62
	.uleb128 0xa
	.sleb128 0
	.sleb128 65535
	.ascii "system__multiprocessors__cpu_range\0"
	.long	0xca3
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "system__multiprocessors__Tcpu_rangeB\0"
	.uleb128 0xa
	.sleb128 0
	.sleb128 2147483647
	.ascii "natural\0"
	.long	0x326
	.uleb128 0x3
	.long	0xccb
	.uleb128 0x15
	.long	0xccb
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "character\0"
	.uleb128 0xb
	.ascii "system__tasking__entry_call_link\0"
	.byte	0x5
	.byte	0xf2
	.byte	0x9
	.long	0xd1e
	.uleb128 0xc
	.byte	0x8
	.long	0xd24
	.uleb128 0x16
	.ascii "system__tasking__entry_call_record\0"
	.byte	0x60
	.byte	0x5
	.short	0x362
	.byte	0x9
	.long	0xeb9
	.uleb128 0xe
	.ascii "self\0"
	.byte	0x5
	.short	0x363
	.byte	0x7
	.long	0x331
	.byte	0
	.uleb128 0xe
	.ascii "mode\0"
	.byte	0x5
	.short	0x366
	.byte	0x7
	.long	0xeb9
	.byte	0x8
	.uleb128 0xe
	.ascii "state\0"
	.byte	0x5
	.short	0x368
	.byte	0x7
	.long	0x1051
	.byte	0x9
	.uleb128 0xe
	.ascii "uninterpreted_data\0"
	.byte	0x5
	.short	0x375
	.byte	0x7
	.long	0x21b
	.byte	0x10
	.uleb128 0xe
	.ascii "exception_to_raise\0"
	.byte	0x5
	.short	0x378
	.byte	0x7
	.long	0x1056
	.byte	0x18
	.uleb128 0xe
	.ascii "prev\0"
	.byte	0x5
	.short	0x37c
	.byte	0x7
	.long	0xcf5
	.byte	0x20
	.uleb128 0xe
	.ascii "next\0"
	.byte	0x5
	.short	0x37e
	.byte	0x7
	.long	0xcf5
	.byte	0x28
	.uleb128 0xe
	.ascii "level\0"
	.byte	0x5
	.short	0x380
	.byte	0x7
	.long	0x11b3
	.byte	0x30
	.uleb128 0xe
	.ascii "e\0"
	.byte	0x5
	.short	0x387
	.byte	0x7
	.long	0x11d5
	.byte	0x34
	.uleb128 0xe
	.ascii "prio\0"
	.byte	0x5
	.short	0x389
	.byte	0x7
	.long	0x30a
	.byte	0x38
	.uleb128 0xe
	.ascii "called_task\0"
	.byte	0x5
	.short	0x38f
	.byte	0x7
	.long	0x352
	.byte	0x40
	.uleb128 0xe
	.ascii "called_po\0"
	.byte	0x5
	.short	0x397
	.byte	0x7
	.long	0x22e
	.byte	0x48
	.uleb128 0xe
	.ascii "acceptor_prev_call\0"
	.byte	0x5
	.short	0x3a2
	.byte	0x7
	.long	0xcf5
	.byte	0x50
	.uleb128 0xe
	.ascii "acceptor_prev_priority\0"
	.byte	0x5
	.short	0x3a5
	.byte	0x7
	.long	0x121f
	.byte	0x58
	.uleb128 0xe
	.ascii "cancellation_attempted\0"
	.byte	0x5
	.short	0x3aa
	.byte	0x7
	.long	0xc6d
	.byte	0x5c
	.uleb128 0xe
	.ascii "with_abort\0"
	.byte	0x5
	.short	0x3af
	.byte	0x7
	.long	0xc62
	.byte	0x5d
	.uleb128 0xe
	.ascii "needs_requeue\0"
	.byte	0x5
	.short	0x3b3
	.byte	0x7
	.long	0xc62
	.byte	0x5e
	.byte	0
	.uleb128 0x13
	.ascii "system__tasking__call_modes\0"
	.byte	0x1
	.byte	0x5
	.byte	0xd4
	.byte	0x9
	.long	0xf65
	.uleb128 0x14
	.ascii "system__tasking__simple_call\0"
	.byte	0
	.uleb128 0x14
	.ascii "system__tasking__conditional_call\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "system__tasking__asynchronous_call\0"
	.byte	0x2
	.uleb128 0x14
	.ascii "system__tasking__timed_call\0"
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.ascii "system__tasking__entry_call_state\0"
	.byte	0x1
	.byte	0x5
	.short	0x105
	.byte	0x9
	.long	0x1051
	.uleb128 0x14
	.ascii "system__tasking__never_abortable\0"
	.byte	0
	.uleb128 0x14
	.ascii "system__tasking__not_yet_abortable\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "system__tasking__was_abortable\0"
	.byte	0x2
	.uleb128 0x14
	.ascii "system__tasking__now_abortable\0"
	.byte	0x3
	.uleb128 0x14
	.ascii "system__tasking__done\0"
	.byte	0x4
	.uleb128 0x14
	.ascii "system__tasking__cancelled\0"
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	0xf65
	.uleb128 0xb
	.ascii "ada__exceptions__exception_id\0"
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.long	0x107c
	.uleb128 0xc
	.byte	0x8
	.long	0x1082
	.uleb128 0x8
	.ascii "system__standard_library__exception_data\0"
	.byte	0x28
	.byte	0x7
	.byte	0x61
	.byte	0x9
	.long	0x1148
	.uleb128 0x9
	.ascii "not_handled_by_others\0"
	.byte	0x7
	.byte	0x62
	.byte	0x7
	.long	0xce8
	.byte	0
	.uleb128 0x9
	.ascii "lang\0"
	.byte	0x7
	.byte	0x69
	.byte	0x7
	.long	0xce8
	.byte	0x1
	.uleb128 0x9
	.ascii "name_length\0"
	.byte	0x7
	.byte	0x6f
	.byte	0x7
	.long	0xccb
	.byte	0x4
	.uleb128 0x9
	.ascii "full_name\0"
	.byte	0x7
	.byte	0x72
	.byte	0x7
	.long	0x21b
	.byte	0x8
	.uleb128 0x9
	.ascii "htable_ptr\0"
	.byte	0x7
	.byte	0x76
	.byte	0x7
	.long	0x1148
	.byte	0x10
	.uleb128 0x9
	.ascii "foreign_data\0"
	.byte	0x7
	.byte	0x7b
	.byte	0x7
	.long	0x21b
	.byte	0x18
	.uleb128 0x9
	.ascii "raise_hook\0"
	.byte	0x7
	.byte	0x7f
	.byte	0x7
	.long	0x117d
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.ascii "system__standard_library__exception_data_ptr\0"
	.byte	0x7
	.byte	0x52
	.byte	0x9
	.long	0x107c
	.uleb128 0xb
	.ascii "system__standard_library__raise_action\0"
	.byte	0x7
	.byte	0x4d
	.byte	0x9
	.long	0x11ac
	.uleb128 0xc
	.byte	0x8
	.long	0x11b2
	.uleb128 0x18
	.uleb128 0xa
	.sleb128 0
	.sleb128 19
	.ascii "system__tasking__atc_level\0"
	.long	0x326
	.uleb128 0xa
	.sleb128 -2
	.sleb128 2147483647
	.ascii "system__tasking__entry_index\0"
	.long	0x11fd
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "system__tasking__Tentry_indexB\0"
	.uleb128 0xa
	.sleb128 -1
	.sleb128 63
	.ascii "system__tasking__rendezvous_priority\0"
	.long	0x326
	.uleb128 0x8
	.ascii "system__task_primitives__private_data\0"
	.byte	0x78
	.byte	0x4
	.byte	0x5d
	.byte	0x9
	.long	0x12af
	.uleb128 0x9
	.ascii "thread\0"
	.byte	0x4
	.byte	0x5e
	.byte	0x7
	.long	0x12af
	.byte	0
	.uleb128 0x9
	.ascii "lwp\0"
	.byte	0x4
	.byte	0x6a
	.byte	0x7
	.long	0x21b
	.byte	0x8
	.uleb128 0x9
	.ascii "cv\0"
	.byte	0x4
	.byte	0x6f
	.byte	0x7
	.long	0x1302
	.byte	0x10
	.uleb128 0x9
	.ascii "l\0"
	.byte	0x4
	.byte	0x72
	.byte	0x7
	.long	0x290
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "system__os_interface__pthread_t\0"
	.long	0x12dd
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.ascii "system__os_interface__Tpthread_tB\0"
	.uleb128 0x16
	.ascii "system__os_interface__pthread_cond_t\0"
	.byte	0x30
	.byte	0x8
	.short	0x246
	.byte	0x9
	.long	0x1351
	.uleb128 0xe
	.ascii "sig\0"
	.byte	0x8
	.short	0x247
	.byte	0x7
	.long	0x1351
	.byte	0
	.uleb128 0xe
	.ascii "opaque\0"
	.byte	0x8
	.short	0x248
	.byte	0x7
	.long	0x139e
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "system__os_interface__long\0"
	.long	0x1385
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "interfaces__c__TlongB\0"
	.uleb128 0x6
	.long	0x233
	.long	0x13ae
	.uleb128 0x12
	.long	0x13ae
	.sleb128 40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "interfaces__c__TintB\0"
	.uleb128 0x1a
	.ascii "system__tasking__task_procedure_access\0"
	.byte	0x5
	.short	0x1bb
	.byte	0x9
	.long	0x13f6
	.uleb128 0xc
	.byte	0x8
	.long	0x13fc
	.uleb128 0x1b
	.long	0x1407
	.uleb128 0x1c
	.long	0x21b
	.byte	0
	.uleb128 0x11
	.ascii "system__soft_links__tsd\0"
	.short	0x2a0
	.byte	0x9
	.short	0x156
	.byte	0x9
	.long	0x148d
	.uleb128 0xe
	.ascii "pri_stack_info\0"
	.byte	0x9
	.short	0x157
	.byte	0x7
	.long	0x148d
	.byte	0
	.uleb128 0xe
	.ascii "jmpbuf_address\0"
	.byte	0x9
	.short	0x15d
	.byte	0x7
	.long	0x21b
	.byte	0x18
	.uleb128 0xe
	.ascii "sec_stack_ptr\0"
	.byte	0x9
	.short	0x163
	.byte	0x7
	.long	0x1555
	.byte	0x20
	.uleb128 0xe
	.ascii "current_excep\0"
	.byte	0x9
	.short	0x166
	.byte	0x7
	.long	0x1838
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.ascii "system__stack_checking__stack_info\0"
	.byte	0x18
	.byte	0xa
	.byte	0x30
	.byte	0x9
	.long	0x14e5
	.uleb128 0x9
	.ascii "limit\0"
	.byte	0xa
	.byte	0x31
	.byte	0x7
	.long	0x21b
	.byte	0
	.uleb128 0x9
	.ascii "base\0"
	.byte	0xa
	.byte	0x32
	.byte	0x7
	.long	0x21b
	.byte	0x8
	.uleb128 0x9
	.ascii "size\0"
	.byte	0xa
	.byte	0x33
	.byte	0x7
	.long	0x14e5
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "system__storage_elements__storage_offset\0"
	.long	0x1527
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "system__storage_elements__Tstorage_offsetB\0"
	.uleb128 0xb
	.ascii "system__secondary_stack__ss_stack_ptr\0"
	.byte	0xb
	.byte	0x32
	.byte	0x9
	.long	0x1583
	.uleb128 0xc
	.byte	0x8
	.long	0x1589
	.uleb128 0xd
	.ascii "system__secondary_stack__ss_stack\0"
	.uleb128 0x9
	.byte	0x97
	.byte	0x6
	.byte	0x23
	.uleb128 0xf
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x23
	.uleb128 0x50
	.byte	0xb
	.short	0x13a
	.byte	0x9
	.long	0x162d
	.uleb128 0x9
	.ascii "default_chunk_size\0"
	.byte	0xb
	.byte	0x2b
	.byte	0x13
	.long	0x162d
	.byte	0
	.uleb128 0xe
	.ascii "freeable\0"
	.byte	0xb
	.short	0x13b
	.byte	0x7
	.long	0xc62
	.byte	0x8
	.uleb128 0xe
	.ascii "high_water_mark\0"
	.byte	0xb
	.short	0x13e
	.byte	0x7
	.long	0x1687
	.byte	0x10
	.uleb128 0xe
	.ascii "top\0"
	.byte	0xb
	.short	0x142
	.byte	0x7
	.long	0x16bc
	.byte	0x18
	.uleb128 0xe
	.ascii "static_chunk\0"
	.byte	0xb
	.short	0x145
	.byte	0x7
	.long	0x1778
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "system__parameters__size_type\0"
	.long	0x1664
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "system__parameters__Tsize_typeB\0"
	.uleb128 0xa
	.sleb128 0
	.sleb128 9223372036854775807
	.ascii "system__secondary_stack__memory_size\0"
	.long	0x1664
	.uleb128 0x16
	.ascii "system__secondary_stack__stack_pointer\0"
	.byte	0x10
	.byte	0xb
	.short	0x12c
	.byte	0x9
	.long	0x170d
	.uleb128 0xe
	.ascii "byte\0"
	.byte	0xb
	.short	0x12d
	.byte	0x7
	.long	0x170d
	.byte	0
	.uleb128 0xe
	.ascii "chunk\0"
	.byte	0xb
	.short	0x131
	.byte	0x7
	.long	0x1743
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.sleb128 0
	.sleb128 9223372036854775807
	.ascii "system__secondary_stack__memory_index\0"
	.long	0x1664
	.uleb128 0x1a
	.ascii "system__secondary_stack__ss_chunk_ptr\0"
	.byte	0xb
	.short	0x114
	.byte	0x9
	.long	0x1772
	.uleb128 0xc
	.byte	0x8
	.long	0x1778
	.uleb128 0xd
	.ascii "system__secondary_stack__ss_chunk\0"
	.uleb128 0x9
	.byte	0x97
	.byte	0x6
	.byte	0x23
	.uleb128 0xf
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x23
	.uleb128 0x20
	.byte	0xb
	.short	0x117
	.byte	0x9
	.long	0x180b
	.uleb128 0xe
	.ascii "size\0"
	.byte	0xb
	.short	0x117
	.byte	0x13
	.long	0x1687
	.byte	0
	.uleb128 0xe
	.ascii "next\0"
	.byte	0xb
	.short	0x118
	.byte	0x7
	.long	0x1743
	.byte	0x8
	.uleb128 0xe
	.ascii "size_up_to_chunk\0"
	.byte	0xb
	.short	0x11c
	.byte	0x7
	.long	0x1687
	.byte	0x10
	.uleb128 0x6
	.long	0x180b
	.long	0x17f9
	.uleb128 0x10
	.long	0x1664
	.long	0x17ad
	.byte	0
	.uleb128 0xe
	.ascii "memory\0"
	.byte	0xb
	.short	0x121
	.byte	0x7
	.long	0x17e6
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x7
	.ascii "system__storage_elements__storage_element\0"
	.uleb128 0x1d
	.ascii "ada__exceptions__exception_occurrence\0"
	.short	0x278
	.byte	0x6
	.byte	0xfa
	.byte	0x9
	.long	0x190b
	.uleb128 0x9
	.ascii "id\0"
	.byte	0x6
	.byte	0xfb
	.byte	0x7
	.long	0x1056
	.byte	0
	.uleb128 0x9
	.ascii "machine_occurrence\0"
	.byte	0x6
	.byte	0xfe
	.byte	0x7
	.long	0x21b
	.byte	0x8
	.uleb128 0xe
	.ascii "msg_length\0"
	.byte	0x6
	.short	0x102
	.byte	0x7
	.long	0xccb
	.byte	0x10
	.uleb128 0xe
	.ascii "msg\0"
	.byte	0x6
	.short	0x105
	.byte	0x7
	.long	0x190b
	.byte	0x14
	.uleb128 0xe
	.ascii "exception_raised\0"
	.byte	0x6
	.short	0x108
	.byte	0x7
	.long	0xc62
	.byte	0xdc
	.uleb128 0xe
	.ascii "pid\0"
	.byte	0x6
	.short	0x111
	.byte	0x7
	.long	0xccb
	.byte	0xe0
	.uleb128 0xe
	.ascii "num_tracebacks\0"
	.byte	0x6
	.short	0x114
	.byte	0x7
	.long	0x191c
	.byte	0xe4
	.uleb128 0xe
	.ascii "tracebacks\0"
	.byte	0x6
	.short	0x117
	.byte	0x7
	.long	0x1923
	.byte	0xe8
	.byte	0
	.uleb128 0x6
	.long	0xce8
	.long	0x191c
	.uleb128 0x12
	.long	0x326
	.sleb128 200
	.byte	0
	.uleb128 0x1e
	.sleb128 0
	.sleb128 50
	.long	0x326
	.uleb128 0x1f
	.ascii "ada__exceptions__tracebacks_array\0"
	.long	0x1955
	.long	0x1955
	.uleb128 0x12
	.long	0x326
	.sleb128 50
	.byte	0
	.uleb128 0x19
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "system__traceback_entries__traceback_entry\0"
	.long	0x21b
	.uleb128 0x1a
	.ascii "system__tasking__access_boolean\0"
	.byte	0x5
	.short	0x1bd
	.byte	0x9
	.long	0x19b7
	.uleb128 0xc
	.byte	0x8
	.long	0xc62
	.uleb128 0x4
	.byte	0
	.byte	0x2
	.ascii "system__task_info__task_info_type\0"
	.long	0x19e6
	.uleb128 0x20
	.byte	0x1
	.byte	0x11
	.byte	0x54
	.byte	0x4
	.long	0x1a61
	.uleb128 0x14
	.ascii "system__task_info__process_scope__2\0"
	.byte	0
	.uleb128 0x14
	.ascii "system__task_info__system_scope__2\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "system__task_info__default_scope__2\0"
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.ascii "system__stack_usage__stack_analyzer\0"
	.byte	0x58
	.byte	0xc
	.short	0x11e
	.byte	0x9
	.long	0x1b64
	.uleb128 0xe
	.ascii "task_name\0"
	.byte	0xc
	.short	0x11f
	.byte	0x7
	.long	0x1b64
	.byte	0
	.uleb128 0xe
	.ascii "stack_base\0"
	.byte	0xc
	.short	0x122
	.byte	0x7
	.long	0x1b74
	.byte	0x20
	.uleb128 0xe
	.ascii "stack_size\0"
	.byte	0xc
	.short	0x126
	.byte	0x7
	.long	0xccb
	.byte	0x28
	.uleb128 0xe
	.ascii "pattern_size\0"
	.byte	0xc
	.short	0x129
	.byte	0x7
	.long	0xccb
	.byte	0x2c
	.uleb128 0xe
	.ascii "pattern\0"
	.byte	0xc
	.short	0x12c
	.byte	0x7
	.long	0x1bd2
	.byte	0x30
	.uleb128 0xe
	.ascii "pattern_limit\0"
	.byte	0xc
	.short	0x12f
	.byte	0x7
	.long	0x1b74
	.byte	0x38
	.uleb128 0xe
	.ascii "topmost_touched_mark\0"
	.byte	0xc
	.short	0x132
	.byte	0x7
	.long	0x1b74
	.byte	0x40
	.uleb128 0xe
	.ascii "pattern_overlay_address\0"
	.byte	0xc
	.short	0x138
	.byte	0x7
	.long	0x21b
	.byte	0x48
	.uleb128 0xe
	.ascii "result_id\0"
	.byte	0xc
	.short	0x13c
	.byte	0x7
	.long	0x1c19
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.long	0xce8
	.long	0x1b74
	.uleb128 0x12
	.long	0x326
	.sleb128 32
	.byte	0
	.uleb128 0x19
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "system__stack_usage__stack_address\0"
	.long	0x1ba5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "system__storage_elements__integer_address\0"
	.uleb128 0x21
	.byte	0
	.long	0xffffffff
	.ascii "system__stack_usage__pattern_type\0"
	.long	0x1bfe
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "interfaces__unsigned_32\0"
	.uleb128 0x22
	.sleb128 2147483647
	.ascii "positive\0"
	.long	0x326
	.uleb128 0x16
	.ascii "system__tasking__termination_handler\0"
	.byte	0x10
	.byte	0x5
	.short	0x16c
	.byte	0x4
	.long	0x1c79
	.uleb128 0xe
	.ascii "P9s\0"
	.byte	0x5
	.short	0x16c
	.byte	0x4
	.long	0x21b
	.byte	0
	.uleb128 0xe
	.ascii "S10s\0"
	.byte	0x5
	.short	0x16c
	.byte	0x4
	.long	0x1d27
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.long	0x1c93
	.uleb128 0x1c
	.long	0x21b
	.uleb128 0x1c
	.long	0x1c93
	.uleb128 0x1c
	.long	0x331
	.uleb128 0x1c
	.long	0x1d21
	.byte	0
	.uleb128 0x17
	.ascii "system__tasking__cause_of_termination\0"
	.byte	0x1
	.byte	0x5
	.short	0x160
	.byte	0x9
	.long	0x1d21
	.uleb128 0x14
	.ascii "system__tasking__normal\0"
	.byte	0
	.uleb128 0x14
	.ascii "system__tasking__abnormal\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "system__tasking__unhandled_exception\0"
	.byte	0x2
	.byte	0
	.uleb128 0x23
	.byte	0x8
	.long	0x1838
	.uleb128 0x24
	.byte	0x8
	.long	0x1c79
	.uleb128 0x25
	.ascii "system__tasking__debug_event_array\0"
	.byte	0x1
	.long	0xc62
	.long	0x1d61
	.uleb128 0x12
	.long	0x326
	.sleb128 16
	.byte	0
	.uleb128 0x1a
	.ascii "system__tasking__dispatching_domain_access\0"
	.byte	0x5
	.short	0x184
	.byte	0x9
	.long	0x1d95
	.uleb128 0x26
	.ascii "system__tasking__dispatching_domain\0"
	.byte	0x10
	.byte	0x5
	.short	0x17b
	.byte	0x9
	.long	0x1e0c
	.uleb128 0x27
	.set L$set$304,LASF0-Lsection__debug_str
	.long L$set$304
	.byte	0x5
	.short	0x184
	.byte	0x9
	.long	0x1dd1
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x1e0c
	.uleb128 0x28
	.byte	0x8
	.byte	0xd
	.byte	0x19
	.byte	0x31
	.long	0x1dfd
	.uleb128 0xe
	.ascii "LB0\0"
	.byte	0x5
	.short	0x17b
	.byte	0x9
	.long	0x1e2b
	.byte	0
	.uleb128 0xe
	.ascii "UB0\0"
	.byte	0x5
	.short	0x17b
	.byte	0x9
	.long	0x1e2b
	.byte	0x4
	.byte	0
	.uleb128 0x27
	.set L$set$305,LASF1-Lsection__debug_str
	.long L$set$305
	.byte	0x5
	.short	0x184
	.byte	0x9
	.long	0x1e50
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0xc62
	.long	0x1e2b
	.uleb128 0x29
	.long	0xca3
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
	.uleb128 0x22
	.sleb128 65535
	.ascii "system__multiprocessors__cpu\0"
	.long	0xca3
	.uleb128 0xc
	.byte	0x8
	.long	0x1dd7
	.uleb128 0x1f
	.ascii "system__tasking__entry_call_array\0"
	.long	0xd24
	.long	0x1e88
	.uleb128 0x12
	.long	0x326
	.sleb128 19
	.byte	0
	.uleb128 0x1a
	.ascii "system__tasking__accept_list_access\0"
	.byte	0x5
	.short	0x33c
	.byte	0x9
	.long	0x1eb5
	.uleb128 0x26
	.ascii "system__tasking__accept_list\0"
	.byte	0x10
	.byte	0x5
	.short	0x339
	.byte	0x9
	.long	0x1f26
	.uleb128 0x27
	.set L$set$306,LASF0-Lsection__debug_str
	.long L$set$306
	.byte	0x5
	.short	0x33c
	.byte	0x9
	.long	0x1eea
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x1f26
	.uleb128 0x2a
	.byte	0x8
	.byte	0x5
	.short	0x332
	.byte	0x2a
	.long	0x1f17
	.uleb128 0xe
	.ascii "LB0\0"
	.byte	0x5
	.short	0x339
	.byte	0x9
	.long	0x1f94
	.byte	0
	.uleb128 0xe
	.ascii "UB0\0"
	.byte	0x5
	.short	0x339
	.byte	0x9
	.long	0x1f94
	.byte	0x4
	.byte	0
	.uleb128 0x27
	.set L$set$307,LASF1-Lsection__debug_str
	.long L$set$307
	.byte	0x5
	.short	0x33c
	.byte	0x9
	.long	0x1fc5
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x1f45
	.long	0x1f45
	.uleb128 0x29
	.long	0x326
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
	.uleb128 0x16
	.ascii "system__tasking__accept_alternative\0"
	.byte	0x8
	.byte	0x5
	.short	0x334
	.byte	0x9
	.long	0x1f94
	.uleb128 0xe
	.ascii "null_body\0"
	.byte	0x5
	.short	0x335
	.byte	0x7
	.long	0xc62
	.byte	0
	.uleb128 0xe
	.ascii "s\0"
	.byte	0x5
	.short	0x336
	.byte	0x7
	.long	0x655
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.sleb128 2147483647
	.ascii "system__tasking__positive_select_index\0"
	.long	0x326
	.uleb128 0xc
	.byte	0x8
	.long	0x1ef0
	.uleb128 0xa
	.sleb128 0
	.sleb128 2147483647
	.ascii "system__tasking__select_index\0"
	.long	0x326
	.uleb128 0xa
	.sleb128 -2147483648
	.sleb128 2147483647
	.ascii "system__tasking__master_level\0"
	.long	0x326
	.uleb128 0xa
	.sleb128 -1
	.sleb128 20
	.ascii "system__tasking__atc_level_base\0"
	.long	0x326
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "system__tasking__task_serial_number\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "integer\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long_integer\0"
	.uleb128 0x1f
	.ascii "system__tasking__attribute_array\0"
	.long	0x22e
	.long	0x20bb
	.uleb128 0x12
	.long	0x326
	.sleb128 32
	.byte	0
	.uleb128 0x8
	.ascii "system__tasking__entry_queue\0"
	.byte	0x10
	.byte	0x5
	.byte	0xf4
	.byte	0x9
	.long	0x20fe
	.uleb128 0x9
	.ascii "head\0"
	.byte	0x5
	.byte	0xf5
	.byte	0x7
	.long	0xcf5
	.byte	0
	.uleb128 0x9
	.ascii "tail\0"
	.byte	0x5
	.byte	0xf6
	.byte	0x7
	.long	0xcf5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.ascii "system__tasking__protected_objects__protection\0"
	.byte	0x80
	.byte	0xe
	.byte	0xd8
	.byte	0x9
	.long	0x2177
	.uleb128 0x9
	.ascii "l\0"
	.byte	0xe
	.byte	0xd9
	.byte	0x7
	.long	0x2ca
	.byte	0
	.uleb128 0x9
	.ascii "ceiling\0"
	.byte	0xe
	.byte	0xdc
	.byte	0x7
	.long	0x30a
	.byte	0x70
	.uleb128 0x9
	.ascii "new_ceiling\0"
	.byte	0xe
	.byte	0xdf
	.byte	0x7
	.long	0x30a
	.byte	0x74
	.uleb128 0x9
	.ascii "owner\0"
	.byte	0xe
	.byte	0xe9
	.byte	0x7
	.long	0x331
	.byte	0x78
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x7
	.ascii "system__unsigned_types__packed_byte\0"
	.uleb128 0x28
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.long	0x21dc
	.uleb128 0x2b
	.set L$set$308,LASF2-Lsection__debug_str
	.long L$set$308
	.byte	0x2
	.byte	0xf
	.byte	0x7
	.long	0xc62
	.byte	0
	.uleb128 0x2b
	.set L$set$309,LASF3-Lsection__debug_str
	.long L$set$309
	.byte	0x2
	.byte	0x10
	.byte	0x7
	.long	0xc62
	.byte	0x1
	.uleb128 0x2b
	.set L$set$310,LASF4-Lsection__debug_str
	.long L$set$310
	.byte	0x2
	.byte	0x11
	.byte	0x7
	.long	0xccb
	.byte	0x4
	.uleb128 0x2b
	.set L$set$311,LASF5-Lsection__debug_str
	.long L$set$311
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.long	0x20fe
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "ada__real_time__time_span\0"
	.long	0x220f
	.uleb128 0x2c
	.byte	0x8
	.byte	0xd
	.sleb128 -9
	.ascii "ada__real_time__Ttime_spanB\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x7
	.ascii "system__atomic_primitives__uint8\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "system__atomic_primitives__uint32\0"
	.uleb128 0xa
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "ada__real_time__time\0"
	.long	0x22a6
	.uleb128 0x2c
	.byte	0x8
	.byte	0xd
	.sleb128 -9
	.ascii "ada__real_time__TtimeB\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "system__img_flt__impl__num\0"
	.uleb128 0xb
	.ascii "system__strings__string_access\0"
	.byte	0xf
	.byte	0x2b
	.byte	0x9
	.long	0x2306
	.uleb128 0x2d
	.ascii "string\0"
	.byte	0x10
	.byte	0x10
	.byte	0
	.long	0x2355
	.uleb128 0x2e
	.set L$set$312,LASF0-Lsection__debug_str
	.long L$set$312
	.byte	0x10
	.byte	0
	.long	0x2321
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x2355
	.uleb128 0x2f
	.byte	0x8
	.byte	0x10
	.byte	0
	.long	0x2348
	.uleb128 0x30
	.ascii "LB0\0"
	.byte	0x10
	.byte	0
	.long	0x1c19
	.byte	0
	.uleb128 0x30
	.ascii "UB0\0"
	.byte	0x10
	.byte	0
	.long	0x1c19
	.byte	0x4
	.byte	0
	.uleb128 0x2e
	.set L$set$313,LASF1-Lsection__debug_str
	.long L$set$313
	.byte	0x10
	.byte	0
	.long	0x2374
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0xce8
	.long	0x2374
	.uleb128 0x29
	.long	0x326
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
	.uleb128 0xc
	.byte	0x8
	.long	0x2327
	.uleb128 0x31
	.ascii "smc_daemon_state__daemon_state\0"
	.byte	0x2
	.byte	0x4
	.byte	0xe
	.long	0x219e
	.uleb128 0x9
	.byte	0x3
	.quad	_smc_daemon_state__daemon_state
	.uleb128 0x32
	.ascii "smc_daemon_state___elabs\0"
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.quad	LFB1
	.set L$set$314,LFE1-LFB1
	.quad L$set$314
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.ascii "smc_daemon_state___elabb\0"
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.quad	LFB0
	.set L$set$315,LFE0-LFB0
	.quad L$set$315
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.ascii "smc_daemon_state__thermal_suspender_tTB\0"
	.quad	LFB25
	.set L$set$316,LFE25-LFB25
	.quad L$set$316
	.uleb128 0x1
	.byte	0x9c
	.long	0x24b8
	.uleb128 0x34
	.ascii "_task\0"
	.long	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.ascii "_taskL\0"
	.long	0xce3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.ascii "success\0"
	.byte	0x1
	.byte	0xa4
	.byte	0x7
	.long	0xc62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x6
	.long	0x22df
	.long	0x2488
	.uleb128 0x12
	.long	0x326
	.sleb128 2
	.byte	0
	.uleb128 0x35
	.ascii "args\0"
	.byte	0x1
	.byte	0xa5
	.byte	0x7
	.long	0x2478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	LBB25
	.set L$set$317,LBE25-LBB25
	.quad L$set$317
	.uleb128 0x35
	.ascii "i\0"
	.byte	0x1
	.byte	0xaf
	.byte	0xb
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x8
	.byte	0x2
	.byte	0x16
	.byte	0x4
	.long	0x24cf
	.uleb128 0x2b
	.set L$set$318,LASF6-Lsection__debug_str
	.long L$set$318
	.byte	0x2
	.byte	0x16
	.byte	0x4
	.long	0x331
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.long	0x24b8
	.uleb128 0x37
	.long	0x24cf
	.uleb128 0x33
	.ascii "smc_daemon_state__latency_monitor_tTB\0"
	.quad	LFB21
	.set L$set$319,LFE21-LFB21
	.quad L$set$319
	.uleb128 0x1
	.byte	0x9c
	.long	0x29c6
	.uleb128 0x34
	.ascii "_task\0"
	.long	0x29e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1272
	.uleb128 0x34
	.ascii "_taskL\0"
	.long	0xce3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1276
	.uleb128 0x38
	.byte	0x1
	.byte	0x36
	.byte	0x7
	.long	0x2a05
	.uleb128 0x38
	.byte	0x1
	.byte	0x37
	.byte	0x7
	.long	0x2a1f
	.uleb128 0x35
	.ascii "start_time\0"
	.byte	0x1
	.byte	0x39
	.byte	0x7
	.long	0x2278
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.ascii "end_time\0"
	.byte	0x1
	.byte	0x39
	.byte	0x13
	.long	0x2278
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.ascii "elapsed\0"
	.byte	0x1
	.byte	0x3a
	.byte	0x7
	.long	0x21dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.ascii "val\0"
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.long	0x2a2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.ascii "smc_daemon_state__latency_monitor_t__latency_array\0"
	.long	0x2a2e
	.long	0x25d6
	.uleb128 0x12
	.long	0x326
	.sleb128 100
	.byte	0
	.uleb128 0x35
	.ascii "runs_history\0"
	.byte	0x1
	.byte	0x3e
	.byte	0x7
	.long	0x2592
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x35
	.ascii "run_idx\0"
	.byte	0x1
	.byte	0x3f
	.byte	0x7
	.long	0x1c19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1f
	.ascii "smc_daemon_state__latency_monitor_t__medians_array\0"
	.long	0x2a2e
	.long	0x2645
	.uleb128 0x12
	.long	0x326
	.sleb128 60
	.byte	0
	.uleb128 0x35
	.ascii "medians_history\0"
	.byte	0x1
	.byte	0x42
	.byte	0x7
	.long	0x2602
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x35
	.ascii "median_idx\0"
	.byte	0x1
	.byte	0x43
	.byte	0x7
	.long	0x1c19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x35
	.ascii "baseline\0"
	.byte	0x1
	.byte	0x45
	.byte	0x7
	.long	0x2a2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x35
	.ascii "current_latency\0"
	.byte	0x1
	.byte	0x46
	.byte	0x7
	.long	0x2a2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.ascii "current_median\0"
	.byte	0x1
	.byte	0x47
	.byte	0x7
	.long	0x2a2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.ascii "smc_daemon_state__latency_monitor_t__sort\0"
	.byte	0x1
	.byte	0x49
	.byte	0x7
	.quad	LFB22
	.set L$set$320,LFE22-LFB22
	.quad L$set$320
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x6
	.long	0x27c0
	.uleb128 0x23
	.byte	0x8
	.long	0x2592
	.uleb128 0x3a
	.ascii "arr\0"
	.byte	0x1
	.byte	0x49
	.byte	0x17
	.long	0x2709
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.ascii "temp\0"
	.byte	0x1
	.byte	0x4a
	.byte	0xa
	.long	0x2a2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x36
	.quad	LBB10
	.set L$set$321,LBE10-LBB10
	.quad L$set$321
	.uleb128 0x35
	.ascii "i\0"
	.byte	0x1
	.byte	0x4c
	.byte	0xe
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.quad	LBB11
	.set L$set$322,LBE11-LBB11
	.quad L$set$322
	.uleb128 0x3b
	.ascii "smc_daemon_state__latency_monitor_t__sort__L_2__T38b___L\0"
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x36
	.quad	LBB12
	.set L$set$323,LBE12-LBB12
	.quad L$set$323
	.uleb128 0x35
	.ascii "j\0"
	.byte	0x1
	.byte	0x4d
	.byte	0x11
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.ascii "smc_daemon_state__latency_monitor_t__sort_medians\0"
	.byte	0x1
	.byte	0x57
	.byte	0x7
	.quad	LFB23
	.set L$set$324,LFE23-LFB23
	.quad L$set$324
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0x6
	.long	0x28d0
	.uleb128 0x23
	.byte	0x8
	.long	0x2602
	.uleb128 0x3a
	.ascii "arr\0"
	.byte	0x1
	.byte	0x57
	.byte	0x1f
	.long	0x2811
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.ascii "temp\0"
	.byte	0x1
	.byte	0x58
	.byte	0xa
	.long	0x2a2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x36
	.quad	LBB21
	.set L$set$325,LBE21-LBB21
	.quad L$set$325
	.uleb128 0x35
	.ascii "i\0"
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.quad	LBB22
	.set L$set$326,LBE22-LBB22
	.quad L$set$326
	.uleb128 0x3b
	.ascii "smc_daemon_state__latency_monitor_t__sort_medians__L_4__T40b___L\0"
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x36
	.quad	LBB23
	.set L$set$327,LBE23-LBB23
	.quad L$set$327
	.uleb128 0x35
	.ascii "j\0"
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	LBB13
	.set L$set$328,LBE13-LBB13
	.quad L$set$328
	.uleb128 0x3c
	.quad	LBB14
	.set L$set$329,LBE14-LBB14
	.quad L$set$329
	.long	0x2904
	.uleb128 0x35
	.ascii "i\0"
	.byte	0x1
	.byte	0x6c
	.byte	0xe
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x3c
	.quad	LBB15
	.set L$set$330,LBE15-LBB15
	.quad L$set$330
	.long	0x2932
	.uleb128 0x35
	.ascii "sorted_runs\0"
	.byte	0x1
	.byte	0x79
	.byte	0x10
	.long	0x2592
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.byte	0
	.uleb128 0x3c
	.quad	LBB16
	.set L$set$331,LBE16-LBB16
	.quad L$set$331
	.long	0x2967
	.uleb128 0x6
	.long	0xce8
	.long	0x2958
	.uleb128 0x12
	.long	0x326
	.sleb128 78
	.byte	0
	.uleb128 0x3b
	.ascii "S65b\0"
	.long	0x2947
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.byte	0
	.uleb128 0x36
	.quad	LBB18
	.set L$set$332,LBE18-LBB18
	.quad L$set$332
	.uleb128 0x35
	.ascii "sorted_medians\0"
	.byte	0x1
	.byte	0x8b
	.byte	0x13
	.long	0x2602
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x36
	.quad	LBB19
	.set L$set$333,LBE19-LBB19
	.quad L$set$333
	.uleb128 0x6
	.long	0xce8
	.long	0x29b4
	.uleb128 0x12
	.long	0x326
	.sleb128 60
	.byte	0
	.uleb128 0x3b
	.ascii "S80b\0"
	.long	0x29a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1256
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x8
	.byte	0x2
	.byte	0x15
	.byte	0x4
	.long	0x29dd
	.uleb128 0x2b
	.set L$set$334,LASF6-Lsection__debug_str
	.long L$set$334
	.byte	0x2
	.byte	0x15
	.byte	0x4
	.long	0x331
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.long	0x29c6
	.uleb128 0x37
	.long	0x29dd
	.uleb128 0x3d
	.ascii "ada\0"
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.long	0x2a2e
	.uleb128 0x3d
	.ascii "numerics\0"
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.long	0x2a1f
	.uleb128 0x3e
	.ascii "elementary_functions\0"
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0x3e
	.ascii "real_time\0"
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x3f
	.ascii "smc_daemon_state__daemon_state__get_spike_countP\0"
	.long	0xccb
	.quad	LFB20
	.set L$set$335,LFE20-LFB20
	.quad L$set$335
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a90
	.uleb128 0x40
	.set L$set$336,LASF5-Lsection__debug_str
	.long L$set$336
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x23
	.byte	0x8
	.long	0x219e
	.uleb128 0x3f
	.ascii "smc_daemon_state__daemon_state__get_spike_countN\0"
	.long	0xccb
	.quad	LFB19
	.set L$set$337,LFE19-LFB19
	.quad L$set$337
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b28
	.uleb128 0x40
	.set L$set$338,LASF5-Lsection__debug_str
	.long L$set$338
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x41
	.set L$set$339,LASF3-Lsection__debug_str
	.long L$set$339
	.byte	0x2
	.byte	0x10
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x41
	.set L$set$340,LASF2-Lsection__debug_str
	.long L$set$340
	.byte	0x2
	.byte	0xf
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3b
	.ascii "R9b\0"
	.long	0x2b2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.set L$set$341,LASF4-Lsection__debug_str
	.long L$set$341
	.byte	0x2
	.byte	0x11
	.byte	0x7
	.long	0x2b34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.byte	0x8
	.long	0xc62
	.uleb128 0x23
	.byte	0x8
	.long	0x20fe
	.uleb128 0x23
	.byte	0x8
	.long	0xccb
	.uleb128 0x33
	.ascii "smc_daemon_state__daemon_state__reset_spikesP\0"
	.quad	LFB18
	.set L$set$342,LFE18-LFB18
	.quad L$set$342
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b8c
	.uleb128 0x40
	.set L$set$343,LASF5-Lsection__debug_str
	.long L$set$343
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x33
	.ascii "smc_daemon_state__daemon_state__reset_spikesN\0"
	.quad	LFB17
	.set L$set$344,LFE17-LFB17
	.quad L$set$344
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c29
	.uleb128 0x40
	.set L$set$345,LASF5-Lsection__debug_str
	.long L$set$345
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	LBB9
	.set L$set$346,LBE9-LBB9
	.quad L$set$346
	.uleb128 0x3b
	.ascii "R8b\0"
	.long	0x2b2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x41
	.set L$set$347,LASF2-Lsection__debug_str
	.long L$set$347
	.byte	0x2
	.byte	0xf
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x41
	.set L$set$348,LASF3-Lsection__debug_str
	.long L$set$348
	.byte	0x2
	.byte	0x10
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.set L$set$349,LASF4-Lsection__debug_str
	.long L$set$349
	.byte	0x2
	.byte	0x11
	.byte	0x7
	.long	0x2b34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x33
	.ascii "smc_daemon_state__daemon_state__register_spikeP\0"
	.quad	LFB16
	.set L$set$350,LFE16-LFB16
	.quad L$set$350
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c7d
	.uleb128 0x40
	.set L$set$351,LASF5-Lsection__debug_str
	.long L$set$351
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x33
	.ascii "smc_daemon_state__daemon_state__register_spikeN\0"
	.quad	LFB15
	.set L$set$352,LFE15-LFB15
	.quad L$set$352
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d1c
	.uleb128 0x40
	.set L$set$353,LASF5-Lsection__debug_str
	.long L$set$353
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	LBB8
	.set L$set$354,LBE8-LBB8
	.quad L$set$354
	.uleb128 0x3b
	.ascii "R7b\0"
	.long	0x2b2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x41
	.set L$set$355,LASF2-Lsection__debug_str
	.long L$set$355
	.byte	0x2
	.byte	0xf
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x41
	.set L$set$356,LASF3-Lsection__debug_str
	.long L$set$356
	.byte	0x2
	.byte	0x10
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.set L$set$357,LASF4-Lsection__debug_str
	.long L$set$357
	.byte	0x2
	.byte	0x11
	.byte	0x7
	.long	0x2b34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3f
	.ascii "smc_daemon_state__daemon_state__is_turbo_activeP\0"
	.long	0xc62
	.quad	LFB14
	.set L$set$358,LFE14-LFB14
	.quad L$set$358
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d75
	.uleb128 0x40
	.set L$set$359,LASF5-Lsection__debug_str
	.long L$set$359
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x3f
	.ascii "smc_daemon_state__daemon_state__is_turbo_activeN\0"
	.long	0xc62
	.quad	LFB13
	.set L$set$360,LFE13-LFB13
	.quad L$set$360
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e07
	.uleb128 0x40
	.set L$set$361,LASF5-Lsection__debug_str
	.long L$set$361
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x41
	.set L$set$362,LASF2-Lsection__debug_str
	.long L$set$362
	.byte	0x2
	.byte	0xf
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3b
	.ascii "R5b\0"
	.long	0x2b2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x41
	.set L$set$363,LASF3-Lsection__debug_str
	.long L$set$363
	.byte	0x2
	.byte	0x10
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.set L$set$364,LASF4-Lsection__debug_str
	.long L$set$364
	.byte	0x2
	.byte	0x11
	.byte	0x7
	.long	0x2b34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.ascii "smc_daemon_state__daemon_state__set_turboP\0"
	.quad	LFB12
	.set L$set$365,LFE12-LFB12
	.quad L$set$365
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e68
	.uleb128 0x40
	.set L$set$366,LASF5-Lsection__debug_str
	.long L$set$366
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3a
	.ascii "active\0"
	.byte	0x2
	.byte	0x8
	.byte	0x1c
	.long	0xc72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x33
	.ascii "smc_daemon_state__daemon_state__set_turboN\0"
	.quad	LFB11
	.set L$set$367,LFE11-LFB11
	.quad L$set$367
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f14
	.uleb128 0x40
	.set L$set$368,LASF5-Lsection__debug_str
	.long L$set$368
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3a
	.ascii "active\0"
	.byte	0x2
	.byte	0x8
	.byte	0x1c
	.long	0xc72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x36
	.quad	LBB7
	.set L$set$369,LBE7-LBB7
	.quad L$set$369
	.uleb128 0x3b
	.ascii "R4b\0"
	.long	0x2b2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x41
	.set L$set$370,LASF2-Lsection__debug_str
	.long L$set$370
	.byte	0x2
	.byte	0xf
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x41
	.set L$set$371,LASF3-Lsection__debug_str
	.long L$set$371
	.byte	0x2
	.byte	0x10
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.set L$set$372,LASF4-Lsection__debug_str
	.long L$set$372
	.byte	0x2
	.byte	0x11
	.byte	0x7
	.long	0x2b34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3f
	.ascii "smc_daemon_state__daemon_state__should_keep_runningP\0"
	.long	0xc62
	.quad	LFB10
	.set L$set$373,LFE10-LFB10
	.quad L$set$373
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f71
	.uleb128 0x40
	.set L$set$374,LASF5-Lsection__debug_str
	.long L$set$374
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x3f
	.ascii "smc_daemon_state__daemon_state__should_keep_runningN\0"
	.long	0xc62
	.quad	LFB9
	.set L$set$375,LFE9-LFB9
	.quad L$set$375
	.uleb128 0x1
	.byte	0x9c
	.long	0x3007
	.uleb128 0x40
	.set L$set$376,LASF5-Lsection__debug_str
	.long L$set$376
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3b
	.ascii "R2b\0"
	.long	0x2b2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x41
	.set L$set$377,LASF2-Lsection__debug_str
	.long L$set$377
	.byte	0x2
	.byte	0xf
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x41
	.set L$set$378,LASF3-Lsection__debug_str
	.long L$set$378
	.byte	0x2
	.byte	0x10
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.set L$set$379,LASF4-Lsection__debug_str
	.long L$set$379
	.byte	0x2
	.byte	0x11
	.byte	0x7
	.long	0x2b34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.ascii "smc_daemon_state__daemon_state__request_shutdownP\0"
	.quad	LFB8
	.set L$set$380,LFE8-LFB8
	.quad L$set$380
	.uleb128 0x1
	.byte	0x9c
	.long	0x305d
	.uleb128 0x40
	.set L$set$381,LASF5-Lsection__debug_str
	.long L$set$381
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x42
	.ascii "smc_daemon_state__daemon_state__request_shutdownN\0"
	.quad	LFB7
	.set L$set$382,LFE7-LFB7
	.quad L$set$382
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x40
	.set L$set$383,LASF5-Lsection__debug_str
	.long L$set$383
	.long	0x2a90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	LBB6
	.set L$set$384,LBE6-LBB6
	.quad L$set$384
	.uleb128 0x3b
	.ascii "R1b\0"
	.long	0x2b2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x41
	.set L$set$385,LASF2-Lsection__debug_str
	.long L$set$385
	.byte	0x2
	.byte	0xf
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x41
	.set L$set$386,LASF3-Lsection__debug_str
	.long L$set$386
	.byte	0x2
	.byte	0x10
	.byte	0x7
	.long	0x2b28
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x41
	.set L$set$387,LASF4-Lsection__debug_str
	.long L$set$387
	.byte	0x2
	.byte	0x11
	.byte	0x7
	.long	0x2b34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.uleb128 0x2f
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.uleb128 0xd
	.uleb128 0x2f
	.uleb128 0xd
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.uleb128 0x2f
	.uleb128 0x6
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x2e
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x48
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x40
	.uleb128 0x5
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.byte	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0x3d9
	.short	0x2
	.set L$set$388,Ldebug_info0-Lsection__debug_info
	.long L$set$388
	.long	0x30fb
	.long	0x237a
	.ascii "smc_daemon_state__daemon_state\0"
	.long	0x23ab
	.ascii "smc_daemon_state___elabs\0"
	.long	0x23da
	.ascii "smc_daemon_state___elabb\0"
	.long	0x2409
	.ascii "smc_daemon_state__thermal_suspender_tTB\0"
	.long	0x24da
	.ascii "smc_daemon_state__latency_monitor_tTB\0"
	.long	0x29e8
	.ascii "ada\0"
	.long	0x29f4
	.ascii "numerics\0"
	.long	0x2a05
	.ascii "elementary_functions\0"
	.long	0x2a1f
	.ascii "real_time\0"
	.long	0x2a37
	.ascii "smc_daemon_state__daemon_state__get_spike_countP\0"
	.long	0x2a96
	.ascii "smc_daemon_state__daemon_state__get_spike_countN\0"
	.long	0x2b3a
	.ascii "smc_daemon_state__daemon_state__reset_spikesP\0"
	.long	0x2b8c
	.ascii "smc_daemon_state__daemon_state__reset_spikesN\0"
	.long	0x2c29
	.ascii "smc_daemon_state__daemon_state__register_spikeP\0"
	.long	0x2c7d
	.ascii "smc_daemon_state__daemon_state__register_spikeN\0"
	.long	0x2d1c
	.ascii "smc_daemon_state__daemon_state__is_turbo_activeP\0"
	.long	0x2d75
	.ascii "smc_daemon_state__daemon_state__is_turbo_activeN\0"
	.long	0x2e07
	.ascii "smc_daemon_state__daemon_state__set_turboP\0"
	.long	0x2e68
	.ascii "smc_daemon_state__daemon_state__set_turboN\0"
	.long	0x2f14
	.ascii "smc_daemon_state__daemon_state__should_keep_runningP\0"
	.long	0x2f71
	.ascii "smc_daemon_state__daemon_state__should_keep_runningN\0"
	.long	0x3007
	.ascii "smc_daemon_state__daemon_state__request_shutdownP\0"
	.long	0x305d
	.ascii "smc_daemon_state__daemon_state__request_shutdownN\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x81c
	.short	0x2
	.set L$set$389,Ldebug_info0-Lsection__debug_info
	.long L$set$389
	.long	0x30fb
	.long	0x21b
	.ascii "system__address\0"
	.long	0x24e
	.ascii "interfaces__c__TcharB\0"
	.long	0x267
	.ascii "interfaces__c__size_t\0"
	.long	0x290
	.ascii "system__os_locks__pthread_mutex_t\0"
	.long	0x2ca
	.ascii "system__task_primitives__lock\0"
	.long	0x326
	.ascii "integer\0"
	.long	0x980
	.ascii "system__tasking__task_states\0"
	.long	0xc62
	.ascii "boolean\0"
	.long	0xce8
	.ascii "character\0"
	.long	0xeb9
	.ascii "system__tasking__call_modes\0"
	.long	0xf65
	.ascii "system__tasking__entry_call_state\0"
	.long	0x1148
	.ascii "system__standard_library__exception_data_ptr\0"
	.long	0x117d
	.ascii "system__standard_library__raise_action\0"
	.long	0x1082
	.ascii "system__standard_library__exception_data\0"
	.long	0x1056
	.ascii "ada__exceptions__exception_id\0"
	.long	0xd24
	.ascii "system__tasking__entry_call_record\0"
	.long	0xcf5
	.ascii "system__tasking__entry_call_link\0"
	.long	0x1302
	.ascii "system__os_interface__pthread_cond_t\0"
	.long	0x124b
	.ascii "system__task_primitives__private_data\0"
	.long	0x13c6
	.ascii "system__tasking__task_procedure_access\0"
	.long	0x148d
	.ascii "system__stack_checking__stack_info\0"
	.long	0x180b
	.ascii "system__storage_elements__storage_element\0"
	.long	0x1778
	.ascii "system__secondary_stack__ss_chunk\0"
	.long	0x1743
	.ascii "system__secondary_stack__ss_chunk_ptr\0"
	.long	0x16bc
	.ascii "system__secondary_stack__stack_pointer\0"
	.long	0x1589
	.ascii "system__secondary_stack__ss_stack\0"
	.long	0x1555
	.ascii "system__secondary_stack__ss_stack_ptr\0"
	.long	0x1923
	.ascii "ada__exceptions__tracebacks_array\0"
	.long	0x1838
	.ascii "ada__exceptions__exception_occurrence\0"
	.long	0x1407
	.ascii "system__soft_links__tsd\0"
	.long	0x198e
	.ascii "system__tasking__access_boolean\0"
	.long	0x1ba5
	.ascii "system__storage_elements__integer_address\0"
	.long	0x1bfe
	.ascii "interfaces__unsigned_32\0"
	.long	0x1a61
	.ascii "system__stack_usage__stack_analyzer\0"
	.long	0x1c93
	.ascii "system__tasking__cause_of_termination\0"
	.long	0x1c2c
	.ascii "system__tasking__termination_handler\0"
	.long	0x1d2d
	.ascii "system__tasking__debug_event_array\0"
	.long	0x1d95
	.ascii "system__tasking__dispatching_domain\0"
	.long	0x1d61
	.ascii "system__tasking__dispatching_domain_access\0"
	.long	0x6a9
	.ascii "system__tasking__common_atcb\0"
	.long	0x1e56
	.ascii "system__tasking__entry_call_array\0"
	.long	0x1f45
	.ascii "system__tasking__accept_alternative\0"
	.long	0x1eb5
	.ascii "system__tasking__accept_list\0"
	.long	0x1e88
	.ascii "system__tasking__accept_list_access\0"
	.long	0x2048
	.ascii "system__tasking__task_serial_number\0"
	.long	0x206f
	.ascii "integer\0"
	.long	0x207a
	.ascii "long_integer\0"
	.long	0x208a
	.ascii "system__tasking__attribute_array\0"
	.long	0x20bb
	.ascii "system__tasking__entry_queue\0"
	.long	0x35d
	.ascii "system__tasking__ada_task_control_block\0"
	.long	0x331
	.ascii "system__tasking__task_id\0"
	.long	0x20fe
	.ascii "system__tasking__protected_objects__protection\0"
	.long	0x2177
	.ascii "system__unsigned_types__packed_byte\0"
	.long	0x222f
	.ascii "system__atomic_primitives__uint8\0"
	.long	0x2253
	.ascii "system__atomic_primitives__uint32\0"
	.long	0x22c1
	.ascii "system__img_flt__impl__num\0"
	.long	0x2306
	.ascii "string\0"
	.long	0x22df
	.ascii "system__strings__string_access\0"
	.long	0x2a2e
	.ascii "float\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x3c
	.short	0x2
	.set L$set$390,Ldebug_info0-Lsection__debug_info
	.long L$set$390
	.byte	0x8
	.byte	0
	.short	0
	.short	0
	.quad	Ltext0
	.set L$set$391,LFE23-Ltext0
	.quad L$set$391
	.quad	LFB25
	.set L$set$392,Letext0-LFB25
	.quad L$set$392
	.quad	0
	.quad	0
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
Ldebug_ranges0:
	.quad	Ltext0
	.quad	LFE23
	.quad	LFB25
	.quad	Letext0
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
LASF1:
	.ascii "P_BOUNDS\0"
LASF4:
	.ascii "spike_count\0"
LASF3:
	.ascii "turbo_active\0"
LASF0:
	.ascii "P_ARRAY\0"
LASF2:
	.ascii "keep_running\0"
LASF6:
	.ascii "_task_id\0"
LASF5:
	.ascii "_object\0"
	.ident	"GCC: (GNU) 15.0.1 20250418 (prerelease)"
	.subsections_via_symbols
