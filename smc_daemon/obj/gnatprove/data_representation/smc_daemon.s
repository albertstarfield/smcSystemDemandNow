	.arch armv8.5-a
	.build_version macos,  14, 0
	.text
Ltext0:
	.file 1 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_daemon.adb"
	.const
	.align	3
lC52:
	.ascii "[DAEMON] Standard Unix Signal ("
	.align	3
lC53:
	.ascii ") caught. Commencing restoration..."
	.align	3
lC54:
	.ascii "smc_daemon.adb"
	.space 1
	.text
	.align	2
_smc_daemon__handle_signal.0:
LFB2:
	.loc 1 39 4
	stp	x29, x30, [sp, -336]!
LCFI0:
	mov	x29, sp
LCFI1:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
LCFI2:
	str	w0, [x29, 220]
	str	x16, [x29, 208]
LBB2:
	.loc 1 41 56
	add	x0, x29, 304
	mov	x2, x0
	adrp	x0, lC8@PAGE
	add	x3, x0, lC8@PAGEOFF;
	mov	x1, x2
	mov	x2, x3
	ldr	w0, [x29, 220]
	bl	_system__img_int__impl__image_integer
	.loc 1 41 56 is_stmt 0 discriminator 3
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x2, x25, 3
	str	x2, [x29, 200]
	ldr	x2, [x29, 200]
	add	x1, x1, x2
	str	x1, [x29, 200]
	lsl	x1, x24, 3
	str	x1, [x29, 192]
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
	.loc 1 41 69 is_stmt 1 discriminator 3
	bic	w1, w0, w0, asr #31
	add	w1, w1, 31
	add	w19, w1, 35
LBB3:
	add	x1, x29, 224
	str	x1, [x29, 96]
	adrp	x1, lC17@PAGE
	add	x1, x1, lC17@PAGEOFF;
	str	x1, [x29, 104]
	adrp	x1, lC52@PAGE
	add	x1, x1, lC52@PAGEOFF;
	str	x1, [x29, 112]
	adrp	x1, lC50@PAGE
	add	x1, x1, lC50@PAGEOFF;
	str	x1, [x29, 120]
	add	x1, x29, 304
	str	x1, [x29, 128]
	mov	w1, 1
	str	w1, [x29, 320]
	str	w0, [x29, 324]
	add	x0, x29, 320
	str	x0, [x29, 136]
	adrp	x0, lC53@PAGE
	add	x0, x0, lC53@PAGEOFF;
	str	x0, [x29, 144]
	adrp	x0, lC51@PAGE
	add	x0, x0, lC51@PAGEOFF;
	str	x0, [x29, 152]
	ldp	x6, x7, [x29, 144]
	ldp	x4, x5, [x29, 128]
	ldp	x2, x3, [x29, 112]
	ldp	x0, x1, [x29, 96]
	bl	_system__concat_3__str_concat_3
LBE3:
	.loc 1 41 69 is_stmt 0 discriminator 6
	cmp	w19, 77
	ble	L2
	.loc 1 41 69 discriminator 7
	mov	w1, 41
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L2:
	.loc 1 41 69 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x0, x20, 61
	lsl	x27, x21, 3
	mov	x1, x27
	add	x0, x0, x1
	mov	x27, x0
	lsl	x26, x20, 3
	.loc 1 41 7 is_stmt 1 discriminator 8
	add	x0, x29, 224
	str	x0, [x29, 160]
	mov	w0, 1
	str	w0, [x29, 328]
	str	w19, [x29, 332]
	add	x0, x29, 328
	str	x0, [x29, 168]
	ldp	x0, x1, [x29, 160]
	bl	_ada__text_io__put_line__2
LBE2:
	.loc 1 42 19
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__request_shutdownP
	.loc 1 43 8
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 336
LCFI3:
	ret
LFE2:
	.const
	.align	2
lC8:
	.word	1
	.word	11
	.align	2
lC17:
	.word	1
	.word	77
	.align	2
lC50:
	.word	1
	.word	31
	.align	2
lC51:
	.word	1
	.word	35
	.text
	.const
	.align	3
lC55:
	.ascii "F0Tg"
	.align	3
lC56:
	.ascii "F1Tg"
	.align	3
lC57:
	.ascii "F0Md"
	.align	3
lC58:
	.ascii "F1Md"
	.align	3
lC59:
	.ascii "F0Ac"
	.align	3
lC60:
	.ascii "F1Ac"
	.align	3
lC61:
	.ascii "01"
	.align	3
lC62:
	.ascii "00"
	.align	3
lC63:
	.ascii "[DAEMON] Apple Silicon SPARK Daemon starting up..."
	.align	3
lC64:
	.ascii "[FATAL] This daemon must be run as root (sudo) to interact with kernel and SMC keys."
	.align	3
lC65:
	.ascii "[DAEMON] Standard Unix SIGINT and SIGTERM handlers registered."
	.align	3
lC66:
	.ascii "[DAEMON] Background tasks successfully activated."
	.align	3
lC67:
	.ascii "[FATAL] Failed to open AppleSMC connection. Kern_return: "
	.align	3
lC68:
	.ascii "[DAEMON] AppleSMC connection successfully established."
	.align	3
lC70:
	.ascii "/bin/launchctl"
	.align	3
lC71:
	.ascii "[DAEMON] OS Thermalmonitord com.apple.thermalmonitord plist unload requested."
	.align	3
lC75:
	.ascii "[DAEMON] Bootstrapping Machine Learning sidecar: "
	.align	3
lC76:
	.ascii "[WARNING] ML Python sidecar spawn returned Invalid_Pid."
	.align	3
lC77:
	.ascii "[DAEMON] Fan manual override taking effect (takeover keys set to 01)."
	.align	3
lC78:
	.ascii "[CALIBRATION] Loaded pinned 1006 hPa reference fan speed: "
	.align	3
lC79:
	.ascii " RPM."
	.align	3
lC80:
	.ascii "[CALIBRATION] No reference RPM found. Standard sea-level reference (1006 hPa) will remain active."
	.align	3
lC81:
	.ascii "BOOTSTRAP"
	.align	3
lC82:
	.ascii "Ada/SPARK SMC Telemetry Engine and Controller loaded successfully."
	.align	3
lC83:
	.ascii "TCMz"
	.align	3
lC84:
	.ascii "Tg0X"
	.align	3
lC85:
	.ascii "TaLP"
	.align	3
lC86:
	.ascii "TaRF"
	.align	3
lC87:
	.ascii "TaLT"
	.align	3
lC88:
	.ascii "TaLW"
	.align	3
lC89:
	.ascii "TaRT"
	.align	3
lC90:
	.ascii "TaRW"
	.align	3
lC91:
	.ascii "TS0P"
	.align	3
lC92:
	.ascii "Ts0P"
	.align	3
lC93:
	.ascii "TW0P"
	.align	3
lC94:
	.ascii "TS1P"
	.align	3
lC95:
	.ascii "Ts1P"
	.align	3
lC96:
	.ascii "TW1P"
	.align	3
lC97:
	.ascii "PSTR"
	.align	3
lC98:
	.ascii "TB0T"
	.align	3
lC99:
	.ascii "SAFETY"
	.align	3
lC100:
	.ascii "Significant spatial movement detected. Deactivating Turbo Mode."
	.align	3
lC101:
	.ascii "TURBO"
	.align	3
lC102:
	.ascii "Latency spikes detected by monitor. Engaging Turbo Performance profiles."
	.align	3
lC103:
	.ascii "[CALIBRATION] Calibration complete. Estimated atmospheric pressure: "
	.align	3
lC104:
	.ascii " hPa."
	.align	3
lC105:
	.ascii "[CALIBRATION] Calibration complete. Pinned reference speed: "
	.align	3
lC106:
	.ascii "Ts0p"
	.align	3
lC107:
	.ascii "Ts1p"
	.align	3
lC108:
	.ascii "[RESTORATION] Commencing system restoration procedures..."
	.align	3
lC109:
	.ascii "/usr/bin/pkill"
	.align	3
lC110:
	.ascii "[RESTORATION] Background ML Python sidecar killed."
	.align	3
lC112:
	.ascii "[RESTORATION] Thermalmonitord com.apple.thermalmonitord plist reload requested."
	.align	3
lC113:
	.ascii "[RESTORATION] Fan manual override released (auto keys restored)."
	.align	3
lC114:
	.ascii "[RESTORATION] AppleSMC connection closed safely."
	.align	3
lC115:
	.ascii "RESTORATION"
	.align	3
lC116:
	.ascii "Ada/SPARK SMC Telemetry Engine shut down and clean state restored."
	.align	3
lC117:
	.ascii "[DAEMON] Shutdown successfully completed. Goodbye!"
	.align	3
lC118:
	.ascii "[WARNING] ML Python sidecar bootstrap failed or venv not yet configured. Moving on..."
	.text
	.align	2
	.globl __ada_smc_daemon
__ada_smc_daemon:
LFB1:
	.loc 1 15 1
	sub	sp, sp, #3840
LCFI4:
	stp	x29, x30, [sp, 16]
LCFI5:
	add	x29, sp, 16
LCFI6:
LEHB0:
LEHE0:
	stp	x19, x20, [sp, 32]
	stp	x21, x22, [sp, 48]
	stp	x23, x24, [sp, 64]
	stp	x25, x26, [sp, 80]
	stp	x27, x28, [sp, 96]
LCFI7:
	.loc 1 15 1
	add	x0, x29, 3824
	.loc 1 15 1 is_stmt 0 discriminator 2
	str	x0, [x29, 3240]
	add	x0, x29, 3184
	add	x0, x0, 48
	add	x3, x29, 3184
	mov	x2, x0
	adrp	x0, _smc_daemon__handle_signal.0@PAGE
	add	x1, x0, _smc_daemon__handle_signal.0@PAGEOFF;
	mov	x0, x3
	bl	___gcc_nested_func_ptr_created
	.loc 1 15 1 discriminator 3
	adrp	x0, _system__soft_links__enter_master@GOTPAGE
	ldr	x0, [x0, _system__soft_links__enter_master@GOTPAGEOFF]
	ldr	x0, [x0]
LEHB1:
	blr	x0
LVL0:
	.loc 1 113 9 is_stmt 1
	adrp	x0, _system__soft_links__current_master@GOTPAGE
	ldr	x0, [x0, _system__soft_links__current_master@GOTPAGEOFF]
	ldr	x0, [x0]
	blr	x0
LVL1:
	mov	w28, w0
	.loc 1 46 4
	mov	w0, 0
	str	w0, [x29, 3224]
	.loc 1 50 28
	adrp	x0, lC55@PAGE
	add	x20, x0, lC55@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x21, x0, lC0@PAGEOFF;
	mov	x0, x20
	mov	x1, x21
	bl	_interfaces__c__strings__new_string
	.loc 1 50 28 is_stmt 0 discriminator 2
	str	x0, [x29, 3688]
	.loc 1 51 28 is_stmt 1
	adrp	x0, lC56@PAGE
	add	x22, x0, lC56@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x23, x0, lC0@PAGEOFF;
	mov	x0, x22
	mov	x1, x23
	bl	_interfaces__c__strings__new_string
	.loc 1 51 28 is_stmt 0 discriminator 2
	str	x0, [x29, 3680]
	.loc 1 52 28 is_stmt 1
	adrp	x0, lC57@PAGE
	add	x24, x0, lC57@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x25, x0, lC0@PAGEOFF;
	mov	x0, x24
	mov	x1, x25
	bl	_interfaces__c__strings__new_string
	.loc 1 52 28 is_stmt 0 discriminator 2
	str	x0, [x29, 3672]
	.loc 1 53 28 is_stmt 1
	adrp	x0, lC58@PAGE
	add	x26, x0, lC58@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x27, x0, lC0@PAGEOFF;
	mov	x0, x26
	mov	x1, x27
	bl	_interfaces__c__strings__new_string
	.loc 1 53 28 is_stmt 0 discriminator 2
	str	x0, [x29, 3664]
	.loc 1 54 28 is_stmt 1
	adrp	x0, lC59@PAGE
	add	x0, x0, lC59@PAGEOFF;
	str	x0, [x29, 160]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 168]
	ldp	x0, x1, [x29, 160]
	bl	_interfaces__c__strings__new_string
	.loc 1 54 28 is_stmt 0 discriminator 2
	str	x0, [x29, 3656]
	.loc 1 55 28 is_stmt 1
	adrp	x0, lC60@PAGE
	add	x0, x0, lC60@PAGEOFF;
	str	x0, [x29, 176]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 184]
	ldp	x0, x1, [x29, 176]
	bl	_interfaces__c__strings__new_string
	.loc 1 55 28 is_stmt 0 discriminator 2
	str	x0, [x29, 3648]
	.loc 1 57 28 is_stmt 1
	adrp	x0, lC61@PAGE
	add	x0, x0, lC61@PAGEOFF;
	str	x0, [x29, 192]
	adrp	x0, lC1@PAGE
	add	x0, x0, lC1@PAGEOFF;
	str	x0, [x29, 200]
	ldp	x0, x1, [x29, 192]
	bl	_interfaces__c__strings__new_string
	.loc 1 57 28 is_stmt 0 discriminator 2
	str	x0, [x29, 3640]
	.loc 1 58 28 is_stmt 1
	adrp	x0, lC62@PAGE
	add	x0, x0, lC62@PAGEOFF;
	str	x0, [x29, 208]
	adrp	x0, lC1@PAGE
	add	x0, x0, lC1@PAGEOFF;
	str	x0, [x29, 216]
	ldp	x0, x1, [x29, 208]
	bl	_interfaces__c__strings__new_string
	.loc 1 58 28 is_stmt 0 discriminator 2
	str	x0, [x29, 3632]
	.loc 1 61 4 is_stmt 1
	str	wzr, [x29, 3628]
	.loc 1 62 4
	str	wzr, [x29, 3820]
	.loc 1 63 4
	str	wzr, [x29, 3816]
	.loc 1 65 4
	str	wzr, [x29, 3812]
	.loc 1 66 4
	mov	w0, 100
	str	w0, [x29, 3624]
	.loc 1 68 4
	str	wzr, [x29, 3284]
	.loc 1 69 4
	str	wzr, [x29, 3280]
	.loc 1 71 4
	mov	w0, 32768
	movk	w0, 0x453b, lsl 16
	fmov	s31, w0
	str	s31, [x29, 3808]
	.loc 1 72 4
	str	wzr, [x29, 3620]
	.loc 1 73 4
	mov	w0, 32768
	movk	w0, 0x453b, lsl 16
	fmov	s31, w0
	str	s31, [x29, 3616]
	.loc 1 75 4
	str	wzr, [x29, 3264]
	str	wzr, [x29, 3268]
	strb	wzr, [x29, 3272]
	.loc 1 78 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 3804]
	.loc 1 79 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 3800]
	.loc 1 80 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 3796]
	.loc 1 81 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 3792]
	.loc 1 82 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 3788]
	.loc 1 83 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 3784]
	.loc 1 84 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 3780]
	.loc 1 85 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 3776]
	.loc 1 86 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 3772]
	.loc 1 87 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 3768]
	.loc 1 90 47
	bl	_ada__calendar__clock
	.loc 1 90 47 is_stmt 0 discriminator 2
	str	x0, [x29, 3760]
	.loc 1 94 4 is_stmt 1
	str	wzr, [x29, 3756]
	.loc 1 94 12
	str	wzr, [x29, 3752]
	.loc 1 94 20
	str	wzr, [x29, 3748]
	.loc 1 95 4
	str	wzr, [x29, 3612]
	.loc 1 95 8
	str	wzr, [x29, 3608]
	.loc 1 95 12
	str	wzr, [x29, 3604]
	.loc 1 96 4
	strb	wzr, [x29, 3747]
	.loc 1 101 4
	str	wzr, [x29, 3740]
	.loc 1 102 4
	strb	wzr, [x29, 3739]
	.loc 1 104 4
	str	wzr, [x29, 3724]
	.loc 1 105 4
	str	wzr, [x29, 3720]
	.loc 1 109 4
	strb	wzr, [x29, 3719]
	.loc 1 110 4
	add	x0, x29, 3248
	str	x0, [x29, 224]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 232]
	ldp	x0, x1, [x29, 224]
	bl	_system__strings__string_listIP
	.loc 1 116 4
	str	xzr, [x29, 3592]
	.loc 1 117 4
	str	xzr, [x29, 3584]
	.loc 1 179 4
	str	xzr, [x29, 3576]
	.loc 1 180 4
	str	xzr, [x29, 3568]
LBB4:
	.loc 1 183 4
	adrp	x0, lC63@PAGE
	add	x0, x0, lC63@PAGEOFF;
	str	x0, [x29, 240]
	adrp	x0, lC3@PAGE
	add	x0, x0, lC3@PAGEOFF;
	str	x0, [x29, 248]
	ldp	x0, x1, [x29, 240]
	bl	_ada__text_io__put_line__2
LBE4:
	.loc 1 186 7
	bl	_geteuid
	.loc 1 186 4 discriminator 2
	cmp	w0, 0
	beq	L5
LBB5:
	.loc 1 187 7
	adrp	x0, lC64@PAGE
	add	x0, x0, lC64@PAGEOFF;
	str	x0, [x29, 256]
	adrp	x0, lC4@PAGE
	add	x0, x0, lC4@PAGEOFF;
	str	x0, [x29, 264]
	ldp	x0, x1, [x29, 256]
	bl	_ada__text_io__put_line__2
LBE5:
	.loc 1 188 18
	mov	w0, 1
	bl	_system__os_lib__os_exit
L5:
	.loc 1 192 18
	ldr	x0, [x29, 3232]
	mov	x1, x0
	mov	w0, 2
	bl	_signal
	.loc 1 192 18 is_stmt 0 discriminator 2
	str	x0, [x29, 3576]
	.loc 1 193 19 is_stmt 1
	ldr	x0, [x29, 3232]
	mov	x1, x0
	mov	w0, 15
	bl	_signal
	.loc 1 193 19 is_stmt 0 discriminator 2
	str	x0, [x29, 3568]
LBB6:
	.loc 1 194 4 is_stmt 1
	adrp	x0, lC65@PAGE
	add	x0, x0, lC65@PAGEOFF;
	str	x0, [x29, 272]
	adrp	x0, lC5@PAGE
	add	x0, x0, lC5@PAGEOFF;
	str	x0, [x29, 280]
	ldp	x0, x1, [x29, 272]
	bl	_ada__text_io__put_line__2
LBE6:
	.loc 1 197 15
	mov	x0, 8
	bl	___gnat_malloc
LEHE1:
	mov	x20, x0
LBB7:
	.loc 1 197 15 is_stmt 0 discriminator 2
	add	x0, x29, 3184
	add	x0, x0, 32
	mov	w1, 2
LEHB2:
	bl	_system__tasking__activation_chainIP
	.loc 1 197 15 discriminator 4
	adrp	x0, _lm_taskT1.13@PAGE
	add	x0, x0, _lm_taskT1.13@PAGEOFF;
	str	x0, [x29, 288]
	adrp	x0, lC6@PAGE
	add	x0, x0, lC6@PAGEOFF;
	str	x0, [x29, 296]
	add	x0, x29, 3184
	add	x0, x0, 32
	mov	w5, 0
	ldp	x3, x4, [x29, 288]
	mov	x2, x0
	mov	w1, w28
	mov	x0, x20
	bl	_smc_daemon_state__latency_monitor_tVIP
	.loc 1 197 15 discriminator 6
	add	x0, x29, 3184
	add	x0, x0, 32
	bl	_system__tasking__stages__activate_tasks
LEHE2:
	.loc 1 197 0 is_stmt 1 discriminator 8
	mov	w19, 1
L129:
	.loc 1 197 0 is_stmt 0 discriminator 9
	add	x0, x29, 3184
	mov	x16, x0
LEHB3:
	bl	_smc_daemon__A129b___finalizer.1
LEHE3:
	.loc 1 197 0 discriminator 11
	cmp	w19, 1
	bne	L6
	.loc 1 197 0
	mov	w0, 1
L131:
	.loc 1 197 0 discriminator 12
	cmp	w0, 1
	bne	L7
	.loc 1 197 0
	nop
LBE7:
	.loc 1 197 12 is_stmt 1
	str	x20, [x29, 3592]
	.loc 1 198 15
	mov	x0, 8
LEHB4:
	bl	___gnat_malloc
LEHE4:
	mov	x20, x0
LBB8:
	.loc 1 198 15 is_stmt 0 discriminator 2
	add	x0, x29, 3184
	add	x0, x0, 24
	mov	w1, 2
LEHB5:
	bl	_system__tasking__activation_chainIP
	.loc 1 198 15 discriminator 4
	adrp	x0, _ts_taskT1.12@PAGE
	add	x0, x0, _ts_taskT1.12@PAGEOFF;
	str	x0, [x29, 304]
	adrp	x0, lC6@PAGE
	add	x0, x0, lC6@PAGEOFF;
	str	x0, [x29, 312]
	add	x0, x29, 3184
	add	x0, x0, 24
	mov	w5, 0
	ldp	x3, x4, [x29, 304]
	mov	x2, x0
	mov	w1, w28
	mov	x0, x20
	bl	_smc_daemon_state__thermal_suspender_tVIP
	.loc 1 198 15 discriminator 6
	add	x0, x29, 3184
	add	x0, x0, 24
	bl	_system__tasking__stages__activate_tasks
LEHE5:
	.loc 1 198 0 is_stmt 1 discriminator 8
	mov	w19, 1
L134:
	.loc 1 198 0 is_stmt 0 discriminator 9
	add	x0, x29, 3184
	mov	x16, x0
LEHB6:
	bl	_smc_daemon__A134b___finalizer.2
LEHE6:
	.loc 1 198 0 discriminator 11
	cmp	w19, 1
	bne	L8
	.loc 1 198 0
	mov	w0, 1
L136:
	.loc 1 198 0 discriminator 12
	cmp	w0, 1
	bne	L9
	.loc 1 198 0
	nop
LBE8:
	.loc 1 198 12 is_stmt 1
	str	x20, [x29, 3584]
LBB9:
	.loc 1 199 4
	adrp	x0, lC66@PAGE
	add	x0, x0, lC66@PAGEOFF;
	str	x0, [x29, 320]
	adrp	x0, lC7@PAGE
	add	x0, x0, lC7@PAGEOFF;
	str	x0, [x29, 328]
	ldp	x0, x1, [x29, 320]
LEHB7:
	bl	_ada__text_io__put_line__2
LBE9:
	.loc 1 202 17
	add	x0, x29, 3184
	add	x0, x0, 40
	bl	_smc_helper_open
	.loc 1 202 17 is_stmt 0 discriminator 2
	str	w0, [x29, 3564]
	.loc 1 203 4 is_stmt 1
	ldr	w0, [x29, 3564]
	cmp	w0, 0
	beq	L10
LBB10:
	.loc 1 204 82
	add	x0, x29, 3168
	str	x0, [x29, 336]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 344]
	ldp	x1, x2, [x29, 336]
	ldr	w0, [x29, 3564]
	bl	_system__img_int__impl__image_integer
	.loc 1 204 82 is_stmt 0 discriminator 3
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	str	x1, [x29, 2496]
	str	xzr, [x29, 2504]
	add	x1, x29, 2560
	ldp	x3, x4, [x1, -64]
	mov	x1, x3
	lsr	x1, x1, 61
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 2776]
	ldr	x2, [x29, 2776]
	add	x1, x1, x2
	str	x1, [x29, 2776]
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 2768]
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	str	x1, [x29, 2480]
	str	xzr, [x29, 2488]
	add	x1, x29, 2560
	ldp	x3, x4, [x1, -80]
	mov	x1, x3
	lsr	x1, x1, 61
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 2760]
	ldr	x2, [x29, 2760]
	add	x1, x1, x2
	str	x1, [x29, 2760]
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 2752]
	.loc 1 204 77 is_stmt 1 discriminator 3
	bic	w1, w0, w0, asr #31
	add	w19, w1, 57
LBB11:
	add	x1, x29, 2808
	str	x1, [x29, 352]
	adrp	x1, lC9@PAGE
	add	x1, x1, lC9@PAGEOFF;
	str	x1, [x29, 360]
	adrp	x1, lC67@PAGE
	add	x1, x1, lC67@PAGEOFF;
	str	x1, [x29, 368]
	adrp	x1, lC10@PAGE
	add	x1, x1, lC10@PAGEOFF;
	str	x1, [x29, 376]
	add	x1, x29, 3168
	str	x1, [x29, 384]
	mov	w1, 1
	str	w1, [x29, 3288]
	str	w0, [x29, 3292]
	add	x0, x29, 3288
	str	x0, [x29, 392]
	ldp	x4, x5, [x29, 384]
	ldp	x2, x3, [x29, 368]
	ldp	x0, x1, [x29, 352]
	bl	_system__concat_2__str_concat_2
LBE11:
	.loc 1 204 77 is_stmt 0 discriminator 6
	cmp	w19, 68
	ble	L11
	.loc 1 204 77 discriminator 7
	mov	w1, 204
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L11:
	.loc 1 204 77 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2464]
	str	xzr, [x29, 2472]
	add	x0, x29, 2560
	ldp	x2, x3, [x0, -96]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 2744]
	ldr	x1, [x29, 2744]
	add	x0, x0, x1
	str	x0, [x29, 2744]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 2736]
	.loc 1 204 7 is_stmt 1 discriminator 8
	add	x0, x29, 2808
	str	x0, [x29, 400]
	mov	w0, 1
	str	w0, [x29, 3296]
	str	w19, [x29, 3300]
	add	x0, x29, 3296
	str	x0, [x29, 408]
	ldp	x0, x1, [x29, 400]
	bl	_ada__text_io__put_line__2
LBE10:
	.loc 1 205 18
	mov	w0, 1
	bl	_system__os_lib__os_exit
L10:
LBB12:
	.loc 1 207 4
	adrp	x0, lC68@PAGE
	add	x0, x0, lC68@PAGEOFF;
	str	x0, [x29, 416]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 424]
	ldp	x0, x1, [x29, 416]
	bl	_ada__text_io__put_line__2
LBE12:
LBB13:
	.loc 1 212 7
	add	x0, x29, 2808
	str	x0, [x29, 432]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 440]
	ldp	x0, x1, [x29, 432]
	bl	_system__strings__string_listIP
	.loc 1 214 19
	mov	x0, 16
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 214 19 is_stmt 0 discriminator 2
	mov	w0, 1
	str	w0, [x3]
	mov	w0, 6
	str	w0, [x3, 4]
	add	x1, x3, 8
	adrp	x0, lC69@PAGE
	add	x0, x0, lC69@PAGEOFF;
	mov	x2, x1
	ldr	w1, [x0]
	ldrh	w0, [x0, 4]
	str	w1, [x2]
	strh	w0, [x2, 4]
	add	x0, x3, 8
	str	x0, [x29, 448]
	mov	x0, x3
	str	x0, [x29, 456]
	ldp	x0, x1, [x29, 448]
	.loc 1 214 16 is_stmt 1 discriminator 2
	add	x2, x29, 2560
	stp	x0, x1, [x2, 248]
	.loc 1 215 19
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 215 19 is_stmt 0 discriminator 2
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 464]
	mov	x0, x3
	str	x0, [x29, 472]
	ldp	x0, x1, [x29, 464]
	.loc 1 215 16 is_stmt 1 discriminator 2
	add	x2, x29, 3072
	stp	x0, x1, [x2, -248]
	.loc 1 216 19
	mov	x0, 72
	bl	___gnat_malloc
	mov	x2, x0
	.loc 1 216 19 is_stmt 0 discriminator 2
	adrp	x0, lC14@PAGE
	add	x0, x0, lC14@PAGEOFF;
	mov	x1, x2
	ldr	q28, [x0]
	ldr	q29, [x0, 16]
	ldr	q30, [x0, 32]
	ldr	q31, [x0, 48]
	ldr	x0, [x0, 64]
	str	q28, [x1]
	str	q29, [x1, 16]
	str	q30, [x1, 32]
	str	q31, [x1, 48]
	str	x0, [x1, 64]
	add	x0, x2, 8
	str	x0, [x29, 480]
	mov	x0, x2
	str	x0, [x29, 488]
	ldp	x0, x1, [x29, 480]
	.loc 1 216 16 is_stmt 1 discriminator 2
	add	x2, x29, 3072
	stp	x0, x1, [x2, -232]
LBB14:
	.loc 1 217 18
	adrp	x0, lC70@PAGE
	add	x0, x0, lC70@PAGEOFF;
	str	x0, [x29, 496]
	adrp	x0, lC15@PAGE
	add	x0, x0, lC15@PAGEOFF;
	str	x0, [x29, 504]
	add	x0, x29, 2808
	str	x0, [x29, 512]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 520]
	add	x0, x29, 512
	ldp	x2, x3, [x0]
	ldp	x0, x1, [x29, 496]
	bl	_system__os_lib__spawn
	.loc 1 217 18 is_stmt 0 discriminator 2
	strb	w0, [x29, 3563]
LBE14:
LBB15:
	.loc 1 218 11 is_stmt 1
	mov	w0, 1
	str	w0, [x29, 3712]
L14:
	.loc 1 218 11 is_stmt 0 discriminator 10
	ldr	w0, [x29, 3712]
	cmp	w0, 3
	bgt	L12
	.loc 1 218 43 is_stmt 1 discriminator 2
	ldrsw	x0, [x29, 3712]
	sub	x0, x0, #1
	lsl	x1, x0, 4
	add	x0, x29, 2808
	ldr	x0, [x0, x1]
	.loc 1 218 43 is_stmt 0 discriminator 3
	cmp	x0, 0
	beq	L13
	.loc 1 218 43 discriminator 4
	ldrsw	x0, [x29, 3712]
	sub	x0, x0, #1
	lsl	x1, x0, 4
	add	x0, x29, 2808
	ldr	x0, [x0, x1]
	.loc 1 218 43 discriminator 6
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 218 43 discriminator 8
	ldrsw	x2, [x29, 3712]
	sub	x0, x2, #1
	lsl	x1, x0, 4
	add	x0, x29, 2808
	str	xzr, [x0, x1]
	.loc 1 218 43 discriminator 9
	sub	x0, x2, #1
	lsl	x2, x0, 4
	add	x1, x29, 2816
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x1, x2]
L13:
	.loc 1 218 11 is_stmt 1 discriminator 5
	ldr	w0, [x29, 3712]
	add	w0, w0, 1
	str	w0, [x29, 3712]
	.loc 1 218 69
	b	L14
L12:
LBE15:
LBE13:
LBB16:
	.loc 1 220 4
	adrp	x0, lC71@PAGE
	add	x0, x0, lC71@PAGEOFF;
	str	x0, [x29, 528]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 536]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 16]
	bl	_ada__text_io__put_line__2
LEHE7:
LBE16:
LBB17:
	.loc 1 227 7
	str	wzr, [x29, 3708]
	.loc 1 229 21
	adrp	x0, _python_path.11@PAGE
	add	x0, x0, _python_path.11@PAGEOFF;
	str	x0, [x29, 544]
	adrp	x0, lC18@PAGE
	add	x0, x0, lC18@PAGEOFF;
	str	x0, [x29, 552]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 32]
LEHB8:
	bl	_system__os_lib__is_regular_file
	.loc 1 229 7 discriminator 2
	cmp	w0, 0
	beq	L15
	.loc 1 230 46
	adrp	x0, lC72@PAGE
	add	x0, x0, lC72@PAGEOFF;
	add	x1, x29, 2808
	ldr	q28, [x0]
	ldr	q29, [x0, 16]
	ldr	q30, [x0, 32]
	ldr	q31, [x0, 44]
	str	q28, [x1]
	str	q29, [x1, 16]
	str	q30, [x1, 32]
	str	q31, [x1, 44]
	.loc 1 231 14
	mov	w0, 60
	str	w0, [x29, 3708]
	b	L16
L15:
	.loc 1 232 24
	adrp	x0, _fall_path.10@PAGE
	add	x0, x0, _fall_path.10@PAGEOFF;
	str	x0, [x29, 560]
	adrp	x0, lC7@PAGE
	add	x0, x0, lC7@PAGEOFF;
	str	x0, [x29, 568]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 48]
	bl	_system__os_lib__is_regular_file
	.loc 1 232 7 discriminator 2
	cmp	w0, 0
	beq	L17
	.loc 1 233 44
	adrp	x0, lC73@PAGE
	add	x0, x0, lC73@PAGEOFF;
	add	x1, x29, 2808
	ldr	q29, [x0]
	ldr	q30, [x0, 16]
	ldr	q31, [x0, 32]
	ldrb	w0, [x0, 48]
	str	q29, [x1]
	str	q30, [x1, 16]
	str	q31, [x1, 32]
	strb	w0, [x1, 48]
	.loc 1 234 14
	mov	w0, 49
	str	w0, [x29, 3708]
	b	L16
L17:
	.loc 1 236 30
	adrp	x0, lC74@PAGE
	add	x0, x0, lC74@PAGEOFF;
	add	x1, x29, 2808
	ldr	q30, [x0]
	ldr	q31, [x0, 9]
	str	q30, [x1]
	str	q31, [x1, 9]
	.loc 1 237 14
	mov	w0, 25
	str	w0, [x29, 3708]
L16:
	.loc 1 240 26
	mov	x0, 72
	bl	___gnat_malloc
LEHE8:
	mov	x2, x0
	.loc 1 240 26 is_stmt 0 discriminator 2
	adrp	x0, lC19@PAGE
	add	x0, x0, lC19@PAGEOFF;
	mov	x1, x2
	ldr	q28, [x0]
	ldr	q29, [x0, 16]
	ldr	q30, [x0, 32]
	ldr	q31, [x0, 48]
	ldr	x0, [x0, 64]
	str	q28, [x1]
	str	q29, [x1, 16]
	str	q30, [x1, 32]
	str	q31, [x1, 48]
	str	x0, [x1, 64]
	add	x0, x2, 8
	str	x0, [x29, 576]
	mov	x0, x2
	str	x0, [x29, 584]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 64]
	.loc 1 240 23 is_stmt 1 discriminator 2
	add	x2, x29, 3216
	stp	x0, x1, [x2, 32]
LBB18:
	.loc 1 242 7
	mov	x0, sp
	mov	x19, x0
	.loc 1 242 87 discriminator 1
	ldr	w2, [x29, 3708]
	.loc 1 242 84 discriminator 1
	cmp	w2, 0
	ble	L18
	.loc 1 242 84 is_stmt 0 discriminator 2
	cmp	w2, 256
	ble	L18
	.loc 1 242 84 discriminator 4
	mov	w1, 242
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
LEHB9:
	bl	___gnat_rcheck_CE_Range_Check
L18:
	.loc 1 242 71 is_stmt 1 discriminator 5
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2448]
	str	xzr, [x29, 2456]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, -112]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2728]
	ldr	x0, [x29, 2728]
	add	x0, x1, x0
	str	x0, [x29, 2728]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2720]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2432]
	str	xzr, [x29, 2440]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, -128]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2712]
	ldr	x0, [x29, 2712]
	add	x0, x1, x0
	str	x0, [x29, 2712]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2704]
	.loc 1 242 69 discriminator 5
	bic	w0, w2, w2, asr #31
	add	w0, w0, 49
	str	w0, [x29, 3556]
	ldrsw	x0, [x29, 3556]
	str	x0, [x29, 3544]
	ldrsw	x0, [x29, 3556]
	str	x0, [x29, 2416]
	str	xzr, [x29, 2424]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, -144]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2696]
	ldr	x0, [x29, 2696]
	add	x0, x1, x0
	str	x0, [x29, 2696]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2688]
	ldrsw	x0, [x29, 3556]
	str	x0, [x29, 2400]
	str	xzr, [x29, 2408]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, -160]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2680]
	ldr	x0, [x29, 2680]
	add	x0, x1, x0
	str	x0, [x29, 2680]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2672]
	ldrsw	x0, [x29, 3556]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	add	x0, sp, 16
	str	x0, [x29, 3536]
LBB19:
	.loc 1 242 69 is_stmt 0 discriminator 8
	ldr	x0, [x29, 3536]
	str	x0, [x29, 592]
	mov	w0, 1
	str	w0, [x29, 3304]
	ldr	w0, [x29, 3556]
	str	w0, [x29, 3308]
	add	x0, x29, 3304
	str	x0, [x29, 600]
	adrp	x0, lC75@PAGE
	add	x0, x0, lC75@PAGEOFF;
	str	x0, [x29, 608]
	adrp	x0, lC7@PAGE
	add	x0, x0, lC7@PAGEOFF;
	str	x0, [x29, 616]
	add	x0, x29, 2808
	str	x0, [x29, 624]
	mov	w0, 1
	str	w0, [x29, 3312]
	str	w2, [x29, 3316]
	add	x0, x29, 3312
	str	x0, [x29, 632]
	add	x0, x29, 512
	ldp	x4, x5, [x0, 112]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 96]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 80]
	bl	_system__concat_2__str_concat_2
LBE19:
	.loc 1 242 7 is_stmt 1 discriminator 11
	ldr	x0, [x29, 3536]
	str	x0, [x29, 640]
	mov	w0, 1
	str	w0, [x29, 3320]
	ldr	w0, [x29, 3556]
	str	w0, [x29, 3324]
	add	x0, x29, 3320
	str	x0, [x29, 648]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 128]
	bl	_ada__text_io__put_line__2
LEHE9:
LEHB10:
LEHE10:
	.loc 1 242 0 discriminator 14
	mov	sp, x19
LBE18:
	.loc 1 243 69
	ldr	w2, [x29, 3708]
	.loc 1 243 66
	cmp	w2, 0
	ble	L19
	.loc 1 243 66 is_stmt 0 discriminator 1
	cmp	w2, 256
	ble	L19
	.loc 1 243 66 discriminator 3
	mov	w1, 243
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
LEHB11:
	bl	___gnat_rcheck_CE_Range_Check
L19:
	.loc 1 243 53 is_stmt 1 discriminator 4
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2384]
	str	xzr, [x29, 2392]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, -176]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2664]
	ldr	x0, [x29, 2664]
	add	x0, x1, x0
	str	x0, [x29, 2664]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2656]
	.loc 1 243 32 discriminator 4
	add	x0, x29, 2808
	str	x0, [x29, 656]
	mov	w0, 1
	str	w0, [x29, 3328]
	str	w2, [x29, 3332]
	add	x0, x29, 3328
	str	x0, [x29, 664]
	add	x0, x29, 3248
	str	x0, [x29, 672]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 680]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 160]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 144]
	bl	_system__os_lib__non_blocking_spawn
	.loc 1 243 32 is_stmt 0 discriminator 7
	str	w0, [x29, 3532]
	.loc 1 244 7 is_stmt 1
	ldr	w0, [x29, 3532]
	cmn	w0, #1
	beq	L20
	.loc 1 245 25
	mov	w0, 1
	strb	w0, [x29, 3719]
	b	L21
L20:
LBB20:
	.loc 1 247 10
	adrp	x0, lC76@PAGE
	add	x0, x0, lC76@PAGEOFF;
	str	x0, [x29, 688]
	adrp	x0, lC20@PAGE
	add	x0, x0, lC20@PAGEOFF;
	str	x0, [x29, 696]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 176]
	bl	_ada__text_io__put_line__2
LEHE11:
L21:
LBE20:
LBE17:
	.loc 1 255 17
	ldr	w0, [x29, 3224]
	ldr	x2, [x29, 3640]
	ldr	x1, [x29, 3672]
LEHB12:
	bl	_smc_helper_write_key_hex
	.loc 1 255 17 is_stmt 0 discriminator 2
	str	w0, [x29, 3564]
	.loc 1 256 17 is_stmt 1
	ldr	w0, [x29, 3224]
	ldr	x2, [x29, 3640]
	ldr	x1, [x29, 3664]
	bl	_smc_helper_write_key_hex
	.loc 1 256 17 is_stmt 0 discriminator 2
	str	w0, [x29, 3564]
LBB23:
	.loc 1 257 4 is_stmt 1
	adrp	x0, lC77@PAGE
	add	x0, x0, lC77@PAGEOFF;
	str	x0, [x29, 720]
	adrp	x0, lC22@PAGE
	add	x0, x0, lC22@PAGEOFF;
	str	x0, [x29, 728]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 208]
	bl	_ada__text_io__put_line__2
LBE23:
	.loc 1 260 13
	bl	_smc_files__load_fan_calibration
	fmov	s31, s0
	.loc 1 260 13 is_stmt 0 discriminator 2
	str	s31, [x29, 3740]
	.loc 1 261 4 is_stmt 1
	ldr	s31, [x29, 3740]
	fcmpe	s31, #0.0
	bgt	L162
	b	L173
L162:
LBB24:
	.loc 1 262 85
	add	x0, x29, 3152
	str	x0, [x29, 736]
	adrp	x0, lC23@PAGE
	add	x0, x0, lC23@PAGEOFF;
	str	x0, [x29, 744]
	mov	w2, 6
	add	x0, x29, 512
	ldp	x0, x1, [x0, 224]
	ldr	s0, [x29, 3740]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 262 85 is_stmt 0 discriminator 3
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2368]
	str	xzr, [x29, 2376]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, -192]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2648]
	ldr	x0, [x29, 2648]
	add	x0, x1, x0
	str	x0, [x29, 2648]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2640]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2352]
	str	xzr, [x29, 2360]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, -208]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2632]
	ldr	x0, [x29, 2632]
	add	x0, x1, x0
	str	x0, [x29, 2632]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2624]
	.loc 1 262 114 is_stmt 1 discriminator 3
	bic	w0, w2, w2, asr #31
	add	w0, w0, 58
	add	w19, w0, 5
LBB25:
	add	x0, x29, 2808
	str	x0, [x29, 752]
	adrp	x0, lC24@PAGE
	add	x0, x0, lC24@PAGEOFF;
	str	x0, [x29, 760]
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	str	x0, [x29, 768]
	adrp	x0, lC25@PAGE
	add	x0, x0, lC25@PAGEOFF;
	str	x0, [x29, 776]
	add	x0, x29, 3152
	str	x0, [x29, 784]
	mov	w0, 1
	str	w0, [x29, 3336]
	str	w2, [x29, 3340]
	add	x0, x29, 3336
	str	x0, [x29, 792]
	adrp	x0, lC79@PAGE
	add	x0, x0, lC79@PAGEOFF;
	str	x0, [x29, 800]
	adrp	x0, lC26@PAGE
	add	x0, x0, lC26@PAGEOFF;
	str	x0, [x29, 808]
	add	x0, x29, 1024
	ldp	x6, x7, [x0, -224]
	add	x0, x29, 1024
	ldp	x4, x5, [x0, -240]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -256]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 240]
	bl	_system__concat_3__str_concat_3
LBE25:
	.loc 1 262 114 is_stmt 0 discriminator 6
	cmp	w19, 75
	ble	L24
	.loc 1 262 114 discriminator 7
	mov	w1, 262
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L24:
	.loc 1 262 114 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2336]
	str	xzr, [x29, 2344]
	add	x0, x29, 2560
	ldp	x2, x3, [x0, -224]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2616]
	ldr	x0, [x29, 2616]
	add	x0, x1, x0
	str	x0, [x29, 2616]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 2608]
	.loc 1 262 7 is_stmt 1 discriminator 8
	add	x0, x29, 2808
	str	x0, [x29, 816]
	mov	w0, 1
	str	w0, [x29, 3344]
	str	w19, [x29, 3348]
	add	x0, x29, 3344
	str	x0, [x29, 824]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -208]
	bl	_ada__text_io__put_line__2
	b	L25
L173:
LBE24:
LBB26:
	.loc 1 264 7
	adrp	x0, lC80@PAGE
	add	x0, x0, lC80@PAGEOFF;
	str	x0, [x29, 832]
	adrp	x0, lC27@PAGE
	add	x0, x0, lC27@PAGEOFF;
	str	x0, [x29, 840]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -192]
	bl	_ada__text_io__put_line__2
L25:
LBE26:
LBB27:
	.loc 1 268 13
	adrp	x0, lC81@PAGE
	add	x0, x0, lC81@PAGEOFF;
	str	x0, [x29, 848]
	adrp	x0, lC28@PAGE
	add	x0, x0, lC28@PAGEOFF;
	str	x0, [x29, 856]
	adrp	x0, lC82@PAGE
	add	x0, x0, lC82@PAGEOFF;
	str	x0, [x29, 864]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 872]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -160]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -176]
	bl	_smc_files__notify_user
L111:
LBE27:
LBB28:
	.loc 1 271 22
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__should_keep_runningP
	.loc 1 271 22 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	L26
	.loc 1 272 39 is_stmt 1
	bl	_ada__real_time__clock
	.loc 1 272 39 is_stmt 0 discriminator 2
	str	x0, [x29, 3496]
LBB29:
	.loc 1 275 25 is_stmt 1
	adrp	x0, lC83@PAGE
	add	x0, x0, lC83@PAGEOFF;
	str	x0, [x29, 880]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 888]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3804]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -144]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 275 25 is_stmt 0 discriminator 2
	str	s31, [x29, 3804]
LBE29:
LBB30:
	.loc 1 276 25 is_stmt 1
	adrp	x0, lC84@PAGE
	add	x0, x0, lC84@PAGEOFF;
	str	x0, [x29, 896]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 904]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3800]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -128]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 276 25 is_stmt 0 discriminator 2
	str	s31, [x29, 3800]
LBE30:
LBB31:
	.loc 1 277 25 is_stmt 1
	adrp	x0, lC85@PAGE
	add	x0, x0, lC85@PAGEOFF;
	str	x0, [x29, 912]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 920]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3796]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -112]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 277 25 is_stmt 0 discriminator 2
	str	s31, [x29, 3796]
LBE31:
LBB32:
	.loc 1 278 25 is_stmt 1
	adrp	x0, lC86@PAGE
	add	x0, x0, lC86@PAGEOFF;
	str	x0, [x29, 928]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 936]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3792]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -96]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 278 25 is_stmt 0 discriminator 2
	str	s31, [x29, 3792]
LBE32:
LBB33:
	.loc 1 279 25 is_stmt 1
	adrp	x0, lC87@PAGE
	add	x0, x0, lC87@PAGEOFF;
	str	x0, [x29, 944]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 952]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3788]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -80]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 279 25 is_stmt 0 discriminator 2
	str	s31, [x29, 3788]
LBE33:
LBB34:
	.loc 1 280 25 is_stmt 1
	adrp	x0, lC88@PAGE
	add	x0, x0, lC88@PAGEOFF;
	str	x0, [x29, 960]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 968]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3784]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -64]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 280 25 is_stmt 0 discriminator 2
	str	s31, [x29, 3784]
LBE34:
LBB35:
	.loc 1 281 25 is_stmt 1
	adrp	x0, lC89@PAGE
	add	x0, x0, lC89@PAGEOFF;
	str	x0, [x29, 976]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 984]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3780]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -48]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 281 25 is_stmt 0 discriminator 2
	str	s31, [x29, 3780]
LBE35:
LBB36:
	.loc 1 282 25 is_stmt 1
	adrp	x0, lC90@PAGE
	add	x0, x0, lC90@PAGEOFF;
	str	x0, [x29, 992]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1000]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3776]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -32]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 282 25 is_stmt 0 discriminator 2
	str	s31, [x29, 3776]
LBE36:
LBB37:
	.loc 1 285 25 is_stmt 1
	adrp	x0, lC91@PAGE
	add	x0, x0, lC91@PAGEOFF;
	str	x0, [x29, 1008]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1016]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3772]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -16]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 285 25 is_stmt 0 discriminator 2
	str	s31, [x29, 3772]
LBE37:
	.loc 1 286 7 is_stmt 1
	ldr	s31, [x29, 3772]
	fcmpe	s31, #0.0
	bls	L163
	b	L27
L163:
LBB38:
	.loc 1 287 28
	adrp	x0, lC92@PAGE
	add	x0, x0, lC92@PAGEOFF;
	str	x0, [x29, 1024]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1032]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3772]
	add	x0, x29, 1024
	ldp	x0, x1, [x0]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 287 28 is_stmt 0 discriminator 2
	str	s31, [x29, 3772]
L27:
LBE38:
	.loc 1 289 7 is_stmt 1
	ldr	s31, [x29, 3772]
	fcmpe	s31, #0.0
	bls	L164
	b	L29
L164:
LBB39:
	.loc 1 290 28
	adrp	x0, lC93@PAGE
	add	x0, x0, lC93@PAGEOFF;
	str	x0, [x29, 1040]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1048]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3772]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 16]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 290 28 is_stmt 0 discriminator 2
	str	s31, [x29, 3772]
L29:
LBE39:
LBB40:
	.loc 1 293 25 is_stmt 1
	adrp	x0, lC94@PAGE
	add	x0, x0, lC94@PAGEOFF;
	str	x0, [x29, 1056]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1064]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3768]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 32]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 293 25 is_stmt 0 discriminator 2
	str	s31, [x29, 3768]
LBE40:
	.loc 1 294 7 is_stmt 1
	ldr	s31, [x29, 3768]
	fcmpe	s31, #0.0
	bls	L165
	b	L31
L165:
LBB41:
	.loc 1 295 28
	adrp	x0, lC95@PAGE
	add	x0, x0, lC95@PAGEOFF;
	str	x0, [x29, 1072]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1080]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3768]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 48]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 295 28 is_stmt 0 discriminator 2
	str	s31, [x29, 3768]
L31:
LBE41:
	.loc 1 297 7 is_stmt 1
	ldr	s31, [x29, 3768]
	fcmpe	s31, #0.0
	bls	L166
	b	L33
L166:
LBB42:
	.loc 1 298 28
	adrp	x0, lC96@PAGE
	add	x0, x0, lC96@PAGEOFF;
	str	x0, [x29, 1088]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1096]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3768]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 64]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 298 28 is_stmt 0 discriminator 2
	str	s31, [x29, 3768]
L33:
LBE42:
LBB43:
	.loc 1 302 16 is_stmt 1
	adrp	x0, lC97@PAGE
	add	x0, x0, lC97@PAGEOFF;
	str	x0, [x29, 1104]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1112]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3812]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 80]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 302 16 is_stmt 0 discriminator 2
	str	s31, [x29, 3812]
LBE43:
	.loc 1 304 20 is_stmt 1
	ldr	s31, [x29, 3804]
	str	s31, [x29, 3628]
	.loc 1 305 35
	bl	_smc_files__get_battery_percent
	.loc 1 305 35 is_stmt 0 discriminator 2
	str	w0, [x29, 3624]
	.loc 1 308 7 is_stmt 1
	ldr	s31, [x29, 3820]
	fcmpe	s31, #0.0
	bgt	L167
	b	L174
L167:
	.loc 1 309 24
	ldr	s30, [x29, 3628]
	ldr	s31, [x29, 3820]
	fsub	s31, s30, s31
	str	s31, [x29, 3816]
	b	L37
L174:
	.loc 1 311 24
	str	wzr, [x29, 3816]
L37:
LBB44:
	.loc 1 316 10
	strb	wzr, [x29, 3495]
	.loc 1 317 10
	str	xzr, [x29, 3480]
LBB45:
	.loc 1 319 19
	bl	_smc_files__check_precool_mode
	mov	x2, x0
	mov	x3, x1
	.loc 1 319 19 is_stmt 0 discriminator 2
	mov	w0, w2
	strb	w0, [x29, 3495]
	mov	x0, x3
	str	x0, [x29, 3480]
LBE45:
	.loc 1 323 65 is_stmt 1
	ldr	s31, [x29, 3628]
	mov	w0, -1035468800
	fmov	s30, w0
	fcmp	s31, s30
	blt	L38
	.loc 1 323 65 is_stmt 0 discriminator 2
	ldr	s31, [x29, 3628]
	mov	w0, 1132068864
	fmov	s30, w0
	fcmp	s31, s30
	bhi	L38
	b	L175
L38:
	.loc 1 323 65 discriminator 3
	mov	w1, 323
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L175:
	.loc 1 324 59 is_stmt 1
	ldr	s31, [x29, 3812]
	fcmp	s31, #0.0
	blt	L41
	.loc 1 324 59 is_stmt 0 discriminator 2
	ldr	s31, [x29, 3812]
	mov	w0, 1140457472
	fmov	s30, w0
	fcmp	s31, s30
	bhi	L41
	b	L176
L41:
	.loc 1 324 59 discriminator 3
	mov	w1, 324
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L176:
	.loc 1 322 36 is_stmt 1
	ldr	w0, [x29, 3624]
	cmp	w0, 3
	cset	w0, le
	and	w21, w0, 255
	ldr	w0, [x29, 3624]
	cmp	w0, 10
	cset	w0, le
	and	w20, w0, 255
	.loc 1 327 50
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__get_spike_countP
	.loc 1 322 36
	cmp	w0, 4
	cset	w0, gt
	and	w19, w0, 255
	.loc 1 328 49
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	mov	w1, w0
	.loc 1 322 36
	ldrb	w0, [x29, 3495]
	cmp	w0, 0
	ccmp	w1, 0, 0, eq
	cset	w0, ne
	and	w1, w0, 255
	mov	w0, 52429
	movk	w0, 0x3dcc, lsl 16
	fmov	s30, w0
	ldr	s31, [x29, 3816]
	fdiv	s31, s31, s30
	fmov	s2, s31
	mov	w3, w1
	mov	w2, w19
	mov	w1, w20
	mov	w0, w21
	ldr	s1, [x29, 3812]
	ldr	s0, [x29, 3628]
	bl	_smc_math__compute_target_rpm
	fmov	s31, s0
	.loc 1 322 36 is_stmt 0 discriminator 2
	str	s31, [x29, 3620]
LBE44:
LBB46:
	.loc 1 335 10 is_stmt 1
	fmov	s31, 2.0e+1
	str	s31, [x29, 3476]
LBB47:
	.loc 1 337 22
	adrp	x0, lC98@PAGE
	add	x0, x0, lC98@PAGEOFF;
	str	x0, [x29, 1120]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1128]
	add	x0, x29, 3184
	mov	x16, x0
	ldr	s0, [x29, 3476]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 96]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 337 22 is_stmt 0 discriminator 2
	str	s31, [x29, 3476]
LBE47:
	.loc 1 340 57 is_stmt 1
	ldr	s31, [x29, 3476]
	mov	w0, -1035468800
	fmov	s30, w0
	fcmp	s31, s30
	blt	L44
	.loc 1 340 57 is_stmt 0 discriminator 2
	ldr	s31, [x29, 3476]
	mov	w0, 1132068864
	fmov	s30, w0
	fcmp	s31, s30
	bhi	L44
	b	L177
L44:
	.loc 1 340 57 discriminator 3
	mov	w1, 340
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L177:
LBB48:
	.loc 1 338 18 is_stmt 1
	ldr	x2, [x29, 3264]
	ldr	w1, [x29, 3272]
	mov	w0, 52429
	movk	w0, 0x3dcc, lsl 16
	fmov	s1, w0
	ldr	s0, [x29, 3476]
	mov	x0, x2
	bl	_smc_math__update_battery_pid
	add	x2, x29, 3072
	stp	x0, x1, [x2, 64]
	.loc 1 338 18 is_stmt 0 discriminator 2
	add	x2, x29, 3264
	add	x0, x29, 3136
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	ldr	s31, [x29, 3148]
	str	s31, [x29, 3616]
LBE48:
LBE46:
	.loc 1 347 18 is_stmt 1
	ldr	s31, [x29, 3620]
	str	s31, [x29, 3808]
	.loc 1 348 7
	ldr	s30, [x29, 3616]
	ldr	s31, [x29, 3808]
	fcmpe	s30, s31
	bgt	L168
	b	L47
L168:
	.loc 1 349 21
	ldr	s31, [x29, 3616]
	str	s31, [x29, 3808]
L47:
LBB49:
	.loc 1 355 10
	str	xzr, [x29, 3464]
	.loc 1 356 10
	str	xzr, [x29, 3456]
	.loc 1 357 50
	ldr	s30, [x29, 3808]
	movi	v31.2s, 0xcf, lsl 24
	fcmp	s30, s31
	blt	L49
	.loc 1 357 50 is_stmt 0 discriminator 2
	ldr	s30, [x29, 3808]
	movi	v31.2s, 0x4f, lsl 24
	fcmp	s30, s31
	bpl	L49
	b	L178
L49:
	.loc 1 357 50 discriminator 3
	mov	w1, 357
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L178:
	.loc 1 357 41 is_stmt 1 discriminator 4
	ldr	s31, [x29, 3808]
	fcmpe	s31, #0.0
	bge	L169
	b	L179
L169:
	.loc 1 357 10 discriminator 6
	ldr	s30, [x29, 3808]
	mvni	v31.2s, 0xc1, lsl 24
	fadd	s31, s30, s31
	fcvtzs	s31, s31
	str	s31, [x29, 3704]
	b	L54
L179:
	.loc 1 357 10 is_stmt 0 discriminator 7
	ldr	s30, [x29, 3808]
	mvni	v31.2s, 0xc1, lsl 24
	fsub	s31, s30, s31
	fcvtzs	s31, s31
	str	s31, [x29, 3704]
L54:
	.loc 1 361 49 is_stmt 1
	ldr	w1, [x29, 3704]
	mov	w0, -536870912
	cmp	w1, w0
	blt	L55
	.loc 1 361 49 is_stmt 0 discriminator 2
	ldr	w1, [x29, 3704]
	mov	w0, 536870911
	cmp	w1, w0
	ble	L56
L55:
	.loc 1 361 49 discriminator 3
	mov	w1, 361
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L56:
	.loc 1 361 49 discriminator 4
	ldr	w0, [x29, 3704]
	lsl	w0, w0, 2
	.loc 1 361 49 discriminator 7
	cmp	w0, 0
	bge	L57
	.loc 1 361 49 discriminator 8
	mov	w1, 361
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L57:
	.loc 1 361 10 is_stmt 1 discriminator 9
	str	w0, [x29, 3452]
	.loc 1 363 55
	ldr	w0, [x29, 3452]
	add	w1, w0, 4095
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 12
	.loc 1 363 62
	negs	w2, w0
	and	w1, w0, 15
	and	w0, w2, 15
	csneg	w0, w1, w0, mi
	.loc 1 363 69
	add	w0, w0, 1
	sxtw	x1, w0
	.loc 1 363 10
	adrp	x0, _hex_map.9@PAGE
	add	x0, x0, _hex_map.9@PAGEOFF;
	add	x0, x0, x1
	ldrsb	w0, [x0, -1]
	.loc 1 363 10 is_stmt 0 discriminator 1
	strb	w0, [x29, 3451]
	.loc 1 364 55 is_stmt 1
	ldr	w0, [x29, 3452]
	add	w1, w0, 255
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 8
	.loc 1 364 61
	negs	w2, w0
	and	w1, w0, 15
	and	w0, w2, 15
	csneg	w0, w1, w0, mi
	.loc 1 364 68
	add	w0, w0, 1
	sxtw	x1, w0
	.loc 1 364 10
	adrp	x0, _hex_map.9@PAGE
	add	x0, x0, _hex_map.9@PAGEOFF;
	add	x0, x0, x1
	ldrsb	w0, [x0, -1]
	.loc 1 364 10 is_stmt 0 discriminator 1
	strb	w0, [x29, 3450]
	.loc 1 365 55 is_stmt 1
	ldr	w0, [x29, 3452]
	add	w1, w0, 15
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 4
	.loc 1 365 60
	negs	w2, w0
	and	w1, w0, 15
	and	w0, w2, 15
	csneg	w0, w1, w0, mi
	.loc 1 365 67
	add	w0, w0, 1
	sxtw	x1, w0
	.loc 1 365 10
	adrp	x0, _hex_map.9@PAGE
	add	x0, x0, _hex_map.9@PAGEOFF;
	add	x0, x0, x1
	ldrsb	w0, [x0, -1]
	.loc 1 365 10 is_stmt 0 discriminator 1
	strb	w0, [x29, 3449]
	.loc 1 366 55 is_stmt 1
	ldr	w0, [x29, 3452]
	negs	w2, w0
	and	w1, w0, 15
	and	w0, w2, 15
	csneg	w0, w1, w0, mi
	.loc 1 366 62
	add	w0, w0, 1
	sxtw	x1, w0
	.loc 1 366 10
	adrp	x0, _hex_map.9@PAGE
	add	x0, x0, _hex_map.9@PAGEOFF;
	add	x0, x0, x1
	ldrsb	w0, [x0, -1]
	.loc 1 366 10 is_stmt 0 discriminator 1
	strb	w0, [x29, 3448]
LBB50:
	.loc 1 367 58 is_stmt 1
	add	x0, x29, 3128
	str	x0, [x29, 1136]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1144]
	ldrb	w0, [x29, 3451]
	strb	w0, [x29, 3120]
	add	x0, x29, 3120
	str	x0, [x29, 1152]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 1160]
	ldrb	w0, [x29, 3450]
	strb	w0, [x29, 3112]
	add	x0, x29, 3112
	str	x0, [x29, 1168]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 1176]
	ldrb	w0, [x29, 3449]
	strb	w0, [x29, 3104]
	add	x0, x29, 3104
	str	x0, [x29, 1184]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 1192]
	ldrb	w0, [x29, 3448]
	strb	w0, [x29, 3096]
	add	x0, x29, 3096
	str	x0, [x29, 1200]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 1208]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 176]
	stp	x0, x1, [sp]
	add	x0, x29, 1024
	ldp	x6, x7, [x0, 160]
	add	x0, x29, 1024
	ldp	x4, x5, [x0, 144]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, 128]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 112]
	bl	_system__concat_4__str_concat_4
LBE50:
	.loc 1 367 10
	add	x0, x29, 3128
	str	x0, [x29, 3440]
	.loc 1 369 22
	add	x0, x29, 3128
	str	x0, [x29, 1216]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1224]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 192]
	bl	_interfaces__c__strings__new_string
	.loc 1 369 22 is_stmt 0 discriminator 2
	str	x0, [x29, 3464]
	.loc 1 370 22 is_stmt 1
	add	x0, x29, 3128
	str	x0, [x29, 1232]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1240]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 208]
	bl	_interfaces__c__strings__new_string
	.loc 1 370 22 is_stmt 0 discriminator 2
	str	x0, [x29, 3456]
	.loc 1 371 23 is_stmt 1
	ldr	w0, [x29, 3224]
	ldr	x2, [x29, 3464]
	ldr	x1, [x29, 3688]
	bl	_smc_helper_write_key_hex
	.loc 1 371 23 is_stmt 0 discriminator 2
	str	w0, [x29, 3564]
	.loc 1 372 23 is_stmt 1
	ldr	w0, [x29, 3224]
	ldr	x2, [x29, 3456]
	ldr	x1, [x29, 3680]
	bl	_smc_helper_write_key_hex
	.loc 1 372 23 is_stmt 0 discriminator 2
	str	w0, [x29, 3564]
	.loc 1 373 10 is_stmt 1
	ldr	x0, [x29, 3464]
	bl	_interfaces__c__strings__free
	.loc 1 373 10 is_stmt 0 discriminator 2
	str	x0, [x29, 3464]
	.loc 1 374 10 is_stmt 1
	ldr	x0, [x29, 3456]
	bl	_interfaces__c__strings__free
	.loc 1 374 10 is_stmt 0 discriminator 2
	str	x0, [x29, 3456]
LBE49:
	.loc 1 378 20 is_stmt 1
	ldr	w3, [x29, 3224]
	add	x0, x29, 3284
	mov	x2, x0
	ldr	x1, [x29, 3656]
	mov	w0, w3
	bl	_smc_helper_read_key
	.loc 1 378 20 is_stmt 0 discriminator 2
	str	w0, [x29, 3564]
	.loc 1 379 20 is_stmt 1
	ldr	w3, [x29, 3224]
	add	x0, x29, 3280
	mov	x2, x0
	ldr	x1, [x29, 3648]
	mov	w0, w3
	bl	_smc_helper_read_key
	.loc 1 379 20 is_stmt 0 discriminator 2
	str	w0, [x29, 3564]
LBB51:
	.loc 1 382 16 is_stmt 1
	bl	_smc_files__read_sms_values
	mov	x2, x0
	mov	x3, x1
	.loc 1 382 16 is_stmt 0 discriminator 2
	mov	w0, w2
	str	w0, [x29, 3612]
	mov	x0, x2
	asr	x0, x0, 32
	str	w0, [x29, 3608]
	mov	w0, w3
	str	w0, [x29, 3604]
	ubfx	x0, x3, 32, 8
	strb	w0, [x29, 3439]
LBE51:
	.loc 1 383 7 is_stmt 1
	ldrb	w0, [x29, 3439]
	cmp	w0, 0
	beq	L58
	.loc 1 383 22 discriminator 1
	ldrb	w0, [x29, 3747]
	cmp	w0, 0
	beq	L58
	.loc 1 384 21
	mov	w2, 0
	ldr	w1, [x29, 3612]
	ldr	w0, [x29, 3756]
	subs	w0, w1, w0
	bvc	L59
	mov	w2, 1
L59:
	mov	w1, w0
	.loc 1 384 21 is_stmt 0 discriminator 1
	mov	w0, w2
	cmp	w0, 0
	beq	L61
	.loc 1 384 21 discriminator 2
	mov	w1, 384
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L61:
	.loc 1 384 21 discriminator 3
	mov	w0, -2147483648
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	.loc 1 384 21 discriminator 6
	cmp	w0, 0
	beq	L62
	.loc 1 384 21 discriminator 7
	mov	w1, 384
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L62:
	.loc 1 384 18 is_stmt 1 discriminator 8
	mov	w2, 0
	ldr	w1, [x29, 3612]
	ldr	w0, [x29, 3756]
	subs	w0, w1, w0
	bvc	L63
	mov	w2, 1
L63:
	mov	w1, w0
	.loc 1 384 18 is_stmt 0 discriminator 10
	mov	w0, w2
	.loc 1 384 21 is_stmt 1 discriminator 10
	cmp	w0, 0
	beq	L65
	.loc 1 384 18 discriminator 11
	mov	w1, 384
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L65:
	.loc 1 384 21 discriminator 12
	mov	w0, w1
	.loc 1 384 18 discriminator 12
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [x29, 3432]
	.loc 1 385 21
	mov	w2, 0
	ldr	w1, [x29, 3608]
	ldr	w0, [x29, 3752]
	subs	w0, w1, w0
	bvc	L66
	mov	w2, 1
L66:
	mov	w1, w0
	.loc 1 385 21 is_stmt 0 discriminator 1
	mov	w0, w2
	cmp	w0, 0
	beq	L68
	.loc 1 385 21 discriminator 2
	mov	w1, 385
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L68:
	.loc 1 385 21 discriminator 3
	mov	w0, -2147483648
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	.loc 1 385 21 discriminator 6
	cmp	w0, 0
	beq	L69
	.loc 1 385 21 discriminator 7
	mov	w1, 385
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L69:
	.loc 1 385 18 is_stmt 1 discriminator 8
	mov	w2, 0
	ldr	w1, [x29, 3608]
	ldr	w0, [x29, 3752]
	subs	w0, w1, w0
	bvc	L70
	mov	w2, 1
L70:
	mov	w1, w0
	.loc 1 385 18 is_stmt 0 discriminator 10
	mov	w0, w2
	.loc 1 385 21 is_stmt 1 discriminator 10
	cmp	w0, 0
	beq	L72
	.loc 1 385 18 discriminator 11
	mov	w1, 385
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L72:
	.loc 1 385 21 discriminator 12
	mov	w0, w1
	.loc 1 385 18 discriminator 12
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [x29, 3428]
	.loc 1 386 21
	mov	w2, 0
	ldr	w1, [x29, 3604]
	ldr	w0, [x29, 3748]
	subs	w0, w1, w0
	bvc	L73
	mov	w2, 1
L73:
	mov	w1, w0
	.loc 1 386 21 is_stmt 0 discriminator 1
	mov	w0, w2
	cmp	w0, 0
	beq	L75
	.loc 1 386 21 discriminator 2
	mov	w1, 386
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L75:
	.loc 1 386 21 discriminator 3
	mov	w0, -2147483648
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	.loc 1 386 21 discriminator 6
	cmp	w0, 0
	beq	L76
	.loc 1 386 21 discriminator 7
	mov	w1, 386
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L76:
	.loc 1 386 18 is_stmt 1 discriminator 8
	mov	w2, 0
	ldr	w1, [x29, 3604]
	ldr	w0, [x29, 3748]
	subs	w0, w1, w0
	bvc	L77
	mov	w2, 1
L77:
	mov	w1, w0
	.loc 1 386 18 is_stmt 0 discriminator 10
	mov	w0, w2
	.loc 1 386 21 is_stmt 1 discriminator 10
	cmp	w0, 0
	beq	L79
	.loc 1 386 18 discriminator 11
	mov	w1, 386
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L79:
	.loc 1 386 21 discriminator 12
	mov	w0, w1
	.loc 1 386 18 discriminator 12
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [x29, 3424]
	.loc 1 388 25
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	.loc 1 388 10 discriminator 2
	cmp	w0, 0
	beq	L58
	.loc 1 388 60 discriminator 3
	mov	w2, 0
	ldr	w1, [x29, 3432]
	ldr	w0, [x29, 3428]
	adds	w0, w1, w0
	bvc	L80
	mov	w2, 1
L80:
	mov	w1, w0
	.loc 1 388 60 is_stmt 0 discriminator 4
	mov	w0, w2
	cmp	w0, 0
	beq	L82
	.loc 1 388 60 discriminator 5
	mov	w1, 388
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L82:
	.loc 1 388 80 is_stmt 1 discriminator 9
	mov	w2, 0
	ldr	w0, [x29, 3424]
	adds	w0, w1, w0
	bvc	L83
	mov	w2, 1
L83:
	mov	w1, w0
	.loc 1 388 80 is_stmt 0 discriminator 10
	mov	w0, w2
	cmp	w0, 0
	beq	L85
	.loc 1 388 80 discriminator 11
	mov	w1, 388
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L85:
	.loc 1 388 80 discriminator 12
	mov	w0, w1
	cmp	w0, 50
	cset	w0, gt
	and	w0, w0, 255
	.loc 1 388 42 is_stmt 1 discriminator 15
	cmp	w0, 0
	beq	L58
	.loc 1 389 25
	mov	w1, 0
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__set_turboP
	.loc 1 390 25
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__reset_spikesP
LBB52:
	.loc 1 391 22
	adrp	x0, lC99@PAGE
	add	x0, x0, lC99@PAGEOFF;
	str	x0, [x29, 1248]
	adrp	x0, lC31@PAGE
	add	x0, x0, lC31@PAGEOFF;
	str	x0, [x29, 1256]
	adrp	x0, lC100@PAGE
	add	x0, x0, lC100@PAGEOFF;
	str	x0, [x29, 1264]
	adrp	x0, lC32@PAGE
	add	x0, x0, lC32@PAGEOFF;
	str	x0, [x29, 1272]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, 240]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 224]
	bl	_smc_files__notify_user
L58:
LBE52:
	.loc 1 394 14
	ldr	w0, [x29, 3612]
	str	w0, [x29, 3756]
	.loc 1 395 14
	ldr	w0, [x29, 3608]
	str	w0, [x29, 3752]
	.loc 1 396 14
	ldr	w0, [x29, 3604]
	str	w0, [x29, 3748]
	.loc 1 397 22
	ldrb	w0, [x29, 3439]
	strb	w0, [x29, 3747]
	.loc 1 400 22
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__get_spike_countP
	.loc 1 400 39 discriminator 2
	cmp	w0, 2
	cset	w0, gt
	and	w19, w0, 255
	.loc 1 400 64 discriminator 2
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	.loc 1 400 64 is_stmt 0 discriminator 4
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 400 44 is_stmt 1 discriminator 4
	cmp	w19, 0
	ccmp	w0, 0, 4, ne
	cset	w0, ne
	and	w0, w0, 255
	.loc 1 400 7 discriminator 4
	cmp	w0, 0
	beq	L86
	.loc 1 401 22
	mov	w1, 1
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__set_turboP
LBB53:
	.loc 1 402 19
	adrp	x0, lC101@PAGE
	add	x0, x0, lC101@PAGEOFF;
	str	x0, [x29, 1280]
	adrp	x0, lC26@PAGE
	add	x0, x0, lC26@PAGEOFF;
	str	x0, [x29, 1288]
	adrp	x0, lC102@PAGE
	add	x0, x0, lC102@PAGEOFF;
	str	x0, [x29, 1296]
	adrp	x0, lC33@PAGE
	add	x0, x0, lC33@PAGEOFF;
	str	x0, [x29, 1304]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -240]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -256]
	bl	_smc_files__notify_user
LBE53:
LBB54:
	.loc 1 406 13
	add	x0, x29, 2808
	str	x0, [x29, 1312]
	adrp	x0, lC34@PAGE
	add	x0, x0, lC34@PAGEOFF;
	str	x0, [x29, 1320]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -224]
	bl	_system__strings__string_listIP
	.loc 1 408 25
	mov	x0, 20
	bl	___gnat_malloc
	mov	x4, x0
	.loc 1 408 25 is_stmt 0 discriminator 2
	adrp	x0, lC35@PAGE
	add	x0, x0, lC35@PAGEOFF;
	mov	x3, x4
	mov	x2, x0
	ldp	x0, x1, [x2]
	ldr	w2, [x2, 16]
	stp	x0, x1, [x3]
	str	w2, [x3, 16]
	add	x0, x4, 8
	str	x0, [x29, 1328]
	mov	x0, x4
	str	x0, [x29, 1336]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -208]
	.loc 1 408 22 is_stmt 1 discriminator 2
	add	x2, x29, 2560
	stp	x0, x1, [x2, 248]
	.loc 1 409 25
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 409 25 is_stmt 0 discriminator 2
	adrp	x0, lC36@PAGE
	add	x0, x0, lC36@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 1344]
	mov	x0, x3
	str	x0, [x29, 1352]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -192]
	.loc 1 409 22 is_stmt 1 discriminator 2
	add	x2, x29, 3072
	stp	x0, x1, [x2, -248]
	.loc 1 410 13
	add	x0, x29, 2808
	str	x0, [x29, 1360]
	adrp	x0, lC34@PAGE
	add	x0, x0, lC34@PAGEOFF;
	str	x0, [x29, 1368]
	add	x0, x29, 3184
	mov	x16, x0
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -176]
	bl	_smc_daemon__run_power_command.7
	.loc 1 411 24
	ldr	x0, [x29, 2808]
	cmp	x0, 0
	beq	L87
	.loc 1 411 24 is_stmt 0 discriminator 1
	ldr	x0, [x29, 2808]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 411 24 discriminator 3
	str	xzr, [x29, 2808]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2816]
L87:
	.loc 1 412 24 is_stmt 1
	ldr	x0, [x29, 2824]
	cmp	x0, 0
	beq	L88
	.loc 1 412 24 is_stmt 0 discriminator 1
	ldr	x0, [x29, 2824]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 412 24 discriminator 3
	str	xzr, [x29, 2824]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2832]
L88:
LBE54:
	.loc 1 416 29 is_stmt 1
	mov	w0, 1
	strb	w0, [x29, 3739]
	.loc 1 417 36
	bl	_ada__calendar__clock
	.loc 1 417 36 is_stmt 0 discriminator 2
	str	x0, [x29, 3728]
	.loc 1 418 26 is_stmt 1
	str	wzr, [x29, 3724]
	.loc 1 419 28
	str	wzr, [x29, 3720]
L86:
	.loc 1 423 7
	ldrb	w0, [x29, 3739]
	cmp	w0, 0
	beq	L89
	.loc 1 424 45
	ldr	s31, [x29, 3284]
	.loc 1 424 26
	ldr	s30, [x29, 3724]
	fadd	s31, s30, s31
	str	s31, [x29, 3724]
	.loc 1 425 49
	ldr	w1, [x29, 3720]
	mov	w0, 2147483647
	cmp	w1, w0
	bne	L90
	.loc 1 425 28 discriminator 1
	mov	w1, 425
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L90:
	.loc 1 425 28 is_stmt 0 discriminator 2
	ldr	w0, [x29, 3720]
	add	w0, w0, 1
	str	w0, [x29, 3720]
	.loc 1 428 19 is_stmt 1
	bl	_ada__calendar__clock
	.loc 1 428 19 is_stmt 0 discriminator 2
	ldr	x1, [x29, 3728]
	bl	_ada__calendar__Osubtract__2
	mov	x1, x0
	.loc 1 428 10 is_stmt 1 discriminator 4
	mov	x0, 58367
	movk	x0, 0x540b, lsl 16
	movk	x0, 0x2, lsl 32
	cmp	x1, x0
	ble	L89
	.loc 1 429 32
	strb	wzr, [x29, 3739]
LBB55:
	.loc 1 431 62
	ldr	s31, [x29, 3720]
	scvtf	s31, s31
	.loc 1 431 16
	ldr	s30, [x29, 3724]
	fdiv	s31, s30, s31
	str	s31, [x29, 3420]
	.loc 1 435 16
	ldr	s31, [x29, 3740]
	fcmpe	s31, #0.0
	bgt	L170
	b	L180
L170:
	.loc 1 436 24
	ldr	s30, [x29, 3420]
	ldr	s31, [x29, 3740]
	fsub	s31, s30, s31
	str	s31, [x29, 3416]
	.loc 1 437 60
	ldr	s31, [x29, 3420]
	ldr	s30, [x29, 3740]
	fdiv	s31, s30, s31
	.loc 1 437 27
	mov	w0, 32768
	movk	w0, 0x447b, lsl 16
	fmov	s30, w0
	fmul	s31, s31, s30
	str	s31, [x29, 3412]
	.loc 1 443 55
	bl	_ada__calendar__clock
	mov	x19, x0
	.loc 1 443 55 is_stmt 0 discriminator 2
	mov	x3, 0
	mov	w2, 1
	mov	w1, 1
	mov	w0, 1970
	bl	_ada__calendar__time_of
	.loc 1 443 55 discriminator 4
	mov	x1, x0
	mov	x0, x19
	bl	_ada__calendar__Osubtract__2
LEHE12:
	mov	x4, x0
	.loc 1 443 35 is_stmt 1 discriminator 6
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
LEHB13:
	sdiv	x5, x4, x0
LEHE13:
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
	bcc	L93
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L93:
	mov	x0, x5
	.loc 1 438 28
	ldr	s3, [x29, 3412]
	ldr	s2, [x29, 3416]
	ldr	s1, [x29, 3420]
	ldr	s0, [x29, 3740]
LEHB14:
	bl	_smc_files__write_pressure_report
LBB56:
	.loc 1 445 107
	add	x0, x29, 3080
	str	x0, [x29, 1376]
	adrp	x0, lC23@PAGE
	add	x0, x0, lC23@PAGEOFF;
	str	x0, [x29, 1384]
	mov	w2, 6
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -160]
	ldr	s0, [x29, 3412]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 445 107 is_stmt 0 discriminator 3
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2320]
	str	xzr, [x29, 2328]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, -240]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2600]
	ldr	x0, [x29, 2600]
	add	x0, x1, x0
	str	x0, [x29, 2600]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2592]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2304]
	str	xzr, [x29, 2312]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, -256]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2584]
	ldr	x0, [x29, 2584]
	add	x0, x1, x0
	str	x0, [x29, 2584]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2576]
	.loc 1 445 124 is_stmt 1 discriminator 3
	bic	w0, w2, w2, asr #31
	add	w0, w0, 68
	add	w19, w0, 5
LBB57:
	add	x0, x29, 2808
	str	x0, [x29, 1392]
	adrp	x0, lC21@PAGE
	add	x0, x0, lC21@PAGEOFF;
	str	x0, [x29, 1400]
	adrp	x0, lC103@PAGE
	add	x0, x0, lC103@PAGEOFF;
	str	x0, [x29, 1408]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 1416]
	add	x0, x29, 3080
	str	x0, [x29, 1424]
	mov	w0, 1
	str	w0, [x29, 3352]
	str	w2, [x29, 3356]
	add	x0, x29, 3352
	str	x0, [x29, 1432]
	adrp	x0, lC104@PAGE
	add	x0, x0, lC104@PAGEOFF;
	str	x0, [x29, 1440]
	adrp	x0, lC26@PAGE
	add	x0, x0, lC26@PAGEOFF;
	str	x0, [x29, 1448]
	add	x0, x29, 1536
	ldp	x6, x7, [x0, -96]
	add	x0, x29, 1536
	ldp	x4, x5, [x0, -112]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -128]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -144]
	bl	_system__concat_3__str_concat_3
LBE57:
	.loc 1 445 124 is_stmt 0 discriminator 6
	cmp	w19, 85
	ble	L94
	.loc 1 445 124 discriminator 7
	mov	w1, 445
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L94:
	.loc 1 445 124 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2288]
	str	xzr, [x29, 2296]
	add	x0, x29, 2048
	ldp	x2, x3, [x0, 240]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2568]
	ldr	x0, [x29, 2568]
	add	x0, x1, x0
	str	x0, [x29, 2568]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 2560]
	.loc 1 445 19 is_stmt 1 discriminator 8
	add	x0, x29, 2808
	str	x0, [x29, 1456]
	mov	w0, 1
	str	w0, [x29, 3360]
	str	w19, [x29, 3364]
	add	x0, x29, 3360
	str	x0, [x29, 1464]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -80]
	bl	_ada__text_io__put_line__2
	b	L89
L180:
LBE56:
	.loc 1 448 39
	ldr	s31, [x29, 3420]
	str	s31, [x29, 3740]
	.loc 1 449 28
	ldr	s0, [x29, 3420]
	bl	_smc_files__save_fan_calibration
LBB58:
	.loc 1 450 99
	add	x0, x29, 3064
	str	x0, [x29, 1472]
	adrp	x0, lC23@PAGE
	add	x0, x0, lC23@PAGEOFF;
	str	x0, [x29, 1480]
	mov	w2, 6
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -64]
	ldr	s0, [x29, 3420]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 450 99 is_stmt 0 discriminator 3
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2272]
	str	xzr, [x29, 2280]
	add	x0, x29, 2048
	ldp	x3, x4, [x0, 224]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2552]
	ldr	x0, [x29, 2552]
	add	x0, x1, x0
	str	x0, [x29, 2552]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2544]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2256]
	str	xzr, [x29, 2264]
	add	x0, x29, 2048
	ldp	x3, x4, [x0, 208]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 2536]
	ldr	x0, [x29, 2536]
	add	x0, x1, x0
	str	x0, [x29, 2536]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2528]
	.loc 1 450 116 is_stmt 1 discriminator 3
	bic	w0, w2, w2, asr #31
	add	w0, w0, 60
	add	w19, w0, 5
LBB59:
	add	x0, x29, 2808
	str	x0, [x29, 1488]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 1496]
	adrp	x0, lC105@PAGE
	add	x0, x0, lC105@PAGEOFF;
	str	x0, [x29, 1504]
	adrp	x0, lC18@PAGE
	add	x0, x0, lC18@PAGEOFF;
	str	x0, [x29, 1512]
	add	x0, x29, 3064
	str	x0, [x29, 1520]
	mov	w0, 1
	str	w0, [x29, 3368]
	str	w2, [x29, 3372]
	add	x0, x29, 3368
	str	x0, [x29, 1528]
	adrp	x0, lC79@PAGE
	add	x0, x0, lC79@PAGEOFF;
	str	x0, [x29, 1536]
	adrp	x0, lC26@PAGE
	add	x0, x0, lC26@PAGEOFF;
	str	x0, [x29, 1544]
	add	x0, x29, 1536
	ldp	x6, x7, [x0]
	add	x0, x29, 1536
	ldp	x4, x5, [x0, -16]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -32]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -48]
	bl	_system__concat_3__str_concat_3
LBE59:
	.loc 1 450 116 is_stmt 0 discriminator 6
	cmp	w19, 77
	ble	L95
	.loc 1 450 116 discriminator 7
	mov	w1, 450
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L95:
	.loc 1 450 116 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2240]
	str	xzr, [x29, 2248]
	add	x0, x29, 2048
	ldp	x2, x3, [x0, 192]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 2520]
	ldr	x0, [x29, 2520]
	add	x0, x1, x0
	str	x0, [x29, 2520]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 2512]
	.loc 1 450 19 is_stmt 1 discriminator 8
	add	x0, x29, 2808
	str	x0, [x29, 1552]
	mov	w0, 1
	str	w0, [x29, 3376]
	str	w19, [x29, 3380]
	add	x0, x29, 3376
	str	x0, [x29, 1560]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 16]
	bl	_ada__text_io__put_line__2
L89:
LBE58:
LBE55:
LBB60:
	.loc 1 457 16
	adrp	x0, lC83@PAGE
	add	x0, x0, lC83@PAGEOFF;
	str	x0, [x29, 1568]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1576]
	ldr	s0, [x29, 3804]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 32]
	bl	_smc_files__write_earu_temp
LBE60:
LBB61:
	.loc 1 458 16
	adrp	x0, lC84@PAGE
	add	x0, x0, lC84@PAGEOFF;
	str	x0, [x29, 1584]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1592]
	ldr	s0, [x29, 3800]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 48]
	bl	_smc_files__write_earu_temp
LBE61:
LBB62:
	.loc 1 459 16
	adrp	x0, lC85@PAGE
	add	x0, x0, lC85@PAGEOFF;
	str	x0, [x29, 1600]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1608]
	ldr	s0, [x29, 3796]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 64]
	bl	_smc_files__write_earu_temp
LBE62:
LBB63:
	.loc 1 460 16
	adrp	x0, lC86@PAGE
	add	x0, x0, lC86@PAGEOFF;
	str	x0, [x29, 1616]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1624]
	ldr	s0, [x29, 3792]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 80]
	bl	_smc_files__write_earu_temp
LBE63:
LBB64:
	.loc 1 461 16
	adrp	x0, lC87@PAGE
	add	x0, x0, lC87@PAGEOFF;
	str	x0, [x29, 1632]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1640]
	ldr	s0, [x29, 3788]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 96]
	bl	_smc_files__write_earu_temp
LBE64:
LBB65:
	.loc 1 462 16
	adrp	x0, lC88@PAGE
	add	x0, x0, lC88@PAGEOFF;
	str	x0, [x29, 1648]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1656]
	ldr	s0, [x29, 3784]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 112]
	bl	_smc_files__write_earu_temp
LBE65:
LBB66:
	.loc 1 463 16
	adrp	x0, lC89@PAGE
	add	x0, x0, lC89@PAGEOFF;
	str	x0, [x29, 1664]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1672]
	ldr	s0, [x29, 3780]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 128]
	bl	_smc_files__write_earu_temp
LBE66:
LBB67:
	.loc 1 464 16
	adrp	x0, lC90@PAGE
	add	x0, x0, lC90@PAGEOFF;
	str	x0, [x29, 1680]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1688]
	ldr	s0, [x29, 3776]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 144]
	bl	_smc_files__write_earu_temp
LBE67:
LBB68:
	.loc 1 465 16
	adrp	x0, lC106@PAGE
	add	x0, x0, lC106@PAGEOFF;
	str	x0, [x29, 1696]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1704]
	ldr	s0, [x29, 3772]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 160]
	bl	_smc_files__write_earu_temp
LBE68:
LBB69:
	.loc 1 466 16
	adrp	x0, lC107@PAGE
	add	x0, x0, lC107@PAGEOFF;
	str	x0, [x29, 1712]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1720]
	ldr	s0, [x29, 3768]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 176]
	bl	_smc_files__write_earu_temp
LBE69:
LBB70:
	.loc 1 467 16
	adrp	x0, lC97@PAGE
	add	x0, x0, lC97@PAGEOFF;
	str	x0, [x29, 1728]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1736]
	ldr	s0, [x29, 3812]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 192]
	bl	_smc_files__write_earu_temp
LBE70:
LBB71:
	.loc 1 469 16
	adrp	x0, lC59@PAGE
	add	x0, x0, lC59@PAGEOFF;
	str	x0, [x29, 1744]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1752]
	ldr	s31, [x29, 3284]
	fmov	s0, s31
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 208]
	bl	_smc_files__write_earu_fan
LBE71:
LBB72:
	.loc 1 470 16
	adrp	x0, lC60@PAGE
	add	x0, x0, lC60@PAGEOFF;
	str	x0, [x29, 1760]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1768]
	ldr	s31, [x29, 3280]
	fmov	s0, s31
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 224]
	bl	_smc_files__write_earu_fan
LBE72:
	.loc 1 471 50
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	.loc 1 471 16 discriminator 2
	cmp	w0, 0
	beq	L96
	.loc 1 471 16 is_stmt 0 discriminator 3
	mov	w0, 1
	b	L97
L96:
	.loc 1 471 16 discriminator 4
	mov	w0, 0
L97:
	.loc 1 471 16 discriminator 6
	bl	_smc_files__write_earu_turbo
	.loc 1 474 16 is_stmt 1
	bl	_ada__calendar__clock
	.loc 1 474 16 is_stmt 0 discriminator 2
	ldr	x1, [x29, 3760]
	bl	_ada__calendar__Osubtract__2
	mov	x1, x0
	.loc 1 474 7 is_stmt 1 discriminator 4
	mov	x0, 58367
	movk	x0, 0x540b, lsl 16
	movk	x0, 0x2, lsl 32
	cmp	x1, x0
	ble	L98
	.loc 1 475 33
	bl	_ada__calendar__clock
LEHE14:
	.loc 1 475 33 is_stmt 0 discriminator 2
	str	x0, [x29, 3760]
LBB73:
	add	x0, x29, 3184
	mov	x8, x0
LEHB15:
	bl	_system__secondary_stack__ss_mark
	.loc 1 481 41 is_stmt 1
	ldr	s30, [x29, 3772]
	movi	v31.2s, 0xcf, lsl 24
	fcmp	s30, s31
	blt	L99
	.loc 1 481 41 is_stmt 0 discriminator 2
	ldr	s30, [x29, 3772]
	movi	v31.2s, 0x4f, lsl 24
	fcmp	s30, s31
	bpl	L99
	b	L181
L99:
	.loc 1 481 41 discriminator 3
	mov	w1, 481
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L181:
	.loc 1 477 32 is_stmt 1
	add	x0, x29, 3184
	mov	x16, x0
	bl	_smc_daemon__get_day_str.4
	mov	x20, x0
	mov	x21, x1
	.loc 1 478 32
	add	x0, x29, 3184
	mov	x16, x0
	bl	_smc_daemon__get_time_str.5
	mov	x2, x0
	mov	x3, x1
	.loc 1 476 19
	ldr	s31, [x29, 3772]
	fcmpe	s31, #0.0
	bge	L171
	b	L182
L171:
	.loc 1 476 19 is_stmt 0 discriminator 1
	ldr	s30, [x29, 3772]
	mvni	v31.2s, 0xc1, lsl 24
	fadd	s31, s30, s31
	fcvtzs	w1, s31
	b	L104
L182:
	.loc 1 476 19 discriminator 2
	ldr	s30, [x29, 3772]
	mvni	v31.2s, 0xc1, lsl 24
	fsub	s31, s30, s31
	fcvtzs	w1, s31
L104:
	.loc 1 476 19 discriminator 4
	ldr	s31, [x29, 3808]
	mov	w0, 53248
	movk	w0, 0x461d, lsl 16
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L172
	b	L183
L172:
	.loc 1 476 19 discriminator 5
	mov	w0, 1
	b	L107
L183:
	.loc 1 476 19 discriminator 6
	mov	w0, 0
L107:
	.loc 1 476 19 discriminator 8
	ldr	s30, [x29, 3284]
	ldr	s31, [x29, 3280]
	fsub	s31, s30, s31
	fmov	s4, s31
	ldr	s3, [x29, 3816]
	mov	w6, w0
	mov	w5, 1
	ldr	s2, [x29, 3812]
	mov	w4, w1
	ldr	s1, [x29, 3800]
	ldr	s0, [x29, 3628]
	mov	x0, x20
	mov	x1, x21
	bl	_smc_files__log_telemetry_csv
LEHE15:
	.loc 1 476 0 is_stmt 1 discriminator 10
	mov	w19, 1
L142:
	.loc 1 476 0 is_stmt 0 discriminator 11
	add	x0, x29, 3184
	mov	x16, x0
LEHB16:
	bl	_smc_daemon__L_5__B305b___finalizer.6
LEHE16:
	.loc 1 476 0 discriminator 13
	cmp	w19, 1
	bne	L108
	.loc 1 476 0
	mov	w0, 1
L144:
	.loc 1 476 0 discriminator 14
	cmp	w0, 1
	bne	L109
L98:
LBE73:
	.loc 1 491 17 is_stmt 1
	ldr	s31, [x29, 3628]
	str	s31, [x29, 3820]
LEHB17:
LBB74:
	.loc 1 495 67
	bl	_ada__real_time__clock
	.loc 1 495 67 is_stmt 0 discriminator 2
	ldr	x1, [x29, 3496]
	bl	_ada__real_time__Osubtract__2
	.loc 1 495 67 discriminator 4
	str	x0, [x29, 3400]
	.loc 1 496 47 is_stmt 1
	mov	w0, 100
	bl	_ada__real_time__milliseconds
	.loc 1 496 47 is_stmt 0 discriminator 2
	str	x0, [x29, 3392]
	.loc 1 498 10 is_stmt 1
	ldr	x1, [x29, 3400]
	ldr	x0, [x29, 3392]
	cmp	x1, x0
	bge	L111
	.loc 1 499 13
	ldr	x1, [x29, 3400]
	ldr	x0, [x29, 3392]
	bl	_ada__real_time__Osubtract__3
	.loc 1 499 13 is_stmt 0 discriminator 2
	bl	_ada__real_time__to_duration
	.loc 1 499 13 discriminator 4
	bl	_ada__calendar__delays__delay_for
LBE74:
LBE28:
	.loc 1 502 12 is_stmt 1
	b	L111
L26:
LBB76:
	.loc 1 505 4
	adrp	x0, lC108@PAGE
	add	x0, x0, lC108@PAGEOFF;
	str	x0, [x29, 1776]
	adrp	x0, lC10@PAGE
	add	x0, x0, lC10@PAGEOFF;
	str	x0, [x29, 1784]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 240]
	bl	_ada__text_io__put_line__2
LBE76:
	.loc 1 508 4
	ldrb	w0, [x29, 3719]
	cmp	w0, 0
	beq	L112
LBB77:
	.loc 1 511 10
	add	x0, x29, 2808
	str	x0, [x29, 1792]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 1800]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -256]
	bl	_system__strings__string_listIP
	.loc 1 513 22
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 513 22 is_stmt 0 discriminator 2
	adrp	x0, lC37@PAGE
	add	x0, x0, lC37@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 1808]
	mov	x0, x3
	str	x0, [x29, 1816]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -240]
	.loc 1 513 19 is_stmt 1 discriminator 2
	add	x2, x29, 2560
	stp	x0, x1, [x2, 248]
	.loc 1 514 22
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 514 22 is_stmt 0 discriminator 2
	adrp	x0, lC38@PAGE
	add	x0, x0, lC38@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 1824]
	mov	x0, x3
	str	x0, [x29, 1832]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -224]
	.loc 1 514 19 is_stmt 1 discriminator 2
	add	x2, x29, 3072
	stp	x0, x1, [x2, -248]
	.loc 1 515 22
	mov	x0, 24
	bl	___gnat_malloc
	mov	x4, x0
	.loc 1 515 22 is_stmt 0 discriminator 2
	adrp	x0, lC39@PAGE
	add	x0, x0, lC39@PAGEOFF;
	mov	x3, x4
	mov	x2, x0
	ldp	x0, x1, [x2]
	ldr	x2, [x2, 16]
	stp	x0, x1, [x3]
	str	x2, [x3, 16]
	add	x0, x4, 8
	str	x0, [x29, 1840]
	mov	x0, x4
	str	x0, [x29, 1848]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -208]
	.loc 1 515 19 is_stmt 1 discriminator 2
	add	x2, x29, 3072
	stp	x0, x1, [x2, -232]
LBB78:
	.loc 1 516 21
	adrp	x0, lC109@PAGE
	add	x0, x0, lC109@PAGEOFF;
	str	x0, [x29, 1856]
	adrp	x0, lC15@PAGE
	add	x0, x0, lC15@PAGEOFF;
	str	x0, [x29, 1864]
	add	x0, x29, 2808
	str	x0, [x29, 1872]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 1880]
	add	x0, x29, 2048
	ldp	x2, x3, [x0, -176]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -192]
	bl	_system__os_lib__spawn
	.loc 1 516 21 is_stmt 0 discriminator 2
	strb	w0, [x29, 3391]
LBE78:
	.loc 1 517 21 is_stmt 1
	ldr	x0, [x29, 2808]
	cmp	x0, 0
	beq	L113
	.loc 1 517 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 2808]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 517 21 discriminator 3
	str	xzr, [x29, 2808]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2816]
L113:
	.loc 1 518 21 is_stmt 1
	ldr	x0, [x29, 2824]
	cmp	x0, 0
	beq	L114
	.loc 1 518 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 2824]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 518 21 discriminator 3
	str	xzr, [x29, 2824]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2832]
L114:
	.loc 1 519 21 is_stmt 1
	ldr	x0, [x29, 2840]
	cmp	x0, 0
	beq	L115
	.loc 1 519 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 2840]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 519 21 discriminator 3
	str	xzr, [x29, 2840]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2848]
L115:
LBB79:
	.loc 1 520 10 is_stmt 1
	adrp	x0, lC110@PAGE
	add	x0, x0, lC110@PAGEOFF;
	str	x0, [x29, 1888]
	adrp	x0, lC3@PAGE
	add	x0, x0, lC3@PAGEOFF;
	str	x0, [x29, 1896]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -160]
	bl	_ada__text_io__put_line__2
L112:
LBE79:
LBE77:
LBB80:
	.loc 1 527 7
	add	x0, x29, 2808
	str	x0, [x29, 1904]
	adrp	x0, lC34@PAGE
	add	x0, x0, lC34@PAGEOFF;
	str	x0, [x29, 1912]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -144]
	bl	_system__strings__string_listIP
	.loc 1 529 19
	mov	x0, 16
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 529 19 is_stmt 0 discriminator 2
	mov	w0, 1
	str	w0, [x3]
	mov	w0, 5
	str	w0, [x3, 4]
	add	x1, x3, 8
	adrp	x0, lC111@PAGE
	add	x0, x0, lC111@PAGEOFF;
	mov	x2, x1
	ldr	w1, [x0]
	ldrb	w0, [x0, 4]
	str	w1, [x2]
	strb	w0, [x2, 4]
	add	x0, x3, 8
	str	x0, [x29, 1920]
	mov	x0, x3
	str	x0, [x29, 1928]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -128]
	.loc 1 529 16 is_stmt 1 discriminator 2
	add	x2, x29, 2560
	stp	x0, x1, [x2, 248]
	.loc 1 530 19
	mov	x0, 24
	bl	___gnat_malloc
	mov	x4, x0
	.loc 1 530 19 is_stmt 0 discriminator 2
	adrp	x0, lC40@PAGE
	add	x0, x0, lC40@PAGEOFF;
	mov	x3, x4
	mov	x2, x0
	ldp	x0, x1, [x2]
	ldr	x2, [x2, 16]
	stp	x0, x1, [x3]
	str	x2, [x3, 16]
	add	x0, x4, 8
	str	x0, [x29, 1936]
	mov	x0, x4
	str	x0, [x29, 1944]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -112]
	.loc 1 530 16 is_stmt 1 discriminator 2
	add	x2, x29, 3072
	stp	x0, x1, [x2, -248]
LBB81:
	.loc 1 531 18
	adrp	x0, lC109@PAGE
	add	x0, x0, lC109@PAGEOFF;
	str	x0, [x29, 1952]
	adrp	x0, lC15@PAGE
	add	x0, x0, lC15@PAGEOFF;
	str	x0, [x29, 1960]
	add	x0, x29, 2808
	str	x0, [x29, 1968]
	adrp	x0, lC34@PAGE
	add	x0, x0, lC34@PAGEOFF;
	str	x0, [x29, 1976]
	add	x0, x29, 2048
	ldp	x2, x3, [x0, -80]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -96]
	bl	_system__os_lib__spawn
	.loc 1 531 18 is_stmt 0 discriminator 2
	strb	w0, [x29, 3390]
LBE81:
	.loc 1 532 18 is_stmt 1
	ldr	x0, [x29, 2808]
	cmp	x0, 0
	beq	L116
	.loc 1 532 18 is_stmt 0 discriminator 1
	ldr	x0, [x29, 2808]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 532 18 discriminator 3
	str	xzr, [x29, 2808]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2816]
L116:
	.loc 1 533 18 is_stmt 1
	ldr	x0, [x29, 2824]
	cmp	x0, 0
	beq	L117
	.loc 1 533 18 is_stmt 0 discriminator 1
	ldr	x0, [x29, 2824]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 533 18 discriminator 3
	str	xzr, [x29, 2824]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2832]
L117:
LBE80:
LBB82:
	.loc 1 538 7 is_stmt 1
	add	x0, x29, 2808
	str	x0, [x29, 1984]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 1992]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -64]
	bl	_system__strings__string_listIP
	.loc 1 540 19
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 540 19 is_stmt 0 discriminator 2
	adrp	x0, lC41@PAGE
	add	x0, x0, lC41@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 2000]
	mov	x0, x3
	str	x0, [x29, 2008]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -48]
	.loc 1 540 16 is_stmt 1 discriminator 2
	add	x2, x29, 2560
	stp	x0, x1, [x2, 248]
	.loc 1 541 19
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 541 19 is_stmt 0 discriminator 2
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 2016]
	mov	x0, x3
	str	x0, [x29, 2024]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -32]
	.loc 1 541 16 is_stmt 1 discriminator 2
	add	x2, x29, 3072
	stp	x0, x1, [x2, -248]
	.loc 1 542 19
	mov	x0, 72
	bl	___gnat_malloc
	mov	x2, x0
	.loc 1 542 19 is_stmt 0 discriminator 2
	adrp	x0, lC43@PAGE
	add	x0, x0, lC43@PAGEOFF;
	mov	x1, x2
	ldr	q28, [x0]
	ldr	q29, [x0, 16]
	ldr	q30, [x0, 32]
	ldr	q31, [x0, 48]
	ldr	x0, [x0, 64]
	str	q28, [x1]
	str	q29, [x1, 16]
	str	q30, [x1, 32]
	str	q31, [x1, 48]
	str	x0, [x1, 64]
	add	x0, x2, 8
	str	x0, [x29, 2032]
	mov	x0, x2
	str	x0, [x29, 2040]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -16]
	.loc 1 542 16 is_stmt 1 discriminator 2
	add	x2, x29, 3072
	stp	x0, x1, [x2, -232]
LBB83:
	.loc 1 543 18
	adrp	x0, lC70@PAGE
	add	x0, x0, lC70@PAGEOFF;
	str	x0, [x29, 2048]
	adrp	x0, lC15@PAGE
	add	x0, x0, lC15@PAGEOFF;
	str	x0, [x29, 2056]
	add	x0, x29, 2808
	str	x0, [x29, 2064]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 2072]
	add	x0, x29, 2048
	ldp	x2, x3, [x0, 16]
	add	x0, x29, 2048
	ldp	x0, x1, [x0]
	bl	_system__os_lib__spawn
	.loc 1 543 18 is_stmt 0 discriminator 2
	strb	w0, [x29, 3389]
LBE83:
LBB84:
	.loc 1 544 11 is_stmt 1
	mov	w0, 1
	str	w0, [x29, 3700]
L120:
	.loc 1 544 11 is_stmt 0 discriminator 10
	ldr	w0, [x29, 3700]
	cmp	w0, 3
	bgt	L118
	.loc 1 544 43 is_stmt 1 discriminator 2
	ldrsw	x0, [x29, 3700]
	sub	x0, x0, #1
	lsl	x0, x0, 4
	add	x1, x29, 2808
	ldr	x0, [x1, x0]
	.loc 1 544 43 is_stmt 0 discriminator 3
	cmp	x0, 0
	beq	L119
	.loc 1 544 43 discriminator 4
	ldrsw	x0, [x29, 3700]
	sub	x0, x0, #1
	lsl	x0, x0, 4
	add	x1, x29, 2808
	ldr	x0, [x1, x0]
	.loc 1 544 43 discriminator 6
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 544 43 discriminator 8
	ldrsw	x0, [x29, 3700]
	sub	x1, x0, #1
	lsl	x1, x1, 4
	add	x2, x29, 2808
	str	xzr, [x2, x1]
	.loc 1 544 43 discriminator 9
	sub	x0, x0, #1
	lsl	x0, x0, 4
	add	x1, x29, 2816
	adrp	x2, lC16@PAGE
	add	x2, x2, lC16@PAGEOFF;
	str	x2, [x1, x0]
L119:
	.loc 1 544 11 is_stmt 1 discriminator 5
	ldr	w0, [x29, 3700]
	add	w0, w0, 1
	str	w0, [x29, 3700]
	.loc 1 544 69
	b	L120
L118:
LBE84:
LBE82:
LBB85:
	.loc 1 546 4
	adrp	x0, lC112@PAGE
	add	x0, x0, lC112@PAGEOFF;
	str	x0, [x29, 2080]
	adrp	x0, lC44@PAGE
	add	x0, x0, lC44@PAGEOFF;
	str	x0, [x29, 2088]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 32]
	bl	_ada__text_io__put_line__2
LBE85:
LBB86:
	.loc 1 550 7
	add	x0, x29, 2808
	str	x0, [x29, 2096]
	adrp	x0, lC34@PAGE
	add	x0, x0, lC34@PAGEOFF;
	str	x0, [x29, 2104]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 48]
	bl	_system__strings__string_listIP
	.loc 1 552 19
	mov	x0, 20
	bl	___gnat_malloc
	.loc 1 552 19 is_stmt 0 discriminator 2
	adrp	x1, lC45@PAGE
	add	x2, x1, lC45@PAGEOFF;
	mov	x1, x0
	mov	x4, x2
	ldp	x2, x3, [x4]
	ldr	w4, [x4, 16]
	stp	x2, x3, [x1]
	str	w4, [x1, 16]
	add	x1, x0, 8
	str	x1, [x29, 2112]
	str	x0, [x29, 2120]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 64]
	.loc 1 552 16 is_stmt 1 discriminator 2
	add	x2, x29, 2560
	stp	x0, x1, [x2, 248]
	.loc 1 553 19
	mov	x0, 12
	bl	___gnat_malloc
	.loc 1 553 19 is_stmt 0 discriminator 2
	adrp	x1, lC46@PAGE
	add	x2, x1, lC46@PAGEOFF;
	mov	x1, x0
	ldr	x3, [x2]
	ldr	w2, [x2, 8]
	str	x3, [x1]
	str	w2, [x1, 8]
	add	x1, x0, 8
	str	x1, [x29, 2128]
	str	x0, [x29, 2136]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 80]
	.loc 1 553 16 is_stmt 1 discriminator 2
	add	x2, x29, 3072
	stp	x0, x1, [x2, -248]
	.loc 1 554 7
	add	x0, x29, 2808
	str	x0, [x29, 2144]
	adrp	x0, lC34@PAGE
	add	x0, x0, lC34@PAGEOFF;
	str	x0, [x29, 2152]
	add	x0, x29, 3184
	mov	x16, x0
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 96]
	bl	_smc_daemon__run_power_command.7
	.loc 1 555 18
	ldr	x0, [x29, 2808]
	cmp	x0, 0
	beq	L121
	.loc 1 555 18 is_stmt 0 discriminator 1
	ldr	x0, [x29, 2808]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 555 18 discriminator 3
	str	xzr, [x29, 2808]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2816]
L121:
	.loc 1 556 18 is_stmt 1
	ldr	x0, [x29, 2824]
	cmp	x0, 0
	beq	L122
	.loc 1 556 18 is_stmt 0 discriminator 1
	ldr	x0, [x29, 2824]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 556 18 discriminator 3
	str	xzr, [x29, 2824]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2832]
L122:
LBE86:
	.loc 1 560 17 is_stmt 1
	ldr	w0, [x29, 3224]
	ldr	x2, [x29, 3632]
	ldr	x1, [x29, 3672]
	bl	_smc_helper_write_key_hex
	.loc 1 560 17 is_stmt 0 discriminator 2
	str	w0, [x29, 3564]
	.loc 1 561 17 is_stmt 1
	ldr	w0, [x29, 3224]
	ldr	x2, [x29, 3632]
	ldr	x1, [x29, 3664]
	bl	_smc_helper_write_key_hex
	.loc 1 561 17 is_stmt 0 discriminator 2
	str	w0, [x29, 3564]
LBB87:
	.loc 1 562 4 is_stmt 1
	adrp	x0, lC113@PAGE
	add	x0, x0, lC113@PAGEOFF;
	str	x0, [x29, 2160]
	adrp	x0, lC47@PAGE
	add	x0, x0, lC47@PAGEOFF;
	str	x0, [x29, 2168]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 112]
	bl	_ada__text_io__put_line__2
LBE87:
	.loc 1 565 17
	ldr	w0, [x29, 3224]
	bl	_smc_helper_close
	.loc 1 565 17 is_stmt 0 discriminator 2
	str	w0, [x29, 3564]
LBB88:
	.loc 1 566 4 is_stmt 1
	adrp	x0, lC114@PAGE
	add	x0, x0, lC114@PAGEOFF;
	str	x0, [x29, 2176]
	adrp	x0, lC48@PAGE
	add	x0, x0, lC48@PAGEOFF;
	str	x0, [x29, 2184]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 128]
	bl	_ada__text_io__put_line__2
LBE88:
	.loc 1 569 4
	ldr	x0, [x29, 3688]
	bl	_interfaces__c__strings__free
	.loc 1 569 4 is_stmt 0 discriminator 2
	str	x0, [x29, 3688]
	.loc 1 570 4 is_stmt 1
	ldr	x0, [x29, 3680]
	bl	_interfaces__c__strings__free
	.loc 1 570 4 is_stmt 0 discriminator 2
	str	x0, [x29, 3680]
	.loc 1 571 4 is_stmt 1
	ldr	x0, [x29, 3672]
	bl	_interfaces__c__strings__free
	.loc 1 571 4 is_stmt 0 discriminator 2
	str	x0, [x29, 3672]
	.loc 1 572 4 is_stmt 1
	ldr	x0, [x29, 3664]
	bl	_interfaces__c__strings__free
	.loc 1 572 4 is_stmt 0 discriminator 2
	str	x0, [x29, 3664]
	.loc 1 573 4 is_stmt 1
	ldr	x0, [x29, 3656]
	bl	_interfaces__c__strings__free
	.loc 1 573 4 is_stmt 0 discriminator 2
	str	x0, [x29, 3656]
	.loc 1 574 4 is_stmt 1
	ldr	x0, [x29, 3648]
	bl	_interfaces__c__strings__free
	.loc 1 574 4 is_stmt 0 discriminator 2
	str	x0, [x29, 3648]
	.loc 1 575 4 is_stmt 1
	ldr	x0, [x29, 3640]
	bl	_interfaces__c__strings__free
	.loc 1 575 4 is_stmt 0 discriminator 2
	str	x0, [x29, 3640]
	.loc 1 576 4 is_stmt 1
	ldr	x0, [x29, 3632]
	bl	_interfaces__c__strings__free
	.loc 1 576 4 is_stmt 0 discriminator 2
	str	x0, [x29, 3632]
	.loc 1 578 4 is_stmt 1
	ldrb	w0, [x29, 3719]
	cmp	w0, 0
	beq	L123
	.loc 1 579 18
	ldr	x0, [x29, 3248]
	cmp	x0, 0
	beq	L123
	.loc 1 579 18 is_stmt 0 discriminator 1
	ldr	x0, [x29, 3248]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 579 18 discriminator 3
	str	xzr, [x29, 3248]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 3256]
L123:
LBB89:
	.loc 1 582 13 is_stmt 1
	adrp	x0, lC115@PAGE
	add	x0, x0, lC115@PAGEOFF;
	str	x0, [x29, 2192]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 2200]
	adrp	x0, lC116@PAGE
	add	x0, x0, lC116@PAGEOFF;
	str	x0, [x29, 2208]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 2216]
	add	x0, x29, 2048
	ldp	x2, x3, [x0, 160]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 144]
	bl	_smc_files__notify_user
LBE89:
LBB90:
	.loc 1 583 4
	adrp	x0, lC117@PAGE
	add	x0, x0, lC117@PAGEOFF;
	str	x0, [x29, 2224]
	adrp	x0, lC3@PAGE
	add	x0, x0, lC3@PAGEOFF;
	str	x0, [x29, 2232]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 176]
	bl	_ada__text_io__put_line__2
LEHE17:
LBE90:
	.loc 1 585 5
	mov	w19, 0
L145:
	.loc 1 585 0 discriminator 1
	add	x0, x29, 3184
	mov	x16, x0
LEHB18:
	bl	_smc_daemon___finalizer.8
LEHE18:
	.loc 1 585 0 is_stmt 0 discriminator 3
	cmp	w19, 1
	beq	L124
	mov	w0, 0
L147:
	.loc 1 585 5 is_stmt 1
	cmp	w0, 1
	beq	L125
	mov	w19, 0
L149:
	.loc 1 15 1
	bl	___gcc_nested_func_ptr_deleted
	.loc 1 15 1 is_stmt 0 discriminator 5
	cmp	w19, 1
	beq	L126
	.loc 1 585 5 is_stmt 1
	b	L184
L152:
	str	x0, [x29, 128]
	mov	w19, 0
LBB91:
	.loc 1 197 15
	b	L129
L6:
	ldr	x0, [x29, 128]
	str	x0, [x29, 2784]
	b	L130
L153:
	str	x0, [x29, 2784]
L130:
	mov	w0, 0
	b	L131
L7:
	ldr	x0, [x29, 2784]
	str	x0, [x29, 2792]
	b	L132
L154:
	str	x0, [x29, 120]
	mov	w19, 0
LBE91:
LBB92:
	.loc 1 198 15
	b	L134
L8:
	ldr	x0, [x29, 120]
	str	x0, [x29, 152]
	b	L135
L155:
	str	x0, [x29, 152]
L135:
	mov	w0, 0
	b	L136
L9:
	ldr	x0, [x29, 152]
	str	x0, [x29, 2792]
	b	L132
L157:
LBE92:
LBB93:
LBB21:
	.loc 1 242 0 discriminator 13
	mov	x2, x0
	mov	x0, x1
LEHB19:
LEHE19:
	mov	sp, x19
	b	L138
L156:
LBE21:
LBE93:
	.loc 1 250 7
	mov	x2, x0
	mov	x0, x1
L138:
	cmp	x0, 1
	beq	L139
	str	x2, [x29, 2792]
	b	L132
L139:
LBB94:
	.loc 1 250 7 is_stmt 0 discriminator 1
	str	x2, [x29, 3520]
	.loc 1 250 7 discriminator 2
	ldr	x0, [x29, 3520]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 3512]
LBB22:
	.loc 1 251 10 is_stmt 1
	adrp	x0, lC118@PAGE
	add	x0, x0, lC118@PAGEOFF;
	str	x0, [x29, 704]
	adrp	x0, lC21@PAGE
	add	x0, x0, lC21@PAGEOFF;
	str	x0, [x29, 712]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 192]
LEHB20:
	bl	_ada__text_io__put_line__2
LEHE20:
LBE22:
	.loc 1 250 7
	mov	x2, 0
	ldr	x1, [x29, 3512]
	ldr	x0, [x29, 3520]
LEHB21:
	bl	___gnat_end_handler_v1
	b	L21
L158:
	mov	x19, x0
	str	x19, [x29, 3504]
	.loc 1 250 7 is_stmt 0 discriminator 5
	ldr	x2, [x29, 3504]
	ldr	x1, [x29, 3512]
	ldr	x0, [x29, 3520]
	bl	___gnat_end_handler_v1
LEHE21:
	str	x19, [x29, 2792]
	b	L132
L159:
	str	x0, [x29, 112]
	mov	w19, 0
LBE94:
LBB95:
LBB75:
	.loc 1 476 19 is_stmt 1
	b	L142
L108:
	ldr	x0, [x29, 112]
	str	x0, [x29, 144]
	b	L143
L160:
	str	x0, [x29, 144]
L143:
	mov	w0, 0
	b	L144
L109:
	ldr	x0, [x29, 144]
	str	x0, [x29, 2792]
	b	L132
L151:
LBE75:
LBE95:
LBB96:
	.loc 1 219 7
	str	x0, [x29, 2792]
L132:
	mov	w19, 1
LBE96:
	.loc 1 15 1
	b	L145
L124:
	ldr	x0, [x29, 2792]
	str	x0, [x29, 136]
	b	L146
L161:
	str	x0, [x29, 136]
L146:
	mov	w0, 1
	b	L147
L125:
	ldr	x0, [x29, 136]
	str	x0, [x29, 104]
L150:
	mov	w19, 1
	b	L149
L126:
	ldr	x0, [x29, 104]
LEHB22:
	bl	__Unwind_Resume
L184:
	.loc 1 585 5
LEHE22:
	sub	sp, x29, #16
LCFI8:
	ldp	x29, x30, [sp, 16]
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	ldp	x27, x28, [sp, 96]
	add	sp, sp, 3840
LCFI9:
	ret
LFE1:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
	.align	2
LLSDA1:
	.byte	0xff
	.byte	0x9b
	.uleb128 LLSDATT1-LLSDATTD1
LLSDATTD1:
	.byte	0x1
	.uleb128 LLSDACSE1-LLSDACSB1
LLSDACSB1:
	.uleb128 LEHB0-LFB1
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB1
	.uleb128 LEHE1-LEHB1
	.uleb128 L151-LFB1
	.uleb128 0
	.uleb128 LEHB2-LFB1
	.uleb128 LEHE2-LEHB2
	.uleb128 L152-LFB1
	.uleb128 0
	.uleb128 LEHB3-LFB1
	.uleb128 LEHE3-LEHB3
	.uleb128 L153-LFB1
	.uleb128 0
	.uleb128 LEHB4-LFB1
	.uleb128 LEHE4-LEHB4
	.uleb128 L151-LFB1
	.uleb128 0
	.uleb128 LEHB5-LFB1
	.uleb128 LEHE5-LEHB5
	.uleb128 L154-LFB1
	.uleb128 0
	.uleb128 LEHB6-LFB1
	.uleb128 LEHE6-LEHB6
	.uleb128 L155-LFB1
	.uleb128 0
	.uleb128 LEHB7-LFB1
	.uleb128 LEHE7-LEHB7
	.uleb128 L151-LFB1
	.uleb128 0
	.uleb128 LEHB8-LFB1
	.uleb128 LEHE8-LEHB8
	.uleb128 L156-LFB1
	.uleb128 0x3
	.uleb128 LEHB9-LFB1
	.uleb128 LEHE9-LEHB9
	.uleb128 L157-LFB1
	.uleb128 0x3
	.uleb128 LEHB10-LFB1
	.uleb128 LEHE10-LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB11-LFB1
	.uleb128 LEHE11-LEHB11
	.uleb128 L156-LFB1
	.uleb128 0x3
	.uleb128 LEHB12-LFB1
	.uleb128 LEHE12-LEHB12
	.uleb128 L151-LFB1
	.uleb128 0
	.uleb128 LEHB13-LFB1
	.uleb128 LEHE13-LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB14-LFB1
	.uleb128 LEHE14-LEHB14
	.uleb128 L151-LFB1
	.uleb128 0
	.uleb128 LEHB15-LFB1
	.uleb128 LEHE15-LEHB15
	.uleb128 L159-LFB1
	.uleb128 0
	.uleb128 LEHB16-LFB1
	.uleb128 LEHE16-LEHB16
	.uleb128 L160-LFB1
	.uleb128 0
	.uleb128 LEHB17-LFB1
	.uleb128 LEHE17-LEHB17
	.uleb128 L151-LFB1
	.uleb128 0
	.uleb128 LEHB18-LFB1
	.uleb128 LEHE18-LEHB18
	.uleb128 L161-LFB1
	.uleb128 0
	.uleb128 LEHB19-LFB1
	.uleb128 LEHE19-LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB20-LFB1
	.uleb128 LEHE20-LEHB20
	.uleb128 L158-LFB1
	.uleb128 0
	.uleb128 LEHB21-LFB1
	.uleb128 LEHE21-LEHB21
	.uleb128 L151-LFB1
	.uleb128 0
	.uleb128 LEHB22-LFB1
	.uleb128 LEHE22-LEHB22
	.uleb128 0
	.uleb128 0
LLSDACSE1:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align	2
L_got_pcr0:
	.long	___gnat_others_value@GOT-L_got_pcr0
LLSDATT1:
	.text
	.const
	.align	2
lC0:
	.word	1
	.word	4
	.align	2
lC1:
	.word	1
	.word	2
	.align	2
lC2:
	.word	1
	.word	1
	.align	2
lC3:
	.word	1
	.word	50
	.align	2
lC4:
	.word	1
	.word	84
	.align	2
lC5:
	.word	1
	.word	62
	.align	2
lC6:
	.word	1
	.word	7
	.align	2
lC7:
	.word	1
	.word	49
	.align	2
lC9:
	.word	1
	.word	68
	.align	2
lC10:
	.word	1
	.word	57
	.align	2
lC11:
	.word	1
	.word	54
	.align	2
lC12:
	.word	1
	.word	3
	.align	3
lC69:
	.ascii "unload"
	.align	2
lC13:
	.word	1
	.word	2
	.ascii "-w"
	.space 2
	.align	2
lC14:
	.word	1
	.word	61
	.ascii "/System/Library/LaunchDaemons/com.apple.thermalmonitord.plist"
	.space 3
	.align	2
lC15:
	.word	1
	.word	14
	.align	2
lC16:
	.space 8
	.align	2
lC18:
	.word	1
	.word	60
	.align	3
lC72:
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/ml_venv/bin/python3"
	.align	3
lC73:
	.ascii "/usr/local/smcSystemDemandNow/ml_venv/bin/python3"
	.align	3
lC74:
	.ascii "/opt/homebrew/bin/python3"
	.align	2
lC19:
	.word	1
	.word	64
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/python/inference_ane.py"
	.align	2
lC20:
	.word	1
	.word	55
	.align	2
lC22:
	.word	1
	.word	69
	.align	2
lC23:
	.word	1
	.word	12
	.align	2
lC24:
	.word	1
	.word	75
	.align	2
lC25:
	.word	1
	.word	58
	.align	2
lC26:
	.word	1
	.word	5
	.align	2
lC27:
	.word	1
	.word	97
	.align	2
lC28:
	.word	1
	.word	9
	.align	2
lC29:
	.word	1
	.word	66
	.align	2
lC30:
	.word	1
	.word	1
	.align	2
lC31:
	.word	1
	.word	6
	.align	2
lC32:
	.word	1
	.word	63
	.align	2
lC33:
	.word	1
	.word	72
	.align	2
lC34:
	.word	1
	.word	2
	.align	2
lC35:
	.word	1
	.word	9
	.ascii "thermaldp"
	.space 3
	.align	2
lC36:
	.word	1
	.word	1
	.ascii "1"
	.space 3
	.align	2
lC21:
	.word	1
	.word	85
	.align	2
lC37:
	.word	1
	.word	2
	.ascii "-9"
	.space 2
	.align	2
lC38:
	.word	1
	.word	2
	.ascii "-f"
	.space 2
	.align	2
lC39:
	.word	1
	.word	16
	.ascii "inference_ane.py"
	.align	3
lC111:
	.ascii "-CONT"
	.align	2
lC40:
	.word	1
	.word	15
	.ascii "thermalmonitord"
	.space 1
	.align	2
lC41:
	.word	1
	.word	4
	.ascii "load"
	.align	2
lC42:
	.word	1
	.word	2
	.ascii "-w"
	.space 2
	.align	2
lC43:
	.word	1
	.word	61
	.ascii "/System/Library/LaunchDaemons/com.apple.thermalmonitord.plist"
	.space 3
	.align	2
lC44:
	.word	1
	.word	79
	.align	2
lC45:
	.word	1
	.word	9
	.ascii "thermaldp"
	.space 3
	.align	2
lC46:
	.word	1
	.word	1
	.ascii "0"
	.space 3
	.align	2
lC47:
	.word	1
	.word	64
	.align	2
lC48:
	.word	1
	.word	48
	.text
	.const
	.align	3
lC119:
	.ascii "/usr/sbin/pmset"
	.text
	.align	2
_smc_daemon__run_power_command.7:
LFB3:
	.loc 1 119 4
	stp	x29, x30, [sp, -64]!
LCFI10:
	mov	x29, sp
LCFI11:
	stp	x0, x1, [x29, 32]
	str	x16, [x29, 24]
	.loc 1 119 4
	ldr	x0, [x29, 40]
	ldr	w0, [x0]
	ldr	x1, [x29, 40]
	ldr	w1, [x1, 4]
LBB97:
	cmp	w1, w0
	.loc 1 119 4 is_stmt 0 discriminator 4
	cmp	w1, w0
	blt	L189
	.loc 1 119 4 discriminator 5
	sxtw	x9, w1
	sxtw	x8, w0
	sub	x8, x9, x8
	add	x8, x8, 1
	mov	x2, x8
	mov	x3, 0
	lsr	x8, x2, 57
	lsl	x5, x3, 7
	mov	x9, x5
	add	x8, x8, x9
	mov	x5, x8
	lsl	x4, x2, 7
L189:
	.loc 1 119 4 discriminator 8
	cmp	w1, w0
LBB98:
	.loc 1 122 18 is_stmt 1
	adrp	x0, lC119@PAGE
	add	x6, x0, lC119@PAGEOFF;
	adrp	x0, lC49@PAGE
	add	x7, x0, lC49@PAGEOFF;
	ldp	x2, x3, [x29, 32]
	mov	x0, x6
	mov	x1, x7
	bl	_system__os_lib__spawn
	.loc 1 122 18 is_stmt 0 discriminator 1
	strb	w0, [x29, 63]
LBE98:
	.loc 1 123 8 is_stmt 1
	nop
LBE97:
	ldp	x29, x30, [sp], 64
LCFI12:
	ret
LFE3:
	.const
	.align	2
lC49:
	.word	1
	.word	15
	.text
	.const
	.align	3
lC120:
	.ascii ":"
	.text
	.align	2
_smc_daemon__get_time_str.5:
LFB4:
	.loc 1 126 4
	sub	sp, sp, #688
LCFI13:
	stp	x29, x30, [sp, 32]
LCFI14:
	add	x29, sp, 32
LCFI15:
	stp	x19, x20, [sp, 48]
	stp	x21, x22, [sp, 64]
	stp	x23, x24, [sp, 80]
	stp	x25, x26, [sp, 96]
	stp	x27, x28, [sp, 112]
LCFI16:
	str	x16, [x29, 456]
	mov	x0, sp
	str	x0, [x29, 448]
	.loc 1 128 43
	bl	_ada__calendar__clock
	.loc 1 128 43 is_stmt 0 discriminator 2
	str	x0, [x29, 640]
LBB99:
	.loc 1 135 7 is_stmt 1
	add	x0, x29, 472
	mov	x8, x0
	ldr	x0, [x29, 640]
	bl	_ada__calendar__split
	.loc 1 135 7 is_stmt 0 discriminator 2
	ldr	w0, [x29, 472]
	str	w0, [x29, 636]
	ldr	w0, [x29, 476]
	str	w0, [x29, 632]
	ldr	w0, [x29, 480]
	str	w0, [x29, 628]
	ldr	x0, [x29, 488]
	str	x0, [x29, 616]
LBE99:
	.loc 1 136 15 is_stmt 1
	ldr	x4, [x29, 616]
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	sdiv	x5, x4, x0
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
	bcc	L194
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L194:
	mov	x1, x5
	cmp	x1, 0
	blt	L195
	.loc 1 136 15 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L196
L195:
	.loc 1 136 15 discriminator 3
	mov	w1, 136
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L196:
	.loc 1 136 33 is_stmt 1 discriminator 4
	mov	w2, w1
	.loc 1 136 12 discriminator 4
	mov	w0, 46021
	movk	w0, 0x91a2, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	add	w0, w2, w0
	asr	w1, w0, 11
	asr	w0, w2, 31
	sub	w0, w1, w0
	str	w0, [x29, 612]
	.loc 1 137 15
	ldr	x4, [x29, 616]
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	sdiv	x5, x4, x0
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
	bcc	L197
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L197:
	mov	x1, x5
	cmp	x1, 0
	blt	L198
	.loc 1 137 15 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L199
L198:
	.loc 1 137 15 discriminator 3
	mov	w1, 137
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L199:
	.loc 1 137 33 is_stmt 1 discriminator 4
	mov	w2, w1
	mov	w0, 3600
	sdiv	w1, w2, w0
	mov	w0, 3600
	mul	w0, w1, w0
	sub	w2, w2, w0
	.loc 1 137 11 discriminator 4
	mov	w0, 34953
	movk	w0, 0x8888, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	add	w0, w2, w0
	asr	w1, w0, 5
	asr	w0, w2, 31
	sub	w0, w1, w0
	str	w0, [x29, 608]
	.loc 1 138 14
	ldr	x4, [x29, 616]
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	sdiv	x5, x4, x0
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
	bcc	L200
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L200:
	mov	x1, x5
	cmp	x1, 0
	blt	L201
	.loc 1 138 14 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L202
L201:
	.loc 1 138 14 discriminator 3
	mov	w1, 138
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L202:
	.loc 1 138 32 is_stmt 1 discriminator 4
	mov	w2, w1
	.loc 1 138 11 discriminator 4
	mov	w0, 60
	sdiv	w1, w2, w0
	mov	w0, 60
	mul	w0, w1, w0
	sub	w0, w2, w0
	str	w0, [x29, 604]
	.loc 1 139 24
	add	x0, x29, 528
	str	x0, [x29, 256]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 264]
	ldp	x1, x2, [x29, 256]
	ldr	w0, [x29, 612]
	bl	_system__img_int__impl__image_integer
	.loc 1 139 24 is_stmt 0 discriminator 2
	str	w0, [x29, 256]
	ldr	w0, [x29, 256]
	bic	w0, w0, w0, asr #31
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x2, x21, 3
	str	x2, [x29, 440]
	ldr	x0, [x29, 440]
	add	x0, x1, x0
	str	x0, [x29, 440]
	lsl	x1, x20, 3
	str	x1, [x29, 432]
	.loc 1 140 23 is_stmt 1
	add	x0, x29, 512
	str	x0, [x29, 112]
	adrp	x0, lC8@PAGE
	add	x1, x0, lC8@PAGEOFF;
	str	x1, [x29, 120]
	ldp	x1, x2, [x29, 112]
	ldr	w0, [x29, 608]
	bl	_system__img_int__impl__image_integer
	mov	w26, w0
	.loc 1 140 23 is_stmt 0 discriminator 2
	bic	w0, w26, w26, asr #31
	sxtw	x0, w0
	mov	x22, x0
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x2, x23, 3
	str	x2, [x29, 424]
	ldr	x0, [x29, 424]
	add	x0, x1, x0
	str	x0, [x29, 424]
	lsl	x1, x22, 3
	str	x1, [x29, 416]
	.loc 1 141 23 is_stmt 1
	add	x0, x29, 496
	str	x0, [x29, 128]
	adrp	x0, lC8@PAGE
	add	x1, x0, lC8@PAGEOFF;
	str	x1, [x29, 136]
	ldp	x1, x2, [x29, 128]
	ldr	w0, [x29, 604]
	bl	_system__img_int__impl__image_integer
	mov	w19, w0
	.loc 1 141 23 is_stmt 0 discriminator 2
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	mov	x24, x0
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x2, x25, 3
	str	x2, [x29, 408]
	ldr	x0, [x29, 408]
	add	x0, x1, x0
	str	x0, [x29, 408]
	lsl	x1, x24, 3
	str	x1, [x29, 400]
	.loc 1 139 14 is_stmt 1
	add	x0, x29, 528
	str	x0, [x29, 144]
	mov	w0, 1
	str	w0, [x29, 544]
	ldr	w0, [x29, 256]
	str	w0, [x29, 548]
	add	x0, x29, 544
	str	x0, [x29, 152]
	mov	w2, 2
	ldp	x0, x1, [x29, 144]
	bl	_ada__strings__fixed__trim
	.loc 1 139 14 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 140 14 is_stmt 1
	add	x0, x29, 512
	str	x0, [x29, 160]
	mov	w0, 1
	str	w0, [x29, 552]
	str	w26, [x29, 556]
	add	x0, x29, 552
	str	x0, [x29, 168]
	mov	w2, 2
	ldp	x0, x1, [x29, 160]
	bl	_ada__strings__fixed__trim
	.loc 1 140 14 is_stmt 0 discriminator 4
	mov	x22, x0
	mov	x23, x1
	.loc 1 141 14 is_stmt 1
	add	x0, x29, 496
	str	x0, [x29, 176]
	mov	w0, 1
	str	w0, [x29, 560]
	str	w19, [x29, 564]
	add	x0, x29, 560
	str	x0, [x29, 184]
	mov	w2, 2
	ldp	x0, x1, [x29, 176]
	bl	_ada__strings__fixed__trim
	.loc 1 141 14 is_stmt 0 discriminator 4
	mov	x4, x0
	mov	x5, x1
	.loc 1 140 55 is_stmt 1
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L203
	.loc 1 140 55 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w2, w0, 1
	b	L204
L203:
	.loc 1 140 55 discriminator 6
	mov	w2, 0
L204:
	.loc 1 140 55 discriminator 8
	add	w3, w2, 1
	mov	x0, x23
	ldr	w1, [x0, 4]
	mov	x0, x23
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L205
	.loc 1 140 55 discriminator 9
	mov	x0, x23
	ldr	w1, [x0, 4]
	mov	x0, x23
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L206
L205:
	.loc 1 140 55 discriminator 10
	mov	w0, 0
L206:
	.loc 1 140 55 discriminator 12
	add	w0, w3, w0
	add	w3, w0, 1
	mov	x0, x5
	ldr	w1, [x0, 4]
	mov	x0, x5
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L207
	.loc 1 140 55 discriminator 13
	mov	x0, x5
	ldr	w1, [x0, 4]
	mov	x0, x5
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L208
L207:
	.loc 1 140 55 discriminator 14
	mov	w0, 0
L208:
	.loc 1 140 55 discriminator 16
	add	w3, w3, w0
	cmp	w2, 0
	beq	L209
	.loc 1 140 55 discriminator 17
	mov	x0, x21
	ldr	w0, [x0]
	str	w0, [x29, 652]
	b	L210
L209:
	.loc 1 140 55 discriminator 18
	mov	w0, 1
	str	w0, [x29, 652]
L210:
	.loc 1 140 55 discriminator 20
	sub	w1, w3, #1
	mov	w2, 0
	ldr	w0, [x29, 652]
	adds	w0, w0, w1
	bvc	L211
	mov	w2, 1
L211:
	.loc 1 140 55 discriminator 21
	mov	w0, w2
	cmp	w0, 0
	beq	L213
	.loc 1 140 55 discriminator 22
	mov	w1, 140
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L213:
	.loc 1 140 55 discriminator 23
	sub	w1, w3, #1
	ldr	w0, [x29, 652]
	adds	w0, w0, w1
	.loc 1 140 55 discriminator 26
	str	w0, [x29, 600]
	.loc 1 140 55 discriminator 27
	ldrsw	x0, [x29, 652]
	str	x0, [x29, 592]
	ldrsw	x0, [x29, 600]
	str	x0, [x29, 584]
	ldrsw	x1, [x29, 600]
	ldrsw	x0, [x29, 652]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 336]
	str	xzr, [x29, 344]
	ldp	x6, x7, [x29, 336]
	mov	x0, x6
	lsr	x1, x0, 61
	mov	x0, x7
	lsl	x0, x0, 3
	str	x0, [x29, 392]
	ldr	x0, [x29, 392]
	add	x0, x1, x0
	str	x0, [x29, 392]
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 384]
	ldrsw	x1, [x29, 600]
	ldrsw	x0, [x29, 652]
	sub	x0, x1, x0
	add	x24, x0, 1
	cmp	w3, 0
	ble	L216
	.loc 1 140 55 discriminator 28
	ldr	w0, [x29, 652]
	cmp	w0, 0
	bgt	L216
	.loc 1 140 55 discriminator 30
	mov	w1, 140
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L216:
	.loc 1 140 55 discriminator 31
	ldrsw	x1, [x29, 600]
	ldrsw	x0, [x29, 652]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 320]
	str	xzr, [x29, 328]
	ldp	x2, x3, [x29, 320]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 376]
	ldr	x0, [x29, 376]
	add	x0, x1, x0
	str	x0, [x29, 376]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 368]
	ldrsw	x1, [x29, 600]
	ldrsw	x0, [x29, 652]
	sub	x0, x1, x0
	add	x0, x0, 1
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	add	x0, sp, 32
	str	x0, [x29, 576]
LBB100:
	.loc 1 140 55 discriminator 33
	ldr	x0, [x29, 576]
	str	x0, [x29, 192]
	ldr	w0, [x29, 652]
	str	w0, [x29, 568]
	ldr	w0, [x29, 600]
	str	w0, [x29, 572]
	add	x0, x29, 568
	str	x0, [x29, 200]
	adrp	x0, lC120@PAGE
	add	x0, x0, lC120@PAGEOFF;
	str	x0, [x29, 208]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 216]
	adrp	x0, lC120@PAGE
	add	x0, x0, lC120@PAGEOFF;
	str	x0, [x29, 224]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 232]
	stp	x4, x5, [sp, 16]
	ldp	x0, x1, [x29, 224]
	stp	x0, x1, [sp]
	mov	x6, x22
	mov	x7, x23
	ldp	x4, x5, [x29, 208]
	mov	x2, x20
	mov	x3, x21
	ldp	x0, x1, [x29, 192]
	bl	_system__concat_5__str_concat_5
LBE100:
	.loc 1 126 4 is_stmt 1
	ldrsw	x1, [x29, 600]
	ldrsw	x0, [x29, 652]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 304]
	str	xzr, [x29, 312]
	ldp	x2, x3, [x29, 304]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 360]
	ldr	x1, [x29, 360]
	add	x0, x0, x1
	str	x0, [x29, 360]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 352]
	ldrsw	x1, [x29, 600]
	ldrsw	x0, [x29, 652]
	sub	x0, x1, x0
	add	x0, x0, 9
	str	x0, [x29, 288]
	str	xzr, [x29, 296]
	ldp	x2, x3, [x29, 288]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x28, x1, 3
	mov	x1, x28
	add	x0, x0, x1
	mov	x28, x0
	mov	x0, x2
	lsl	x27, x0, 3
	mov	x0, 31
	adds	x1, x27, x0
	mov	x0, 0
	adc	x0, x28, x0
	str	x1, [x29, 272]
	str	x0, [x29, 280]
	ldp	x1, x2, [x29, 272]
	mov	x0, x1
	and	x0, x0, -32
	str	x0, [x29, 96]
	mov	x0, -1
	mov	x1, x2
	and	x0, x1, x0
	str	x0, [x29, 104]
	.loc 1 139 7
	ldrsw	x1, [x29, 600]
	ldrsw	x0, [x29, 652]
	sub	x0, x1, x0
	add	x0, x0, 12
	and	x0, x0, -4
	mov	x1, 4
	bl	_system__secondary_stack__ss_allocate
	mov	x19, x0
	.loc 1 139 7 is_stmt 0 discriminator 6
	mov	x0, x19
	ldr	w1, [x29, 652]
	str	w1, [x0]
	ldr	w1, [x29, 600]
	str	w1, [x0, 4]
	add	x0, x0, 8
	ldr	x1, [x29, 576]
	mov	x2, x24
	bl	_memcpy
	.loc 1 139 7 discriminator 7
	mov	x0, x19
	add	x0, x0, 8
	str	x0, [x29, 240]
	mov	x0, x19
	str	x0, [x29, 248]
	.loc 1 142 8 is_stmt 1
	ldr	x0, [x29, 448]
	mov	sp, x0
	.loc 1 139 7
	ldp	x0, x1, [x29, 240]
	.loc 1 142 8
	sub	sp, x29, #32
LCFI17:
	ldp	x29, x30, [sp, 32]
	ldp	x19, x20, [sp, 48]
	ldp	x21, x22, [sp, 64]
	ldp	x23, x24, [sp, 80]
	ldp	x25, x26, [sp, 96]
	ldp	x27, x28, [sp, 112]
	add	sp, sp, 688
LCFI18:
	ret
LFE4:
	.const
	.align	3
lC121:
	.ascii "-"
	.text
	.align	2
_smc_daemon__get_day_str.4:
LFB5:
	.loc 1 144 4
	sub	sp, sp, #672
LCFI19:
	stp	x29, x30, [sp, 32]
LCFI20:
	add	x29, sp, 32
LCFI21:
	stp	x19, x20, [sp, 48]
	stp	x21, x22, [sp, 64]
	stp	x23, x24, [sp, 80]
	stp	x25, x26, [sp, 96]
	stp	x27, x28, [sp, 112]
LCFI22:
	str	x16, [x29, 456]
	mov	x0, sp
	str	x0, [x29, 448]
	.loc 1 146 43
	bl	_ada__calendar__clock
	.loc 1 146 43 is_stmt 0 discriminator 2
	str	x0, [x29, 624]
LBB101:
	.loc 1 152 7 is_stmt 1
	add	x0, x29, 464
	mov	x8, x0
	ldr	x0, [x29, 624]
	bl	_ada__calendar__split
	.loc 1 152 7 is_stmt 0 discriminator 2
	ldr	w0, [x29, 464]
	str	w0, [x29, 620]
	ldr	w0, [x29, 468]
	str	w0, [x29, 616]
	ldr	w0, [x29, 472]
	str	w0, [x29, 612]
	ldr	x0, [x29, 480]
	str	x0, [x29, 600]
LBE101:
	.loc 1 153 24 is_stmt 1
	add	x0, x29, 520
	str	x0, [x29, 112]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 120]
	ldp	x1, x2, [x29, 112]
	ldr	w0, [x29, 620]
	bl	_system__img_int__impl__image_integer
	mov	w28, w0
	.loc 1 153 24 is_stmt 0 discriminator 2
	bic	w0, w28, w28, asr #31
	sxtw	x0, w0
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x27, x21, 3
	mov	x0, x27
	add	x0, x1, x0
	mov	x27, x0
	lsl	x26, x20, 3
	.loc 1 154 25 is_stmt 1
	add	x0, x29, 504
	str	x0, [x29, 128]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 136]
	ldp	x1, x2, [x29, 128]
	ldr	w0, [x29, 616]
	bl	_system__img_int__impl__image_integer
	mov	w26, w0
	.loc 1 154 25 is_stmt 0 discriminator 2
	bic	w0, w26, w26, asr #31
	sxtw	x0, w0
	mov	x22, x0
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x0, x23, 3
	str	x0, [x29, 424]
	ldr	x0, [x29, 424]
	add	x0, x1, x0
	str	x0, [x29, 424]
	lsl	x0, x22, 3
	str	x0, [x29, 416]
	.loc 1 155 23 is_stmt 1
	add	x0, x29, 488
	str	x0, [x29, 144]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 152]
	ldp	x1, x2, [x29, 144]
	ldr	w0, [x29, 612]
	bl	_system__img_int__impl__image_integer
	mov	w19, w0
	.loc 1 155 23 is_stmt 0 discriminator 2
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	mov	x24, x0
	mov	x25, 0
	lsr	x1, x24, 61
	lsl	x0, x25, 3
	str	x0, [x29, 408]
	ldr	x0, [x29, 408]
	add	x0, x1, x0
	str	x0, [x29, 408]
	lsl	x0, x24, 3
	str	x0, [x29, 400]
	.loc 1 153 14 is_stmt 1
	add	x0, x29, 520
	str	x0, [x29, 160]
	mov	w0, 1
	str	w0, [x29, 536]
	str	w28, [x29, 540]
	add	x0, x29, 536
	str	x0, [x29, 168]
	mov	w2, 2
	ldp	x0, x1, [x29, 160]
	bl	_ada__strings__fixed__trim
	.loc 1 153 14 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 154 14 is_stmt 1
	add	x0, x29, 504
	str	x0, [x29, 176]
	mov	w0, 1
	str	w0, [x29, 544]
	str	w26, [x29, 548]
	add	x0, x29, 544
	str	x0, [x29, 184]
	mov	w2, 2
	ldp	x0, x1, [x29, 176]
	bl	_ada__strings__fixed__trim
	.loc 1 154 14 is_stmt 0 discriminator 4
	mov	x22, x0
	mov	x23, x1
	.loc 1 155 14 is_stmt 1
	add	x0, x29, 488
	str	x0, [x29, 192]
	mov	w0, 1
	str	w0, [x29, 552]
	str	w19, [x29, 556]
	add	x0, x29, 552
	str	x0, [x29, 200]
	mov	w2, 2
	ldp	x0, x1, [x29, 192]
	bl	_ada__strings__fixed__trim
	.loc 1 155 14 is_stmt 0 discriminator 4
	mov	x4, x0
	mov	x5, x1
	.loc 1 154 57 is_stmt 1
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L219
	.loc 1 154 57 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w2, w0, 1
	b	L220
L219:
	.loc 1 154 57 discriminator 6
	mov	w2, 0
L220:
	.loc 1 154 57 discriminator 8
	add	w3, w2, 1
	mov	x0, x23
	ldr	w1, [x0, 4]
	mov	x0, x23
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L221
	.loc 1 154 57 discriminator 9
	mov	x0, x23
	ldr	w1, [x0, 4]
	mov	x0, x23
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L222
L221:
	.loc 1 154 57 discriminator 10
	mov	w0, 0
L222:
	.loc 1 154 57 discriminator 12
	add	w0, w3, w0
	add	w3, w0, 1
	mov	x0, x5
	ldr	w1, [x0, 4]
	mov	x0, x5
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L223
	.loc 1 154 57 discriminator 13
	mov	x0, x5
	ldr	w1, [x0, 4]
	mov	x0, x5
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L224
L223:
	.loc 1 154 57 discriminator 14
	mov	w0, 0
L224:
	.loc 1 154 57 discriminator 16
	add	w3, w3, w0
	cmp	w2, 0
	beq	L225
	.loc 1 154 57 discriminator 17
	mov	x0, x21
	ldr	w0, [x0]
	str	w0, [x29, 636]
	b	L226
L225:
	.loc 1 154 57 discriminator 18
	mov	w0, 1
	str	w0, [x29, 636]
L226:
	.loc 1 154 57 discriminator 20
	sub	w1, w3, #1
	mov	w2, 0
	ldr	w0, [x29, 636]
	adds	w0, w0, w1
	bvc	L227
	mov	w2, 1
L227:
	.loc 1 154 57 discriminator 21
	mov	w0, w2
	cmp	w0, 0
	beq	L229
	.loc 1 154 57 discriminator 22
	mov	w1, 154
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L229:
	.loc 1 154 57 discriminator 23
	sub	w1, w3, #1
	ldr	w0, [x29, 636]
	adds	w0, w0, w1
	.loc 1 154 57 discriminator 26
	str	w0, [x29, 596]
	.loc 1 154 57 discriminator 27
	ldrsw	x0, [x29, 636]
	str	x0, [x29, 584]
	ldrsw	x0, [x29, 596]
	str	x0, [x29, 576]
	ldrsw	x1, [x29, 596]
	ldrsw	x0, [x29, 636]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 336]
	str	xzr, [x29, 344]
	ldp	x6, x7, [x29, 336]
	mov	x0, x6
	lsr	x1, x0, 61
	mov	x0, x7
	lsl	x0, x0, 3
	str	x0, [x29, 392]
	ldr	x0, [x29, 392]
	add	x0, x1, x0
	str	x0, [x29, 392]
	mov	x0, x6
	lsl	x0, x0, 3
	str	x0, [x29, 384]
	ldrsw	x1, [x29, 596]
	ldrsw	x0, [x29, 636]
	sub	x0, x1, x0
	add	x24, x0, 1
	cmp	w3, 0
	ble	L232
	.loc 1 154 57 discriminator 28
	ldr	w0, [x29, 636]
	cmp	w0, 0
	bgt	L232
	.loc 1 154 57 discriminator 30
	mov	w1, 154
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L232:
	.loc 1 154 57 discriminator 31
	ldrsw	x1, [x29, 596]
	ldrsw	x0, [x29, 636]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 320]
	str	xzr, [x29, 328]
	ldp	x2, x3, [x29, 320]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 376]
	ldr	x0, [x29, 376]
	add	x0, x1, x0
	str	x0, [x29, 376]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 368]
	ldrsw	x1, [x29, 596]
	ldrsw	x0, [x29, 636]
	sub	x0, x1, x0
	add	x0, x0, 1
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	add	x0, sp, 32
	str	x0, [x29, 568]
LBB102:
	.loc 1 154 57 discriminator 33
	ldr	x0, [x29, 568]
	str	x0, [x29, 208]
	ldr	w0, [x29, 636]
	str	w0, [x29, 560]
	ldr	w0, [x29, 596]
	str	w0, [x29, 564]
	add	x0, x29, 560
	str	x0, [x29, 216]
	adrp	x0, lC121@PAGE
	add	x0, x0, lC121@PAGEOFF;
	str	x0, [x29, 224]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 232]
	adrp	x0, lC121@PAGE
	add	x0, x0, lC121@PAGEOFF;
	str	x0, [x29, 240]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 248]
	stp	x4, x5, [sp, 16]
	ldp	x0, x1, [x29, 240]
	stp	x0, x1, [sp]
	mov	x6, x22
	mov	x7, x23
	ldp	x4, x5, [x29, 224]
	mov	x2, x20
	mov	x3, x21
	ldp	x0, x1, [x29, 208]
	bl	_system__concat_5__str_concat_5
LBE102:
	.loc 1 144 4 is_stmt 1
	ldrsw	x1, [x29, 596]
	ldrsw	x0, [x29, 636]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 304]
	str	xzr, [x29, 312]
	ldp	x2, x3, [x29, 304]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 360]
	ldr	x1, [x29, 360]
	add	x0, x0, x1
	str	x0, [x29, 360]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 352]
	ldrsw	x1, [x29, 596]
	ldrsw	x0, [x29, 636]
	sub	x0, x1, x0
	add	x0, x0, 9
	str	x0, [x29, 288]
	str	xzr, [x29, 296]
	ldp	x2, x3, [x29, 288]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 440]
	ldr	x1, [x29, 440]
	add	x0, x0, x1
	str	x0, [x29, 440]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 432]
	mov	x0, 31
	ldp	x2, x3, [x29, 432]
	mov	x1, x2
	adds	x1, x1, x0
	mov	x0, 0
	mov	x2, x3
	adc	x0, x2, x0
	str	x1, [x29, 272]
	str	x0, [x29, 280]
	ldp	x1, x2, [x29, 272]
	mov	x0, x1
	and	x0, x0, -32
	str	x0, [x29, 96]
	mov	x0, -1
	mov	x1, x2
	and	x0, x1, x0
	str	x0, [x29, 104]
	.loc 1 153 7
	ldrsw	x1, [x29, 596]
	ldrsw	x0, [x29, 636]
	sub	x0, x1, x0
	add	x0, x0, 12
	and	x0, x0, -4
	mov	x1, 4
	bl	_system__secondary_stack__ss_allocate
	mov	x19, x0
	.loc 1 153 7 is_stmt 0 discriminator 6
	mov	x0, x19
	ldr	w1, [x29, 636]
	str	w1, [x0]
	ldr	w1, [x29, 596]
	str	w1, [x0, 4]
	add	x0, x0, 8
	ldr	x1, [x29, 568]
	mov	x2, x24
	bl	_memcpy
	.loc 1 153 7 discriminator 7
	mov	x0, x19
	add	x0, x0, 8
	str	x0, [x29, 256]
	mov	x0, x19
	str	x0, [x29, 264]
	.loc 1 156 8 is_stmt 1
	ldr	x0, [x29, 448]
	mov	sp, x0
	.loc 1 153 7
	ldp	x0, x1, [x29, 256]
	.loc 1 156 8
	sub	sp, x29, #32
LCFI23:
	ldp	x29, x30, [sp, 32]
	ldp	x19, x20, [sp, 48]
	ldp	x21, x22, [sp, 64]
	ldp	x23, x24, [sp, 80]
	ldp	x25, x26, [sp, 96]
	ldp	x27, x28, [sp, 112]
	add	sp, sp, 672
LCFI24:
	ret
LFE5:
	.align	2
_smc_daemon__read_and_validate_smc_temp.3:
LFB6:
	.loc 1 159 4
	stp	x29, x30, [sp, -96]!
LCFI25:
	mov	x29, sp
LCFI26:
	str	x19, [sp, 16]
LCFI27:
	stp	x0, x1, [x29, 48]
	str	s0, [x29, 44]
	mov	x19, x16
	str	x16, [x29, 32]
	.loc 1 159 4
	ldr	x0, [x29, 56]
	ldr	w0, [x0]
	ldr	x1, [x29, 56]
	ldr	w1, [x1, 4]
LBB103:
	cmp	w1, w0
	.loc 1 159 4 is_stmt 0 discriminator 4
	cmp	w1, w0
	blt	L238
	.loc 1 159 4 discriminator 5
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
L238:
	.loc 1 159 4 discriminator 8
	cmp	w1, w0
	.loc 1 160 32 is_stmt 1
	ldp	x0, x1, [x29, 48]
	bl	_interfaces__c__strings__new_string
	.loc 1 160 32 is_stmt 0 discriminator 2
	str	x0, [x29, 88]
	.loc 1 161 7 is_stmt 1
	str	wzr, [x29, 76]
	.loc 1 164 25
	ldr	w0, [x19, 40]
	add	x1, x29, 76
	mov	x2, x1
	ldr	x1, [x29, 88]
	bl	_smc_helper_read_key
	.loc 1 164 25 is_stmt 0 discriminator 2
	str	w0, [x29, 84]
	.loc 1 165 7 is_stmt 1
	ldr	x0, [x29, 88]
	bl	_interfaces__c__strings__free
	.loc 1 165 7 is_stmt 0 discriminator 2
	str	x0, [x29, 88]
	.loc 1 166 7 is_stmt 1
	ldr	w0, [x29, 84]
	cmp	w0, 0
	bne	L241
LBB104:
	.loc 1 168 13
	ldr	s31, [x29, 76]
	str	s31, [x29, 80]
	.loc 1 170 13
	ldr	s31, [x29, 80]
	fcmpe	s31, #0.0
	bge	L246
	b	L241
L246:
	.loc 1 170 27 discriminator 1
	ldr	s31, [x29, 80]
	mov	w0, 1123024896
	fmov	s30, w0
	fcmpe	s31, s30
	bls	L247
	b	L241
L247:
	.loc 1 171 16
	ldr	s31, [x29, 80]
	b	L245
L241:
LBE104:
	.loc 1 175 7
	ldr	s31, [x29, 44]
L245:
LBE103:
	.loc 1 176 8
	fmov	s0, s31
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
LCFI28:
	ret
LFE6:
	.align	2
_smc_daemon___finalizer.8:
LFB7:
	stp	x29, x30, [sp, -32]!
LCFI29:
	mov	x29, sp
LCFI30:
	str	x16, [x29, 24]
	adrp	x0, _system__soft_links__abort_defer@GOTPAGE
	ldr	x0, [x0, _system__soft_links__abort_defer@GOTPAGEOFF]
	ldr	x0, [x0]
	blr	x0
	adrp	x0, _system__soft_links__complete_master@GOTPAGE
	ldr	x0, [x0, _system__soft_links__complete_master@GOTPAGEOFF]
	ldr	x0, [x0]
	blr	x0
	adrp	x0, _system__soft_links__abort_undefer@GOTPAGE
	ldr	x0, [x0, _system__soft_links__abort_undefer@GOTPAGEOFF]
	ldr	x0, [x0]
	blr	x0
	ldp	x29, x30, [sp], 32
LCFI31:
	ret
LFE7:
	.align	2
_smc_daemon__A129b___finalizer.1:
LFB8:
	stp	x29, x30, [sp, -32]!
LCFI32:
	mov	x29, sp
LCFI33:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 32
	bl	_system__tasking__stages__expunge_unactivated_tasks
	ldp	x29, x30, [sp], 32
LCFI34:
	ret
LFE8:
	.align	2
_smc_daemon__A134b___finalizer.2:
LFB9:
	stp	x29, x30, [sp, -32]!
LCFI35:
	mov	x29, sp
LCFI36:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 24
	bl	_system__tasking__stages__expunge_unactivated_tasks
	ldp	x29, x30, [sp], 32
LCFI37:
	ret
LFE9:
	.align	2
_smc_daemon__L_5__B305b___finalizer.6:
LFB10:
	stp	x29, x30, [sp, -32]!
LCFI38:
	mov	x29, sp
LCFI39:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI40:
	ret
LFE10:
	.const
	.align	3
_lm_taskT1.13:
	.ascii "lm_task"
	.space 1
	.align	3
_ts_taskT1.12:
	.ascii "ts_task"
	.space 1
	.align	3
_python_path.11:
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/ml_venv/bin/python3"
	.align	3
_fall_path.10:
	.ascii "/usr/local/smcSystemDemandNow/ml_venv/bin/python3"
	.align	3
_hex_map.9:
	.ascii "0123456789ABCDEF"
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
	.uleb128 0x150
	.byte	0x9d
	.uleb128 0x2a
	.byte	0x9e
	.uleb128 0x29
	.byte	0x4
	.set L$set$5,LCFI1-LCFI0
	.long L$set$5
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$6,LCFI2-LCFI1
	.long L$set$6
	.byte	0x93
	.uleb128 0x28
	.byte	0x94
	.uleb128 0x27
	.byte	0x95
	.uleb128 0x26
	.byte	0x96
	.uleb128 0x25
	.byte	0x97
	.uleb128 0x24
	.byte	0x98
	.uleb128 0x23
	.byte	0x99
	.uleb128 0x22
	.byte	0x9a
	.uleb128 0x21
	.byte	0x9b
	.uleb128 0x20
	.byte	0x4
	.set L$set$7,LCFI3-LCFI2
	.long L$set$7
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
LEFDE0:
LSFDE2:
	.set L$set$8,LEFDE2-LASFDE2
	.long L$set$8
LASFDE2:
	.set L$set$9,Lframe0-Lsection__debug_frame
	.long L$set$9
	.quad	LFB1
	.set L$set$10,LFE1-LFB1
	.quad L$set$10
	.byte	0x4
	.set L$set$11,LCFI4-LFB1
	.long L$set$11
	.byte	0xe
	.uleb128 0xf00
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0x9d
	.uleb128 0x1de
	.byte	0x9e
	.uleb128 0x1dd
	.byte	0x4
	.set L$set$13,LCFI6-LCFI5
	.long L$set$13
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0xef0
	.byte	0x4
	.set L$set$14,LCFI7-LCFI6
	.long L$set$14
	.byte	0x93
	.uleb128 0x1dc
	.byte	0x94
	.uleb128 0x1db
	.byte	0x95
	.uleb128 0x1da
	.byte	0x96
	.uleb128 0x1d9
	.byte	0x97
	.uleb128 0x1d8
	.byte	0x98
	.uleb128 0x1d7
	.byte	0x99
	.uleb128 0x1d6
	.byte	0x9a
	.uleb128 0x1d5
	.byte	0x9b
	.uleb128 0x1d4
	.byte	0x9c
	.uleb128 0x1d3
	.byte	0x4
	.set L$set$15,LCFI8-LCFI7
	.long L$set$15
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0xf00
	.byte	0x4
	.set L$set$16,LCFI9-LCFI8
	.long L$set$16
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
LEFDE2:
LSFDE4:
	.set L$set$17,LEFDE4-LASFDE4
	.long L$set$17
LASFDE4:
	.set L$set$18,Lframe0-Lsection__debug_frame
	.long L$set$18
	.quad	LFB3
	.set L$set$19,LFE3-LFB3
	.quad L$set$19
	.byte	0x4
	.set L$set$20,LCFI10-LFB3
	.long L$set$20
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$21,LCFI11-LCFI10
	.long L$set$21
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$22,LCFI12-LCFI11
	.long L$set$22
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE4:
LSFDE6:
	.set L$set$23,LEFDE6-LASFDE6
	.long L$set$23
LASFDE6:
	.set L$set$24,Lframe0-Lsection__debug_frame
	.long L$set$24
	.quad	LFB4
	.set L$set$25,LFE4-LFB4
	.quad L$set$25
	.byte	0x4
	.set L$set$26,LCFI13-LFB4
	.long L$set$26
	.byte	0xe
	.uleb128 0x2b0
	.byte	0x4
	.set L$set$27,LCFI14-LCFI13
	.long L$set$27
	.byte	0x9d
	.uleb128 0x52
	.byte	0x9e
	.uleb128 0x51
	.byte	0x4
	.set L$set$28,LCFI15-LCFI14
	.long L$set$28
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x290
	.byte	0x4
	.set L$set$29,LCFI16-LCFI15
	.long L$set$29
	.byte	0x93
	.uleb128 0x50
	.byte	0x94
	.uleb128 0x4f
	.byte	0x95
	.uleb128 0x4e
	.byte	0x96
	.uleb128 0x4d
	.byte	0x97
	.uleb128 0x4c
	.byte	0x98
	.uleb128 0x4b
	.byte	0x99
	.uleb128 0x4a
	.byte	0x9a
	.uleb128 0x49
	.byte	0x9b
	.uleb128 0x48
	.byte	0x9c
	.uleb128 0x47
	.byte	0x4
	.set L$set$30,LCFI17-LCFI16
	.long L$set$30
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x2b0
	.byte	0x4
	.set L$set$31,LCFI18-LCFI17
	.long L$set$31
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
LEFDE6:
LSFDE8:
	.set L$set$32,LEFDE8-LASFDE8
	.long L$set$32
LASFDE8:
	.set L$set$33,Lframe0-Lsection__debug_frame
	.long L$set$33
	.quad	LFB5
	.set L$set$34,LFE5-LFB5
	.quad L$set$34
	.byte	0x4
	.set L$set$35,LCFI19-LFB5
	.long L$set$35
	.byte	0xe
	.uleb128 0x2a0
	.byte	0x4
	.set L$set$36,LCFI20-LCFI19
	.long L$set$36
	.byte	0x9d
	.uleb128 0x50
	.byte	0x9e
	.uleb128 0x4f
	.byte	0x4
	.set L$set$37,LCFI21-LCFI20
	.long L$set$37
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x280
	.byte	0x4
	.set L$set$38,LCFI22-LCFI21
	.long L$set$38
	.byte	0x93
	.uleb128 0x4e
	.byte	0x94
	.uleb128 0x4d
	.byte	0x95
	.uleb128 0x4c
	.byte	0x96
	.uleb128 0x4b
	.byte	0x97
	.uleb128 0x4a
	.byte	0x98
	.uleb128 0x49
	.byte	0x99
	.uleb128 0x48
	.byte	0x9a
	.uleb128 0x47
	.byte	0x9b
	.uleb128 0x46
	.byte	0x9c
	.uleb128 0x45
	.byte	0x4
	.set L$set$39,LCFI23-LCFI22
	.long L$set$39
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x2a0
	.byte	0x4
	.set L$set$40,LCFI24-LCFI23
	.long L$set$40
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
LEFDE8:
LSFDE10:
	.set L$set$41,LEFDE10-LASFDE10
	.long L$set$41
LASFDE10:
	.set L$set$42,Lframe0-Lsection__debug_frame
	.long L$set$42
	.quad	LFB6
	.set L$set$43,LFE6-LFB6
	.quad L$set$43
	.byte	0x4
	.set L$set$44,LCFI25-LFB6
	.long L$set$44
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$45,LCFI26-LCFI25
	.long L$set$45
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$46,LCFI27-LCFI26
	.long L$set$46
	.byte	0x93
	.uleb128 0xa
	.byte	0x4
	.set L$set$47,LCFI28-LCFI27
	.long L$set$47
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE10:
LSFDE12:
	.set L$set$48,LEFDE12-LASFDE12
	.long L$set$48
LASFDE12:
	.set L$set$49,Lframe0-Lsection__debug_frame
	.long L$set$49
	.quad	LFB7
	.set L$set$50,LFE7-LFB7
	.quad L$set$50
	.byte	0x4
	.set L$set$51,LCFI29-LFB7
	.long L$set$51
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$52,LCFI30-LCFI29
	.long L$set$52
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$53,LCFI31-LCFI30
	.long L$set$53
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE12:
LSFDE14:
	.set L$set$54,LEFDE14-LASFDE14
	.long L$set$54
LASFDE14:
	.set L$set$55,Lframe0-Lsection__debug_frame
	.long L$set$55
	.quad	LFB8
	.set L$set$56,LFE8-LFB8
	.quad L$set$56
	.byte	0x4
	.set L$set$57,LCFI32-LFB8
	.long L$set$57
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$58,LCFI33-LCFI32
	.long L$set$58
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$59,LCFI34-LCFI33
	.long L$set$59
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE14:
LSFDE16:
	.set L$set$60,LEFDE16-LASFDE16
	.long L$set$60
LASFDE16:
	.set L$set$61,Lframe0-Lsection__debug_frame
	.long L$set$61
	.quad	LFB9
	.set L$set$62,LFE9-LFB9
	.quad L$set$62
	.byte	0x4
	.set L$set$63,LCFI35-LFB9
	.long L$set$63
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$64,LCFI36-LCFI35
	.long L$set$64
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$65,LCFI37-LCFI36
	.long L$set$65
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE16:
LSFDE18:
	.set L$set$66,LEFDE18-LASFDE18
	.long L$set$66
LASFDE18:
	.set L$set$67,Lframe0-Lsection__debug_frame
	.long L$set$67
	.quad	LFB10
	.set L$set$68,LFE10-LFB10
	.quad L$set$68
	.byte	0x4
	.set L$set$69,LCFI38-LFB10
	.long L$set$69
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$70,LCFI39-LCFI38
	.long L$set$70
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$71,LCFI40-LCFI39
	.long L$set$71
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE18:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$72,LECIE1-LSCIE1
	.long L$set$72
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zPLR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x7
	.byte	0x9b
L_got_pcr1:
	.long	___gnat_personality_v0@GOT-L_got_pcr1
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE21:
	.set L$set$73,LEFDE21-LASFDE21
	.long L$set$73
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB2-.
	.set L$set$74,LFE2-LFB2
	.quad L$set$74
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$75,LCFI0-LFB2
	.long L$set$75
	.byte	0xe
	.uleb128 0x150
	.byte	0x9d
	.uleb128 0x2a
	.byte	0x9e
	.uleb128 0x29
	.byte	0x4
	.set L$set$76,LCFI1-LCFI0
	.long L$set$76
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$77,LCFI2-LCFI1
	.long L$set$77
	.byte	0x93
	.uleb128 0x28
	.byte	0x94
	.uleb128 0x27
	.byte	0x95
	.uleb128 0x26
	.byte	0x96
	.uleb128 0x25
	.byte	0x97
	.uleb128 0x24
	.byte	0x98
	.uleb128 0x23
	.byte	0x99
	.uleb128 0x22
	.byte	0x9a
	.uleb128 0x21
	.byte	0x9b
	.uleb128 0x20
	.byte	0x4
	.set L$set$78,LCFI3-LCFI2
	.long L$set$78
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
LEFDE21:
LSFDE23:
	.set L$set$79,LEFDE23-LASFDE23
	.long L$set$79
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB1-.
	.set L$set$80,LFE1-LFB1
	.quad L$set$80
	.uleb128 0x8
	.quad	LLSDA1-.
	.byte	0x4
	.set L$set$81,LCFI4-LFB1
	.long L$set$81
	.byte	0xe
	.uleb128 0xf00
	.byte	0x4
	.set L$set$82,LCFI5-LCFI4
	.long L$set$82
	.byte	0x9d
	.uleb128 0x1de
	.byte	0x9e
	.uleb128 0x1dd
	.byte	0x4
	.set L$set$83,LCFI6-LCFI5
	.long L$set$83
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0xef0
	.byte	0x4
	.set L$set$84,LCFI7-LCFI6
	.long L$set$84
	.byte	0x93
	.uleb128 0x1dc
	.byte	0x94
	.uleb128 0x1db
	.byte	0x95
	.uleb128 0x1da
	.byte	0x96
	.uleb128 0x1d9
	.byte	0x97
	.uleb128 0x1d8
	.byte	0x98
	.uleb128 0x1d7
	.byte	0x99
	.uleb128 0x1d6
	.byte	0x9a
	.uleb128 0x1d5
	.byte	0x9b
	.uleb128 0x1d4
	.byte	0x9c
	.uleb128 0x1d3
	.byte	0x4
	.set L$set$85,LCFI8-LCFI7
	.long L$set$85
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0xf00
	.byte	0x4
	.set L$set$86,LCFI9-LCFI8
	.long L$set$86
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
LEFDE23:
LSFDE25:
	.set L$set$87,LEFDE25-LASFDE25
	.long L$set$87
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB3-.
	.set L$set$88,LFE3-LFB3
	.quad L$set$88
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$89,LCFI10-LFB3
	.long L$set$89
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$90,LCFI11-LCFI10
	.long L$set$90
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$91,LCFI12-LCFI11
	.long L$set$91
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE25:
LSFDE27:
	.set L$set$92,LEFDE27-LASFDE27
	.long L$set$92
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB4-.
	.set L$set$93,LFE4-LFB4
	.quad L$set$93
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$94,LCFI13-LFB4
	.long L$set$94
	.byte	0xe
	.uleb128 0x2b0
	.byte	0x4
	.set L$set$95,LCFI14-LCFI13
	.long L$set$95
	.byte	0x9d
	.uleb128 0x52
	.byte	0x9e
	.uleb128 0x51
	.byte	0x4
	.set L$set$96,LCFI15-LCFI14
	.long L$set$96
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x290
	.byte	0x4
	.set L$set$97,LCFI16-LCFI15
	.long L$set$97
	.byte	0x93
	.uleb128 0x50
	.byte	0x94
	.uleb128 0x4f
	.byte	0x95
	.uleb128 0x4e
	.byte	0x96
	.uleb128 0x4d
	.byte	0x97
	.uleb128 0x4c
	.byte	0x98
	.uleb128 0x4b
	.byte	0x99
	.uleb128 0x4a
	.byte	0x9a
	.uleb128 0x49
	.byte	0x9b
	.uleb128 0x48
	.byte	0x9c
	.uleb128 0x47
	.byte	0x4
	.set L$set$98,LCFI17-LCFI16
	.long L$set$98
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x2b0
	.byte	0x4
	.set L$set$99,LCFI18-LCFI17
	.long L$set$99
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
LEFDE27:
LSFDE29:
	.set L$set$100,LEFDE29-LASFDE29
	.long L$set$100
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB5-.
	.set L$set$101,LFE5-LFB5
	.quad L$set$101
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$102,LCFI19-LFB5
	.long L$set$102
	.byte	0xe
	.uleb128 0x2a0
	.byte	0x4
	.set L$set$103,LCFI20-LCFI19
	.long L$set$103
	.byte	0x9d
	.uleb128 0x50
	.byte	0x9e
	.uleb128 0x4f
	.byte	0x4
	.set L$set$104,LCFI21-LCFI20
	.long L$set$104
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x280
	.byte	0x4
	.set L$set$105,LCFI22-LCFI21
	.long L$set$105
	.byte	0x93
	.uleb128 0x4e
	.byte	0x94
	.uleb128 0x4d
	.byte	0x95
	.uleb128 0x4c
	.byte	0x96
	.uleb128 0x4b
	.byte	0x97
	.uleb128 0x4a
	.byte	0x98
	.uleb128 0x49
	.byte	0x99
	.uleb128 0x48
	.byte	0x9a
	.uleb128 0x47
	.byte	0x9b
	.uleb128 0x46
	.byte	0x9c
	.uleb128 0x45
	.byte	0x4
	.set L$set$106,LCFI23-LCFI22
	.long L$set$106
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x2a0
	.byte	0x4
	.set L$set$107,LCFI24-LCFI23
	.long L$set$107
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
LEFDE29:
LSFDE31:
	.set L$set$108,LEFDE31-LASFDE31
	.long L$set$108
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB6-.
	.set L$set$109,LFE6-LFB6
	.quad L$set$109
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$110,LCFI25-LFB6
	.long L$set$110
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$111,LCFI26-LCFI25
	.long L$set$111
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$112,LCFI27-LCFI26
	.long L$set$112
	.byte	0x93
	.uleb128 0xa
	.byte	0x4
	.set L$set$113,LCFI28-LCFI27
	.long L$set$113
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE31:
LSFDE33:
	.set L$set$114,LEFDE33-LASFDE33
	.long L$set$114
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB7-.
	.set L$set$115,LFE7-LFB7
	.quad L$set$115
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$116,LCFI29-LFB7
	.long L$set$116
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$117,LCFI30-LCFI29
	.long L$set$117
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$118,LCFI31-LCFI30
	.long L$set$118
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE33:
LSFDE35:
	.set L$set$119,LEFDE35-LASFDE35
	.long L$set$119
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB8-.
	.set L$set$120,LFE8-LFB8
	.quad L$set$120
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$121,LCFI32-LFB8
	.long L$set$121
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$122,LCFI33-LCFI32
	.long L$set$122
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$123,LCFI34-LCFI33
	.long L$set$123
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE35:
LSFDE37:
	.set L$set$124,LEFDE37-LASFDE37
	.long L$set$124
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB9-.
	.set L$set$125,LFE9-LFB9
	.quad L$set$125
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$126,LCFI35-LFB9
	.long L$set$126
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$127,LCFI36-LCFI35
	.long L$set$127
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$128,LCFI37-LCFI36
	.long L$set$128
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE37:
LSFDE39:
	.set L$set$129,LEFDE39-LASFDE39
	.long L$set$129
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB10-.
	.set L$set$130,LFE10-LFB10
	.quad L$set$130
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$131,LCFI38-LFB10
	.long L$set$131
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$132,LCFI39-LCFI38
	.long L$set$132
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$133,LCFI40-LCFI39
	.long L$set$133
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE39:
	.text
Letext0:
	.file 2 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_math.ads"
	.file 3 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/i-cstrin.ads"
	.file 4 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-string.ads"
	.file 5 "<built-in>"
	.file 6 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-taskin.ads"
	.file 7 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/a-except.ads"
	.file 8 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-stalib.ads"
	.file 9 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-taspri.ads"
	.file 10 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-osinte.ads"
	.file 11 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-oslock.ads"
	.file 12 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-soflin.ads"
	.file 13 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-stache.ads"
	.file 14 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-secsta.ads"
	.file 15 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-stausa.ads"
	.file 16 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-multip.ads"
	.file 17 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_daemon_state.ads"
	.file 18 "/Users/albertstarfield/LibraryTube/OpenIntellegentiaPlatform/gnatprove_15.1.0_a4a9bb7c/libexec/spark/lib/gcc/aarch64-apple-darwin23.6.0/15.0.1/adainclude/s-tasinf.ads"
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
Ldebug_info0:
	.long	0x3688
	.short	0x4
	.set L$set$134,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$134
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU Ada 15.0.1 20250418 (prerelease) -gnatA -gnat2012 -gnato -gnatwa -gnata -g -gnatR2js -gnatws -gnatis -gnatec=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.15689/GNAT-TEMP-000003.TMP -gnatem=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.15689/GNAT-TEMP-000004.TMP -mmacosx-version-min=14.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -fPIC\0"
	.byte	0xd
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_daemon.adb\0"
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/obj/gnatprove/data_representation\0"
	.quad	Ltext0
	.set L$set$135,LFE6-Ltext0
	.quad L$set$135
	.set L$set$136,Ldebug_line0-Lsection__debug_line
	.long L$set$136
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "integer\0"
	.uleb128 0x3
	.sleb128 -2147483648
	.sleb128 2147483647
	.ascii "interfaces__c__int\0"
	.long	0x24d
	.uleb128 0x4
	.long	0x226
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "interfaces__c__TintB\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "interfaces__c__unsigned\0"
	.uleb128 0x6
	.byte	0
	.long	0xffffffff
	.ascii "smc_io__io_connect_t\0"
	.long	0x265
	.uleb128 0x7
	.ascii "interfaces__c__strings__chars_ptr\0"
	.byte	0x3
	.byte	0xa2
	.byte	0x9
	.long	0x2c9
	.uleb128 0x8
	.byte	0x8
	.long	0x2cf
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "character\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "interfaces__c__c_float\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "smc_math__rpm_value\0"
	.uleb128 0x9
	.ascii "smc_math__pid_state\0"
	.byte	0xc
	.byte	0x2
	.byte	0x15
	.byte	0x9
	.long	0x366
	.uleb128 0xa
	.ascii "integral\0"
	.byte	0x2
	.byte	0x16
	.byte	0x7
	.long	0x366
	.byte	0
	.uleb128 0xa
	.ascii "prev_error\0"
	.byte	0x2
	.byte	0x17
	.byte	0x7
	.long	0x366
	.byte	0x4
	.uleb128 0xa
	.ascii "initialized\0"
	.byte	0x2
	.byte	0x18
	.byte	0x7
	.long	0x374
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "boolean\0"
	.uleb128 0xb
	.long	0x374
	.uleb128 0x3
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "ada__calendar__time\0"
	.long	0x3b1
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "ada__calendar__TtimeB\0"
	.uleb128 0x3
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "ada__real_time__time\0"
	.long	0x3f8
	.uleb128 0xc
	.byte	0x8
	.byte	0xd
	.sleb128 -9
	.ascii "ada__real_time__TtimeB\0"
	.uleb128 0x3
	.sleb128 -2147483648
	.sleb128 2147483647
	.ascii "system__os_lib__process_id\0"
	.long	0x43d
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "system__os_lib__Tprocess_idB\0"
	.uleb128 0x7
	.ascii "system__strings__string_access\0"
	.byte	0x4
	.byte	0x2b
	.byte	0x9
	.long	0x484
	.uleb128 0xd
	.ascii "string\0"
	.byte	0x10
	.byte	0x5
	.byte	0
	.long	0x4d3
	.uleb128 0xe
	.set L$set$137,LASF0-Lsection__debug_str
	.long L$set$137
	.byte	0x5
	.byte	0
	.long	0x49f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x4d8
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.byte	0
	.long	0x4c6
	.uleb128 0x10
	.ascii "LB0\0"
	.byte	0x5
	.byte	0
	.long	0x502
	.byte	0
	.uleb128 0x10
	.ascii "UB0\0"
	.byte	0x5
	.byte	0
	.long	0x502
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.set L$set$138,LASF1-Lsection__debug_str
	.long L$set$138
	.byte	0x5
	.byte	0
	.long	0x515
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	0x484
	.uleb128 0x12
	.long	0x2cf
	.long	0x4f7
	.uleb128 0x13
	.long	0x4f7
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "integer\0"
	.uleb128 0x14
	.sleb128 2147483647
	.ascii "positive\0"
	.long	0x4f7
	.uleb128 0x8
	.byte	0x8
	.long	0x4a5
	.uleb128 0x15
	.ascii "system__strings__string_list\0"
	.byte	0x10
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.long	0x586
	.uleb128 0x16
	.set L$set$139,LASF0-Lsection__debug_str
	.long L$set$139
	.byte	0x4
	.byte	0x2b
	.byte	0x9
	.long	0x54e
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x58b
	.uleb128 0x17
	.byte	0x8
	.byte	0x4
	.byte	0x2b
	.byte	0x9
	.long	0x578
	.uleb128 0xa
	.ascii "LB0\0"
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.long	0x502
	.byte	0
	.uleb128 0xa
	.ascii "UB0\0"
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.long	0x502
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.set L$set$140,LASF1-Lsection__debug_str
	.long L$set$140
	.byte	0x4
	.byte	0x2b
	.byte	0x9
	.long	0x5aa
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	0x51b
	.uleb128 0x12
	.long	0x45d
	.long	0x5aa
	.uleb128 0x13
	.long	0x4f7
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
	.uleb128 0x8
	.byte	0x8
	.long	0x554
	.uleb128 0x7
	.ascii "system__tasking__task_id\0"
	.byte	0x6
	.byte	0x6d
	.byte	0x9
	.long	0x5d6
	.uleb128 0xb
	.long	0x5b0
	.uleb128 0x8
	.byte	0x8
	.long	0x5dc
	.uleb128 0x18
	.ascii "system__tasking__ada_task_control_block\0"
	.uleb128 0x8
	.byte	0x97
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0xdb
	.byte	0x40
	.byte	0x1e
	.byte	0x6
	.short	0x3db
	.byte	0x9
	.long	0x8d4
	.uleb128 0x19
	.ascii "entry_num\0"
	.byte	0x6
	.short	0x3db
	.byte	0x21
	.long	0x8d4
	.byte	0
	.uleb128 0x19
	.ascii "common\0"
	.byte	0x6
	.short	0x3dc
	.byte	0x7
	.long	0x928
	.byte	0x8
	.uleb128 0x1a
	.ascii "entry_calls\0"
	.byte	0x6
	.short	0x3df
	.byte	0x7
	.long	0x214e
	.short	0x530
	.uleb128 0x1a
	.ascii "new_base_priority\0"
	.byte	0x6
	.short	0x3e6
	.byte	0x7
	.long	0xee1
	.short	0xc50
	.uleb128 0x1a
	.ascii "open_accepts\0"
	.byte	0x6
	.short	0x3eb
	.byte	0x7
	.long	0x2180
	.short	0xc58
	.uleb128 0x1a
	.ascii "chosen_index\0"
	.byte	0x6
	.short	0x3f2
	.byte	0x7
	.long	0x22c3
	.short	0xc68
	.uleb128 0x1a
	.ascii "master_of_task\0"
	.byte	0x6
	.short	0x3fc
	.byte	0x7
	.long	0x22ec
	.short	0xc6c
	.uleb128 0x1a
	.ascii "master_within\0"
	.byte	0x6
	.short	0x403
	.byte	0x7
	.long	0x22ec
	.short	0xc70
	.uleb128 0x1a
	.ascii "alive_count\0"
	.byte	0x6
	.short	0x40c
	.byte	0x7
	.long	0xf51
	.short	0xc74
	.uleb128 0x1a
	.ascii "awake_count\0"
	.byte	0x6
	.short	0x412
	.byte	0x7
	.long	0xf51
	.short	0xc78
	.uleb128 0x1a
	.ascii "aborting\0"
	.byte	0x6
	.short	0x41d
	.byte	0x7
	.long	0x37f
	.short	0xc7c
	.uleb128 0x1a
	.ascii "atc_hack\0"
	.byte	0x6
	.short	0x42b
	.byte	0x7
	.long	0x37f
	.short	0xc7d
	.uleb128 0x1a
	.ascii "callable\0"
	.byte	0x6
	.short	0x433
	.byte	0x7
	.long	0x374
	.short	0xc7e
	.uleb128 0x1a
	.ascii "dependents_aborted\0"
	.byte	0x6
	.short	0x436
	.byte	0x7
	.long	0x374
	.short	0xc7f
	.uleb128 0x1a
	.ascii "interrupt_entry\0"
	.byte	0x6
	.short	0x43c
	.byte	0x7
	.long	0x374
	.short	0xc80
	.uleb128 0x1a
	.ascii "pending_action\0"
	.byte	0x6
	.short	0x440
	.byte	0x7
	.long	0x374
	.short	0xc81
	.uleb128 0x1a
	.ascii "pending_priority_change\0"
	.byte	0x6
	.short	0x450
	.byte	0x7
	.long	0x374
	.short	0xc82
	.uleb128 0x1a
	.ascii "terminate_alternative\0"
	.byte	0x6
	.short	0x457
	.byte	0x7
	.long	0x374
	.short	0xc83
	.uleb128 0x1a
	.ascii "atc_nesting_level\0"
	.byte	0x6
	.short	0x460
	.byte	0x7
	.long	0x143f
	.short	0xc84
	.uleb128 0x1a
	.ascii "deferral_level\0"
	.byte	0x6
	.short	0x46c
	.byte	0x7
	.long	0xf51
	.short	0xc88
	.uleb128 0x1a
	.ascii "pending_atc_level\0"
	.byte	0x6
	.short	0x474
	.byte	0x7
	.long	0x2319
	.short	0xc8c
	.uleb128 0x1a
	.ascii "serial_number\0"
	.byte	0x6
	.short	0x482
	.byte	0x7
	.long	0x2340
	.short	0xc90
	.uleb128 0x1a
	.ascii "known_tasks_index\0"
	.byte	0x6
	.short	0x485
	.byte	0x7
	.long	0x21b
	.short	0xc98
	.uleb128 0x1a
	.ascii "user_state\0"
	.byte	0x6
	.short	0x488
	.byte	0x7
	.long	0x2367
	.short	0xca0
	.uleb128 0x1a
	.ascii "free_on_termination\0"
	.byte	0x6
	.short	0x48c
	.byte	0x7
	.long	0x374
	.short	0xca8
	.uleb128 0x1a
	.ascii "attributes\0"
	.byte	0x6
	.short	0x492
	.byte	0x7
	.long	0x2377
	.short	0xcb0
	.uleb128 0x12
	.long	0x23a8
	.long	0x8bb
	.uleb128 0x1b
	.long	0x901
	.long	0x616
	.byte	0
	.uleb128 0x1a
	.ascii "entry_queues\0"
	.byte	0x6
	.short	0x498
	.byte	0x7
	.long	0x8a8
	.short	0xdb0
	.byte	0
	.uleb128 0x3
	.sleb128 0
	.sleb128 2147483647
	.ascii "system__tasking__task_entry_index\0"
	.long	0x901
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "system__tasking__Ttask_entry_indexB\0"
	.uleb128 0x1c
	.ascii "system__tasking__common_atcb\0"
	.short	0x528
	.byte	0x6
	.short	0x1f6
	.byte	0x9
	.long	0xbff
	.uleb128 0x19
	.ascii "state\0"
	.byte	0x6
	.short	0x1f7
	.byte	0x7
	.long	0xedc
	.byte	0
	.uleb128 0x19
	.ascii "parent\0"
	.byte	0x6
	.short	0x1ff
	.byte	0x7
	.long	0x5b0
	.byte	0x8
	.uleb128 0x19
	.ascii "base_priority\0"
	.byte	0x6
	.short	0x203
	.byte	0x7
	.long	0xee1
	.byte	0x10
	.uleb128 0x19
	.ascii "cpu_is_explicit\0"
	.byte	0x6
	.short	0x209
	.byte	0x7
	.long	0x374
	.byte	0x14
	.uleb128 0x19
	.ascii "base_cpu\0"
	.byte	0x6
	.short	0x214
	.byte	0x7
	.long	0xefd
	.byte	0x18
	.uleb128 0x19
	.ascii "current_priority\0"
	.byte	0x6
	.short	0x219
	.byte	0x7
	.long	0xee1
	.byte	0x1c
	.uleb128 0x19
	.ascii "protected_action_nesting\0"
	.byte	0x6
	.short	0x230
	.byte	0x7
	.long	0xf64
	.byte	0x20
	.uleb128 0x12
	.long	0x2cf
	.long	0xa05
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 256
	.byte	0
	.uleb128 0x19
	.ascii "task_image\0"
	.byte	0x6
	.short	0x237
	.byte	0x7
	.long	0x9f4
	.byte	0x24
	.uleb128 0x1a
	.ascii "task_image_len\0"
	.byte	0x6
	.short	0x23b
	.byte	0x7
	.long	0xf51
	.short	0x124
	.uleb128 0x1a
	.ascii "call\0"
	.byte	0x6
	.short	0x23e
	.byte	0x7
	.long	0xf69
	.short	0x128
	.uleb128 0x1a
	.ascii "ll\0"
	.byte	0x6
	.short	0x246
	.byte	0x7
	.long	0x14d7
	.short	0x130
	.uleb128 0x1a
	.ascii "task_arg\0"
	.byte	0x6
	.short	0x24d
	.byte	0x7
	.long	0x12ca
	.short	0x1a8
	.uleb128 0x1a
	.ascii "task_alternate_stack\0"
	.byte	0x6
	.short	0x255
	.byte	0x7
	.long	0x12ca
	.short	0x1b0
	.uleb128 0x1a
	.ascii "task_entry_point\0"
	.byte	0x6
	.short	0x25a
	.byte	0x7
	.long	0x16d1
	.short	0x1b8
	.uleb128 0x1a
	.ascii "compiler_data\0"
	.byte	0x6
	.short	0x262
	.byte	0x7
	.long	0x1712
	.short	0x1c0
	.uleb128 0x1a
	.ascii "all_tasks_link\0"
	.byte	0x6
	.short	0x268
	.byte	0x7
	.long	0x5b0
	.short	0x460
	.uleb128 0x1a
	.ascii "activation_link\0"
	.byte	0x6
	.short	0x26d
	.byte	0x7
	.long	0x5b0
	.short	0x468
	.uleb128 0x1a
	.ascii "activator\0"
	.byte	0x6
	.short	0x272
	.byte	0x7
	.long	0x5d1
	.short	0x470
	.uleb128 0x1a
	.ascii "wait_count\0"
	.byte	0x6
	.short	0x27c
	.byte	0x7
	.long	0xf51
	.short	0x478
	.uleb128 0x1a
	.ascii "elaborated\0"
	.byte	0x6
	.short	0x297
	.byte	0x7
	.long	0x1c99
	.short	0x480
	.uleb128 0x1a
	.ascii "activation_failed\0"
	.byte	0x6
	.short	0x2a0
	.byte	0x7
	.long	0x374
	.short	0x488
	.uleb128 0x1a
	.ascii "task_info\0"
	.byte	0x6
	.short	0x2a4
	.byte	0x7
	.long	0x1cc8
	.short	0x489
	.uleb128 0x1a
	.ascii "analyzer\0"
	.byte	0x6
	.short	0x2a8
	.byte	0x7
	.long	0x1d6c
	.short	0x490
	.uleb128 0x1a
	.ascii "global_task_lock_nesting\0"
	.byte	0x6
	.short	0x2ab
	.byte	0x7
	.long	0xf51
	.short	0x4e8
	.uleb128 0x1a
	.ascii "fall_back_handler\0"
	.byte	0x6
	.short	0x2b4
	.byte	0x7
	.long	0x1f24
	.short	0x4f0
	.uleb128 0x1a
	.ascii "specific_handler\0"
	.byte	0x6
	.short	0x2ba
	.byte	0x7
	.long	0x1f24
	.short	0x500
	.uleb128 0x1a
	.ascii "debug_events\0"
	.byte	0x6
	.short	0x2c0
	.byte	0x7
	.long	0x2025
	.short	0x510
	.uleb128 0x1a
	.ascii "domain\0"
	.byte	0x6
	.short	0x2c4
	.byte	0x7
	.long	0x2059
	.short	0x518
	.byte	0
	.uleb128 0x1e
	.ascii "system__tasking__task_states\0"
	.byte	0x1
	.byte	0x6
	.byte	0x84
	.byte	0x9
	.long	0xedc
	.uleb128 0x1f
	.ascii "system__tasking__unactivated\0"
	.byte	0
	.uleb128 0x1f
	.ascii "system__tasking__runnable\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "system__tasking__terminated\0"
	.byte	0x2
	.uleb128 0x1f
	.ascii "system__tasking__activator_sleep\0"
	.byte	0x3
	.uleb128 0x1f
	.ascii "system__tasking__acceptor_sleep\0"
	.byte	0x4
	.uleb128 0x1f
	.ascii "system__tasking__entry_caller_sleep\0"
	.byte	0x5
	.uleb128 0x1f
	.ascii "system__tasking__async_select_sleep\0"
	.byte	0x6
	.uleb128 0x1f
	.ascii "system__tasking__delay_sleep\0"
	.byte	0x7
	.uleb128 0x1f
	.ascii "system__tasking__master_completion_sleep\0"
	.byte	0x8
	.uleb128 0x1f
	.ascii "system__tasking__master_phase_2_sleep\0"
	.byte	0x9
	.uleb128 0x1f
	.ascii "system__tasking__interrupt_server_idle_sleep\0"
	.byte	0xa
	.uleb128 0x1f
	.ascii "system__tasking__interrupt_server_blocked_interrupt_sleep\0"
	.byte	0xb
	.uleb128 0x1f
	.ascii "system__tasking__timer_server_sleep\0"
	.byte	0xc
	.uleb128 0x1f
	.ascii "system__tasking__ast_server_sleep\0"
	.byte	0xd
	.uleb128 0x1f
	.ascii "system__tasking__asynchronous_hold\0"
	.byte	0xe
	.uleb128 0x1f
	.ascii "system__tasking__interrupt_server_blocked_on_event_flag\0"
	.byte	0xf
	.uleb128 0x1f
	.ascii "system__tasking__activating\0"
	.byte	0x10
	.uleb128 0x1f
	.ascii "system__tasking__acceptor_delay_sleep\0"
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.long	0xbff
	.uleb128 0x3
	.sleb128 0
	.sleb128 63
	.ascii "system__any_priority\0"
	.long	0x4f7
	.uleb128 0x3
	.sleb128 0
	.sleb128 65535
	.ascii "system__multiprocessors__cpu_range\0"
	.long	0xf29
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "system__multiprocessors__Tcpu_rangeB\0"
	.uleb128 0x3
	.sleb128 0
	.sleb128 2147483647
	.ascii "natural\0"
	.long	0x4f7
	.uleb128 0xb
	.long	0xf51
	.uleb128 0x7
	.ascii "system__tasking__entry_call_link\0"
	.byte	0x6
	.byte	0xf2
	.byte	0x9
	.long	0xf92
	.uleb128 0x8
	.byte	0x8
	.long	0xf98
	.uleb128 0x20
	.ascii "system__tasking__entry_call_record\0"
	.byte	0x60
	.byte	0x6
	.short	0x362
	.byte	0x9
	.long	0x112d
	.uleb128 0x19
	.ascii "self\0"
	.byte	0x6
	.short	0x363
	.byte	0x7
	.long	0x5b0
	.byte	0
	.uleb128 0x19
	.ascii "mode\0"
	.byte	0x6
	.short	0x366
	.byte	0x7
	.long	0x112d
	.byte	0x8
	.uleb128 0x19
	.ascii "state\0"
	.byte	0x6
	.short	0x368
	.byte	0x7
	.long	0x12c5
	.byte	0x9
	.uleb128 0x19
	.ascii "uninterpreted_data\0"
	.byte	0x6
	.short	0x375
	.byte	0x7
	.long	0x12ca
	.byte	0x10
	.uleb128 0x19
	.ascii "exception_to_raise\0"
	.byte	0x6
	.short	0x378
	.byte	0x7
	.long	0x12e2
	.byte	0x18
	.uleb128 0x19
	.ascii "prev\0"
	.byte	0x6
	.short	0x37c
	.byte	0x7
	.long	0xf69
	.byte	0x20
	.uleb128 0x19
	.ascii "next\0"
	.byte	0x6
	.short	0x37e
	.byte	0x7
	.long	0xf69
	.byte	0x28
	.uleb128 0x19
	.ascii "level\0"
	.byte	0x6
	.short	0x380
	.byte	0x7
	.long	0x143f
	.byte	0x30
	.uleb128 0x19
	.ascii "e\0"
	.byte	0x6
	.short	0x387
	.byte	0x7
	.long	0x1461
	.byte	0x34
	.uleb128 0x19
	.ascii "prio\0"
	.byte	0x6
	.short	0x389
	.byte	0x7
	.long	0xee1
	.byte	0x38
	.uleb128 0x19
	.ascii "called_task\0"
	.byte	0x6
	.short	0x38f
	.byte	0x7
	.long	0x5d1
	.byte	0x40
	.uleb128 0x19
	.ascii "called_po\0"
	.byte	0x6
	.short	0x397
	.byte	0x7
	.long	0x12dd
	.byte	0x48
	.uleb128 0x19
	.ascii "acceptor_prev_call\0"
	.byte	0x6
	.short	0x3a2
	.byte	0x7
	.long	0xf69
	.byte	0x50
	.uleb128 0x19
	.ascii "acceptor_prev_priority\0"
	.byte	0x6
	.short	0x3a5
	.byte	0x7
	.long	0x14ab
	.byte	0x58
	.uleb128 0x19
	.ascii "cancellation_attempted\0"
	.byte	0x6
	.short	0x3aa
	.byte	0x7
	.long	0x37f
	.byte	0x5c
	.uleb128 0x19
	.ascii "with_abort\0"
	.byte	0x6
	.short	0x3af
	.byte	0x7
	.long	0x374
	.byte	0x5d
	.uleb128 0x19
	.ascii "needs_requeue\0"
	.byte	0x6
	.short	0x3b3
	.byte	0x7
	.long	0x374
	.byte	0x5e
	.byte	0
	.uleb128 0x1e
	.ascii "system__tasking__call_modes\0"
	.byte	0x1
	.byte	0x6
	.byte	0xd4
	.byte	0x9
	.long	0x11d9
	.uleb128 0x1f
	.ascii "system__tasking__simple_call\0"
	.byte	0
	.uleb128 0x1f
	.ascii "system__tasking__conditional_call\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "system__tasking__asynchronous_call\0"
	.byte	0x2
	.uleb128 0x1f
	.ascii "system__tasking__timed_call\0"
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.ascii "system__tasking__entry_call_state\0"
	.byte	0x1
	.byte	0x6
	.short	0x105
	.byte	0x9
	.long	0x12c5
	.uleb128 0x1f
	.ascii "system__tasking__never_abortable\0"
	.byte	0
	.uleb128 0x1f
	.ascii "system__tasking__not_yet_abortable\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "system__tasking__was_abortable\0"
	.byte	0x2
	.uleb128 0x1f
	.ascii "system__tasking__now_abortable\0"
	.byte	0x3
	.uleb128 0x1f
	.ascii "system__tasking__done\0"
	.byte	0x4
	.uleb128 0x1f
	.ascii "system__tasking__cancelled\0"
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x11d9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "system__address\0"
	.uleb128 0xb
	.long	0x12ca
	.uleb128 0x7
	.ascii "ada__exceptions__exception_id\0"
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.long	0x1308
	.uleb128 0x8
	.byte	0x8
	.long	0x130e
	.uleb128 0x9
	.ascii "system__standard_library__exception_data\0"
	.byte	0x28
	.byte	0x8
	.byte	0x61
	.byte	0x9
	.long	0x13d4
	.uleb128 0xa
	.ascii "not_handled_by_others\0"
	.byte	0x8
	.byte	0x62
	.byte	0x7
	.long	0x2cf
	.byte	0
	.uleb128 0xa
	.ascii "lang\0"
	.byte	0x8
	.byte	0x69
	.byte	0x7
	.long	0x2cf
	.byte	0x1
	.uleb128 0xa
	.ascii "name_length\0"
	.byte	0x8
	.byte	0x6f
	.byte	0x7
	.long	0xf51
	.byte	0x4
	.uleb128 0xa
	.ascii "full_name\0"
	.byte	0x8
	.byte	0x72
	.byte	0x7
	.long	0x12ca
	.byte	0x8
	.uleb128 0xa
	.ascii "htable_ptr\0"
	.byte	0x8
	.byte	0x76
	.byte	0x7
	.long	0x13d4
	.byte	0x10
	.uleb128 0xa
	.ascii "foreign_data\0"
	.byte	0x8
	.byte	0x7b
	.byte	0x7
	.long	0x12ca
	.byte	0x18
	.uleb128 0xa
	.ascii "raise_hook\0"
	.byte	0x8
	.byte	0x7f
	.byte	0x7
	.long	0x1409
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.ascii "system__standard_library__exception_data_ptr\0"
	.byte	0x8
	.byte	0x52
	.byte	0x9
	.long	0x1308
	.uleb128 0x7
	.ascii "system__standard_library__raise_action\0"
	.byte	0x8
	.byte	0x4d
	.byte	0x9
	.long	0x1438
	.uleb128 0x8
	.byte	0x8
	.long	0x143e
	.uleb128 0x22
	.uleb128 0x3
	.sleb128 0
	.sleb128 19
	.ascii "system__tasking__atc_level\0"
	.long	0x4f7
	.uleb128 0x3
	.sleb128 -2
	.sleb128 2147483647
	.ascii "system__tasking__entry_index\0"
	.long	0x1489
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "system__tasking__Tentry_indexB\0"
	.uleb128 0x3
	.sleb128 -1
	.sleb128 63
	.ascii "system__tasking__rendezvous_priority\0"
	.long	0x4f7
	.uleb128 0x9
	.ascii "system__task_primitives__private_data\0"
	.byte	0x78
	.byte	0x9
	.byte	0x5d
	.byte	0x9
	.long	0x153b
	.uleb128 0xa
	.ascii "thread\0"
	.byte	0x9
	.byte	0x5e
	.byte	0x7
	.long	0x153b
	.byte	0
	.uleb128 0xa
	.ascii "lwp\0"
	.byte	0x9
	.byte	0x6a
	.byte	0x7
	.long	0x12ca
	.byte	0x8
	.uleb128 0xa
	.ascii "cv\0"
	.byte	0x9
	.byte	0x6f
	.byte	0x7
	.long	0x158e
	.byte	0x10
	.uleb128 0xa
	.ascii "l\0"
	.byte	0x9
	.byte	0x72
	.byte	0x7
	.long	0x166e
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "system__os_interface__pthread_t\0"
	.long	0x1569
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.ascii "system__os_interface__Tpthread_tB\0"
	.uleb128 0x20
	.ascii "system__os_interface__pthread_cond_t\0"
	.byte	0x30
	.byte	0xa
	.short	0x246
	.byte	0x9
	.long	0x15dd
	.uleb128 0x19
	.ascii "sig\0"
	.byte	0xa
	.short	0x247
	.byte	0x7
	.long	0x15dd
	.byte	0
	.uleb128 0x19
	.ascii "opaque\0"
	.byte	0xa
	.short	0x248
	.byte	0x7
	.long	0x162a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "system__os_interface__long\0"
	.long	0x1611
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "interfaces__c__TlongB\0"
	.uleb128 0x12
	.long	0x163a
	.long	0x163a
	.uleb128 0x1d
	.long	0x24d
	.sleb128 40
	.byte	0
	.uleb128 0x24
	.byte	0
	.byte	0xff
	.ascii "interfaces__c__char\0"
	.long	0x1655
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.ascii "interfaces__c__TcharB\0"
	.uleb128 0x9
	.ascii "system__os_locks__pthread_mutex_t\0"
	.byte	0x38
	.byte	0xb
	.byte	0x33
	.byte	0x9
	.long	0x16a8
	.uleb128 0xa
	.ascii "data\0"
	.byte	0xb
	.byte	0x34
	.byte	0x7
	.long	0x16a8
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x163a
	.long	0x16b8
	.uleb128 0x25
	.long	0x16b8
	.byte	0x38
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "interfaces__c__size_t\0"
	.uleb128 0x26
	.ascii "system__tasking__task_procedure_access\0"
	.byte	0x6
	.short	0x1bb
	.byte	0x9
	.long	0x1701
	.uleb128 0x8
	.byte	0x8
	.long	0x1707
	.uleb128 0x27
	.long	0x1712
	.uleb128 0x28
	.long	0x12ca
	.byte	0
	.uleb128 0x1c
	.ascii "system__soft_links__tsd\0"
	.short	0x2a0
	.byte	0xc
	.short	0x156
	.byte	0x9
	.long	0x1798
	.uleb128 0x19
	.ascii "pri_stack_info\0"
	.byte	0xc
	.short	0x157
	.byte	0x7
	.long	0x1798
	.byte	0
	.uleb128 0x19
	.ascii "jmpbuf_address\0"
	.byte	0xc
	.short	0x15d
	.byte	0x7
	.long	0x12ca
	.byte	0x18
	.uleb128 0x19
	.ascii "sec_stack_ptr\0"
	.byte	0xc
	.short	0x163
	.byte	0x7
	.long	0x1860
	.byte	0x20
	.uleb128 0x19
	.ascii "current_excep\0"
	.byte	0xc
	.short	0x166
	.byte	0x7
	.long	0x1b43
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.ascii "system__stack_checking__stack_info\0"
	.byte	0x18
	.byte	0xd
	.byte	0x30
	.byte	0x9
	.long	0x17f0
	.uleb128 0xa
	.ascii "limit\0"
	.byte	0xd
	.byte	0x31
	.byte	0x7
	.long	0x12ca
	.byte	0
	.uleb128 0xa
	.ascii "base\0"
	.byte	0xd
	.byte	0x32
	.byte	0x7
	.long	0x12ca
	.byte	0x8
	.uleb128 0xa
	.ascii "size\0"
	.byte	0xd
	.byte	0x33
	.byte	0x7
	.long	0x17f0
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "system__storage_elements__storage_offset\0"
	.long	0x1832
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "system__storage_elements__Tstorage_offsetB\0"
	.uleb128 0x7
	.ascii "system__secondary_stack__ss_stack_ptr\0"
	.byte	0xe
	.byte	0x32
	.byte	0x9
	.long	0x188e
	.uleb128 0x8
	.byte	0x8
	.long	0x1894
	.uleb128 0x18
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
	.byte	0xe
	.short	0x13a
	.byte	0x9
	.long	0x1938
	.uleb128 0xa
	.ascii "default_chunk_size\0"
	.byte	0xe
	.byte	0x2b
	.byte	0x13
	.long	0x1938
	.byte	0
	.uleb128 0x19
	.ascii "freeable\0"
	.byte	0xe
	.short	0x13b
	.byte	0x7
	.long	0x374
	.byte	0x8
	.uleb128 0x19
	.ascii "high_water_mark\0"
	.byte	0xe
	.short	0x13e
	.byte	0x7
	.long	0x1992
	.byte	0x10
	.uleb128 0x19
	.ascii "top\0"
	.byte	0xe
	.short	0x142
	.byte	0x7
	.long	0x19c7
	.byte	0x18
	.uleb128 0x19
	.ascii "static_chunk\0"
	.byte	0xe
	.short	0x145
	.byte	0x7
	.long	0x1a83
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "system__parameters__size_type\0"
	.long	0x196f
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "system__parameters__Tsize_typeB\0"
	.uleb128 0x3
	.sleb128 0
	.sleb128 9223372036854775807
	.ascii "system__secondary_stack__memory_size\0"
	.long	0x196f
	.uleb128 0x20
	.ascii "system__secondary_stack__stack_pointer\0"
	.byte	0x10
	.byte	0xe
	.short	0x12c
	.byte	0x9
	.long	0x1a18
	.uleb128 0x19
	.ascii "byte\0"
	.byte	0xe
	.short	0x12d
	.byte	0x7
	.long	0x1a18
	.byte	0
	.uleb128 0x19
	.ascii "chunk\0"
	.byte	0xe
	.short	0x131
	.byte	0x7
	.long	0x1a4e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.sleb128 0
	.sleb128 9223372036854775807
	.ascii "system__secondary_stack__memory_index\0"
	.long	0x196f
	.uleb128 0x26
	.ascii "system__secondary_stack__ss_chunk_ptr\0"
	.byte	0xe
	.short	0x114
	.byte	0x9
	.long	0x1a7d
	.uleb128 0x8
	.byte	0x8
	.long	0x1a83
	.uleb128 0x18
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
	.byte	0xe
	.short	0x117
	.byte	0x9
	.long	0x1b16
	.uleb128 0x19
	.ascii "size\0"
	.byte	0xe
	.short	0x117
	.byte	0x13
	.long	0x1992
	.byte	0
	.uleb128 0x19
	.ascii "next\0"
	.byte	0xe
	.short	0x118
	.byte	0x7
	.long	0x1a4e
	.byte	0x8
	.uleb128 0x19
	.ascii "size_up_to_chunk\0"
	.byte	0xe
	.short	0x11c
	.byte	0x7
	.long	0x1992
	.byte	0x10
	.uleb128 0x12
	.long	0x1b16
	.long	0x1b04
	.uleb128 0x1b
	.long	0x196f
	.long	0x1ab8
	.byte	0
	.uleb128 0x19
	.ascii "memory\0"
	.byte	0xe
	.short	0x121
	.byte	0x7
	.long	0x1af1
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x7
	.ascii "system__storage_elements__storage_element\0"
	.uleb128 0x29
	.ascii "ada__exceptions__exception_occurrence\0"
	.short	0x278
	.byte	0x7
	.byte	0xfa
	.byte	0x9
	.long	0x1c16
	.uleb128 0xa
	.ascii "id\0"
	.byte	0x7
	.byte	0xfb
	.byte	0x7
	.long	0x12e2
	.byte	0
	.uleb128 0xa
	.ascii "machine_occurrence\0"
	.byte	0x7
	.byte	0xfe
	.byte	0x7
	.long	0x12ca
	.byte	0x8
	.uleb128 0x19
	.ascii "msg_length\0"
	.byte	0x7
	.short	0x102
	.byte	0x7
	.long	0xf51
	.byte	0x10
	.uleb128 0x19
	.ascii "msg\0"
	.byte	0x7
	.short	0x105
	.byte	0x7
	.long	0x1c16
	.byte	0x14
	.uleb128 0x19
	.ascii "exception_raised\0"
	.byte	0x7
	.short	0x108
	.byte	0x7
	.long	0x374
	.byte	0xdc
	.uleb128 0x19
	.ascii "pid\0"
	.byte	0x7
	.short	0x111
	.byte	0x7
	.long	0xf51
	.byte	0xe0
	.uleb128 0x19
	.ascii "num_tracebacks\0"
	.byte	0x7
	.short	0x114
	.byte	0x7
	.long	0x1c27
	.byte	0xe4
	.uleb128 0x19
	.ascii "tracebacks\0"
	.byte	0x7
	.short	0x117
	.byte	0x7
	.long	0x1c2e
	.byte	0xe8
	.byte	0
	.uleb128 0x12
	.long	0x2cf
	.long	0x1c27
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 200
	.byte	0
	.uleb128 0x2a
	.sleb128 0
	.sleb128 50
	.long	0x4f7
	.uleb128 0x2b
	.ascii "ada__exceptions__tracebacks_array\0"
	.long	0x1c60
	.long	0x1c60
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 50
	.byte	0
	.uleb128 0x23
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "system__traceback_entries__traceback_entry\0"
	.long	0x12ca
	.uleb128 0x26
	.ascii "system__tasking__access_boolean\0"
	.byte	0x6
	.short	0x1bd
	.byte	0x9
	.long	0x1cc2
	.uleb128 0x8
	.byte	0x8
	.long	0x374
	.uleb128 0x24
	.byte	0
	.byte	0x2
	.ascii "system__task_info__task_info_type\0"
	.long	0x1cf1
	.uleb128 0x2c
	.byte	0x1
	.byte	0x12
	.byte	0x54
	.byte	0x4
	.long	0x1d6c
	.uleb128 0x1f
	.ascii "system__task_info__process_scope__2\0"
	.byte	0
	.uleb128 0x1f
	.ascii "system__task_info__system_scope__2\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "system__task_info__default_scope__2\0"
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.ascii "system__stack_usage__stack_analyzer\0"
	.byte	0x58
	.byte	0xf
	.short	0x11e
	.byte	0x9
	.long	0x1e6f
	.uleb128 0x19
	.ascii "task_name\0"
	.byte	0xf
	.short	0x11f
	.byte	0x7
	.long	0x1e6f
	.byte	0
	.uleb128 0x19
	.ascii "stack_base\0"
	.byte	0xf
	.short	0x122
	.byte	0x7
	.long	0x1e7f
	.byte	0x20
	.uleb128 0x19
	.ascii "stack_size\0"
	.byte	0xf
	.short	0x126
	.byte	0x7
	.long	0xf51
	.byte	0x28
	.uleb128 0x19
	.ascii "pattern_size\0"
	.byte	0xf
	.short	0x129
	.byte	0x7
	.long	0xf51
	.byte	0x2c
	.uleb128 0x19
	.ascii "pattern\0"
	.byte	0xf
	.short	0x12c
	.byte	0x7
	.long	0x1edd
	.byte	0x30
	.uleb128 0x19
	.ascii "pattern_limit\0"
	.byte	0xf
	.short	0x12f
	.byte	0x7
	.long	0x1e7f
	.byte	0x38
	.uleb128 0x19
	.ascii "topmost_touched_mark\0"
	.byte	0xf
	.short	0x132
	.byte	0x7
	.long	0x1e7f
	.byte	0x40
	.uleb128 0x19
	.ascii "pattern_overlay_address\0"
	.byte	0xf
	.short	0x138
	.byte	0x7
	.long	0x12ca
	.byte	0x48
	.uleb128 0x19
	.ascii "result_id\0"
	.byte	0xf
	.short	0x13c
	.byte	0x7
	.long	0x502
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.long	0x2cf
	.long	0x1e7f
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 32
	.byte	0
	.uleb128 0x23
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "system__stack_usage__stack_address\0"
	.long	0x1eb0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "system__storage_elements__integer_address\0"
	.uleb128 0x6
	.byte	0
	.long	0xffffffff
	.ascii "system__stack_usage__pattern_type\0"
	.long	0x1f09
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "interfaces__unsigned_32\0"
	.uleb128 0x20
	.ascii "system__tasking__termination_handler\0"
	.byte	0x10
	.byte	0x6
	.short	0x16c
	.byte	0x4
	.long	0x1f71
	.uleb128 0x19
	.ascii "P9s\0"
	.byte	0x6
	.short	0x16c
	.byte	0x4
	.long	0x12ca
	.byte	0
	.uleb128 0x19
	.ascii "S10s\0"
	.byte	0x6
	.short	0x16c
	.byte	0x4
	.long	0x201f
	.byte	0x8
	.byte	0
	.uleb128 0x27
	.long	0x1f8b
	.uleb128 0x28
	.long	0x12ca
	.uleb128 0x28
	.long	0x1f8b
	.uleb128 0x28
	.long	0x5b0
	.uleb128 0x28
	.long	0x2019
	.byte	0
	.uleb128 0x21
	.ascii "system__tasking__cause_of_termination\0"
	.byte	0x1
	.byte	0x6
	.short	0x160
	.byte	0x9
	.long	0x2019
	.uleb128 0x1f
	.ascii "system__tasking__normal\0"
	.byte	0
	.uleb128 0x1f
	.ascii "system__tasking__abnormal\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "system__tasking__unhandled_exception\0"
	.byte	0x2
	.byte	0
	.uleb128 0x2d
	.byte	0x8
	.long	0x1b43
	.uleb128 0x2e
	.byte	0x8
	.long	0x1f71
	.uleb128 0x2f
	.ascii "system__tasking__debug_event_array\0"
	.byte	0x1
	.long	0x374
	.long	0x2059
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 16
	.byte	0
	.uleb128 0x26
	.ascii "system__tasking__dispatching_domain_access\0"
	.byte	0x6
	.short	0x184
	.byte	0x9
	.long	0x208d
	.uleb128 0x30
	.ascii "system__tasking__dispatching_domain\0"
	.byte	0x10
	.byte	0x6
	.short	0x17b
	.byte	0x9
	.long	0x2104
	.uleb128 0x31
	.set L$set$141,LASF0-Lsection__debug_str
	.long L$set$141
	.byte	0x6
	.short	0x184
	.byte	0x9
	.long	0x20c9
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2104
	.uleb128 0x17
	.byte	0x8
	.byte	0x10
	.byte	0x19
	.byte	0x31
	.long	0x20f5
	.uleb128 0x19
	.ascii "LB0\0"
	.byte	0x6
	.short	0x17b
	.byte	0x9
	.long	0x2123
	.byte	0
	.uleb128 0x19
	.ascii "UB0\0"
	.byte	0x6
	.short	0x17b
	.byte	0x9
	.long	0x2123
	.byte	0x4
	.byte	0
	.uleb128 0x31
	.set L$set$142,LASF1-Lsection__debug_str
	.long L$set$142
	.byte	0x6
	.short	0x184
	.byte	0x9
	.long	0x2148
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	0x374
	.long	0x2123
	.uleb128 0x13
	.long	0xf29
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
	.uleb128 0x14
	.sleb128 65535
	.ascii "system__multiprocessors__cpu\0"
	.long	0xf29
	.uleb128 0x8
	.byte	0x8
	.long	0x20cf
	.uleb128 0x2b
	.ascii "system__tasking__entry_call_array\0"
	.long	0xf98
	.long	0x2180
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 19
	.byte	0
	.uleb128 0x26
	.ascii "system__tasking__accept_list_access\0"
	.byte	0x6
	.short	0x33c
	.byte	0x9
	.long	0x21ad
	.uleb128 0x30
	.ascii "system__tasking__accept_list\0"
	.byte	0x10
	.byte	0x6
	.short	0x339
	.byte	0x9
	.long	0x221e
	.uleb128 0x31
	.set L$set$143,LASF0-Lsection__debug_str
	.long L$set$143
	.byte	0x6
	.short	0x33c
	.byte	0x9
	.long	0x21e2
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x221e
	.uleb128 0x32
	.byte	0x8
	.byte	0x6
	.short	0x332
	.byte	0x2a
	.long	0x220f
	.uleb128 0x19
	.ascii "LB0\0"
	.byte	0x6
	.short	0x339
	.byte	0x9
	.long	0x228c
	.byte	0
	.uleb128 0x19
	.ascii "UB0\0"
	.byte	0x6
	.short	0x339
	.byte	0x9
	.long	0x228c
	.byte	0x4
	.byte	0
	.uleb128 0x31
	.set L$set$144,LASF1-Lsection__debug_str
	.long L$set$144
	.byte	0x6
	.short	0x33c
	.byte	0x9
	.long	0x22bd
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	0x223d
	.long	0x223d
	.uleb128 0x13
	.long	0x4f7
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
	.uleb128 0x20
	.ascii "system__tasking__accept_alternative\0"
	.byte	0x8
	.byte	0x6
	.short	0x334
	.byte	0x9
	.long	0x228c
	.uleb128 0x19
	.ascii "null_body\0"
	.byte	0x6
	.short	0x335
	.byte	0x7
	.long	0x374
	.byte	0
	.uleb128 0x19
	.ascii "s\0"
	.byte	0x6
	.short	0x336
	.byte	0x7
	.long	0x8d4
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.sleb128 2147483647
	.ascii "system__tasking__positive_select_index\0"
	.long	0x4f7
	.uleb128 0x8
	.byte	0x8
	.long	0x21e8
	.uleb128 0x3
	.sleb128 0
	.sleb128 2147483647
	.ascii "system__tasking__select_index\0"
	.long	0x4f7
	.uleb128 0x3
	.sleb128 -2147483648
	.sleb128 2147483647
	.ascii "system__tasking__master_level\0"
	.long	0x4f7
	.uleb128 0x3
	.sleb128 -1
	.sleb128 20
	.ascii "system__tasking__atc_level_base\0"
	.long	0x4f7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "system__tasking__task_serial_number\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long_integer\0"
	.uleb128 0x2b
	.ascii "system__tasking__attribute_array\0"
	.long	0x12dd
	.long	0x23a8
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 32
	.byte	0
	.uleb128 0x9
	.ascii "system__tasking__entry_queue\0"
	.byte	0x10
	.byte	0x6
	.byte	0xf4
	.byte	0x9
	.long	0x23eb
	.uleb128 0xa
	.ascii "head\0"
	.byte	0x6
	.byte	0xf5
	.byte	0x7
	.long	0xf69
	.byte	0
	.uleb128 0xa
	.ascii "tail\0"
	.byte	0x6
	.byte	0xf6
	.byte	0x7
	.long	0xf69
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x7
	.ascii "system__unsigned_types__packed_byte\0"
	.uleb128 0x3
	.sleb128 1901
	.sleb128 2399
	.ascii "ada__calendar__year_number\0"
	.long	0x4f7
	.uleb128 0x14
	.sleb128 12
	.ascii "ada__calendar__month_number\0"
	.long	0x4f7
	.uleb128 0x14
	.sleb128 31
	.ascii "ada__calendar__day_number\0"
	.long	0x4f7
	.uleb128 0x3
	.sleb128 0
	.sleb128 86400000000000
	.ascii "ada__calendar__day_duration\0"
	.long	0x24a1
	.uleb128 0x33
	.byte	0x8
	.byte	0xd
	.sleb128 -9
	.ascii "duration\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "system__img_flt__impl__num\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "smc_math__temperature_value\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "smc_math__power_value\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "smc_math__dt_value\0"
	.uleb128 0x3
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "ada__real_time__time_span\0"
	.long	0x254d
	.uleb128 0xc
	.byte	0x8
	.byte	0xd
	.sleb128 -9
	.ascii "ada__real_time__Ttime_spanB\0"
	.uleb128 0x34
	.ascii "smc_daemon\0"
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.ascii "_ada_smc_daemon\0"
	.quad	LFB1
	.set L$set$145,LFE1-LFB1
	.quad L$set$145
	.uleb128 0x1
	.byte	0x9c
	.long	0x35c8
	.uleb128 0x35
	.byte	0x1
	.byte	0x10
	.byte	0x4
	.long	0x35d4
	.uleb128 0x35
	.byte	0x1
	.byte	0x11
	.byte	0x4
	.long	0x35e0
	.uleb128 0x35
	.byte	0x1
	.byte	0x12
	.byte	0x4
	.long	0x35ed
	.uleb128 0x35
	.byte	0x1
	.byte	0x13
	.byte	0x4
	.long	0x3626
	.uleb128 0x35
	.byte	0x1
	.byte	0x14
	.byte	0x4
	.long	0x362c
	.uleb128 0x35
	.byte	0x1
	.byte	0x15
	.byte	0x4
	.long	0x363a
	.uleb128 0x36
	.ascii "smc_daemon__get_euid\0"
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.ascii "geteuid\0"
	.long	0x226
	.uleb128 0x37
	.ascii "smc_daemon__handle_signal\0"
	.byte	0x1
	.byte	0x27
	.byte	0x4
	.quad	LFB2
	.set L$set$146,LFE2-LFB2
	.quad L$set$146
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x6
	.long	0x2675
	.uleb128 0x38
	.ascii "sig\0"
	.byte	0x1
	.byte	0x24
	.byte	0x1d
	.long	0x248
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x39
	.quad	LBB2
	.set L$set$147,LBE2-LBB2
	.quad L$set$147
	.uleb128 0x12
	.long	0x2cf
	.long	0x2665
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 77
	.byte	0
	.uleb128 0x3a
	.ascii "S17b\0"
	.long	0x2654
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x2680
	.uleb128 0x28
	.long	0x226
	.byte	0
	.uleb128 0x7
	.ascii "smc_daemon__signal_handler_t\0"
	.byte	0x1
	.byte	0x1d
	.byte	0x9
	.long	0x26a5
	.uleb128 0x8
	.byte	0x8
	.long	0x2675
	.uleb128 0x3b
	.ascii "smc_daemon__c_signal\0"
	.byte	0x1
	.byte	0x20
	.byte	0xd
	.ascii "signal\0"
	.long	0x2680
	.long	0x26de
	.uleb128 0x28
	.long	0x226
	.uleb128 0x28
	.long	0x2680
	.byte	0
	.uleb128 0x3c
	.ascii "conn\0"
	.byte	0x1
	.byte	0x2e
	.byte	0x4
	.long	0x280
	.uleb128 0x5
	.byte	0x91
	.sleb128 -640
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x3c
	.ascii "res\0"
	.byte	0x1
	.byte	0x2f
	.byte	0x4
	.long	0x226
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x3c
	.ascii "key_f0tg\0"
	.byte	0x1
	.byte	0x32
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3c
	.ascii "key_f1tg\0"
	.byte	0x1
	.byte	0x33
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x3c
	.ascii "key_f0md\0"
	.byte	0x1
	.byte	0x34
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x3c
	.ascii "key_f1md\0"
	.byte	0x1
	.byte	0x35
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x3c
	.ascii "key_f0ac\0"
	.byte	0x1
	.byte	0x36
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x3c
	.ascii "key_f1ac\0"
	.byte	0x1
	.byte	0x37
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3c
	.ascii "hex_01\0"
	.byte	0x1
	.byte	0x39
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x3c
	.ascii "hex_00\0"
	.byte	0x1
	.byte	0x3a
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x3c
	.ascii "current_temp\0"
	.byte	0x1
	.byte	0x3d
	.byte	0x4
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x3c
	.ascii "prev_temp\0"
	.byte	0x1
	.byte	0x3e
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3c
	.ascii "temp_gradient\0"
	.byte	0x1
	.byte	0x3f
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3c
	.ascii "power\0"
	.byte	0x1
	.byte	0x41
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3c
	.ascii "battery_percent\0"
	.byte	0x1
	.byte	0x42
	.byte	0x4
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x3c
	.ascii "f0ac_val\0"
	.byte	0x1
	.byte	0x44
	.byte	0x4
	.long	0x2dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0x3c
	.ascii "f1ac_val\0"
	.byte	0x1
	.byte	0x45
	.byte	0x4
	.long	0x2dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x3c
	.ascii "target_rpm\0"
	.byte	0x1
	.byte	0x47
	.byte	0x4
	.long	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.ascii "cpu_gpu_target\0"
	.byte	0x1
	.byte	0x48
	.byte	0x4
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x3c
	.ascii "battery_target\0"
	.byte	0x1
	.byte	0x49
	.byte	0x4
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x3c
	.ascii "pid_loop_state\0"
	.byte	0x1
	.byte	0x4b
	.byte	0x4
	.long	0x30d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x3c
	.ascii "last_tcmz_temp\0"
	.byte	0x1
	.byte	0x4e
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.ascii "last_gpu_temp\0"
	.byte	0x1
	.byte	0x4f
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.ascii "last_talp_temp\0"
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.ascii "last_tarf_temp\0"
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3c
	.ascii "last_talt_temp\0"
	.byte	0x1
	.byte	0x52
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.ascii "last_talw_temp\0"
	.byte	0x1
	.byte	0x53
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3c
	.ascii "last_tart_temp\0"
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3c
	.ascii "last_tarw_temp\0"
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.ascii "last_ts0p_temp\0"
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3c
	.ascii "last_ts1p_temp\0"
	.byte	0x1
	.byte	0x57
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.ascii "last_telemetry_time\0"
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3c
	.ascii "loop_start_time\0"
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.long	0x3ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x3c
	.ascii "prev_x\0"
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3c
	.ascii "prev_y\0"
	.byte	0x1
	.byte	0x5e
	.byte	0xc
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3c
	.ascii "prev_z\0"
	.byte	0x1
	.byte	0x5e
	.byte	0x14
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3c
	.ascii "cx\0"
	.byte	0x1
	.byte	0x5f
	.byte	0x4
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x3c
	.ascii "cy\0"
	.byte	0x1
	.byte	0x5f
	.byte	0x8
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3c
	.ascii "cz\0"
	.byte	0x1
	.byte	0x5f
	.byte	0xc
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x3c
	.ascii "prev_sms_valid\0"
	.byte	0x1
	.byte	0x60
	.byte	0x4
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x3c
	.ascii "sms_success\0"
	.byte	0x1
	.byte	0x61
	.byte	0x4
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -385
	.uleb128 0x3c
	.ascii "delta_x\0"
	.byte	0x1
	.byte	0x62
	.byte	0x4
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x3c
	.ascii "delta_y\0"
	.byte	0x1
	.byte	0x62
	.byte	0xd
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x3c
	.ascii "delta_z\0"
	.byte	0x1
	.byte	0x62
	.byte	0x16
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x3c
	.ascii "calibrated_pres_rpm\0"
	.byte	0x1
	.byte	0x65
	.byte	0x4
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3c
	.ascii "calibration_active\0"
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x3c
	.ascii "calibration_start_time\0"
	.byte	0x1
	.byte	0x67
	.byte	0x4
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3c
	.ascii "calibration_sum\0"
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x3c
	.ascii "calibration_count\0"
	.byte	0x1
	.byte	0x69
	.byte	0x4
	.long	0xf51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3c
	.ascii "python_pid\0"
	.byte	0x1
	.byte	0x6c
	.byte	0x4
	.long	0x413
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x3c
	.ascii "python_spawned\0"
	.byte	0x1
	.byte	0x6d
	.byte	0x4
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0x12
	.long	0x45d
	.long	0x2b9b
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 1
	.byte	0
	.uleb128 0x3c
	.ascii "python_args\0"
	.byte	0x1
	.byte	0x6e
	.byte	0x4
	.long	0x2b8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x7
	.ascii "smc_daemon__latency_monitor_access\0"
	.byte	0x1
	.byte	0x71
	.byte	0x9
	.long	0x364f
	.uleb128 0x3c
	.ascii "lm_task\0"
	.byte	0x1
	.byte	0x74
	.byte	0x4
	.long	0x2bb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x7
	.ascii "smc_daemon__thermal_suspender_access\0"
	.byte	0x1
	.byte	0x72
	.byte	0x9
	.long	0x366c
	.uleb128 0x3c
	.ascii "ts_task\0"
	.byte	0x1
	.byte	0x75
	.byte	0x4
	.long	0x2bf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x37
	.ascii "smc_daemon__run_power_command\0"
	.byte	0x1
	.byte	0x77
	.byte	0x4
	.quad	LFB3
	.set L$set$148,LFE3-LFB3
	.quad L$set$148
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x6
	.long	0x2ca3
	.uleb128 0x3d
	.set L$set$149,LASF2-Lsection__debug_str
	.long L$set$149
	.byte	0x1
	.byte	0x77
	.byte	0x21
	.long	0x586
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.quad	LBB97
	.set L$set$150,LBE97-LBB97
	.quad L$set$150
	.uleb128 0x3e
	.set L$set$151,LASF3-Lsection__debug_str
	.long L$set$151
	.byte	0x1
	.byte	0x78
	.byte	0x7
	.long	0x374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x3f
	.ascii "smc_daemon__get_time_str\0"
	.byte	0x1
	.byte	0x7e
	.byte	0x4
	.long	0x484
	.quad	LFB4
	.set L$set$152,LFE4-LFB4
	.quad L$set$152
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.byte	0x91
	.sleb128 -200
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x6
	.long	0x2dce
	.uleb128 0x35
	.byte	0x1
	.byte	0x7f
	.byte	0x7
	.long	0x3607
	.uleb128 0x3c
	.ascii "now\0"
	.byte	0x1
	.byte	0x80
	.byte	0x7
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.ascii "year\0"
	.byte	0x1
	.byte	0x81
	.byte	0x7
	.long	0x2412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.ascii "month\0"
	.byte	0x1
	.byte	0x82
	.byte	0x7
	.long	0x2436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.ascii "day\0"
	.byte	0x1
	.byte	0x83
	.byte	0x7
	.long	0x2458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.ascii "seconds\0"
	.byte	0x1
	.byte	0x84
	.byte	0x7
	.long	0x2478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3c
	.ascii "hour\0"
	.byte	0x1
	.byte	0x85
	.byte	0x7
	.long	0xf51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3c
	.ascii "min\0"
	.byte	0x1
	.byte	0x85
	.byte	0xd
	.long	0xf51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.ascii "sec\0"
	.byte	0x1
	.byte	0x85
	.byte	0x12
	.long	0xf51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.ascii "L75b\0"
	.long	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3a
	.ascii "smc_daemon__get_time_str__TTS76bSP1___U\0"
	.long	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	0x2cf
	.long	0x2dbe
	.uleb128 0x40
	.long	0x4f7
	.long	0x2d6a
	.long	0x2d77
	.byte	0
	.uleb128 0x3a
	.ascii "S76b\0"
	.long	0x2da7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x3f
	.ascii "smc_daemon__get_day_str\0"
	.byte	0x1
	.byte	0x90
	.byte	0x4
	.long	0x484
	.quad	LFB5
	.set L$set$153,LFE5-LFB5
	.quad L$set$153
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x6
	.long	0x2ecc
	.uleb128 0x35
	.byte	0x1
	.byte	0x91
	.byte	0x7
	.long	0x3607
	.uleb128 0x3c
	.ascii "now\0"
	.byte	0x1
	.byte	0x92
	.byte	0x7
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3c
	.ascii "year\0"
	.byte	0x1
	.byte	0x93
	.byte	0x7
	.long	0x2412
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.ascii "month\0"
	.byte	0x1
	.byte	0x94
	.byte	0x7
	.long	0x2436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.ascii "day\0"
	.byte	0x1
	.byte	0x95
	.byte	0x7
	.long	0x2458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.ascii "seconds\0"
	.byte	0x1
	.byte	0x96
	.byte	0x7
	.long	0x2478
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.ascii "L117b\0"
	.long	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3a
	.ascii "smc_daemon__get_day_str__TTS118bSP1___U\0"
	.long	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	0x2cf
	.long	0x2ebb
	.uleb128 0x40
	.long	0x4f7
	.long	0x2e66
	.long	0x2e74
	.byte	0
	.uleb128 0x3a
	.ascii "S118b\0"
	.long	0x2ea4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x3f
	.ascii "smc_daemon__read_and_validate_smc_temp\0"
	.byte	0x1
	.byte	0x9f
	.byte	0x4
	.long	0x366
	.quad	LFB6
	.set L$set$154,LFE6-LFB6
	.quad L$set$154
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x6
	.long	0x2fac
	.uleb128 0x38
	.ascii "key\0"
	.byte	0x1
	.byte	0x9f
	.byte	0x29
	.long	0x4d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.ascii "last_val\0"
	.byte	0x1
	.byte	0x9f
	.byte	0x37
	.long	0x36f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.quad	LBB103
	.set L$set$155,LBE103-LBB103
	.quad L$set$155
	.uleb128 0x3c
	.ascii "key_char\0"
	.byte	0x1
	.byte	0xa0
	.byte	0x7
	.long	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3c
	.ascii "val_float\0"
	.byte	0x1
	.byte	0xa1
	.byte	0x7
	.long	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.ascii "read_res\0"
	.byte	0x1
	.byte	0xa2
	.byte	0x7
	.long	0x226
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x39
	.quad	LBB104
	.set L$set$156,LBE104-LBB104
	.quad L$set$156
	.uleb128 0x3c
	.ascii "val\0"
	.byte	0x1
	.byte	0xa8
	.byte	0xd
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.ascii "sig_resint\0"
	.byte	0x1
	.byte	0xb3
	.byte	0x4
	.long	0x2680
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x3c
	.ascii "sig_resterm\0"
	.byte	0x1
	.byte	0xb4
	.byte	0x4
	.long	0x2680
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x41
	.quad	LBB10
	.set L$set$157,LBE10-LBB10
	.quad L$set$157
	.long	0x3011
	.uleb128 0x12
	.long	0x2cf
	.long	0x3001
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 68
	.byte	0
	.uleb128 0x3a
	.ascii "S149b\0"
	.long	0x2ff0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.byte	0
	.uleb128 0x42
	.set L$set$158,Ldebug_ranges0+0-Lsection__debug_ranges
	.long L$set$158
	.long	0x306b
	.uleb128 0x3e
	.set L$set$159,LASF3-Lsection__debug_str
	.long L$set$159
	.byte	0x1
	.byte	0xd3
	.byte	0x7
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -261
	.uleb128 0x12
	.long	0x45d
	.long	0x303a
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 3
	.byte	0
	.uleb128 0x3e
	.set L$set$160,LASF2-Lsection__debug_str
	.long L$set$160
	.byte	0x1
	.byte	0xd4
	.byte	0x7
	.long	0x302a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.uleb128 0x39
	.quad	LBB15
	.set L$set$161,LBE15-LBB15
	.quad L$set$161
	.uleb128 0x3c
	.ascii "i\0"
	.byte	0x1
	.byte	0xda
	.byte	0xb
	.long	0x4f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x42
	.set L$set$162,Ldebug_ranges0+0x30-Lsection__debug_ranges
	.long L$set$162
	.long	0x3196
	.uleb128 0x12
	.long	0x2cf
	.long	0x3084
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 60
	.byte	0
	.uleb128 0x11
	.long	0x3074
	.uleb128 0x3c
	.ascii "python_path\0"
	.byte	0x1
	.byte	0xe0
	.byte	0x7
	.long	0x3084
	.uleb128 0x9
	.byte	0x3
	.quad	_python_path.11
	.uleb128 0x12
	.long	0x2cf
	.long	0x30b7
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 49
	.byte	0
	.uleb128 0x11
	.long	0x30a7
	.uleb128 0x3c
	.ascii "fall_path\0"
	.byte	0x1
	.byte	0xe1
	.byte	0x7
	.long	0x30b7
	.uleb128 0x9
	.byte	0x3
	.quad	_fall_path.10
	.uleb128 0x12
	.long	0x2cf
	.long	0x30e9
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 256
	.byte	0
	.uleb128 0x3c
	.ascii "exec_path\0"
	.byte	0x1
	.byte	0xe2
	.byte	0x7
	.long	0x30d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.uleb128 0x3c
	.ascii "len\0"
	.byte	0x1
	.byte	0xe3
	.byte	0x7
	.long	0xf51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3a
	.ascii "EXPTR\0"
	.long	0x3689
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x3a
	.ascii "EXCLN\0"
	.long	0x3689
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x3a
	.ascii "EXPRP\0"
	.long	0x3689
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x43
	.set L$set$163,Ldebug_ranges0+0x70-Lsection__debug_ranges
	.long L$set$163
	.uleb128 0x3a
	.ascii "smc_daemon__B_4__B177b__TTS186bSP1___U\0"
	.long	0x4f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x12
	.long	0x2cf
	.long	0x3184
	.uleb128 0x1b
	.long	0x4f7
	.long	0x3141
	.byte	0
	.uleb128 0x3a
	.ascii "S186b\0"
	.long	0x3171
	.uleb128 0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x41
	.quad	LBB24
	.set L$set$164,LBE24-LBB24
	.quad L$set$164
	.long	0x31cc
	.uleb128 0x12
	.long	0x2cf
	.long	0x31bc
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 75
	.byte	0
	.uleb128 0x3a
	.ascii "S206b\0"
	.long	0x31ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.byte	0
	.uleb128 0x41
	.quad	LBB44
	.set L$set$165,LBE44-LBB44
	.quad L$set$165
	.long	0x3215
	.uleb128 0x44
	.ascii "precool_active\0"
	.byte	0x1
	.short	0x13c
	.byte	0xa
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -329
	.uleb128 0x44
	.ascii "time_left\0"
	.byte	0x1
	.short	0x13d
	.byte	0xa
	.long	0x2367
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.uleb128 0x41
	.quad	LBB46
	.set L$set$166,LBE46-LBB46
	.quad L$set$166
	.long	0x3241
	.uleb128 0x44
	.ascii "tb0t_val\0"
	.byte	0x1
	.short	0x14f
	.byte	0xa
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.byte	0
	.uleb128 0x41
	.quad	LBB49
	.set L$set$167,LBE49-LBB49
	.quad L$set$167
	.long	0x3361
	.uleb128 0x45
	.byte	0x1
	.short	0x162
	.byte	0xa
	.long	0x3607
	.uleb128 0x44
	.ascii "f0tg_hex\0"
	.byte	0x1
	.short	0x163
	.byte	0xa
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x44
	.ascii "f1tg_hex\0"
	.byte	0x1
	.short	0x164
	.byte	0xa
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x44
	.ascii "rpm_int\0"
	.byte	0x1
	.short	0x165
	.byte	0xa
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x44
	.ascii "temp_val\0"
	.byte	0x1
	.short	0x169
	.byte	0xa
	.long	0xf51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x12
	.long	0x2cf
	.long	0x32c6
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 16
	.byte	0
	.uleb128 0x11
	.long	0x32b6
	.uleb128 0x44
	.ascii "hex_map\0"
	.byte	0x1
	.short	0x16a
	.byte	0xa
	.long	0x32c6
	.uleb128 0x9
	.byte	0x3
	.quad	_hex_map.9
	.uleb128 0x44
	.ascii "h1\0"
	.byte	0x1
	.short	0x16b
	.byte	0xa
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -373
	.uleb128 0x44
	.ascii "h2\0"
	.byte	0x1
	.short	0x16c
	.byte	0xa
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -374
	.uleb128 0x44
	.ascii "h3\0"
	.byte	0x1
	.short	0x16d
	.byte	0xa
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -375
	.uleb128 0x44
	.ascii "h4\0"
	.byte	0x1
	.short	0x16e
	.byte	0xa
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x12
	.long	0x2cf
	.long	0x3336
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 4
	.byte	0
	.uleb128 0x3a
	.ascii "S231b\0"
	.long	0x3326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x44
	.ascii "hex_str\0"
	.byte	0x1
	.short	0x16f
	.byte	0xa
	.long	0x335a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2d
	.byte	0x8
	.long	0x3326
	.byte	0
	.uleb128 0x41
	.quad	LBB54
	.set L$set$168,LBE54-LBB54
	.quad L$set$168
	.long	0x3398
	.uleb128 0x12
	.long	0x45d
	.long	0x3386
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 2
	.byte	0
	.uleb128 0x46
	.set L$set$169,LASF2-Lsection__debug_str
	.long L$set$169
	.byte	0x1
	.short	0x196
	.byte	0xd
	.long	0x3376
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.byte	0
	.uleb128 0x41
	.quad	LBB55
	.set L$set$170,LBE55-LBB55
	.quad L$set$170
	.long	0x3452
	.uleb128 0x44
	.ascii "avg_rpm\0"
	.byte	0x1
	.short	0x1af
	.byte	0x10
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x44
	.ascii "diff\0"
	.byte	0x1
	.short	0x1b0
	.byte	0x10
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x44
	.ascii "est_hpa\0"
	.byte	0x1
	.short	0x1b1
	.byte	0x10
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x41
	.quad	LBB56
	.set L$set$171,LBE56-LBB56
	.quad L$set$171
	.long	0x341f
	.uleb128 0x12
	.long	0x2cf
	.long	0x340f
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 85
	.byte	0
	.uleb128 0x3a
	.ascii "S273b\0"
	.long	0x33fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.byte	0
	.uleb128 0x39
	.quad	LBB58
	.set L$set$172,LBE58-LBB58
	.quad L$set$172
	.uleb128 0x12
	.long	0x2cf
	.long	0x3441
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 77
	.byte	0
	.uleb128 0x3a
	.ascii "S289b\0"
	.long	0x3430
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.byte	0
	.byte	0
	.uleb128 0x41
	.quad	LBB74
	.set L$set$173,LBE74-LBB74
	.quad L$set$173
	.long	0x349b
	.uleb128 0x44
	.ascii "elapsed_span\0"
	.byte	0x1
	.short	0x1ef
	.byte	0xa
	.long	0x251a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x44
	.ascii "target_span\0"
	.byte	0x1
	.short	0x1f0
	.byte	0xa
	.long	0x251a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x41
	.quad	LBB77
	.set L$set$174,LBE77-LBB77
	.quad L$set$174
	.long	0x34e3
	.uleb128 0x46
	.set L$set$175,LASF3-Lsection__debug_str
	.long L$set$175
	.byte	0x1
	.short	0x1fe
	.byte	0xa
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -433
	.uleb128 0x12
	.long	0x45d
	.long	0x34d1
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 3
	.byte	0
	.uleb128 0x46
	.set L$set$176,LASF2-Lsection__debug_str
	.long L$set$176
	.byte	0x1
	.short	0x1ff
	.byte	0xa
	.long	0x34c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.byte	0
	.uleb128 0x41
	.quad	LBB80
	.set L$set$177,LBE80-LBB80
	.quad L$set$177
	.long	0x352b
	.uleb128 0x46
	.set L$set$178,LASF3-Lsection__debug_str
	.long L$set$178
	.byte	0x1
	.short	0x20e
	.byte	0x7
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -434
	.uleb128 0x12
	.long	0x45d
	.long	0x3519
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 2
	.byte	0
	.uleb128 0x46
	.set L$set$179,LASF2-Lsection__debug_str
	.long L$set$179
	.byte	0x1
	.short	0x20f
	.byte	0x7
	.long	0x3509
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.byte	0
	.uleb128 0x41
	.quad	LBB82
	.set L$set$180,LBE82-LBB82
	.quad L$set$180
	.long	0x3594
	.uleb128 0x46
	.set L$set$181,LASF3-Lsection__debug_str
	.long L$set$181
	.byte	0x1
	.short	0x219
	.byte	0x7
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -435
	.uleb128 0x12
	.long	0x45d
	.long	0x3561
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 3
	.byte	0
	.uleb128 0x46
	.set L$set$182,LASF2-Lsection__debug_str
	.long L$set$182
	.byte	0x1
	.short	0x21a
	.byte	0x7
	.long	0x3551
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.uleb128 0x39
	.quad	LBB84
	.set L$set$183,LBE84-LBB84
	.quad L$set$183
	.uleb128 0x44
	.ascii "i\0"
	.byte	0x1
	.short	0x220
	.byte	0xb
	.long	0x4f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.byte	0
	.uleb128 0x39
	.quad	LBB86
	.set L$set$184,LBE86-LBB86
	.quad L$set$184
	.uleb128 0x12
	.long	0x45d
	.long	0x35b5
	.uleb128 0x1d
	.long	0x4f7
	.sleb128 2
	.byte	0
	.uleb128 0x46
	.set L$set$185,LASF2-Lsection__debug_str
	.long L$set$185
	.byte	0x1
	.short	0x226
	.byte	0x7
	.long	0x35a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.byte	0
	.byte	0
	.uleb128 0x47
	.ascii "ada\0"
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.long	0x3613
	.uleb128 0x48
	.ascii "text_io\0"
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.uleb128 0x48
	.ascii "calendar\0"
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.uleb128 0x48
	.ascii "real_time\0"
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.uleb128 0x49
	.ascii "strings\0"
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.uleb128 0x48
	.ascii "fixed\0"
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x47
	.ascii "interfaces\0"
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.long	0x363a
	.uleb128 0x49
	.ascii "c\0"
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.uleb128 0x48
	.ascii "strings\0"
	.byte	0x1
	.byte	0x6
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x48
	.ascii "smc_daemon_state\0"
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.uleb128 0x8
	.byte	0x8
	.long	0x3655
	.uleb128 0x17
	.byte	0x8
	.byte	0x11
	.byte	0x15
	.byte	0x4
	.long	0x366c
	.uleb128 0x16
	.set L$set$186,LASF4-Lsection__debug_str
	.long L$set$186
	.byte	0x11
	.byte	0x15
	.byte	0x4
	.long	0x5b0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3672
	.uleb128 0x17
	.byte	0x8
	.byte	0x11
	.byte	0x16
	.byte	0x4
	.long	0x3689
	.uleb128 0x16
	.set L$set$187,LASF4-Lsection__debug_str
	.long L$set$187
	.byte	0x11
	.byte	0x16
	.byte	0x4
	.long	0x5b0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.byte	0x8
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x39
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x6e
	.uleb128 0x8
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x48
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x48
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.long	0xca
	.short	0x2
	.set L$set$188,Ldebug_info0-Lsection__debug_info
	.long L$set$188
	.long	0x368c
	.long	0x256d
	.ascii "smc_daemon\0"
	.long	0x35c8
	.ascii "ada\0"
	.long	0x35d4
	.ascii "text_io\0"
	.long	0x35e0
	.ascii "calendar\0"
	.long	0x35ed
	.ascii "real_time\0"
	.long	0x3613
	.ascii "interfaces\0"
	.long	0x3626
	.ascii "c\0"
	.long	0x362c
	.ascii "strings\0"
	.long	0x363a
	.ascii "smc_daemon_state\0"
	.long	0x25d2
	.ascii "smc_daemon__get_euid\0"
	.long	0x26ab
	.ascii "smc_daemon__c_signal\0"
	.long	0x35fb
	.ascii "strings\0"
	.long	0x3607
	.ascii "fixed\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x888
	.short	0x2
	.set L$set$189,Ldebug_info0-Lsection__debug_info
	.long L$set$189
	.long	0x368c
	.long	0x21b
	.ascii "integer\0"
	.long	0x265
	.ascii "interfaces__c__unsigned\0"
	.long	0x2cf
	.ascii "character\0"
	.long	0x29f
	.ascii "interfaces__c__strings__chars_ptr\0"
	.long	0x2dc
	.ascii "interfaces__c__c_float\0"
	.long	0x2f6
	.ascii "smc_math__rpm_value\0"
	.long	0x366
	.ascii "float\0"
	.long	0x374
	.ascii "boolean\0"
	.long	0x30d
	.ascii "smc_math__pid_state\0"
	.long	0x4f7
	.ascii "integer\0"
	.long	0x484
	.ascii "string\0"
	.long	0x45d
	.ascii "system__strings__string_access\0"
	.long	0x51b
	.ascii "system__strings__string_list\0"
	.long	0xbff
	.ascii "system__tasking__task_states\0"
	.long	0x112d
	.ascii "system__tasking__call_modes\0"
	.long	0x11d9
	.ascii "system__tasking__entry_call_state\0"
	.long	0x12ca
	.ascii "system__address\0"
	.long	0x13d4
	.ascii "system__standard_library__exception_data_ptr\0"
	.long	0x1409
	.ascii "system__standard_library__raise_action\0"
	.long	0x130e
	.ascii "system__standard_library__exception_data\0"
	.long	0x12e2
	.ascii "ada__exceptions__exception_id\0"
	.long	0xf98
	.ascii "system__tasking__entry_call_record\0"
	.long	0xf69
	.ascii "system__tasking__entry_call_link\0"
	.long	0x1655
	.ascii "interfaces__c__TcharB\0"
	.long	0x158e
	.ascii "system__os_interface__pthread_cond_t\0"
	.long	0x16b8
	.ascii "interfaces__c__size_t\0"
	.long	0x166e
	.ascii "system__os_locks__pthread_mutex_t\0"
	.long	0x14d7
	.ascii "system__task_primitives__private_data\0"
	.long	0x16d1
	.ascii "system__tasking__task_procedure_access\0"
	.long	0x1798
	.ascii "system__stack_checking__stack_info\0"
	.long	0x1b16
	.ascii "system__storage_elements__storage_element\0"
	.long	0x1a83
	.ascii "system__secondary_stack__ss_chunk\0"
	.long	0x1a4e
	.ascii "system__secondary_stack__ss_chunk_ptr\0"
	.long	0x19c7
	.ascii "system__secondary_stack__stack_pointer\0"
	.long	0x1894
	.ascii "system__secondary_stack__ss_stack\0"
	.long	0x1860
	.ascii "system__secondary_stack__ss_stack_ptr\0"
	.long	0x1c2e
	.ascii "ada__exceptions__tracebacks_array\0"
	.long	0x1b43
	.ascii "ada__exceptions__exception_occurrence\0"
	.long	0x1712
	.ascii "system__soft_links__tsd\0"
	.long	0x1c99
	.ascii "system__tasking__access_boolean\0"
	.long	0x1eb0
	.ascii "system__storage_elements__integer_address\0"
	.long	0x1f09
	.ascii "interfaces__unsigned_32\0"
	.long	0x1d6c
	.ascii "system__stack_usage__stack_analyzer\0"
	.long	0x1f8b
	.ascii "system__tasking__cause_of_termination\0"
	.long	0x1f24
	.ascii "system__tasking__termination_handler\0"
	.long	0x2025
	.ascii "system__tasking__debug_event_array\0"
	.long	0x208d
	.ascii "system__tasking__dispatching_domain\0"
	.long	0x2059
	.ascii "system__tasking__dispatching_domain_access\0"
	.long	0x928
	.ascii "system__tasking__common_atcb\0"
	.long	0x214e
	.ascii "system__tasking__entry_call_array\0"
	.long	0x223d
	.ascii "system__tasking__accept_alternative\0"
	.long	0x21ad
	.ascii "system__tasking__accept_list\0"
	.long	0x2180
	.ascii "system__tasking__accept_list_access\0"
	.long	0x2340
	.ascii "system__tasking__task_serial_number\0"
	.long	0x2367
	.ascii "long_integer\0"
	.long	0x2377
	.ascii "system__tasking__attribute_array\0"
	.long	0x23a8
	.ascii "system__tasking__entry_queue\0"
	.long	0x5dc
	.ascii "system__tasking__ada_task_control_block\0"
	.long	0x5b0
	.ascii "system__tasking__task_id\0"
	.long	0x23eb
	.ascii "system__unsigned_types__packed_byte\0"
	.long	0x24a1
	.ascii "duration\0"
	.long	0x24ae
	.ascii "system__img_flt__impl__num\0"
	.long	0x24cc
	.ascii "smc_math__temperature_value\0"
	.long	0x24eb
	.ascii "smc_math__power_value\0"
	.long	0x2504
	.ascii "smc_math__dt_value\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x2c
	.short	0x2
	.set L$set$190,Ldebug_info0-Lsection__debug_info
	.long L$set$190
	.byte	0x8
	.byte	0
	.short	0
	.short	0
	.quad	Ltext0
	.set L$set$191,LFE6-Ltext0
	.quad L$set$191
	.quad	0
	.quad	0
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
Ldebug_ranges0:
	.set L$set$192,LBB13-Ltext0
	.quad L$set$192
	.set L$set$193,LBE13-Ltext0
	.quad L$set$193
	.set L$set$194,LBB96-Ltext0
	.quad L$set$194
	.set L$set$195,LBE96-Ltext0
	.quad L$set$195
	.quad	0
	.quad	0
	.set L$set$196,LBB17-Ltext0
	.quad L$set$196
	.set L$set$197,LBE17-Ltext0
	.quad L$set$197
	.set L$set$198,LBB93-Ltext0
	.quad L$set$198
	.set L$set$199,LBE93-Ltext0
	.quad L$set$199
	.set L$set$200,LBB94-Ltext0
	.quad L$set$200
	.set L$set$201,LBE94-Ltext0
	.quad L$set$201
	.quad	0
	.quad	0
	.set L$set$202,LBB18-Ltext0
	.quad L$set$202
	.set L$set$203,LBE18-Ltext0
	.quad L$set$203
	.set L$set$204,LBB21-Ltext0
	.quad L$set$204
	.set L$set$205,LBE21-Ltext0
	.quad L$set$205
	.quad	0
	.quad	0
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
Ldebug_line0:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
LASF1:
	.ascii "P_BOUNDS\0"
LASF0:
	.ascii "P_ARRAY\0"
LASF3:
	.ascii "success\0"
LASF4:
	.ascii "_task_id\0"
LASF2:
	.ascii "args\0"
	.ident	"GCC: (GNU) 15.0.1 20250418 (prerelease)"
	.subsections_via_symbols
