	.arch armv8.5-a
	.build_version macos,  14, 0
	.text
Ltext0:
	.file 1 "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_daemon.adb"
	.const
	.align	3
lC76:
	.ascii "[DAEMON] Standard Unix Signal ("
	.align	3
lC77:
	.ascii ") caught. Commencing restoration..."
	.align	3
lC78:
	.ascii "smc_daemon.adb"
	.space 1
	.text
	.align	2
_smc_daemon__handle_signal.0:
LFB2:
	.loc 1 40 4
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
	.loc 1 42 56
	add	x0, x29, 304
	mov	x2, x0
	adrp	x0, lC9@PAGE
	add	x3, x0, lC9@PAGEOFF;
	mov	x1, x2
	mov	x2, x3
	ldr	w0, [x29, 220]
	bl	_system__img_int__impl__image_integer
	.loc 1 42 56 is_stmt 0 discriminator 3
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
	.loc 1 42 69 is_stmt 1 discriminator 3
	bic	w1, w0, w0, asr #31
	add	w1, w1, 31
	add	w19, w1, 35
LBB3:
	add	x1, x29, 224
	str	x1, [x29, 96]
	adrp	x1, lC18@PAGE
	add	x1, x1, lC18@PAGEOFF;
	str	x1, [x29, 104]
	adrp	x1, lC76@PAGE
	add	x1, x1, lC76@PAGEOFF;
	str	x1, [x29, 112]
	adrp	x1, lC37@PAGE
	add	x1, x1, lC37@PAGEOFF;
	str	x1, [x29, 120]
	add	x1, x29, 304
	str	x1, [x29, 128]
	mov	w1, 1
	str	w1, [x29, 320]
	str	w0, [x29, 324]
	add	x0, x29, 320
	str	x0, [x29, 136]
	adrp	x0, lC77@PAGE
	add	x0, x0, lC77@PAGEOFF;
	str	x0, [x29, 144]
	adrp	x0, lC75@PAGE
	add	x0, x0, lC75@PAGEOFF;
	str	x0, [x29, 152]
	ldp	x6, x7, [x29, 144]
	ldp	x4, x5, [x29, 128]
	ldp	x2, x3, [x29, 112]
	ldp	x0, x1, [x29, 96]
	bl	_system__concat_3__str_concat_3
LBE3:
	.loc 1 42 69 is_stmt 0 discriminator 6
	cmp	w19, 77
	ble	L2
	.loc 1 42 69 discriminator 7
	mov	w1, 42
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L2:
	.loc 1 42 69 discriminator 8
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
	.loc 1 42 7 is_stmt 1 discriminator 8
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
	.loc 1 43 19
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__request_shutdownP
	.loc 1 44 8
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
lC9:
	.word	1
	.word	11
	.align	2
lC18:
	.word	1
	.word	77
	.align	2
lC37:
	.word	1
	.word	31
	.align	2
lC75:
	.word	1
	.word	35
	.text
	.const
	.align	3
lC79:
	.ascii "F0Tg"
	.align	3
lC80:
	.ascii "F1Tg"
	.align	3
lC81:
	.ascii "F0Md"
	.align	3
lC82:
	.ascii "F1Md"
	.align	3
lC83:
	.ascii "F0Fb"
	.align	3
lC84:
	.ascii "F1Fb"
	.align	3
lC85:
	.ascii "F0Dc"
	.align	3
lC86:
	.ascii "F1Dc"
	.align	3
lC87:
	.ascii "F0St"
	.align	3
lC88:
	.ascii "F1St"
	.align	3
lC89:
	.ascii "F0Ac"
	.align	3
lC90:
	.ascii "F1Ac"
	.align	3
lC91:
	.ascii "aPMX"
	.align	3
lC92:
	.ascii "mTPL"
	.align	3
lC93:
	.ascii "01"
	.align	3
lC94:
	.ascii "00"
	.align	3
lC95:
	.ascii "4eab2c3f"
	.align	3
lC96:
	.ascii "05"
	.align	3
lC97:
	.ascii "ffffffff"
	.align	3
lC98:
	.ascii "00000000"
	.align	3
lC99:
	.ascii "[DAEMON] Apple Silicon SPARK Daemon starting up..."
	.align	3
lC100:
	.ascii "[FATAL] This daemon must be run as root (sudo) to interact with kernel and SMC keys."
	.align	3
lC101:
	.ascii "[DAEMON] Standard Unix SIGINT and SIGTERM handlers registered."
	.align	3
lC102:
	.ascii "[DAEMON] Background tasks successfully activated."
	.align	3
lC103:
	.ascii "[FATAL] Failed to open AppleSMC connection. Kern_return: "
	.align	3
lC104:
	.ascii "[DAEMON] AppleSMC connection successfully established."
	.align	3
lC106:
	.ascii "/bin/launchctl"
	.align	3
lC107:
	.ascii "[DAEMON] OS Thermalmonitord com.apple.thermalmonitord plist unload requested."
	.align	3
lC111:
	.ascii "[DAEMON] Bootstrapping Machine Learning sidecar: "
	.align	3
lC112:
	.ascii "[WARNING] ML Python sidecar spawn returned Invalid_Pid."
	.align	3
lC113:
	.ascii "[DAEMON] Fan manual override taking effect (complete takeover keys set)."
	.align	3
lC114:
	.ascii "[CALIBRATION] Loaded pinned 1006 hPa reference fan speed: "
	.align	3
lC115:
	.ascii " RPM."
	.align	3
lC116:
	.ascii "[CALIBRATION] No reference RPM found. Standard sea-level reference (1006 hPa) will remain active."
	.align	3
lC117:
	.ascii "BOOTSTRAP"
	.align	3
lC118:
	.ascii "Ada/SPARK SMC Telemetry Engine and Controller loaded successfully."
	.align	3
lC119:
	.ascii "TCMz"
	.align	3
lC120:
	.ascii "Tg0X"
	.align	3
lC121:
	.ascii "TaLP"
	.align	3
lC122:
	.ascii "TaRF"
	.align	3
lC123:
	.ascii "TaLT"
	.align	3
lC124:
	.ascii "TaLW"
	.align	3
lC125:
	.ascii "TaRT"
	.align	3
lC126:
	.ascii "TaRW"
	.align	3
lC127:
	.ascii "TS0P"
	.align	3
lC128:
	.ascii "Ts0P"
	.align	3
lC129:
	.ascii "TW0P"
	.align	3
lC130:
	.ascii "TS1P"
	.align	3
lC131:
	.ascii "Ts1P"
	.align	3
lC132:
	.ascii "TW1P"
	.align	3
lC133:
	.ascii "PSTR"
	.align	3
lC134:
	.ascii "TB0T"
	.align	3
lC135:
	.ascii "SAFETY"
	.align	3
lC136:
	.ascii "Significant spatial movement detected. Deactivating Turbo Mode."
	.align	3
lC137:
	.ascii "TCMz & GPU cooled below 80C"
	.align	3
lC138:
	.ascii "TCMz Temp "
	.align	3
lC139:
	.ascii "C >= 93C"
	.align	3
lC140:
	.ascii "GPU Temp "
	.align	3
lC141:
	.ascii "Power Draw "
	.align	3
lC142:
	.ascii "W >= 45W"
	.align	3
lC143:
	.ascii "Latency spikes detected by monitor"
	.align	3
lC144:
	.ascii "[CALIBRATION] Calibration complete. Estimated atmospheric pressure: "
	.align	3
lC145:
	.ascii " hPa."
	.align	3
lC146:
	.ascii "[CALIBRATION] Calibration complete. Pinned reference speed: "
	.align	3
lC147:
	.ascii "Ts0p"
	.align	3
lC148:
	.ascii "Ts1p"
	.align	3
lC149:
	.ascii "[RESTORATION] Commencing system restoration procedures..."
	.align	3
lC150:
	.ascii "/usr/bin/pkill"
	.align	3
lC151:
	.ascii "[RESTORATION] Background ML Python sidecar killed."
	.align	3
lC153:
	.ascii "[RESTORATION] Thermalmonitord com.apple.thermalmonitord plist reload requested."
	.align	3
lC154:
	.ascii "[RESTORATION] Fan manual override released (auto keys restored)."
	.align	3
lC155:
	.ascii "[RESTORATION] AppleSMC connection closed safely."
	.align	3
lC156:
	.ascii "RESTORATION"
	.align	3
lC157:
	.ascii "Ada/SPARK SMC Telemetry Engine shut down and clean state restored."
	.align	3
lC158:
	.ascii "[DAEMON] Shutdown successfully completed. Goodbye!"
	.align	3
lC159:
	.ascii "[WARNING] ML Python sidecar bootstrap failed or venv not yet configured. Moving on..."
	.text
	.align	2
	.globl __ada_smc_daemon
__ada_smc_daemon:
LFB1:
	.loc 1 16 1
	mov	x12, 4784
	sub	sp, sp, x12
LCFI4:
	stp	x29, x30, [sp]
LCFI5:
	mov	x29, sp
LCFI6:
LEHB0:
LEHE0:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI7:
	.loc 1 16 1
	add	x0, x29, 4096
	add	x0, x0, 688
	.loc 1 16 1 is_stmt 0 discriminator 2
	str	x0, [x29, 4120]
	add	x0, x29, 3968
	add	x0, x0, 144
	add	x3, x29, 3968
	mov	x2, x0
	adrp	x0, _smc_daemon__handle_signal.0@PAGE
	add	x1, x0, _smc_daemon__handle_signal.0@PAGEOFF;
	mov	x0, x3
	bl	___gcc_nested_func_ptr_created
	.loc 1 16 1 discriminator 3
	adrp	x0, _system__soft_links__enter_master@GOTPAGE
	ldr	x0, [x0, _system__soft_links__enter_master@GOTPAGEOFF]
	ldr	x0, [x0]
LEHB1:
	blr	x0
LVL0:
	.loc 1 166 9 is_stmt 1
	adrp	x0, _system__soft_links__current_master@GOTPAGE
	ldr	x0, [x0, _system__soft_links__current_master@GOTPAGEOFF]
	ldr	x0, [x0]
	blr	x0
LVL1:
	mov	w28, w0
	.loc 1 84 4
	mov	w0, 0
	str	w0, [x29, 4104]
	.loc 1 88 28
	adrp	x0, lC79@PAGE
	add	x20, x0, lC79@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x21, x0, lC0@PAGEOFF;
	mov	x0, x20
	mov	x1, x21
	bl	_interfaces__c__strings__new_string
	.loc 1 88 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4656]
	.loc 1 89 28 is_stmt 1
	adrp	x0, lC80@PAGE
	add	x22, x0, lC80@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x23, x0, lC0@PAGEOFF;
	mov	x0, x22
	mov	x1, x23
	bl	_interfaces__c__strings__new_string
	.loc 1 89 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4648]
	.loc 1 90 28 is_stmt 1
	adrp	x0, lC81@PAGE
	add	x24, x0, lC81@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x25, x0, lC0@PAGEOFF;
	mov	x0, x24
	mov	x1, x25
	bl	_interfaces__c__strings__new_string
	.loc 1 90 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4640]
	.loc 1 91 28 is_stmt 1
	adrp	x0, lC82@PAGE
	add	x26, x0, lC82@PAGEOFF;
	adrp	x0, lC0@PAGE
	add	x27, x0, lC0@PAGEOFF;
	mov	x0, x26
	mov	x1, x27
	bl	_interfaces__c__strings__new_string
	.loc 1 91 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4632]
	.loc 1 92 28 is_stmt 1
	adrp	x0, lC83@PAGE
	add	x0, x0, lC83@PAGEOFF;
	str	x0, [x29, 176]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 184]
	ldp	x0, x1, [x29, 176]
	bl	_interfaces__c__strings__new_string
	.loc 1 92 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4624]
	.loc 1 93 28 is_stmt 1
	adrp	x0, lC84@PAGE
	add	x0, x0, lC84@PAGEOFF;
	str	x0, [x29, 192]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 200]
	ldp	x0, x1, [x29, 192]
	bl	_interfaces__c__strings__new_string
	.loc 1 93 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4616]
	.loc 1 94 28 is_stmt 1
	adrp	x0, lC85@PAGE
	add	x0, x0, lC85@PAGEOFF;
	str	x0, [x29, 208]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 216]
	ldp	x0, x1, [x29, 208]
	bl	_interfaces__c__strings__new_string
	.loc 1 94 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4608]
	.loc 1 95 28 is_stmt 1
	adrp	x0, lC86@PAGE
	add	x0, x0, lC86@PAGEOFF;
	str	x0, [x29, 224]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 232]
	ldp	x0, x1, [x29, 224]
	bl	_interfaces__c__strings__new_string
	.loc 1 95 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4600]
	.loc 1 96 28 is_stmt 1
	adrp	x0, lC87@PAGE
	add	x0, x0, lC87@PAGEOFF;
	str	x0, [x29, 240]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 248]
	ldp	x0, x1, [x29, 240]
	bl	_interfaces__c__strings__new_string
	.loc 1 96 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4592]
	.loc 1 97 28 is_stmt 1
	adrp	x0, lC88@PAGE
	add	x0, x0, lC88@PAGEOFF;
	str	x0, [x29, 256]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 264]
	ldp	x0, x1, [x29, 256]
	bl	_interfaces__c__strings__new_string
	.loc 1 97 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4584]
	.loc 1 98 28 is_stmt 1
	adrp	x0, lC89@PAGE
	add	x0, x0, lC89@PAGEOFF;
	str	x0, [x29, 272]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 280]
	ldp	x0, x1, [x29, 272]
	bl	_interfaces__c__strings__new_string
	.loc 1 98 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4576]
	.loc 1 99 28 is_stmt 1
	adrp	x0, lC90@PAGE
	add	x0, x0, lC90@PAGEOFF;
	str	x0, [x29, 288]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 296]
	ldp	x0, x1, [x29, 288]
	bl	_interfaces__c__strings__new_string
	.loc 1 99 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4568]
	.loc 1 101 28 is_stmt 1
	adrp	x0, lC91@PAGE
	add	x0, x0, lC91@PAGEOFF;
	str	x0, [x29, 304]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 312]
	ldp	x0, x1, [x29, 304]
	bl	_interfaces__c__strings__new_string
	.loc 1 101 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4080]
	.loc 1 102 28 is_stmt 1
	adrp	x0, lC92@PAGE
	add	x0, x0, lC92@PAGEOFF;
	str	x0, [x29, 320]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 328]
	ldp	x0, x1, [x29, 320]
	bl	_interfaces__c__strings__new_string
	.loc 1 102 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4064]
	.loc 1 104 28 is_stmt 1
	adrp	x0, lC93@PAGE
	add	x0, x0, lC93@PAGEOFF;
	str	x0, [x29, 336]
	adrp	x0, lC1@PAGE
	add	x0, x0, lC1@PAGEOFF;
	str	x0, [x29, 344]
	ldp	x0, x1, [x29, 336]
	bl	_interfaces__c__strings__new_string
	.loc 1 104 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4072]
	.loc 1 105 28 is_stmt 1
	adrp	x0, lC94@PAGE
	add	x0, x0, lC94@PAGEOFF;
	str	x0, [x29, 352]
	adrp	x0, lC1@PAGE
	add	x0, x0, lC1@PAGEOFF;
	str	x0, [x29, 360]
	ldp	x0, x1, [x29, 352]
	bl	_interfaces__c__strings__new_string
	.loc 1 105 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4040]
	.loc 1 106 28 is_stmt 1
	adrp	x0, lC93@PAGE
	add	x0, x0, lC93@PAGEOFF;
	str	x0, [x29, 368]
	adrp	x0, lC1@PAGE
	add	x0, x0, lC1@PAGEOFF;
	str	x0, [x29, 376]
	ldp	x0, x1, [x29, 368]
	bl	_interfaces__c__strings__new_string
	.loc 1 106 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4560]
	.loc 1 107 28 is_stmt 1
	adrp	x0, lC95@PAGE
	add	x0, x0, lC95@PAGEOFF;
	str	x0, [x29, 384]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 392]
	ldp	x0, x1, [x29, 384]
	bl	_interfaces__c__strings__new_string
	.loc 1 107 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4552]
	.loc 1 108 28 is_stmt 1
	adrp	x0, lC96@PAGE
	add	x0, x0, lC96@PAGEOFF;
	str	x0, [x29, 400]
	adrp	x0, lC1@PAGE
	add	x0, x0, lC1@PAGEOFF;
	str	x0, [x29, 408]
	ldp	x0, x1, [x29, 400]
	bl	_interfaces__c__strings__new_string
	.loc 1 108 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4544]
	.loc 1 110 32 is_stmt 1
	adrp	x0, lC97@PAGE
	add	x0, x0, lC97@PAGEOFF;
	str	x0, [x29, 416]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 424]
	ldp	x0, x1, [x29, 416]
	bl	_interfaces__c__strings__new_string
	.loc 1 110 32 is_stmt 0 discriminator 2
	str	x0, [x29, 4056]
	.loc 1 111 32 is_stmt 1
	adrp	x0, lC98@PAGE
	add	x0, x0, lC98@PAGEOFF;
	str	x0, [x29, 432]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 440]
	ldp	x0, x1, [x29, 432]
	bl	_interfaces__c__strings__new_string
	.loc 1 111 32 is_stmt 0 discriminator 2
	str	x0, [x29, 4032]
	.loc 1 114 4 is_stmt 1
	str	wzr, [x29, 4540]
	.loc 1 115 4
	str	wzr, [x29, 4780]
	.loc 1 116 4
	str	wzr, [x29, 4776]
	.loc 1 118 4
	str	wzr, [x29, 4772]
	.loc 1 119 4
	mov	w0, 100
	str	w0, [x29, 4088]
	.loc 1 121 4
	str	wzr, [x29, 4164]
	.loc 1 122 4
	str	wzr, [x29, 4160]
	.loc 1 124 4
	mov	w0, 32768
	movk	w0, 0x453b, lsl 16
	fmov	s31, w0
	str	s31, [x29, 4768]
	.loc 1 125 4
	str	wzr, [x29, 4536]
	.loc 1 126 4
	mov	w0, 32768
	movk	w0, 0x453b, lsl 16
	fmov	s31, w0
	str	s31, [x29, 4532]
	.loc 1 128 4
	str	wzr, [x29, 4144]
	str	wzr, [x29, 4148]
	add	x0, x29, 4096
	strb	wzr, [x0, 56]
	.loc 1 131 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 4764]
	.loc 1 132 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 4760]
	.loc 1 133 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 4756]
	.loc 1 134 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 4752]
	.loc 1 135 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 4748]
	.loc 1 136 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 4744]
	.loc 1 137 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 4740]
	.loc 1 138 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 4736]
	.loc 1 139 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 4732]
	.loc 1 140 4
	fmov	s31, 2.0e+1
	str	s31, [x29, 4728]
	.loc 1 143 47
	bl	_ada__calendar__clock
	.loc 1 143 47 is_stmt 0 discriminator 2
	str	x0, [x29, 4720]
	.loc 1 147 4 is_stmt 1
	str	wzr, [x29, 4716]
	.loc 1 147 12
	str	wzr, [x29, 4712]
	.loc 1 147 20
	str	wzr, [x29, 4708]
	.loc 1 148 4
	str	wzr, [x29, 4528]
	.loc 1 148 8
	str	wzr, [x29, 4524]
	.loc 1 148 12
	str	wzr, [x29, 4520]
	.loc 1 149 4
	add	x0, x29, 4096
	strb	wzr, [x0, 611]
	.loc 1 154 4
	str	wzr, [x29, 4700]
	.loc 1 155 4
	mov	w0, 0
	add	x1, x29, 4096
	strb	w0, [x1, 12]
	.loc 1 157 4
	movi	v31.2s, #0
	str	s31, [x29, 4096]
	.loc 1 158 4
	mov	w0, 0
	str	w0, [x29, 4092]
	.loc 1 162 4
	add	x0, x29, 4096
	strb	wzr, [x0, 603]
	.loc 1 163 4
	add	x0, x29, 4096
	add	x0, x0, 32
	str	x0, [x29, 448]
	adrp	x0, lC3@PAGE
	add	x0, x0, lC3@PAGEOFF;
	str	x0, [x29, 456]
	ldp	x0, x1, [x29, 448]
	bl	_system__strings__string_listIP
	.loc 1 169 4
	str	xzr, [x29, 4512]
	.loc 1 170 4
	str	xzr, [x29, 4504]
	.loc 1 341 4
	str	xzr, [x29, 4496]
	.loc 1 342 4
	str	xzr, [x29, 4488]
LBB4:
	.loc 1 345 4
	adrp	x0, lC99@PAGE
	add	x0, x0, lC99@PAGEOFF;
	str	x0, [x29, 464]
	adrp	x0, lC4@PAGE
	add	x0, x0, lC4@PAGEOFF;
	str	x0, [x29, 472]
	ldp	x0, x1, [x29, 464]
	bl	_ada__text_io__put_line__2
LBE4:
	.loc 1 348 7
	bl	_geteuid
	.loc 1 348 4 discriminator 2
	cmp	w0, 0
	beq	L5
LBB5:
	.loc 1 349 7
	adrp	x0, lC100@PAGE
	add	x0, x0, lC100@PAGEOFF;
	str	x0, [x29, 480]
	adrp	x0, lC5@PAGE
	add	x0, x0, lC5@PAGEOFF;
	str	x0, [x29, 488]
	ldp	x0, x1, [x29, 480]
	bl	_ada__text_io__put_line__2
LBE5:
	.loc 1 350 18
	mov	w0, 1
	bl	_system__os_lib__os_exit
L5:
	.loc 1 354 18
	ldr	x0, [x29, 4112]
	mov	x1, x0
	mov	w0, 2
	bl	_signal
	.loc 1 354 18 is_stmt 0 discriminator 2
	str	x0, [x29, 4496]
	.loc 1 355 19 is_stmt 1
	ldr	x0, [x29, 4112]
	mov	x1, x0
	mov	w0, 15
	bl	_signal
	.loc 1 355 19 is_stmt 0 discriminator 2
	str	x0, [x29, 4488]
LBB6:
	.loc 1 356 4 is_stmt 1
	adrp	x0, lC101@PAGE
	add	x0, x0, lC101@PAGEOFF;
	str	x0, [x29, 496]
	adrp	x0, lC6@PAGE
	add	x0, x0, lC6@PAGEOFF;
	str	x0, [x29, 504]
	ldp	x0, x1, [x29, 496]
	bl	_ada__text_io__put_line__2
LBE6:
	.loc 1 359 15
	mov	x0, 8
	bl	___gnat_malloc
LEHE1:
	mov	x20, x0
LBB7:
	.loc 1 359 15 is_stmt 0 discriminator 2
	add	x0, x29, 3968
	add	x0, x0, 56
	mov	w1, 2
LEHB2:
	bl	_system__tasking__activation_chainIP
	.loc 1 359 15 discriminator 4
	adrp	x0, _lm_taskT1.18@PAGE
	add	x0, x0, _lm_taskT1.18@PAGEOFF;
	str	x0, [x29, 512]
	adrp	x0, lC7@PAGE
	add	x0, x0, lC7@PAGEOFF;
	str	x0, [x29, 520]
	add	x0, x29, 3968
	add	x0, x0, 56
	mov	w5, 0
	add	x1, x29, 512
	ldp	x3, x4, [x1]
	mov	x2, x0
	mov	w1, w28
	mov	x0, x20
	bl	_smc_daemon_state__latency_monitor_tVIP
	.loc 1 359 15 discriminator 6
	add	x0, x29, 3968
	add	x0, x0, 56
	bl	_system__tasking__stages__activate_tasks
LEHE2:
	.loc 1 359 0 is_stmt 1 discriminator 8
	mov	w19, 1
L143:
	.loc 1 359 0 is_stmt 0 discriminator 9
	add	x0, x29, 3968
	mov	x16, x0
LEHB3:
	bl	_smc_daemon__A225b___finalizer.1
LEHE3:
	.loc 1 359 0 discriminator 11
	cmp	w19, 1
	bne	L6
	.loc 1 359 0
	mov	w0, 1
L145:
	.loc 1 359 0 discriminator 12
	cmp	w0, 1
	bne	L7
	.loc 1 359 0
	nop
LBE7:
	.loc 1 359 12 is_stmt 1
	str	x20, [x29, 4512]
	.loc 1 360 15
	mov	x0, 8
LEHB4:
	bl	___gnat_malloc
LEHE4:
	mov	x20, x0
LBB8:
	.loc 1 360 15 is_stmt 0 discriminator 2
	add	x0, x29, 3968
	add	x0, x0, 48
	mov	w1, 2
LEHB5:
	bl	_system__tasking__activation_chainIP
	.loc 1 360 15 discriminator 4
	adrp	x0, _ts_taskT1.17@PAGE
	add	x0, x0, _ts_taskT1.17@PAGEOFF;
	str	x0, [x29, 528]
	adrp	x0, lC7@PAGE
	add	x0, x0, lC7@PAGEOFF;
	str	x0, [x29, 536]
	add	x0, x29, 3968
	add	x0, x0, 48
	mov	w5, 0
	add	x1, x29, 512
	ldp	x3, x4, [x1, 16]
	mov	x2, x0
	mov	w1, w28
	mov	x0, x20
	bl	_smc_daemon_state__thermal_suspender_tVIP
	.loc 1 360 15 discriminator 6
	add	x0, x29, 3968
	add	x0, x0, 48
	bl	_system__tasking__stages__activate_tasks
LEHE5:
	.loc 1 360 0 is_stmt 1 discriminator 8
	mov	w19, 1
L148:
	.loc 1 360 0 is_stmt 0 discriminator 9
	add	x0, x29, 3968
	mov	x16, x0
LEHB6:
	bl	_smc_daemon__A230b___finalizer.2
LEHE6:
	.loc 1 360 0 discriminator 11
	cmp	w19, 1
	bne	L8
	.loc 1 360 0
	mov	w0, 1
L150:
	.loc 1 360 0 discriminator 12
	cmp	w0, 1
	bne	L9
	.loc 1 360 0
	nop
LBE8:
	.loc 1 360 12 is_stmt 1
	str	x20, [x29, 4504]
LBB9:
	.loc 1 361 4
	adrp	x0, lC102@PAGE
	add	x0, x0, lC102@PAGEOFF;
	str	x0, [x29, 544]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 552]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 32]
LEHB7:
	bl	_ada__text_io__put_line__2
LBE9:
	.loc 1 364 17
	add	x0, x29, 3968
	add	x0, x0, 136
	bl	_smc_helper_open
	.loc 1 364 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 365 4 is_stmt 1
	ldr	w0, [x29, 4100]
	cmp	w0, 0
	beq	L10
LBB10:
	.loc 1 366 82
	add	x0, x29, 3952
	str	x0, [x29, 560]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 568]
	ldr	w0, [x29, 4100]
	add	x1, x29, 512
	ldp	x1, x2, [x1, 48]
	bl	_system__img_int__impl__image_integer
	.loc 1 366 82 is_stmt 0 discriminator 3
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	str	x1, [x29, 3024]
	str	xzr, [x29, 3032]
	add	x1, x29, 3072
	ldp	x3, x4, [x1, -48]
	mov	x1, x3
	lsr	x1, x1, 61
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 3464]
	ldr	x2, [x29, 3464]
	add	x1, x1, x2
	str	x1, [x29, 3464]
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 3456]
	bic	w1, w0, w0, asr #31
	sxtw	x1, w1
	str	x1, [x29, 3008]
	str	xzr, [x29, 3016]
	add	x1, x29, 3072
	ldp	x3, x4, [x1, -64]
	mov	x1, x3
	lsr	x1, x1, 61
	mov	x2, x4
	lsl	x2, x2, 3
	str	x2, [x29, 3448]
	ldr	x2, [x29, 3448]
	add	x1, x1, x2
	str	x1, [x29, 3448]
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 3440]
	.loc 1 366 77 is_stmt 1 discriminator 3
	bic	w1, w0, w0, asr #31
	add	w19, w1, 57
LBB11:
	add	x1, x29, 3488
	str	x1, [x29, 576]
	adrp	x1, lC10@PAGE
	add	x1, x1, lC10@PAGEOFF;
	str	x1, [x29, 584]
	adrp	x1, lC103@PAGE
	add	x1, x1, lC103@PAGEOFF;
	str	x1, [x29, 592]
	adrp	x1, lC11@PAGE
	add	x1, x1, lC11@PAGEOFF;
	str	x1, [x29, 600]
	add	x1, x29, 3952
	str	x1, [x29, 608]
	mov	w1, 1
	str	w1, [x29, 4168]
	str	w0, [x29, 4172]
	add	x0, x29, 4096
	add	x0, x0, 72
	str	x0, [x29, 616]
	add	x0, x29, 512
	ldp	x4, x5, [x0, 96]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 80]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 64]
	bl	_system__concat_2__str_concat_2
LBE11:
	.loc 1 366 77 is_stmt 0 discriminator 6
	cmp	w19, 68
	ble	L11
	.loc 1 366 77 discriminator 7
	mov	w1, 366
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L11:
	.loc 1 366 77 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2992]
	str	xzr, [x29, 3000]
	add	x0, x29, 3072
	ldp	x2, x3, [x0, -80]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 3432]
	ldr	x1, [x29, 3432]
	add	x0, x0, x1
	str	x0, [x29, 3432]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 3424]
	.loc 1 366 7 is_stmt 1 discriminator 8
	add	x0, x29, 3488
	str	x0, [x29, 624]
	mov	w0, 1
	str	w0, [x29, 4176]
	str	w19, [x29, 4180]
	add	x0, x29, 4096
	add	x0, x0, 80
	str	x0, [x29, 632]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 112]
	bl	_ada__text_io__put_line__2
LBE10:
	.loc 1 367 18
	mov	w0, 1
	bl	_system__os_lib__os_exit
L10:
LBB12:
	.loc 1 369 4
	adrp	x0, lC104@PAGE
	add	x0, x0, lC104@PAGEOFF;
	str	x0, [x29, 640]
	adrp	x0, lC12@PAGE
	add	x0, x0, lC12@PAGEOFF;
	str	x0, [x29, 648]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 128]
	bl	_ada__text_io__put_line__2
LBE12:
LBB13:
	.loc 1 374 7
	add	x0, x29, 3488
	str	x0, [x29, 656]
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	str	x0, [x29, 664]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 144]
	bl	_system__strings__string_listIP
	.loc 1 376 19
	mov	x0, 16
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 376 19 is_stmt 0 discriminator 2
	mov	w0, 1
	str	w0, [x3]
	mov	w0, 6
	str	w0, [x3, 4]
	add	x1, x3, 8
	adrp	x0, lC105@PAGE
	add	x0, x0, lC105@PAGEOFF;
	mov	x2, x1
	ldr	w1, [x0]
	ldrh	w0, [x0, 4]
	str	w1, [x2]
	strh	w0, [x2, 4]
	add	x0, x3, 8
	str	x0, [x29, 672]
	mov	x0, x3
	str	x0, [x29, 680]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 160]
	.loc 1 376 16 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -96]
	.loc 1 377 19
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 377 19 is_stmt 0 discriminator 2
	adrp	x0, lC14@PAGE
	add	x0, x0, lC14@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 688]
	mov	x0, x3
	str	x0, [x29, 696]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 176]
	.loc 1 377 16 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -80]
	.loc 1 378 19
	mov	x0, 72
	bl	___gnat_malloc
	mov	x2, x0
	.loc 1 378 19 is_stmt 0 discriminator 2
	adrp	x0, lC15@PAGE
	add	x0, x0, lC15@PAGEOFF;
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
	str	x0, [x29, 704]
	mov	x0, x2
	str	x0, [x29, 712]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 192]
	.loc 1 378 16 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -64]
LBB14:
	.loc 1 379 18
	adrp	x0, lC106@PAGE
	add	x0, x0, lC106@PAGEOFF;
	str	x0, [x29, 720]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 728]
	add	x0, x29, 3488
	str	x0, [x29, 736]
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	str	x0, [x29, 744]
	add	x0, x29, 512
	ldp	x2, x3, [x0, 224]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 208]
	bl	_system__os_lib__spawn
	.loc 1 379 18 is_stmt 0 discriminator 2
	add	x1, x29, 4096
	strb	w0, [x1, 391]
LBE14:
LBB15:
	.loc 1 380 11 is_stmt 1
	mov	w0, 1
	str	w0, [x29, 4692]
L14:
	.loc 1 380 11 is_stmt 0 discriminator 10
	ldr	w0, [x29, 4692]
	cmp	w0, 3
	bgt	L12
	.loc 1 380 43 is_stmt 1 discriminator 2
	ldrsw	x0, [x29, 4692]
	sub	x0, x0, #1
	lsl	x1, x0, 4
	add	x0, x29, 3488
	ldr	x0, [x0, x1]
	.loc 1 380 43 is_stmt 0 discriminator 3
	cmp	x0, 0
	beq	L13
	.loc 1 380 43 discriminator 4
	ldrsw	x0, [x29, 4692]
	sub	x0, x0, #1
	lsl	x1, x0, 4
	add	x0, x29, 3488
	ldr	x0, [x0, x1]
	.loc 1 380 43 discriminator 6
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 380 43 discriminator 8
	ldrsw	x2, [x29, 4692]
	sub	x0, x2, #1
	lsl	x1, x0, 4
	add	x0, x29, 3488
	str	xzr, [x0, x1]
	.loc 1 380 43 discriminator 9
	sub	x0, x2, #1
	lsl	x2, x0, 4
	add	x1, x29, 3496
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x1, x2]
L13:
	.loc 1 380 11 is_stmt 1 discriminator 5
	ldr	w0, [x29, 4692]
	add	w0, w0, 1
	str	w0, [x29, 4692]
	.loc 1 380 69
	b	L14
L12:
LBE15:
LBE13:
LBB16:
	.loc 1 382 4
	adrp	x0, lC107@PAGE
	add	x0, x0, lC107@PAGEOFF;
	str	x0, [x29, 752]
	adrp	x0, lC18@PAGE
	add	x0, x0, lC18@PAGEOFF;
	str	x0, [x29, 760]
	add	x0, x29, 512
	ldp	x0, x1, [x0, 240]
	bl	_ada__text_io__put_line__2
LEHE7:
LBE16:
LBB17:
	.loc 1 389 7
	str	wzr, [x29, 4688]
	.loc 1 391 21
	adrp	x0, _python_path.16@PAGE
	add	x0, x0, _python_path.16@PAGEOFF;
	str	x0, [x29, 768]
	adrp	x0, lC19@PAGE
	add	x0, x0, lC19@PAGEOFF;
	str	x0, [x29, 776]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -256]
LEHB8:
	bl	_system__os_lib__is_regular_file
	.loc 1 391 7 discriminator 2
	cmp	w0, 0
	beq	L15
	.loc 1 392 46
	adrp	x0, lC108@PAGE
	add	x0, x0, lC108@PAGEOFF;
	add	x1, x29, 3488
	ldr	q28, [x0]
	ldr	q29, [x0, 16]
	ldr	q30, [x0, 32]
	ldr	q31, [x0, 44]
	str	q28, [x1]
	str	q29, [x1, 16]
	str	q30, [x1, 32]
	str	q31, [x1, 44]
	.loc 1 393 14
	mov	w0, 60
	str	w0, [x29, 4688]
	b	L16
L15:
	.loc 1 394 24
	adrp	x0, _fall_path.15@PAGE
	add	x0, x0, _fall_path.15@PAGEOFF;
	str	x0, [x29, 784]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 792]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -240]
	bl	_system__os_lib__is_regular_file
	.loc 1 394 7 discriminator 2
	cmp	w0, 0
	beq	L17
	.loc 1 395 44
	adrp	x0, lC109@PAGE
	add	x0, x0, lC109@PAGEOFF;
	add	x1, x29, 3488
	ldr	q29, [x0]
	ldr	q30, [x0, 16]
	ldr	q31, [x0, 32]
	ldrb	w0, [x0, 48]
	str	q29, [x1]
	str	q30, [x1, 16]
	str	q31, [x1, 32]
	strb	w0, [x1, 48]
	.loc 1 396 14
	mov	w0, 49
	str	w0, [x29, 4688]
	b	L16
L17:
	.loc 1 398 30
	adrp	x0, lC110@PAGE
	add	x0, x0, lC110@PAGEOFF;
	add	x1, x29, 3488
	ldr	q30, [x0]
	ldr	q31, [x0, 9]
	str	q30, [x1]
	str	q31, [x1, 9]
	.loc 1 399 14
	mov	w0, 25
	str	w0, [x29, 4688]
L16:
	.loc 1 402 26
	mov	x0, 72
	bl	___gnat_malloc
LEHE8:
	mov	x2, x0
	.loc 1 402 26 is_stmt 0 discriminator 2
	adrp	x0, lC20@PAGE
	add	x0, x0, lC20@PAGEOFF;
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
	str	x0, [x29, 800]
	mov	x0, x2
	str	x0, [x29, 808]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -224]
	.loc 1 402 23 is_stmt 1 discriminator 2
	add	x2, x29, 3904
	stp	x0, x1, [x2, 224]
LBB18:
	.loc 1 404 7
	mov	x0, sp
	mov	x19, x0
	.loc 1 404 87 discriminator 1
	ldr	w2, [x29, 4688]
	.loc 1 404 84 discriminator 1
	cmp	w2, 0
	ble	L18
	.loc 1 404 84 is_stmt 0 discriminator 2
	cmp	w2, 256
	ble	L18
	.loc 1 404 84 discriminator 4
	mov	w1, 404
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
LEHB9:
	bl	___gnat_rcheck_CE_Range_Check
L18:
	.loc 1 404 71 is_stmt 1 discriminator 5
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2976]
	str	xzr, [x29, 2984]
	add	x0, x29, 3072
	ldp	x3, x4, [x0, -96]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3416]
	ldr	x0, [x29, 3416]
	add	x0, x1, x0
	str	x0, [x29, 3416]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3408]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2960]
	str	xzr, [x29, 2968]
	add	x0, x29, 3072
	ldp	x3, x4, [x0, -112]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3400]
	ldr	x0, [x29, 3400]
	add	x0, x1, x0
	str	x0, [x29, 3400]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3392]
	.loc 1 404 69 discriminator 5
	bic	w0, w2, w2, asr #31
	add	w0, w0, 49
	str	w0, [x29, 4480]
	ldrsw	x0, [x29, 4480]
	str	x0, [x29, 4472]
	ldrsw	x0, [x29, 4480]
	str	x0, [x29, 2944]
	str	xzr, [x29, 2952]
	add	x0, x29, 3072
	ldp	x3, x4, [x0, -128]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3384]
	ldr	x0, [x29, 3384]
	add	x0, x1, x0
	str	x0, [x29, 3384]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3376]
	ldrsw	x0, [x29, 4480]
	str	x0, [x29, 2928]
	str	xzr, [x29, 2936]
	add	x0, x29, 3072
	ldp	x3, x4, [x0, -144]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3368]
	ldr	x0, [x29, 3368]
	add	x0, x1, x0
	str	x0, [x29, 3368]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3360]
	ldrsw	x0, [x29, 4480]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	str	x0, [x29, 4464]
LBB19:
	.loc 1 404 69 is_stmt 0 discriminator 8
	ldr	x0, [x29, 4464]
	str	x0, [x29, 816]
	mov	w0, 1
	str	w0, [x29, 4184]
	ldr	w0, [x29, 4480]
	str	w0, [x29, 4188]
	add	x0, x29, 4096
	add	x0, x0, 88
	str	x0, [x29, 824]
	adrp	x0, lC111@PAGE
	add	x0, x0, lC111@PAGEOFF;
	str	x0, [x29, 832]
	adrp	x0, lC8@PAGE
	add	x0, x0, lC8@PAGEOFF;
	str	x0, [x29, 840]
	add	x0, x29, 3488
	str	x0, [x29, 848]
	mov	w0, 1
	str	w0, [x29, 4192]
	str	w2, [x29, 4196]
	add	x0, x29, 4096
	add	x0, x0, 96
	str	x0, [x29, 856]
	add	x0, x29, 1024
	ldp	x4, x5, [x0, -176]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -192]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -208]
	bl	_system__concat_2__str_concat_2
LBE19:
	.loc 1 404 7 is_stmt 1 discriminator 11
	ldr	x0, [x29, 4464]
	str	x0, [x29, 864]
	mov	w0, 1
	str	w0, [x29, 4200]
	ldr	w0, [x29, 4480]
	str	w0, [x29, 4204]
	add	x0, x29, 4096
	add	x0, x0, 104
	str	x0, [x29, 872]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -160]
	bl	_ada__text_io__put_line__2
LEHE9:
LEHB10:
LEHE10:
	.loc 1 404 0 discriminator 14
	mov	sp, x19
LBE18:
	.loc 1 405 69
	ldr	w2, [x29, 4688]
	.loc 1 405 66
	cmp	w2, 0
	ble	L19
	.loc 1 405 66 is_stmt 0 discriminator 1
	cmp	w2, 256
	ble	L19
	.loc 1 405 66 discriminator 3
	mov	w1, 405
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
LEHB11:
	bl	___gnat_rcheck_CE_Range_Check
L19:
	.loc 1 405 53 is_stmt 1 discriminator 4
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2912]
	str	xzr, [x29, 2920]
	add	x0, x29, 3072
	ldp	x3, x4, [x0, -160]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3352]
	ldr	x0, [x29, 3352]
	add	x0, x1, x0
	str	x0, [x29, 3352]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3344]
	.loc 1 405 32 discriminator 4
	add	x0, x29, 3488
	str	x0, [x29, 880]
	mov	w0, 1
	str	w0, [x29, 4208]
	str	w2, [x29, 4212]
	add	x0, x29, 4096
	add	x0, x0, 112
	str	x0, [x29, 888]
	add	x0, x29, 4096
	add	x0, x0, 32
	str	x0, [x29, 896]
	adrp	x0, lC3@PAGE
	add	x0, x0, lC3@PAGEOFF;
	str	x0, [x29, 904]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -128]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -144]
	bl	_system__os_lib__non_blocking_spawn
	.loc 1 405 32 is_stmt 0 discriminator 7
	str	w0, [x29, 4460]
	.loc 1 406 7 is_stmt 1
	ldr	w0, [x29, 4460]
	cmn	w0, #1
	beq	L20
	.loc 1 407 25
	mov	w0, 1
	add	x1, x29, 4096
	strb	w0, [x1, 603]
	b	L21
L20:
LBB20:
	.loc 1 409 10
	adrp	x0, lC112@PAGE
	add	x0, x0, lC112@PAGEOFF;
	str	x0, [x29, 912]
	adrp	x0, lC21@PAGE
	add	x0, x0, lC21@PAGEOFF;
	str	x0, [x29, 920]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -112]
	bl	_ada__text_io__put_line__2
LEHE11:
L21:
LBE20:
LBE17:
	.loc 1 417 17
	ldr	w3, [x29, 4104]
	ldr	x0, [x29, 4072]
	mov	x2, x0
	ldr	x1, [x29, 4640]
	mov	w0, w3
LEHB12:
	bl	_smc_helper_write_key_hex
	.loc 1 417 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 418 17 is_stmt 1
	ldr	w0, [x29, 4104]
	ldr	x2, [x29, 4560]
	ldr	x1, [x29, 4624]
	bl	_smc_helper_write_key_hex
	.loc 1 418 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 419 17 is_stmt 1
	ldr	w0, [x29, 4104]
	ldr	x2, [x29, 4552]
	ldr	x1, [x29, 4608]
	bl	_smc_helper_write_key_hex
	.loc 1 419 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 420 17 is_stmt 1
	ldr	w0, [x29, 4104]
	ldr	x2, [x29, 4544]
	ldr	x1, [x29, 4592]
	bl	_smc_helper_write_key_hex
	.loc 1 420 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 422 17 is_stmt 1
	ldr	w3, [x29, 4104]
	ldr	x0, [x29, 4072]
	mov	x2, x0
	ldr	x1, [x29, 4632]
	mov	w0, w3
	bl	_smc_helper_write_key_hex
	.loc 1 422 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 423 17 is_stmt 1
	ldr	w0, [x29, 4104]
	ldr	x2, [x29, 4560]
	ldr	x1, [x29, 4616]
	bl	_smc_helper_write_key_hex
	.loc 1 423 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 424 17 is_stmt 1
	ldr	w0, [x29, 4104]
	ldr	x2, [x29, 4552]
	ldr	x1, [x29, 4600]
	bl	_smc_helper_write_key_hex
	.loc 1 424 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 425 17 is_stmt 1
	ldr	w0, [x29, 4104]
	ldr	x2, [x29, 4544]
	ldr	x1, [x29, 4584]
	bl	_smc_helper_write_key_hex
	.loc 1 425 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
LBB23:
	.loc 1 426 4 is_stmt 1
	adrp	x0, lC113@PAGE
	add	x0, x0, lC113@PAGEOFF;
	str	x0, [x29, 944]
	adrp	x0, lC23@PAGE
	add	x0, x0, lC23@PAGEOFF;
	str	x0, [x29, 952]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -80]
	bl	_ada__text_io__put_line__2
LBE23:
	.loc 1 429 17
	ldr	w3, [x29, 4104]
	ldr	x1, [x29, 4080]
	ldr	x0, [x29, 4040]
	mov	x2, x0
	mov	w0, w3
	bl	_smc_helper_write_key_hex
	.loc 1 429 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 430 17 is_stmt 1
	ldr	w3, [x29, 4104]
	ldr	x1, [x29, 4064]
	ldr	x0, [x29, 4032]
	mov	x2, x0
	mov	w0, w3
	bl	_smc_helper_write_key_hex
	.loc 1 430 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 433 13 is_stmt 1
	bl	_smc_files__load_fan_calibration
	fmov	s31, s0
	.loc 1 433 13 is_stmt 0 discriminator 2
	str	s31, [x29, 4700]
	.loc 1 434 4 is_stmt 1
	ldr	s31, [x29, 4700]
	fcmpe	s31, #0.0
	bgt	L182
	b	L198
L182:
LBB24:
	.loc 1 435 85
	add	x0, x29, 3936
	str	x0, [x29, 960]
	adrp	x0, lC24@PAGE
	add	x0, x0, lC24@PAGEOFF;
	str	x0, [x29, 968]
	mov	w2, 6
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -64]
	ldr	s0, [x29, 4700]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 435 85 is_stmt 0 discriminator 3
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2896]
	str	xzr, [x29, 2904]
	add	x0, x29, 3072
	ldp	x3, x4, [x0, -176]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3336]
	ldr	x0, [x29, 3336]
	add	x0, x1, x0
	str	x0, [x29, 3336]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3328]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2880]
	str	xzr, [x29, 2888]
	add	x0, x29, 3072
	ldp	x3, x4, [x0, -192]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3320]
	ldr	x0, [x29, 3320]
	add	x0, x1, x0
	str	x0, [x29, 3320]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3312]
	.loc 1 435 114 is_stmt 1 discriminator 3
	bic	w0, w2, w2, asr #31
	add	w0, w0, 58
	add	w19, w0, 5
LBB25:
	add	x0, x29, 3488
	str	x0, [x29, 976]
	adrp	x0, lC25@PAGE
	add	x0, x0, lC25@PAGEOFF;
	str	x0, [x29, 984]
	adrp	x0, lC114@PAGE
	add	x0, x0, lC114@PAGEOFF;
	str	x0, [x29, 992]
	adrp	x0, lC26@PAGE
	add	x0, x0, lC26@PAGEOFF;
	str	x0, [x29, 1000]
	add	x0, x29, 3936
	str	x0, [x29, 1008]
	mov	w0, 1
	str	w0, [x29, 4216]
	str	w2, [x29, 4220]
	add	x0, x29, 4096
	add	x0, x0, 120
	str	x0, [x29, 1016]
	adrp	x0, lC115@PAGE
	add	x0, x0, lC115@PAGEOFF;
	str	x0, [x29, 1024]
	adrp	x0, lC27@PAGE
	add	x0, x0, lC27@PAGEOFF;
	str	x0, [x29, 1032]
	add	x0, x29, 1024
	ldp	x6, x7, [x0]
	add	x0, x29, 1024
	ldp	x4, x5, [x0, -16]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, -32]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -48]
	bl	_system__concat_3__str_concat_3
LBE25:
	.loc 1 435 114 is_stmt 0 discriminator 6
	cmp	w19, 75
	ble	L24
	.loc 1 435 114 discriminator 7
	mov	w1, 435
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L24:
	.loc 1 435 114 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2864]
	str	xzr, [x29, 2872]
	add	x0, x29, 3072
	ldp	x2, x3, [x0, -208]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3304]
	ldr	x0, [x29, 3304]
	add	x0, x1, x0
	str	x0, [x29, 3304]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 3296]
	.loc 1 435 7 is_stmt 1 discriminator 8
	add	x0, x29, 3488
	str	x0, [x29, 1040]
	mov	w0, 1
	str	w0, [x29, 4224]
	str	w19, [x29, 4228]
	add	x0, x29, 4096
	add	x0, x0, 128
	str	x0, [x29, 1048]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 16]
	bl	_ada__text_io__put_line__2
	b	L25
L198:
LBE24:
LBB26:
	.loc 1 437 7
	adrp	x0, lC116@PAGE
	add	x0, x0, lC116@PAGEOFF;
	str	x0, [x29, 1056]
	adrp	x0, lC28@PAGE
	add	x0, x0, lC28@PAGEOFF;
	str	x0, [x29, 1064]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 32]
	bl	_ada__text_io__put_line__2
L25:
LBE26:
LBB27:
	.loc 1 441 13
	adrp	x0, lC117@PAGE
	add	x0, x0, lC117@PAGEOFF;
	str	x0, [x29, 1072]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 1080]
	adrp	x0, lC118@PAGE
	add	x0, x0, lC118@PAGEOFF;
	str	x0, [x29, 1088]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 1096]
	add	x0, x29, 1024
	ldp	x2, x3, [x0, 64]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 48]
	bl	_smc_files__notify_user
L125:
LBE27:
LBB28:
	.loc 1 444 22
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__should_keep_runningP
	.loc 1 444 22 is_stmt 0 discriminator 2
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	L26
	.loc 1 445 39 is_stmt 1
	bl	_ada__real_time__clock
	.loc 1 445 39 is_stmt 0 discriminator 2
	str	x0, [x29, 4424]
LBB29:
	.loc 1 448 25 is_stmt 1
	adrp	x0, lC119@PAGE
	add	x0, x0, lC119@PAGEOFF;
	str	x0, [x29, 1104]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1112]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4764]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 80]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 448 25 is_stmt 0 discriminator 2
	str	s31, [x29, 4764]
LBE29:
LBB30:
	.loc 1 449 25 is_stmt 1
	adrp	x0, lC120@PAGE
	add	x0, x0, lC120@PAGEOFF;
	str	x0, [x29, 1120]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1128]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4760]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 96]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 449 25 is_stmt 0 discriminator 2
	str	s31, [x29, 4760]
LBE30:
LBB31:
	.loc 1 450 25 is_stmt 1
	adrp	x0, lC121@PAGE
	add	x0, x0, lC121@PAGEOFF;
	str	x0, [x29, 1136]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1144]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4756]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 112]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 450 25 is_stmt 0 discriminator 2
	str	s31, [x29, 4756]
LBE31:
LBB32:
	.loc 1 451 25 is_stmt 1
	adrp	x0, lC122@PAGE
	add	x0, x0, lC122@PAGEOFF;
	str	x0, [x29, 1152]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1160]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4752]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 128]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 451 25 is_stmt 0 discriminator 2
	str	s31, [x29, 4752]
LBE32:
LBB33:
	.loc 1 452 25 is_stmt 1
	adrp	x0, lC123@PAGE
	add	x0, x0, lC123@PAGEOFF;
	str	x0, [x29, 1168]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1176]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4748]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 144]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 452 25 is_stmt 0 discriminator 2
	str	s31, [x29, 4748]
LBE33:
LBB34:
	.loc 1 453 25 is_stmt 1
	adrp	x0, lC124@PAGE
	add	x0, x0, lC124@PAGEOFF;
	str	x0, [x29, 1184]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1192]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4744]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 160]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 453 25 is_stmt 0 discriminator 2
	str	s31, [x29, 4744]
LBE34:
LBB35:
	.loc 1 454 25 is_stmt 1
	adrp	x0, lC125@PAGE
	add	x0, x0, lC125@PAGEOFF;
	str	x0, [x29, 1200]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1208]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4740]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 176]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 454 25 is_stmt 0 discriminator 2
	str	s31, [x29, 4740]
LBE35:
LBB36:
	.loc 1 455 25 is_stmt 1
	adrp	x0, lC126@PAGE
	add	x0, x0, lC126@PAGEOFF;
	str	x0, [x29, 1216]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1224]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4736]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 192]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 455 25 is_stmt 0 discriminator 2
	str	s31, [x29, 4736]
LBE36:
LBB37:
	.loc 1 458 25 is_stmt 1
	adrp	x0, lC127@PAGE
	add	x0, x0, lC127@PAGEOFF;
	str	x0, [x29, 1232]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1240]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4732]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 208]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 458 25 is_stmt 0 discriminator 2
	str	s31, [x29, 4732]
LBE37:
	.loc 1 459 7 is_stmt 1
	ldr	s31, [x29, 4732]
	fcmpe	s31, #0.0
	bls	L183
	b	L27
L183:
LBB38:
	.loc 1 460 28
	adrp	x0, lC128@PAGE
	add	x0, x0, lC128@PAGEOFF;
	str	x0, [x29, 1248]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1256]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4732]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 224]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 460 28 is_stmt 0 discriminator 2
	str	s31, [x29, 4732]
L27:
LBE38:
	.loc 1 462 7 is_stmt 1
	ldr	s31, [x29, 4732]
	fcmpe	s31, #0.0
	bls	L184
	b	L29
L184:
LBB39:
	.loc 1 463 28
	adrp	x0, lC129@PAGE
	add	x0, x0, lC129@PAGEOFF;
	str	x0, [x29, 1264]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1272]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4732]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, 240]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 463 28 is_stmt 0 discriminator 2
	str	s31, [x29, 4732]
L29:
LBE39:
LBB40:
	.loc 1 466 25 is_stmt 1
	adrp	x0, lC130@PAGE
	add	x0, x0, lC130@PAGEOFF;
	str	x0, [x29, 1280]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1288]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4728]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -256]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 466 25 is_stmt 0 discriminator 2
	str	s31, [x29, 4728]
LBE40:
	.loc 1 467 7 is_stmt 1
	ldr	s31, [x29, 4728]
	fcmpe	s31, #0.0
	bls	L185
	b	L31
L185:
LBB41:
	.loc 1 468 28
	adrp	x0, lC131@PAGE
	add	x0, x0, lC131@PAGEOFF;
	str	x0, [x29, 1296]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1304]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4728]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -240]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 468 28 is_stmt 0 discriminator 2
	str	s31, [x29, 4728]
L31:
LBE41:
	.loc 1 470 7 is_stmt 1
	ldr	s31, [x29, 4728]
	fcmpe	s31, #0.0
	bls	L186
	b	L33
L186:
LBB42:
	.loc 1 471 28
	adrp	x0, lC132@PAGE
	add	x0, x0, lC132@PAGEOFF;
	str	x0, [x29, 1312]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1320]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4728]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -224]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 471 28 is_stmt 0 discriminator 2
	str	s31, [x29, 4728]
L33:
LBE42:
LBB43:
	.loc 1 475 16 is_stmt 1
	adrp	x0, lC133@PAGE
	add	x0, x0, lC133@PAGEOFF;
	str	x0, [x29, 1328]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1336]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4772]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -208]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 475 16 is_stmt 0 discriminator 2
	str	s31, [x29, 4772]
LBE43:
	.loc 1 477 20 is_stmt 1
	ldr	s31, [x29, 4764]
	str	s31, [x29, 4540]
	.loc 1 478 35
	bl	_smc_files__get_battery_percent
	.loc 1 478 35 is_stmt 0 discriminator 2
	str	w0, [x29, 4088]
	.loc 1 481 7 is_stmt 1
	ldr	s31, [x29, 4780]
	fcmpe	s31, #0.0
	bgt	L187
	b	L199
L187:
	.loc 1 482 24
	ldr	s30, [x29, 4540]
	ldr	s31, [x29, 4780]
	fsub	s31, s30, s31
	str	s31, [x29, 4776]
	b	L37
L199:
	.loc 1 484 24
	str	wzr, [x29, 4776]
L37:
LBB44:
	.loc 1 489 10
	add	x0, x29, 4096
	strb	wzr, [x0, 327]
	.loc 1 490 10
	str	xzr, [x29, 4408]
LBB45:
	.loc 1 492 19
	bl	_smc_files__check_precool_mode
	mov	x2, x0
	mov	x3, x1
	.loc 1 492 19 is_stmt 0 discriminator 2
	mov	w0, w2
	add	x1, x29, 4096
	strb	w0, [x1, 327]
	mov	x0, x3
	str	x0, [x29, 4408]
LBE45:
	.loc 1 496 65 is_stmt 1
	ldr	s31, [x29, 4540]
	mov	w0, -1035468800
	fmov	s30, w0
	fcmp	s31, s30
	blt	L38
	.loc 1 496 65 is_stmt 0 discriminator 2
	ldr	s31, [x29, 4540]
	mov	w0, 1132068864
	fmov	s30, w0
	fcmp	s31, s30
	bhi	L38
	b	L200
L38:
	.loc 1 496 65 discriminator 3
	mov	w1, 496
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L200:
	.loc 1 497 59 is_stmt 1
	ldr	s31, [x29, 4772]
	fcmp	s31, #0.0
	blt	L41
	.loc 1 497 59 is_stmt 0 discriminator 2
	ldr	s31, [x29, 4772]
	mov	w0, 1140457472
	fmov	s30, w0
	fcmp	s31, s30
	bhi	L41
	b	L201
L41:
	.loc 1 497 59 discriminator 3
	mov	w1, 497
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L201:
	.loc 1 495 36 is_stmt 1
	ldr	w0, [x29, 4088]
	cmp	w0, 3
	cset	w0, le
	and	w21, w0, 255
	ldr	w0, [x29, 4088]
	cmp	w0, 10
	cset	w0, le
	and	w20, w0, 255
	.loc 1 500 50
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__get_spike_countP
	.loc 1 495 36
	cmp	w0, 4
	cset	w0, gt
	and	w19, w0, 255
	.loc 1 501 49
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	mov	w1, w0
	.loc 1 495 36
	add	x0, x29, 4096
	ldrb	w0, [x0, 327]
	cmp	w0, 0
	ccmp	w1, 0, 0, eq
	cset	w0, ne
	and	w1, w0, 255
	mov	w0, 52429
	movk	w0, 0x3dcc, lsl 16
	fmov	s30, w0
	ldr	s31, [x29, 4776]
	fdiv	s31, s31, s30
	fmov	s2, s31
	mov	w3, w1
	mov	w2, w19
	mov	w1, w20
	mov	w0, w21
	ldr	s1, [x29, 4772]
	ldr	s0, [x29, 4540]
	bl	_smc_math__compute_target_rpm
	fmov	s31, s0
	.loc 1 495 36 is_stmt 0 discriminator 2
	str	s31, [x29, 4536]
LBE44:
LBB46:
	.loc 1 508 10 is_stmt 1
	fmov	s31, 2.0e+1
	str	s31, [x29, 4404]
LBB47:
	.loc 1 510 22
	adrp	x0, lC134@PAGE
	add	x0, x0, lC134@PAGEOFF;
	str	x0, [x29, 1344]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1352]
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4404]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -192]
	bl	_smc_daemon__read_and_validate_smc_temp.3
	fmov	s31, s0
	.loc 1 510 22 is_stmt 0 discriminator 2
	str	s31, [x29, 4404]
LBE47:
	.loc 1 513 57 is_stmt 1
	ldr	s31, [x29, 4404]
	mov	w0, -1035468800
	fmov	s30, w0
	fcmp	s31, s30
	blt	L44
	.loc 1 513 57 is_stmt 0 discriminator 2
	ldr	s31, [x29, 4404]
	mov	w0, 1132068864
	fmov	s30, w0
	fcmp	s31, s30
	bhi	L44
	b	L202
L44:
	.loc 1 513 57 discriminator 3
	mov	w1, 513
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L202:
LBB48:
	.loc 1 511 18 is_stmt 1
	ldr	x2, [x29, 4144]
	ldr	w1, [x29, 4152]
	mov	w0, 52429
	movk	w0, 0x3dcc, lsl 16
	fmov	s1, w0
	ldr	s0, [x29, 4404]
	mov	x0, x2
	bl	_smc_math__update_battery_pid
	add	x2, x29, 3904
	stp	x0, x1, [x2, 16]
	.loc 1 511 18 is_stmt 0 discriminator 2
	add	x2, x29, 4096
	add	x2, x2, 48
	add	x0, x29, 3920
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	ldr	s31, [x29, 3932]
	str	s31, [x29, 4532]
LBE48:
LBE46:
	.loc 1 520 18 is_stmt 1
	ldr	s31, [x29, 4536]
	str	s31, [x29, 4768]
	.loc 1 521 7
	ldr	s30, [x29, 4532]
	ldr	s31, [x29, 4768]
	fcmpe	s30, s31
	bgt	L188
	b	L47
L188:
	.loc 1 522 21
	ldr	s31, [x29, 4532]
	str	s31, [x29, 4768]
L47:
LBB49:
	.loc 1 527 10
	str	xzr, [x29, 4680]
	.loc 1 528 10
	str	xzr, [x29, 4672]
	.loc 1 530 10
	ldr	s31, [x29, 4768]
	mov	w0, 53248
	movk	w0, 0x461d, lsl 16
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L49
	.loc 1 530 55 discriminator 1
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	.loc 1 530 35 discriminator 3
	cmp	w0, 0
	beq	L50
L49:
LBB50:
	.loc 1 531 25
	adrp	x0, lC97@PAGE
	add	x0, x0, lC97@PAGEOFF;
	str	x0, [x29, 1360]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 1368]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -176]
	bl	_interfaces__c__strings__new_string
	.loc 1 531 25 is_stmt 0 discriminator 2
	str	x0, [x29, 4680]
LBE50:
LBB51:
	.loc 1 532 25 is_stmt 1
	adrp	x0, lC97@PAGE
	add	x0, x0, lC97@PAGEOFF;
	str	x0, [x29, 1376]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 1384]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -160]
	bl	_interfaces__c__strings__new_string
LEHE12:
	.loc 1 532 25 is_stmt 0 discriminator 2
	str	x0, [x29, 4672]
LBE51:
	.loc 1 532 22 is_stmt 1
	b	L51
L50:
LBB52:
	add	x0, x29, 3992
	mov	x8, x0
LEHB13:
	bl	_system__secondary_stack__ss_mark
	.loc 1 535 45
	add	x0, x29, 3968
	mov	x16, x0
	ldr	s0, [x29, 4768]
	bl	_smc_daemon__float_to_hex.4
	.loc 1 535 45 is_stmt 0 discriminator 2
	mov	x20, x0
	mov	x21, x1
	mov	x0, x21
	ldr	w0, [x0]
	str	w0, [x29, 4400]
	mov	x0, x21
	ldr	w0, [x0, 4]
	str	w0, [x29, 4396]
	.loc 1 535 16 is_stmt 1 discriminator 2
	ldrsw	x0, [x29, 4400]
	str	x0, [x29, 4384]
	ldr	w1, [x29, 4396]
	ldr	w0, [x29, 4400]
	cmp	w1, w0
	blt	L52
	.loc 1 535 16 is_stmt 0 discriminator 3
	ldrsw	x0, [x29, 4396]
	str	x0, [x29, 4376]
	b	L53
L52:
	.loc 1 535 16 discriminator 4
	ldrsw	x0, [x29, 4400]
	sub	x0, x0, #1
	str	x0, [x29, 4376]
L53:
	.loc 1 535 16 discriminator 6
	ldr	w1, [x29, 4396]
	ldr	w0, [x29, 4400]
	cmp	w1, w0
	blt	L55
	.loc 1 535 16 discriminator 7
	ldrsw	x1, [x29, 4396]
	ldrsw	x0, [x29, 4400]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 2848]
	str	xzr, [x29, 2856]
	add	x0, x29, 3072
	ldp	x2, x3, [x0, -224]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3048]
	ldr	x0, [x29, 3048]
	add	x0, x1, x0
	str	x0, [x29, 3048]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 3040]
L55:
	.loc 1 535 16 discriminator 10
	ldr	w1, [x29, 4396]
	ldr	w0, [x29, 4400]
	cmp	w1, w0
	.loc 1 535 45 is_stmt 1 discriminator 14
	ldr	w1, [x29, 4396]
	ldr	w0, [x29, 4400]
	cmp	w1, w0
	blt	L58
	.loc 1 535 45 is_stmt 0 discriminator 15
	ldr	w0, [x29, 4400]
	cmp	w0, 0
	bgt	L58
	.loc 1 535 45 discriminator 17
	mov	w1, 535
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L58:
	.loc 1 535 16 is_stmt 1 discriminator 18
	mov	x0, x20
	str	x0, [x29, 4368]
	.loc 1 537 28
	mov	x0, x20
	mov	x1, x21
	bl	_interfaces__c__strings__new_string
	.loc 1 537 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4680]
	.loc 1 538 28 is_stmt 1
	mov	x0, x20
	mov	x1, x21
	bl	_interfaces__c__strings__new_string
LEHE13:
	.loc 1 538 28 is_stmt 0 discriminator 2
	str	x0, [x29, 4672]
	.loc 1 539 0 is_stmt 1
	mov	w19, 1
L156:
	.loc 1 539 0 is_stmt 0 discriminator 1
	add	x0, x29, 3968
	mov	x16, x0
LEHB14:
	bl	_smc_daemon__B_12__B_13___finalizer.6
LEHE14:
	.loc 1 539 0 discriminator 3
	cmp	w19, 1
	bne	L59
	.loc 1 539 0
	nop
	.loc 1 539 16 is_stmt 1
	mov	w0, 1
L158:
	.loc 1 539 16 is_stmt 0 discriminator 4
	cmp	w0, 1
	bne	L60
L51:
LBE52:
	.loc 1 541 23 is_stmt 1
	ldr	w0, [x29, 4104]
	ldr	x2, [x29, 4680]
	ldr	x1, [x29, 4656]
LEHB15:
	bl	_smc_helper_write_key_hex
	.loc 1 541 23 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 542 23 is_stmt 1
	ldr	w0, [x29, 4104]
	ldr	x2, [x29, 4672]
	ldr	x1, [x29, 4648]
	bl	_smc_helper_write_key_hex
	.loc 1 542 23 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 543 10 is_stmt 1
	ldr	x0, [x29, 4680]
	bl	_interfaces__c__strings__free
	.loc 1 543 10 is_stmt 0 discriminator 2
	str	x0, [x29, 4680]
	.loc 1 544 10 is_stmt 1
	ldr	x0, [x29, 4672]
	bl	_interfaces__c__strings__free
	.loc 1 544 10 is_stmt 0 discriminator 2
	str	x0, [x29, 4672]
LBE49:
	.loc 1 548 20 is_stmt 1
	ldr	w3, [x29, 4104]
	add	x0, x29, 4096
	add	x0, x0, 68
	mov	x2, x0
	ldr	x1, [x29, 4576]
	mov	w0, w3
	bl	_smc_helper_read_key
	.loc 1 548 20 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 549 20 is_stmt 1
	ldr	w3, [x29, 4104]
	add	x0, x29, 4096
	add	x0, x0, 64
	mov	x2, x0
	ldr	x1, [x29, 4568]
	mov	w0, w3
	bl	_smc_helper_read_key
	.loc 1 549 20 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
LBB54:
	.loc 1 552 16 is_stmt 1
	bl	_smc_files__read_sms_values
	mov	x2, x0
	mov	x3, x1
	.loc 1 552 16 is_stmt 0 discriminator 2
	mov	w0, w2
	str	w0, [x29, 4528]
	mov	x0, x2
	asr	x0, x0, 32
	str	w0, [x29, 4524]
	mov	w0, w3
	str	w0, [x29, 4520]
	ubfx	x0, x3, 32, 8
	add	x1, x29, 4096
	strb	w0, [x1, 271]
LBE54:
	.loc 1 553 7 is_stmt 1
	add	x0, x29, 4096
	ldrb	w0, [x0, 271]
	cmp	w0, 0
	beq	L61
	.loc 1 553 22 discriminator 1
	add	x0, x29, 4096
	ldrb	w0, [x0, 611]
	cmp	w0, 0
	beq	L61
	.loc 1 554 21
	mov	w2, 0
	ldr	w1, [x29, 4528]
	ldr	w0, [x29, 4716]
	subs	w0, w1, w0
	bvc	L62
	mov	w2, 1
L62:
	mov	w1, w0
	.loc 1 554 21 is_stmt 0 discriminator 1
	mov	w0, w2
	cmp	w0, 0
	beq	L64
	.loc 1 554 21 discriminator 2
	mov	w1, 554
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L64:
	.loc 1 554 21 discriminator 3
	mov	w0, -2147483648
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	.loc 1 554 21 discriminator 6
	cmp	w0, 0
	beq	L65
	.loc 1 554 21 discriminator 7
	mov	w1, 554
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L65:
	.loc 1 554 18 is_stmt 1 discriminator 8
	mov	w2, 0
	ldr	w1, [x29, 4528]
	ldr	w0, [x29, 4716]
	subs	w0, w1, w0
	bvc	L66
	mov	w2, 1
L66:
	mov	w1, w0
	.loc 1 554 18 is_stmt 0 discriminator 10
	mov	w0, w2
	.loc 1 554 21 is_stmt 1 discriminator 10
	cmp	w0, 0
	beq	L68
	.loc 1 554 18 discriminator 11
	mov	w1, 554
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L68:
	.loc 1 554 21 discriminator 12
	mov	w0, w1
	.loc 1 554 18 discriminator 12
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [x29, 4360]
	.loc 1 555 21
	mov	w2, 0
	ldr	w1, [x29, 4524]
	ldr	w0, [x29, 4712]
	subs	w0, w1, w0
	bvc	L69
	mov	w2, 1
L69:
	mov	w1, w0
	.loc 1 555 21 is_stmt 0 discriminator 1
	mov	w0, w2
	cmp	w0, 0
	beq	L71
	.loc 1 555 21 discriminator 2
	mov	w1, 555
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L71:
	.loc 1 555 21 discriminator 3
	mov	w0, -2147483648
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	.loc 1 555 21 discriminator 6
	cmp	w0, 0
	beq	L72
	.loc 1 555 21 discriminator 7
	mov	w1, 555
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L72:
	.loc 1 555 18 is_stmt 1 discriminator 8
	mov	w2, 0
	ldr	w1, [x29, 4524]
	ldr	w0, [x29, 4712]
	subs	w0, w1, w0
	bvc	L73
	mov	w2, 1
L73:
	mov	w1, w0
	.loc 1 555 18 is_stmt 0 discriminator 10
	mov	w0, w2
	.loc 1 555 21 is_stmt 1 discriminator 10
	cmp	w0, 0
	beq	L75
	.loc 1 555 18 discriminator 11
	mov	w1, 555
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L75:
	.loc 1 555 21 discriminator 12
	mov	w0, w1
	.loc 1 555 18 discriminator 12
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [x29, 4356]
	.loc 1 556 21
	mov	w2, 0
	ldr	w1, [x29, 4520]
	ldr	w0, [x29, 4708]
	subs	w0, w1, w0
	bvc	L76
	mov	w2, 1
L76:
	mov	w1, w0
	.loc 1 556 21 is_stmt 0 discriminator 1
	mov	w0, w2
	cmp	w0, 0
	beq	L78
	.loc 1 556 21 discriminator 2
	mov	w1, 556
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L78:
	.loc 1 556 21 discriminator 3
	mov	w0, -2147483648
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	.loc 1 556 21 discriminator 6
	cmp	w0, 0
	beq	L79
	.loc 1 556 21 discriminator 7
	mov	w1, 556
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L79:
	.loc 1 556 18 is_stmt 1 discriminator 8
	mov	w2, 0
	ldr	w1, [x29, 4520]
	ldr	w0, [x29, 4708]
	subs	w0, w1, w0
	bvc	L80
	mov	w2, 1
L80:
	mov	w1, w0
	.loc 1 556 18 is_stmt 0 discriminator 10
	mov	w0, w2
	.loc 1 556 21 is_stmt 1 discriminator 10
	cmp	w0, 0
	beq	L82
	.loc 1 556 18 discriminator 11
	mov	w1, 556
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L82:
	.loc 1 556 21 discriminator 12
	mov	w0, w1
	.loc 1 556 18 discriminator 12
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [x29, 4352]
	.loc 1 558 25
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	.loc 1 558 10 discriminator 2
	cmp	w0, 0
	beq	L61
	.loc 1 558 60 discriminator 3
	mov	w2, 0
	ldr	w1, [x29, 4360]
	ldr	w0, [x29, 4356]
	adds	w0, w1, w0
	bvc	L83
	mov	w2, 1
L83:
	mov	w1, w0
	.loc 1 558 60 is_stmt 0 discriminator 4
	mov	w0, w2
	cmp	w0, 0
	beq	L85
	.loc 1 558 60 discriminator 5
	mov	w1, 558
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L85:
	.loc 1 558 80 is_stmt 1 discriminator 9
	mov	w2, 0
	ldr	w0, [x29, 4352]
	adds	w0, w1, w0
	bvc	L86
	mov	w2, 1
L86:
	mov	w1, w0
	.loc 1 558 80 is_stmt 0 discriminator 10
	mov	w0, w2
	cmp	w0, 0
	beq	L88
	.loc 1 558 80 discriminator 11
	mov	w1, 558
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L88:
	.loc 1 558 80 discriminator 12
	mov	w0, w1
	cmp	w0, 50
	cset	w0, gt
	and	w0, w0, 255
	.loc 1 558 42 is_stmt 1 discriminator 15
	cmp	w0, 0
	beq	L61
	.loc 1 559 25
	mov	w1, 0
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__set_turboP
	.loc 1 560 25
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__reset_spikesP
LBB55:
	.loc 1 561 22
	adrp	x0, lC135@PAGE
	add	x0, x0, lC135@PAGEOFF;
	str	x0, [x29, 1392]
	adrp	x0, lC31@PAGE
	add	x0, x0, lC31@PAGEOFF;
	str	x0, [x29, 1400]
	adrp	x0, lC136@PAGE
	add	x0, x0, lC136@PAGEOFF;
	str	x0, [x29, 1408]
	adrp	x0, lC32@PAGE
	add	x0, x0, lC32@PAGEOFF;
	str	x0, [x29, 1416]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -128]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -144]
	bl	_smc_files__notify_user
L61:
LBE55:
	.loc 1 564 14
	ldr	w0, [x29, 4528]
	str	w0, [x29, 4716]
	.loc 1 565 14
	ldr	w0, [x29, 4524]
	str	w0, [x29, 4712]
	.loc 1 566 14
	ldr	w0, [x29, 4520]
	str	w0, [x29, 4708]
	.loc 1 567 22
	add	x0, x29, 4096
	ldrb	w0, [x0, 271]
	add	x1, x29, 4096
	strb	w0, [x1, 611]
	.loc 1 570 22
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	.loc 1 570 7 discriminator 2
	cmp	w0, 0
	beq	L89
	.loc 1 571 10
	ldr	s31, [x29, 4764]
	mov	w0, 1117782016
	fmov	s30, w0
	fcmpe	s31, s30
	bmi	L189
	b	L90
L189:
	.loc 1 571 35 discriminator 1
	ldr	s31, [x29, 4760]
	mov	w0, 1117782016
	fmov	s30, w0
	fcmpe	s31, s30
	bmi	L190
	b	L90
L190:
	.loc 1 571 65 discriminator 2
	ldr	s31, [x29, 4772]
	mov	w0, 1108082688
	fmov	s30, w0
	fcmpe	s31, s30
	bmi	L191
	b	L90
L191:
LBB56:
	.loc 1 572 13
	adrp	x0, lC137@PAGE
	add	x0, x0, lC137@PAGEOFF;
	str	x0, [x29, 1424]
	adrp	x0, lC33@PAGE
	add	x0, x0, lC33@PAGEOFF;
	str	x0, [x29, 1432]
	add	x0, x29, 3968
	mov	x16, x0
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -112]
	bl	_smc_daemon__deactivate_turbo_mode.7
	b	L90
L89:
LBE56:
	.loc 1 575 10
	ldr	s31, [x29, 4764]
	mov	w0, 1119485952
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L192
	b	L203
L192:
LBB57:
	.loc 1 576 54
	add	x0, x29, 3904
	str	x0, [x29, 1440]
	adrp	x0, lC24@PAGE
	add	x0, x0, lC24@PAGEOFF;
	str	x0, [x29, 1448]
	mov	w2, 6
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -96]
	ldr	s0, [x29, 4764]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 576 54 is_stmt 0 discriminator 3
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2832]
	str	xzr, [x29, 2840]
	add	x0, x29, 3072
	ldp	x3, x4, [x0, -240]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3288]
	ldr	x0, [x29, 3288]
	add	x0, x1, x0
	str	x0, [x29, 3288]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3280]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2816]
	str	xzr, [x29, 2824]
	add	x0, x29, 3072
	ldp	x3, x4, [x0, -256]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3272]
	ldr	x0, [x29, 3272]
	add	x0, x1, x0
	str	x0, [x29, 3272]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3264]
	.loc 1 576 78 is_stmt 1 discriminator 3
	bic	w0, w2, w2, asr #31
	add	w0, w0, 10
	add	w19, w0, 8
LBB58:
	add	x0, x29, 3872
	str	x0, [x29, 1456]
	adrp	x0, lC34@PAGE
	add	x0, x0, lC34@PAGEOFF;
	str	x0, [x29, 1464]
	adrp	x0, lC138@PAGE
	add	x0, x0, lC138@PAGEOFF;
	str	x0, [x29, 1472]
	adrp	x0, lC35@PAGE
	add	x0, x0, lC35@PAGEOFF;
	str	x0, [x29, 1480]
	add	x0, x29, 3904
	str	x0, [x29, 1488]
	mov	w0, 1
	str	w0, [x29, 4232]
	str	w2, [x29, 4236]
	add	x0, x29, 4096
	add	x0, x0, 136
	str	x0, [x29, 1496]
	adrp	x0, lC139@PAGE
	add	x0, x0, lC139@PAGEOFF;
	str	x0, [x29, 1504]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 1512]
	add	x0, x29, 1536
	ldp	x6, x7, [x0, -32]
	add	x0, x29, 1536
	ldp	x4, x5, [x0, -48]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, -64]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -80]
	bl	_system__concat_3__str_concat_3
LBE58:
	.loc 1 576 78 is_stmt 0 discriminator 6
	cmp	w19, 30
	ble	L96
	.loc 1 576 78 discriminator 7
	mov	w1, 576
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L96:
	.loc 1 576 78 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2800]
	str	xzr, [x29, 2808]
	add	x0, x29, 2560
	ldp	x2, x3, [x0, 240]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3256]
	ldr	x0, [x29, 3256]
	add	x0, x1, x0
	str	x0, [x29, 3256]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 3248]
	.loc 1 576 13 is_stmt 1 discriminator 8
	add	x0, x29, 3872
	str	x0, [x29, 1520]
	mov	w0, 1
	str	w0, [x29, 4240]
	str	w19, [x29, 4244]
	add	x0, x29, 4096
	add	x0, x0, 144
	str	x0, [x29, 1528]
	add	x0, x29, 3968
	mov	x16, x0
	add	x0, x29, 1536
	ldp	x0, x1, [x0, -16]
	bl	_smc_daemon__activate_turbo_mode.8
	b	L90
L203:
LBE57:
	.loc 1 577 10
	ldr	s31, [x29, 4760]
	mov	w0, 1119485952
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L193
	b	L204
L193:
LBB59:
	.loc 1 578 53
	add	x0, x29, 3856
	str	x0, [x29, 1536]
	adrp	x0, lC24@PAGE
	add	x0, x0, lC24@PAGEOFF;
	str	x0, [x29, 1544]
	mov	w2, 6
	add	x0, x29, 1536
	ldp	x0, x1, [x0]
	ldr	s0, [x29, 4760]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 578 53 is_stmt 0 discriminator 3
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2784]
	str	xzr, [x29, 2792]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, 224]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3240]
	ldr	x0, [x29, 3240]
	add	x0, x1, x0
	str	x0, [x29, 3240]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3232]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2768]
	str	xzr, [x29, 2776]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, 208]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3224]
	ldr	x0, [x29, 3224]
	add	x0, x1, x0
	str	x0, [x29, 3224]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3216]
	.loc 1 578 76 is_stmt 1 discriminator 3
	bic	w0, w2, w2, asr #31
	add	w0, w0, 9
	add	w19, w0, 8
LBB60:
	add	x0, x29, 3824
	str	x0, [x29, 1552]
	adrp	x0, lC36@PAGE
	add	x0, x0, lC36@PAGEOFF;
	str	x0, [x29, 1560]
	adrp	x0, lC140@PAGE
	add	x0, x0, lC140@PAGEOFF;
	str	x0, [x29, 1568]
	adrp	x0, lC29@PAGE
	add	x0, x0, lC29@PAGEOFF;
	str	x0, [x29, 1576]
	add	x0, x29, 3856
	str	x0, [x29, 1584]
	mov	w0, 1
	str	w0, [x29, 4248]
	str	w2, [x29, 4252]
	add	x0, x29, 4096
	add	x0, x0, 152
	str	x0, [x29, 1592]
	adrp	x0, lC139@PAGE
	add	x0, x0, lC139@PAGEOFF;
	str	x0, [x29, 1600]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 1608]
	add	x0, x29, 1536
	ldp	x6, x7, [x0, 64]
	add	x0, x29, 1536
	ldp	x4, x5, [x0, 48]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, 32]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 16]
	bl	_system__concat_3__str_concat_3
LBE60:
	.loc 1 578 76 is_stmt 0 discriminator 6
	cmp	w19, 29
	ble	L99
	.loc 1 578 76 discriminator 7
	mov	w1, 578
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L99:
	.loc 1 578 76 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2752]
	str	xzr, [x29, 2760]
	add	x0, x29, 2560
	ldp	x2, x3, [x0, 192]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3208]
	ldr	x0, [x29, 3208]
	add	x0, x1, x0
	str	x0, [x29, 3208]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 3200]
	.loc 1 578 13 is_stmt 1 discriminator 8
	add	x0, x29, 3824
	str	x0, [x29, 1616]
	mov	w0, 1
	str	w0, [x29, 4256]
	str	w19, [x29, 4260]
	add	x0, x29, 4096
	add	x0, x0, 160
	str	x0, [x29, 1624]
	add	x0, x29, 3968
	mov	x16, x0
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 80]
	bl	_smc_daemon__activate_turbo_mode.8
	b	L90
L204:
LBE59:
	.loc 1 579 10
	ldr	s31, [x29, 4772]
	mov	w0, 1110704128
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L194
	b	L205
L194:
LBB61:
	.loc 1 580 55
	add	x0, x29, 3808
	str	x0, [x29, 1632]
	adrp	x0, lC24@PAGE
	add	x0, x0, lC24@PAGEOFF;
	str	x0, [x29, 1640]
	mov	w2, 6
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 96]
	ldr	s0, [x29, 4772]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 580 55 is_stmt 0 discriminator 3
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2736]
	str	xzr, [x29, 2744]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, 176]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3192]
	ldr	x0, [x29, 3192]
	add	x0, x1, x0
	str	x0, [x29, 3192]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3184]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2720]
	str	xzr, [x29, 2728]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, 160]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3176]
	ldr	x0, [x29, 3176]
	add	x0, x1, x0
	str	x0, [x29, 3176]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3168]
	.loc 1 580 70 is_stmt 1 discriminator 3
	bic	w0, w2, w2, asr #31
	add	w0, w0, 11
	add	w19, w0, 8
LBB62:
	add	x0, x29, 3776
	str	x0, [x29, 1648]
	adrp	x0, lC37@PAGE
	add	x0, x0, lC37@PAGEOFF;
	str	x0, [x29, 1656]
	adrp	x0, lC141@PAGE
	add	x0, x0, lC141@PAGEOFF;
	str	x0, [x29, 1664]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 1672]
	add	x0, x29, 3808
	str	x0, [x29, 1680]
	mov	w0, 1
	str	w0, [x29, 4264]
	str	w2, [x29, 4268]
	add	x0, x29, 4096
	add	x0, x0, 168
	str	x0, [x29, 1688]
	adrp	x0, lC142@PAGE
	add	x0, x0, lC142@PAGEOFF;
	str	x0, [x29, 1696]
	adrp	x0, lC2@PAGE
	add	x0, x0, lC2@PAGEOFF;
	str	x0, [x29, 1704]
	add	x0, x29, 1536
	ldp	x6, x7, [x0, 160]
	add	x0, x29, 1536
	ldp	x4, x5, [x0, 144]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, 128]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 112]
	bl	_system__concat_3__str_concat_3
LBE62:
	.loc 1 580 70 is_stmt 0 discriminator 6
	cmp	w19, 31
	ble	L102
	.loc 1 580 70 discriminator 7
	mov	w1, 580
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L102:
	.loc 1 580 70 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2704]
	str	xzr, [x29, 2712]
	add	x0, x29, 2560
	ldp	x2, x3, [x0, 144]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3160]
	ldr	x0, [x29, 3160]
	add	x0, x1, x0
	str	x0, [x29, 3160]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 3152]
	.loc 1 580 13 is_stmt 1 discriminator 8
	add	x0, x29, 3776
	str	x0, [x29, 1712]
	mov	w0, 1
	str	w0, [x29, 4272]
	str	w19, [x29, 4276]
	add	x0, x29, 4096
	add	x0, x0, 176
	str	x0, [x29, 1720]
	add	x0, x29, 3968
	mov	x16, x0
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 176]
	bl	_smc_daemon__activate_turbo_mode.8
	b	L90
L205:
LBE61:
	.loc 1 581 28
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__get_spike_countP
	.loc 1 581 10 discriminator 2
	cmp	w0, 2
	ble	L90
LBB63:
	.loc 1 582 13
	adrp	x0, lC143@PAGE
	add	x0, x0, lC143@PAGEOFF;
	str	x0, [x29, 1728]
	adrp	x0, lC38@PAGE
	add	x0, x0, lC38@PAGEOFF;
	str	x0, [x29, 1736]
	add	x0, x29, 3968
	mov	x16, x0
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 192]
	bl	_smc_daemon__activate_turbo_mode.8
L90:
LBE63:
	.loc 1 587 7
	add	x0, x29, 4096
	ldrb	w0, [x0, 12]
	cmp	w0, 0
	beq	L103
	.loc 1 588 45
	ldr	s31, [x29, 4164]
	.loc 1 588 26
	ldr	s30, [x29, 4096]
	fadd	s31, s30, s31
	str	s31, [x29, 4096]
	.loc 1 589 49
	ldr	w1, [x29, 4092]
	mov	w0, 2147483647
	cmp	w1, w0
	bne	L104
	.loc 1 589 28 discriminator 1
	mov	w1, 589
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L104:
	.loc 1 589 28 is_stmt 0 discriminator 2
	ldr	w0, [x29, 4092]
	add	w0, w0, 1
	str	w0, [x29, 4092]
	.loc 1 592 19 is_stmt 1
	bl	_ada__calendar__clock
	mov	x2, x0
	.loc 1 592 19 is_stmt 0 discriminator 2
	ldr	x0, [x29, 4048]
	mov	x1, x0
	mov	x0, x2
	bl	_ada__calendar__Osubtract__2
	mov	x1, x0
	.loc 1 592 10 is_stmt 1 discriminator 4
	mov	x0, 58367
	movk	x0, 0x540b, lsl 16
	movk	x0, 0x2, lsl 32
	cmp	x1, x0
	ble	L103
	.loc 1 593 32
	mov	w0, 0
	add	x1, x29, 4096
	strb	w0, [x1, 12]
LBB64:
	.loc 1 595 62
	ldr	s31, [x29, 4092]
	scvtf	s31, s31
	.loc 1 595 16
	ldr	s30, [x29, 4096]
	fdiv	s31, s30, s31
	str	s31, [x29, 4348]
	.loc 1 599 16
	ldr	s31, [x29, 4700]
	fcmpe	s31, #0.0
	bgt	L195
	b	L206
L195:
	.loc 1 600 24
	ldr	s30, [x29, 4348]
	ldr	s31, [x29, 4700]
	fsub	s31, s30, s31
	str	s31, [x29, 4344]
	.loc 1 601 60
	ldr	s31, [x29, 4348]
	ldr	s30, [x29, 4700]
	fdiv	s31, s30, s31
	.loc 1 601 27
	mov	w0, 32768
	movk	w0, 0x447b, lsl 16
	fmov	s30, w0
	fmul	s31, s31, s30
	str	s31, [x29, 4340]
	.loc 1 607 55
	bl	_ada__calendar__clock
	mov	x19, x0
	.loc 1 607 55 is_stmt 0 discriminator 2
	mov	x3, 0
	mov	w2, 1
	mov	w1, 1
	mov	w0, 1970
	bl	_ada__calendar__time_of
	.loc 1 607 55 discriminator 4
	mov	x1, x0
	mov	x0, x19
	bl	_ada__calendar__Osubtract__2
LEHE15:
	mov	x4, x0
	.loc 1 607 35 is_stmt 1 discriminator 6
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
LEHB16:
	sdiv	x5, x4, x0
LEHE16:
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
	bcc	L107
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L107:
	mov	x0, x5
	.loc 1 602 28
	ldr	s3, [x29, 4340]
	ldr	s2, [x29, 4344]
	ldr	s1, [x29, 4348]
	ldr	s0, [x29, 4700]
LEHB17:
	bl	_smc_files__write_pressure_report
LBB65:
	.loc 1 609 107
	add	x0, x29, 3760
	str	x0, [x29, 1744]
	adrp	x0, lC24@PAGE
	add	x0, x0, lC24@PAGEOFF;
	str	x0, [x29, 1752]
	mov	w2, 6
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 208]
	ldr	s0, [x29, 4340]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 609 107 is_stmt 0 discriminator 3
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2688]
	str	xzr, [x29, 2696]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, 128]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3144]
	ldr	x0, [x29, 3144]
	add	x0, x1, x0
	str	x0, [x29, 3144]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3136]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2672]
	str	xzr, [x29, 2680]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, 112]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3128]
	ldr	x0, [x29, 3128]
	add	x0, x1, x0
	str	x0, [x29, 3128]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3120]
	.loc 1 609 124 is_stmt 1 discriminator 3
	bic	w0, w2, w2, asr #31
	add	w0, w0, 68
	add	w19, w0, 5
LBB66:
	add	x0, x29, 3488
	str	x0, [x29, 1760]
	adrp	x0, lC22@PAGE
	add	x0, x0, lC22@PAGEOFF;
	str	x0, [x29, 1768]
	adrp	x0, lC144@PAGE
	add	x0, x0, lC144@PAGEOFF;
	str	x0, [x29, 1776]
	adrp	x0, lC10@PAGE
	add	x0, x0, lC10@PAGEOFF;
	str	x0, [x29, 1784]
	add	x0, x29, 3760
	str	x0, [x29, 1792]
	mov	w0, 1
	str	w0, [x29, 4280]
	str	w2, [x29, 4284]
	add	x0, x29, 4096
	add	x0, x0, 184
	str	x0, [x29, 1800]
	adrp	x0, lC145@PAGE
	add	x0, x0, lC145@PAGEOFF;
	str	x0, [x29, 1808]
	adrp	x0, lC27@PAGE
	add	x0, x0, lC27@PAGEOFF;
	str	x0, [x29, 1816]
	add	x0, x29, 2048
	ldp	x6, x7, [x0, -240]
	add	x0, x29, 2048
	ldp	x4, x5, [x0, -256]
	add	x0, x29, 1536
	ldp	x2, x3, [x0, 240]
	add	x0, x29, 1536
	ldp	x0, x1, [x0, 224]
	bl	_system__concat_3__str_concat_3
LBE66:
	.loc 1 609 124 is_stmt 0 discriminator 6
	cmp	w19, 85
	ble	L108
	.loc 1 609 124 discriminator 7
	mov	w1, 609
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L108:
	.loc 1 609 124 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2656]
	str	xzr, [x29, 2664]
	add	x0, x29, 2560
	ldp	x2, x3, [x0, 96]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3112]
	ldr	x0, [x29, 3112]
	add	x0, x1, x0
	str	x0, [x29, 3112]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 3104]
	.loc 1 609 19 is_stmt 1 discriminator 8
	add	x0, x29, 3488
	str	x0, [x29, 1824]
	mov	w0, 1
	str	w0, [x29, 4288]
	str	w19, [x29, 4292]
	add	x0, x29, 4096
	add	x0, x0, 192
	str	x0, [x29, 1832]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -224]
	bl	_ada__text_io__put_line__2
	b	L103
L206:
LBE65:
	.loc 1 612 39
	ldr	s31, [x29, 4348]
	str	s31, [x29, 4700]
	.loc 1 613 28
	ldr	s0, [x29, 4348]
	bl	_smc_files__save_fan_calibration
LBB67:
	.loc 1 614 99
	add	x0, x29, 3744
	str	x0, [x29, 1840]
	adrp	x0, lC24@PAGE
	add	x0, x0, lC24@PAGEOFF;
	str	x0, [x29, 1848]
	mov	w2, 6
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -208]
	ldr	s0, [x29, 4348]
	bl	_system__img_flt__impl__image_floating_point
	mov	w2, w0
	.loc 1 614 99 is_stmt 0 discriminator 3
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2640]
	str	xzr, [x29, 2648]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, 80]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3096]
	ldr	x0, [x29, 3096]
	add	x0, x1, x0
	str	x0, [x29, 3096]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3088]
	bic	w0, w2, w2, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2624]
	str	xzr, [x29, 2632]
	add	x0, x29, 2560
	ldp	x3, x4, [x0, 64]
	mov	x0, x3
	lsr	x1, x0, 61
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 3080]
	ldr	x0, [x29, 3080]
	add	x0, x1, x0
	str	x0, [x29, 3080]
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3072]
	.loc 1 614 116 is_stmt 1 discriminator 3
	bic	w0, w2, w2, asr #31
	add	w0, w0, 60
	add	w19, w0, 5
LBB68:
	add	x0, x29, 3488
	str	x0, [x29, 1856]
	adrp	x0, lC18@PAGE
	add	x0, x0, lC18@PAGEOFF;
	str	x0, [x29, 1864]
	adrp	x0, lC146@PAGE
	add	x0, x0, lC146@PAGEOFF;
	str	x0, [x29, 1872]
	adrp	x0, lC19@PAGE
	add	x0, x0, lC19@PAGEOFF;
	str	x0, [x29, 1880]
	add	x0, x29, 3744
	str	x0, [x29, 1888]
	mov	w0, 1
	str	w0, [x29, 4296]
	str	w2, [x29, 4300]
	add	x0, x29, 4096
	add	x0, x0, 200
	str	x0, [x29, 1896]
	adrp	x0, lC115@PAGE
	add	x0, x0, lC115@PAGEOFF;
	str	x0, [x29, 1904]
	adrp	x0, lC27@PAGE
	add	x0, x0, lC27@PAGEOFF;
	str	x0, [x29, 1912]
	add	x0, x29, 2048
	ldp	x6, x7, [x0, -144]
	add	x0, x29, 2048
	ldp	x4, x5, [x0, -160]
	add	x0, x29, 2048
	ldp	x2, x3, [x0, -176]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -192]
	bl	_system__concat_3__str_concat_3
LBE68:
	.loc 1 614 116 is_stmt 0 discriminator 6
	cmp	w19, 77
	ble	L109
	.loc 1 614 116 discriminator 7
	mov	w1, 614
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L109:
	.loc 1 614 116 discriminator 8
	bic	w0, w19, w19, asr #31
	sxtw	x0, w0
	str	x0, [x29, 2608]
	str	xzr, [x29, 2616]
	add	x0, x29, 2560
	ldp	x2, x3, [x0, 48]
	mov	x0, x2
	lsr	x1, x0, 61
	mov	x0, x3
	lsl	x0, x0, 3
	str	x0, [x29, 3064]
	ldr	x0, [x29, 3064]
	add	x0, x1, x0
	str	x0, [x29, 3064]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 3056]
	.loc 1 614 19 is_stmt 1 discriminator 8
	add	x0, x29, 3488
	str	x0, [x29, 1920]
	mov	w0, 1
	str	w0, [x29, 4304]
	str	w19, [x29, 4308]
	add	x0, x29, 4096
	add	x0, x0, 208
	str	x0, [x29, 1928]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -128]
	bl	_ada__text_io__put_line__2
L103:
LBE67:
LBE64:
LBB69:
	.loc 1 621 16
	adrp	x0, lC119@PAGE
	add	x0, x0, lC119@PAGEOFF;
	str	x0, [x29, 1936]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1944]
	ldr	s0, [x29, 4764]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -112]
	bl	_smc_files__write_earu_temp
LBE69:
LBB70:
	.loc 1 622 16
	adrp	x0, lC120@PAGE
	add	x0, x0, lC120@PAGEOFF;
	str	x0, [x29, 1952]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1960]
	ldr	s0, [x29, 4760]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -96]
	bl	_smc_files__write_earu_temp
LBE70:
LBB71:
	.loc 1 623 16
	adrp	x0, lC121@PAGE
	add	x0, x0, lC121@PAGEOFF;
	str	x0, [x29, 1968]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1976]
	ldr	s0, [x29, 4756]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -80]
	bl	_smc_files__write_earu_temp
LBE71:
LBB72:
	.loc 1 624 16
	adrp	x0, lC122@PAGE
	add	x0, x0, lC122@PAGEOFF;
	str	x0, [x29, 1984]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 1992]
	ldr	s0, [x29, 4752]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -64]
	bl	_smc_files__write_earu_temp
LBE72:
LBB73:
	.loc 1 625 16
	adrp	x0, lC123@PAGE
	add	x0, x0, lC123@PAGEOFF;
	str	x0, [x29, 2000]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 2008]
	ldr	s0, [x29, 4748]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -48]
	bl	_smc_files__write_earu_temp
LBE73:
LBB74:
	.loc 1 626 16
	adrp	x0, lC124@PAGE
	add	x0, x0, lC124@PAGEOFF;
	str	x0, [x29, 2016]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 2024]
	ldr	s0, [x29, 4744]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -32]
	bl	_smc_files__write_earu_temp
LBE74:
LBB75:
	.loc 1 627 16
	adrp	x0, lC125@PAGE
	add	x0, x0, lC125@PAGEOFF;
	str	x0, [x29, 2032]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 2040]
	ldr	s0, [x29, 4740]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, -16]
	bl	_smc_files__write_earu_temp
LBE75:
LBB76:
	.loc 1 628 16
	adrp	x0, lC126@PAGE
	add	x0, x0, lC126@PAGEOFF;
	str	x0, [x29, 2048]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 2056]
	ldr	s0, [x29, 4736]
	add	x0, x29, 2048
	ldp	x0, x1, [x0]
	bl	_smc_files__write_earu_temp
LBE76:
LBB77:
	.loc 1 629 16
	adrp	x0, lC147@PAGE
	add	x0, x0, lC147@PAGEOFF;
	str	x0, [x29, 2064]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 2072]
	ldr	s0, [x29, 4732]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 16]
	bl	_smc_files__write_earu_temp
LBE77:
LBB78:
	.loc 1 630 16
	adrp	x0, lC148@PAGE
	add	x0, x0, lC148@PAGEOFF;
	str	x0, [x29, 2080]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 2088]
	ldr	s0, [x29, 4728]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 32]
	bl	_smc_files__write_earu_temp
LBE78:
LBB79:
	.loc 1 631 16
	adrp	x0, lC133@PAGE
	add	x0, x0, lC133@PAGEOFF;
	str	x0, [x29, 2096]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 2104]
	ldr	s0, [x29, 4772]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 48]
	bl	_smc_files__write_earu_temp
LBE79:
LBB80:
	.loc 1 633 16
	adrp	x0, lC89@PAGE
	add	x0, x0, lC89@PAGEOFF;
	str	x0, [x29, 2112]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 2120]
	ldr	s31, [x29, 4164]
	fmov	s0, s31
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 64]
	bl	_smc_files__write_earu_fan
LBE80:
LBB81:
	.loc 1 634 16
	adrp	x0, lC90@PAGE
	add	x0, x0, lC90@PAGEOFF;
	str	x0, [x29, 2128]
	adrp	x0, lC0@PAGE
	add	x0, x0, lC0@PAGEOFF;
	str	x0, [x29, 2136]
	ldr	s31, [x29, 4160]
	fmov	s0, s31
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 80]
	bl	_smc_files__write_earu_fan
LBE81:
	.loc 1 635 50
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	.loc 1 635 16 discriminator 2
	cmp	w0, 0
	beq	L110
	.loc 1 635 16 is_stmt 0 discriminator 3
	mov	w0, 1
	b	L111
L110:
	.loc 1 635 16 discriminator 4
	mov	w0, 0
L111:
	.loc 1 635 16 discriminator 6
	bl	_smc_files__write_earu_turbo
	.loc 1 638 16 is_stmt 1
	bl	_ada__calendar__clock
	.loc 1 638 16 is_stmt 0 discriminator 2
	ldr	x1, [x29, 4720]
	bl	_ada__calendar__Osubtract__2
	mov	x1, x0
	.loc 1 638 7 is_stmt 1 discriminator 4
	mov	x0, 58367
	movk	x0, 0x540b, lsl 16
	movk	x0, 0x2, lsl 32
	cmp	x1, x0
	ble	L112
	.loc 1 639 33
	bl	_ada__calendar__clock
LEHE17:
	.loc 1 639 33 is_stmt 0 discriminator 2
	str	x0, [x29, 4720]
LBB82:
	add	x0, x29, 3968
	mov	x8, x0
LEHB18:
	bl	_system__secondary_stack__ss_mark
	.loc 1 645 41 is_stmt 1
	ldr	s30, [x29, 4732]
	movi	v31.2s, 0xcf, lsl 24
	fcmp	s30, s31
	blt	L113
	.loc 1 645 41 is_stmt 0 discriminator 2
	ldr	s30, [x29, 4732]
	movi	v31.2s, 0x4f, lsl 24
	fcmp	s30, s31
	bpl	L113
	b	L207
L113:
	.loc 1 645 41 discriminator 3
	mov	w1, 645
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L207:
	.loc 1 641 32 is_stmt 1
	add	x0, x29, 3968
	mov	x16, x0
	bl	_smc_daemon__get_day_str.9
	mov	x20, x0
	mov	x21, x1
	.loc 1 642 32
	add	x0, x29, 3968
	mov	x16, x0
	bl	_smc_daemon__get_time_str.10
	mov	x2, x0
	mov	x3, x1
	.loc 1 640 19
	ldr	s31, [x29, 4732]
	fcmpe	s31, #0.0
	bge	L196
	b	L208
L196:
	.loc 1 640 19 is_stmt 0 discriminator 1
	ldr	s30, [x29, 4732]
	mvni	v31.2s, 0xc1, lsl 24
	fadd	s31, s30, s31
	fcvtzs	w1, s31
	b	L118
L208:
	.loc 1 640 19 discriminator 2
	ldr	s30, [x29, 4732]
	mvni	v31.2s, 0xc1, lsl 24
	fsub	s31, s30, s31
	fcvtzs	w1, s31
L118:
	.loc 1 640 19 discriminator 4
	ldr	s31, [x29, 4768]
	mov	w0, 53248
	movk	w0, 0x461d, lsl 16
	fmov	s30, w0
	fcmpe	s31, s30
	bge	L197
	b	L209
L197:
	.loc 1 640 19 discriminator 5
	mov	w0, 1
	b	L121
L209:
	.loc 1 640 19 discriminator 6
	mov	w0, 0
L121:
	.loc 1 640 19 discriminator 8
	ldr	s30, [x29, 4164]
	ldr	s31, [x29, 4160]
	fsub	s31, s30, s31
	fmov	s4, s31
	ldr	s3, [x29, 4776]
	mov	w6, w0
	mov	w5, 1
	ldr	s2, [x29, 4772]
	mov	w4, w1
	ldr	s1, [x29, 4760]
	ldr	s0, [x29, 4540]
	mov	x0, x20
	mov	x1, x21
	bl	_smc_files__log_telemetry_csv
LEHE18:
	.loc 1 640 0 is_stmt 1 discriminator 10
	mov	w19, 1
L160:
	.loc 1 640 0 is_stmt 0 discriminator 11
	add	x0, x29, 3968
	mov	x16, x0
LEHB19:
	bl	_smc_daemon__L_9__B433b___finalizer.11
LEHE19:
	.loc 1 640 0 discriminator 13
	cmp	w19, 1
	bne	L122
	.loc 1 640 0
	mov	w0, 1
L162:
	.loc 1 640 0 discriminator 14
	cmp	w0, 1
	bne	L123
L112:
LBE82:
	.loc 1 655 17 is_stmt 1
	ldr	s31, [x29, 4540]
	str	s31, [x29, 4780]
LEHB20:
LBB83:
	.loc 1 659 67
	bl	_ada__real_time__clock
	.loc 1 659 67 is_stmt 0 discriminator 2
	ldr	x1, [x29, 4424]
	bl	_ada__real_time__Osubtract__2
	.loc 1 659 67 discriminator 4
	str	x0, [x29, 4328]
	.loc 1 660 47 is_stmt 1
	mov	w0, 100
	bl	_ada__real_time__milliseconds
	.loc 1 660 47 is_stmt 0 discriminator 2
	str	x0, [x29, 4320]
	.loc 1 662 10 is_stmt 1
	ldr	x1, [x29, 4328]
	ldr	x0, [x29, 4320]
	cmp	x1, x0
	bge	L125
	.loc 1 663 13
	ldr	x1, [x29, 4328]
	ldr	x0, [x29, 4320]
	bl	_ada__real_time__Osubtract__3
	.loc 1 663 13 is_stmt 0 discriminator 2
	bl	_ada__real_time__to_duration
	.loc 1 663 13 discriminator 4
	bl	_ada__calendar__delays__delay_for
LBE83:
LBE28:
	.loc 1 666 12 is_stmt 1
	b	L125
L26:
LBB86:
	.loc 1 669 4
	adrp	x0, lC149@PAGE
	add	x0, x0, lC149@PAGEOFF;
	str	x0, [x29, 2144]
	adrp	x0, lC11@PAGE
	add	x0, x0, lC11@PAGEOFF;
	str	x0, [x29, 2152]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 96]
	bl	_ada__text_io__put_line__2
LBE86:
	.loc 1 672 4
	add	x0, x29, 4096
	ldrb	w0, [x0, 603]
	cmp	w0, 0
	beq	L126
LBB87:
	.loc 1 675 10
	add	x0, x29, 3488
	str	x0, [x29, 2160]
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	str	x0, [x29, 2168]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 112]
	bl	_system__strings__string_listIP
	.loc 1 677 22
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 677 22 is_stmt 0 discriminator 2
	adrp	x0, lC39@PAGE
	add	x0, x0, lC39@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 2176]
	mov	x0, x3
	str	x0, [x29, 2184]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 128]
	.loc 1 677 19 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -96]
	.loc 1 678 22
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 678 22 is_stmt 0 discriminator 2
	adrp	x0, lC40@PAGE
	add	x0, x0, lC40@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 2192]
	mov	x0, x3
	str	x0, [x29, 2200]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 144]
	.loc 1 678 19 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -80]
	.loc 1 679 22
	mov	x0, 24
	bl	___gnat_malloc
	mov	x4, x0
	.loc 1 679 22 is_stmt 0 discriminator 2
	adrp	x0, lC41@PAGE
	add	x0, x0, lC41@PAGEOFF;
	mov	x3, x4
	mov	x2, x0
	ldp	x0, x1, [x2]
	ldr	x2, [x2, 16]
	stp	x0, x1, [x3]
	str	x2, [x3, 16]
	add	x0, x4, 8
	str	x0, [x29, 2208]
	mov	x0, x4
	str	x0, [x29, 2216]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 160]
	.loc 1 679 19 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -64]
LBB88:
	.loc 1 680 21
	adrp	x0, lC150@PAGE
	add	x0, x0, lC150@PAGEOFF;
	str	x0, [x29, 2224]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2232]
	add	x0, x29, 3488
	str	x0, [x29, 2240]
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	str	x0, [x29, 2248]
	add	x0, x29, 2048
	ldp	x2, x3, [x0, 192]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 176]
	bl	_system__os_lib__spawn
	.loc 1 680 21 is_stmt 0 discriminator 2
	add	x1, x29, 4096
	strb	w0, [x1, 223]
LBE88:
	.loc 1 681 21 is_stmt 1
	ldr	x0, [x29, 3488]
	cmp	x0, 0
	beq	L127
	.loc 1 681 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 3488]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 681 21 discriminator 3
	str	xzr, [x29, 3488]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 3496]
L127:
	.loc 1 682 21 is_stmt 1
	ldr	x0, [x29, 3504]
	cmp	x0, 0
	beq	L128
	.loc 1 682 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 3504]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 682 21 discriminator 3
	str	xzr, [x29, 3504]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 3512]
L128:
	.loc 1 683 21 is_stmt 1
	ldr	x0, [x29, 3520]
	cmp	x0, 0
	beq	L129
	.loc 1 683 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 3520]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 683 21 discriminator 3
	str	xzr, [x29, 3520]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 3528]
L129:
LBB89:
	.loc 1 684 10 is_stmt 1
	adrp	x0, lC151@PAGE
	add	x0, x0, lC151@PAGEOFF;
	str	x0, [x29, 2256]
	adrp	x0, lC4@PAGE
	add	x0, x0, lC4@PAGEOFF;
	str	x0, [x29, 2264]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 208]
	bl	_ada__text_io__put_line__2
L126:
LBE89:
LBE87:
LBB90:
	.loc 1 691 7
	add	x0, x29, 3488
	str	x0, [x29, 2272]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 2280]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 224]
	bl	_system__strings__string_listIP
	.loc 1 693 19
	mov	x0, 16
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 693 19 is_stmt 0 discriminator 2
	mov	w0, 1
	str	w0, [x3]
	mov	w0, 5
	str	w0, [x3, 4]
	add	x1, x3, 8
	adrp	x0, lC152@PAGE
	add	x0, x0, lC152@PAGEOFF;
	mov	x2, x1
	ldr	w1, [x0]
	ldrb	w0, [x0, 4]
	str	w1, [x2]
	strb	w0, [x2, 4]
	add	x0, x3, 8
	str	x0, [x29, 2288]
	mov	x0, x3
	str	x0, [x29, 2296]
	add	x0, x29, 2048
	ldp	x0, x1, [x0, 240]
	.loc 1 693 16 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -96]
	.loc 1 694 19
	mov	x0, 24
	bl	___gnat_malloc
	mov	x4, x0
	.loc 1 694 19 is_stmt 0 discriminator 2
	adrp	x0, lC43@PAGE
	add	x0, x0, lC43@PAGEOFF;
	mov	x3, x4
	mov	x2, x0
	ldp	x0, x1, [x2]
	ldr	x2, [x2, 16]
	stp	x0, x1, [x3]
	str	x2, [x3, 16]
	add	x0, x4, 8
	str	x0, [x29, 2304]
	mov	x0, x4
	str	x0, [x29, 2312]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -256]
	.loc 1 694 16 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -80]
LBB91:
	.loc 1 695 18
	adrp	x0, lC150@PAGE
	add	x0, x0, lC150@PAGEOFF;
	str	x0, [x29, 2320]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2328]
	add	x0, x29, 3488
	str	x0, [x29, 2336]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 2344]
	add	x0, x29, 2560
	ldp	x2, x3, [x0, -224]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -240]
	bl	_system__os_lib__spawn
	.loc 1 695 18 is_stmt 0 discriminator 2
	add	x1, x29, 4096
	strb	w0, [x1, 222]
LBE91:
	.loc 1 696 18 is_stmt 1
	ldr	x0, [x29, 3488]
	cmp	x0, 0
	beq	L130
	.loc 1 696 18 is_stmt 0 discriminator 1
	ldr	x0, [x29, 3488]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 696 18 discriminator 3
	str	xzr, [x29, 3488]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 3496]
L130:
	.loc 1 697 18 is_stmt 1
	ldr	x0, [x29, 3504]
	cmp	x0, 0
	beq	L131
	.loc 1 697 18 is_stmt 0 discriminator 1
	ldr	x0, [x29, 3504]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 697 18 discriminator 3
	str	xzr, [x29, 3504]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 3512]
L131:
LBE90:
LBB92:
	.loc 1 702 7 is_stmt 1
	add	x0, x29, 3488
	str	x0, [x29, 2352]
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	str	x0, [x29, 2360]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -208]
	bl	_system__strings__string_listIP
	.loc 1 704 19
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 704 19 is_stmt 0 discriminator 2
	adrp	x0, lC44@PAGE
	add	x0, x0, lC44@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 2368]
	mov	x0, x3
	str	x0, [x29, 2376]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -192]
	.loc 1 704 16 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -96]
	.loc 1 705 19
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 705 19 is_stmt 0 discriminator 2
	adrp	x0, lC45@PAGE
	add	x0, x0, lC45@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 2384]
	mov	x0, x3
	str	x0, [x29, 2392]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -176]
	.loc 1 705 16 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -80]
	.loc 1 706 19
	mov	x0, 72
	bl	___gnat_malloc
	mov	x2, x0
	.loc 1 706 19 is_stmt 0 discriminator 2
	adrp	x0, lC46@PAGE
	add	x0, x0, lC46@PAGEOFF;
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
	str	x0, [x29, 2400]
	mov	x0, x2
	str	x0, [x29, 2408]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -160]
	.loc 1 706 16 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -64]
LBB93:
	.loc 1 707 18
	adrp	x0, lC106@PAGE
	add	x0, x0, lC106@PAGEOFF;
	str	x0, [x29, 2416]
	adrp	x0, lC16@PAGE
	add	x0, x0, lC16@PAGEOFF;
	str	x0, [x29, 2424]
	add	x0, x29, 3488
	str	x0, [x29, 2432]
	adrp	x0, lC13@PAGE
	add	x0, x0, lC13@PAGEOFF;
	str	x0, [x29, 2440]
	add	x0, x29, 2560
	ldp	x2, x3, [x0, -128]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -144]
	bl	_system__os_lib__spawn
	.loc 1 707 18 is_stmt 0 discriminator 2
	add	x1, x29, 4096
	strb	w0, [x1, 221]
LBE93:
LBB94:
	.loc 1 708 11 is_stmt 1
	mov	w0, 1
	str	w0, [x29, 4668]
L134:
	.loc 1 708 11 is_stmt 0 discriminator 10
	ldr	w0, [x29, 4668]
	cmp	w0, 3
	bgt	L132
	.loc 1 708 43 is_stmt 1 discriminator 2
	ldrsw	x0, [x29, 4668]
	sub	x0, x0, #1
	lsl	x0, x0, 4
	add	x1, x29, 3488
	ldr	x0, [x1, x0]
	.loc 1 708 43 is_stmt 0 discriminator 3
	cmp	x0, 0
	beq	L133
	.loc 1 708 43 discriminator 4
	ldrsw	x0, [x29, 4668]
	sub	x0, x0, #1
	lsl	x0, x0, 4
	add	x1, x29, 3488
	ldr	x0, [x1, x0]
	.loc 1 708 43 discriminator 6
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 708 43 discriminator 8
	ldrsw	x0, [x29, 4668]
	sub	x1, x0, #1
	lsl	x1, x1, 4
	add	x2, x29, 3488
	str	xzr, [x2, x1]
	.loc 1 708 43 discriminator 9
	sub	x0, x0, #1
	lsl	x0, x0, 4
	add	x1, x29, 3496
	adrp	x2, lC17@PAGE
	add	x2, x2, lC17@PAGEOFF;
	str	x2, [x1, x0]
L133:
	.loc 1 708 11 is_stmt 1 discriminator 5
	ldr	w0, [x29, 4668]
	add	w0, w0, 1
	str	w0, [x29, 4668]
	.loc 1 708 69
	b	L134
L132:
LBE94:
LBE92:
LBB95:
	.loc 1 710 4
	adrp	x0, lC153@PAGE
	add	x0, x0, lC153@PAGEOFF;
	str	x0, [x29, 2448]
	adrp	x0, lC47@PAGE
	add	x0, x0, lC47@PAGEOFF;
	str	x0, [x29, 2456]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -112]
	bl	_ada__text_io__put_line__2
LBE95:
LBB96:
	.loc 1 714 7
	add	x0, x29, 3488
	str	x0, [x29, 2464]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 2472]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -96]
	bl	_system__strings__string_listIP
	.loc 1 716 19
	mov	x0, 20
	bl	___gnat_malloc
	.loc 1 716 19 is_stmt 0 discriminator 2
	adrp	x1, lC48@PAGE
	add	x2, x1, lC48@PAGEOFF;
	mov	x1, x0
	mov	x4, x2
	ldp	x2, x3, [x4]
	ldr	w4, [x4, 16]
	stp	x2, x3, [x1]
	str	w4, [x1, 16]
	add	x1, x0, 8
	str	x1, [x29, 2480]
	str	x0, [x29, 2488]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -80]
	.loc 1 716 16 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -96]
	.loc 1 717 19
	mov	x0, 12
	bl	___gnat_malloc
	.loc 1 717 19 is_stmt 0 discriminator 2
	adrp	x1, lC49@PAGE
	add	x2, x1, lC49@PAGEOFF;
	mov	x1, x0
	ldr	x3, [x2]
	ldr	w2, [x2, 8]
	str	x3, [x1]
	str	w2, [x1, 8]
	add	x1, x0, 8
	str	x1, [x29, 2496]
	str	x0, [x29, 2504]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -64]
	.loc 1 717 16 is_stmt 1 discriminator 2
	add	x2, x29, 3584
	stp	x0, x1, [x2, -80]
	.loc 1 718 7
	add	x0, x29, 3488
	str	x0, [x29, 2512]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 2520]
	add	x0, x29, 3968
	mov	x16, x0
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -48]
	bl	_smc_daemon__run_power_command.12
	.loc 1 719 18
	ldr	x0, [x29, 3488]
	cmp	x0, 0
	beq	L135
	.loc 1 719 18 is_stmt 0 discriminator 1
	ldr	x0, [x29, 3488]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 719 18 discriminator 3
	str	xzr, [x29, 3488]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 3496]
L135:
	.loc 1 720 18 is_stmt 1
	ldr	x0, [x29, 3504]
	cmp	x0, 0
	beq	L136
	.loc 1 720 18 is_stmt 0 discriminator 1
	ldr	x0, [x29, 3504]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 720 18 discriminator 3
	str	xzr, [x29, 3504]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 3512]
L136:
LBE96:
	.loc 1 724 17 is_stmt 1
	ldr	w0, [x29, 4104]
	ldr	x1, [x29, 4040]
	mov	x2, x1
	ldr	x1, [x29, 4640]
	bl	_smc_helper_write_key_hex
	.loc 1 724 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
	.loc 1 725 17 is_stmt 1
	ldr	w0, [x29, 4104]
	ldr	x1, [x29, 4040]
	mov	x2, x1
	ldr	x1, [x29, 4632]
	bl	_smc_helper_write_key_hex
	.loc 1 725 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
LBB97:
	.loc 1 726 4 is_stmt 1
	adrp	x0, lC154@PAGE
	add	x0, x0, lC154@PAGEOFF;
	str	x0, [x29, 2528]
	adrp	x0, lC50@PAGE
	add	x0, x0, lC50@PAGEOFF;
	str	x0, [x29, 2536]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -32]
	bl	_ada__text_io__put_line__2
LBE97:
	.loc 1 729 17
	ldr	w0, [x29, 4104]
	bl	_smc_helper_close
	.loc 1 729 17 is_stmt 0 discriminator 2
	str	w0, [x29, 4100]
LBB98:
	.loc 1 730 4 is_stmt 1
	adrp	x0, lC155@PAGE
	add	x0, x0, lC155@PAGEOFF;
	str	x0, [x29, 2544]
	adrp	x0, lC51@PAGE
	add	x0, x0, lC51@PAGEOFF;
	str	x0, [x29, 2552]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, -16]
	bl	_ada__text_io__put_line__2
LBE98:
	.loc 1 733 4
	ldr	x0, [x29, 4656]
	bl	_interfaces__c__strings__free
	.loc 1 733 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4656]
	.loc 1 734 4 is_stmt 1
	ldr	x0, [x29, 4648]
	bl	_interfaces__c__strings__free
	.loc 1 734 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4648]
	.loc 1 735 4 is_stmt 1
	ldr	x0, [x29, 4640]
	bl	_interfaces__c__strings__free
	.loc 1 735 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4640]
	.loc 1 736 4 is_stmt 1
	ldr	x0, [x29, 4632]
	bl	_interfaces__c__strings__free
	.loc 1 736 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4632]
	.loc 1 737 4 is_stmt 1
	ldr	x0, [x29, 4624]
	bl	_interfaces__c__strings__free
	.loc 1 737 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4624]
	.loc 1 738 4 is_stmt 1
	ldr	x0, [x29, 4616]
	bl	_interfaces__c__strings__free
	.loc 1 738 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4616]
	.loc 1 739 4 is_stmt 1
	ldr	x0, [x29, 4608]
	bl	_interfaces__c__strings__free
	.loc 1 739 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4608]
	.loc 1 740 4 is_stmt 1
	ldr	x0, [x29, 4600]
	bl	_interfaces__c__strings__free
	.loc 1 740 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4600]
	.loc 1 741 4 is_stmt 1
	ldr	x0, [x29, 4592]
	bl	_interfaces__c__strings__free
	.loc 1 741 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4592]
	.loc 1 742 4 is_stmt 1
	ldr	x0, [x29, 4584]
	bl	_interfaces__c__strings__free
	.loc 1 742 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4584]
	.loc 1 743 4 is_stmt 1
	ldr	x0, [x29, 4576]
	bl	_interfaces__c__strings__free
	.loc 1 743 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4576]
	.loc 1 744 4 is_stmt 1
	ldr	x0, [x29, 4568]
	bl	_interfaces__c__strings__free
	.loc 1 744 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4568]
	.loc 1 745 4 is_stmt 1
	ldr	x0, [x29, 4080]
	bl	_interfaces__c__strings__free
	.loc 1 745 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4080]
	.loc 1 746 4 is_stmt 1
	ldr	x0, [x29, 4064]
	bl	_interfaces__c__strings__free
	.loc 1 746 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4064]
	.loc 1 747 4 is_stmt 1
	ldr	x0, [x29, 4072]
	bl	_interfaces__c__strings__free
	.loc 1 747 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4072]
	.loc 1 748 4 is_stmt 1
	ldr	x0, [x29, 4040]
	bl	_interfaces__c__strings__free
	.loc 1 748 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4040]
	.loc 1 749 4 is_stmt 1
	ldr	x0, [x29, 4560]
	bl	_interfaces__c__strings__free
	.loc 1 749 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4560]
	.loc 1 750 4 is_stmt 1
	ldr	x0, [x29, 4552]
	bl	_interfaces__c__strings__free
	.loc 1 750 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4552]
	.loc 1 751 4 is_stmt 1
	ldr	x0, [x29, 4544]
	bl	_interfaces__c__strings__free
	.loc 1 751 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4544]
	.loc 1 752 4 is_stmt 1
	ldr	x0, [x29, 4056]
	bl	_interfaces__c__strings__free
	.loc 1 752 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4056]
	.loc 1 753 4 is_stmt 1
	ldr	x0, [x29, 4032]
	bl	_interfaces__c__strings__free
	.loc 1 753 4 is_stmt 0 discriminator 2
	str	x0, [x29, 4032]
	.loc 1 755 4 is_stmt 1
	add	x0, x29, 4096
	ldrb	w0, [x0, 603]
	cmp	w0, 0
	beq	L137
	.loc 1 756 18
	ldr	x0, [x29, 4128]
	cmp	x0, 0
	beq	L137
	.loc 1 756 18 is_stmt 0 discriminator 1
	ldr	x0, [x29, 4128]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 756 18 discriminator 3
	str	xzr, [x29, 4128]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 4136]
L137:
LBB99:
	.loc 1 759 13 is_stmt 1
	adrp	x0, lC156@PAGE
	add	x0, x0, lC156@PAGEOFF;
	str	x0, [x29, 2560]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 2568]
	adrp	x0, lC157@PAGE
	add	x0, x0, lC157@PAGEOFF;
	str	x0, [x29, 2576]
	adrp	x0, lC30@PAGE
	add	x0, x0, lC30@PAGEOFF;
	str	x0, [x29, 2584]
	add	x0, x29, 2560
	ldp	x2, x3, [x0, 16]
	add	x0, x29, 2560
	ldp	x0, x1, [x0]
	bl	_smc_files__notify_user
LBE99:
LBB100:
	.loc 1 760 4
	adrp	x0, lC158@PAGE
	add	x0, x0, lC158@PAGEOFF;
	str	x0, [x29, 2592]
	adrp	x0, lC4@PAGE
	add	x0, x0, lC4@PAGEOFF;
	str	x0, [x29, 2600]
	add	x0, x29, 2560
	ldp	x0, x1, [x0, 32]
	bl	_ada__text_io__put_line__2
LEHE20:
LBE100:
	.loc 1 762 5
	mov	w19, 0
L163:
	.loc 1 762 0 discriminator 1
	add	x0, x29, 3968
	mov	x16, x0
LEHB21:
	bl	_smc_daemon___finalizer.13
LEHE21:
	.loc 1 762 0 is_stmt 0 discriminator 3
	cmp	w19, 1
	beq	L138
	mov	w0, 0
L165:
	.loc 1 762 5 is_stmt 1
	cmp	w0, 1
	beq	L139
	mov	w19, 0
L167:
	.loc 1 16 1
	bl	___gcc_nested_func_ptr_deleted
	.loc 1 16 1 is_stmt 0 discriminator 5
	cmp	w19, 1
	beq	L140
	.loc 1 762 5 is_stmt 1
	b	L210
L170:
	str	x0, [x29, 136]
	mov	w19, 0
LBB101:
	.loc 1 359 15
	b	L143
L6:
	ldr	x0, [x29, 136]
	str	x0, [x29, 3472]
	b	L144
L171:
	str	x0, [x29, 3472]
L144:
	mov	w0, 0
	b	L145
L7:
	ldr	x0, [x29, 3472]
	str	x0, [x29, 3480]
	b	L146
L172:
	str	x0, [x29, 128]
	mov	w19, 0
LBE101:
LBB102:
	.loc 1 360 15
	b	L148
L8:
	ldr	x0, [x29, 128]
	str	x0, [x29, 168]
	b	L149
L173:
	str	x0, [x29, 168]
L149:
	mov	w0, 0
	b	L150
L9:
	ldr	x0, [x29, 168]
	str	x0, [x29, 3480]
	b	L146
L175:
LBE102:
LBB103:
LBB21:
	.loc 1 404 0 discriminator 13
	mov	x2, x0
	mov	x0, x1
LEHB22:
LEHE22:
	mov	sp, x19
	b	L152
L174:
LBE21:
LBE103:
	.loc 1 412 7
	mov	x2, x0
	mov	x0, x1
L152:
	cmp	x0, 1
	beq	L153
	str	x2, [x29, 3480]
	b	L146
L153:
LBB104:
	.loc 1 412 7 is_stmt 0 discriminator 1
	str	x2, [x29, 4448]
	.loc 1 412 7 discriminator 2
	ldr	x0, [x29, 4448]
	bl	___gnat_begin_handler_v1
	str	x0, [x29, 4440]
LBB22:
	.loc 1 413 10 is_stmt 1
	adrp	x0, lC159@PAGE
	add	x0, x0, lC159@PAGEOFF;
	str	x0, [x29, 928]
	adrp	x0, lC22@PAGE
	add	x0, x0, lC22@PAGEOFF;
	str	x0, [x29, 936]
	add	x0, x29, 1024
	ldp	x0, x1, [x0, -96]
LEHB23:
	bl	_ada__text_io__put_line__2
LEHE23:
LBE22:
	.loc 1 412 7
	mov	x2, 0
	ldr	x1, [x29, 4440]
	ldr	x0, [x29, 4448]
LEHB24:
	bl	___gnat_end_handler_v1
	b	L21
L176:
	mov	x19, x0
	str	x19, [x29, 4432]
	.loc 1 412 7 is_stmt 0 discriminator 5
	ldr	x2, [x29, 4432]
	ldr	x1, [x29, 4440]
	ldr	x0, [x29, 4448]
	bl	___gnat_end_handler_v1
LEHE24:
	str	x19, [x29, 3480]
	b	L146
L177:
	str	x0, [x29, 120]
	mov	w19, 0
LBE104:
LBB105:
LBB84:
LBB53:
	.loc 1 534 13 is_stmt 1
	b	L156
L59:
	ldr	x0, [x29, 120]
	str	x0, [x29, 160]
	b	L157
L178:
	str	x0, [x29, 160]
L157:
	mov	w0, 0
	b	L158
L60:
	ldr	x0, [x29, 160]
	str	x0, [x29, 3480]
	b	L146
L179:
	str	x0, [x29, 112]
	mov	w19, 0
LBE53:
LBE84:
LBB85:
	.loc 1 640 19
	b	L160
L122:
	ldr	x0, [x29, 112]
	str	x0, [x29, 152]
	b	L161
L180:
	str	x0, [x29, 152]
L161:
	mov	w0, 0
	b	L162
L123:
	ldr	x0, [x29, 152]
	str	x0, [x29, 3480]
	b	L146
L169:
LBE85:
LBE105:
LBB106:
	.loc 1 381 7
	str	x0, [x29, 3480]
L146:
	mov	w19, 1
LBE106:
	.loc 1 16 1
	b	L163
L138:
	ldr	x0, [x29, 3480]
	str	x0, [x29, 144]
	b	L164
L181:
	str	x0, [x29, 144]
L164:
	mov	w0, 1
	b	L165
L139:
	ldr	x0, [x29, 144]
	str	x0, [x29, 104]
L168:
	mov	w19, 1
	b	L167
L140:
	ldr	x0, [x29, 104]
LEHB25:
	bl	__Unwind_Resume
L210:
	.loc 1 762 5
LEHE25:
	mov	sp, x29
LCFI8:
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	mov	x12, 4784
	add	sp, sp, x12
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
	.uleb128 L169-LFB1
	.uleb128 0
	.uleb128 LEHB2-LFB1
	.uleb128 LEHE2-LEHB2
	.uleb128 L170-LFB1
	.uleb128 0
	.uleb128 LEHB3-LFB1
	.uleb128 LEHE3-LEHB3
	.uleb128 L171-LFB1
	.uleb128 0
	.uleb128 LEHB4-LFB1
	.uleb128 LEHE4-LEHB4
	.uleb128 L169-LFB1
	.uleb128 0
	.uleb128 LEHB5-LFB1
	.uleb128 LEHE5-LEHB5
	.uleb128 L172-LFB1
	.uleb128 0
	.uleb128 LEHB6-LFB1
	.uleb128 LEHE6-LEHB6
	.uleb128 L173-LFB1
	.uleb128 0
	.uleb128 LEHB7-LFB1
	.uleb128 LEHE7-LEHB7
	.uleb128 L169-LFB1
	.uleb128 0
	.uleb128 LEHB8-LFB1
	.uleb128 LEHE8-LEHB8
	.uleb128 L174-LFB1
	.uleb128 0x3
	.uleb128 LEHB9-LFB1
	.uleb128 LEHE9-LEHB9
	.uleb128 L175-LFB1
	.uleb128 0x3
	.uleb128 LEHB10-LFB1
	.uleb128 LEHE10-LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB11-LFB1
	.uleb128 LEHE11-LEHB11
	.uleb128 L174-LFB1
	.uleb128 0x3
	.uleb128 LEHB12-LFB1
	.uleb128 LEHE12-LEHB12
	.uleb128 L169-LFB1
	.uleb128 0
	.uleb128 LEHB13-LFB1
	.uleb128 LEHE13-LEHB13
	.uleb128 L177-LFB1
	.uleb128 0
	.uleb128 LEHB14-LFB1
	.uleb128 LEHE14-LEHB14
	.uleb128 L178-LFB1
	.uleb128 0
	.uleb128 LEHB15-LFB1
	.uleb128 LEHE15-LEHB15
	.uleb128 L169-LFB1
	.uleb128 0
	.uleb128 LEHB16-LFB1
	.uleb128 LEHE16-LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB17-LFB1
	.uleb128 LEHE17-LEHB17
	.uleb128 L169-LFB1
	.uleb128 0
	.uleb128 LEHB18-LFB1
	.uleb128 LEHE18-LEHB18
	.uleb128 L179-LFB1
	.uleb128 0
	.uleb128 LEHB19-LFB1
	.uleb128 LEHE19-LEHB19
	.uleb128 L180-LFB1
	.uleb128 0
	.uleb128 LEHB20-LFB1
	.uleb128 LEHE20-LEHB20
	.uleb128 L169-LFB1
	.uleb128 0
	.uleb128 LEHB21-LFB1
	.uleb128 LEHE21-LEHB21
	.uleb128 L181-LFB1
	.uleb128 0
	.uleb128 LEHB22-LFB1
	.uleb128 LEHE22-LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB23-LFB1
	.uleb128 LEHE23-LEHB23
	.uleb128 L176-LFB1
	.uleb128 0
	.uleb128 LEHB24-LFB1
	.uleb128 LEHE24-LEHB24
	.uleb128 L169-LFB1
	.uleb128 0
	.uleb128 LEHB25-LFB1
	.uleb128 LEHE25-LEHB25
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
	.word	8
	.align	2
lC3:
	.word	1
	.word	1
	.align	2
lC4:
	.word	1
	.word	50
	.align	2
lC5:
	.word	1
	.word	84
	.align	2
lC6:
	.word	1
	.word	62
	.align	2
lC7:
	.word	1
	.word	7
	.align	2
lC8:
	.word	1
	.word	49
	.align	2
lC10:
	.word	1
	.word	68
	.align	2
lC11:
	.word	1
	.word	57
	.align	2
lC12:
	.word	1
	.word	54
	.align	2
lC13:
	.word	1
	.word	3
	.align	3
lC105:
	.ascii "unload"
	.align	2
lC14:
	.word	1
	.word	2
	.ascii "-w"
	.space 2
	.align	2
lC15:
	.word	1
	.word	61
	.ascii "/System/Library/LaunchDaemons/com.apple.thermalmonitord.plist"
	.space 3
	.align	2
lC16:
	.word	1
	.word	14
	.align	2
lC17:
	.space 8
	.align	2
lC19:
	.word	1
	.word	60
	.align	3
lC108:
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/ml_venv/bin/python3"
	.align	3
lC109:
	.ascii "/usr/local/smcSystemDemandNow/ml_venv/bin/python3"
	.align	3
lC110:
	.ascii "/opt/homebrew/bin/python3"
	.align	2
lC20:
	.word	1
	.word	64
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/python/inference_ane.py"
	.align	2
lC21:
	.word	1
	.word	55
	.align	2
lC23:
	.word	1
	.word	72
	.align	2
lC24:
	.word	1
	.word	12
	.align	2
lC25:
	.word	1
	.word	75
	.align	2
lC26:
	.word	1
	.word	58
	.align	2
lC27:
	.word	1
	.word	5
	.align	2
lC28:
	.word	1
	.word	97
	.align	2
lC29:
	.word	1
	.word	9
	.align	2
lC30:
	.word	1
	.word	66
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
	.word	27
	.align	2
lC34:
	.word	1
	.word	30
	.align	2
lC35:
	.word	1
	.word	10
	.align	2
lC36:
	.word	1
	.word	29
	.align	2
lC38:
	.word	1
	.word	34
	.align	2
lC22:
	.word	1
	.word	85
	.align	2
lC39:
	.word	1
	.word	2
	.ascii "-9"
	.space 2
	.align	2
lC40:
	.word	1
	.word	2
	.ascii "-f"
	.space 2
	.align	2
lC41:
	.word	1
	.word	16
	.ascii "inference_ane.py"
	.align	2
lC42:
	.word	1
	.word	2
	.align	3
lC152:
	.ascii "-CONT"
	.align	2
lC43:
	.word	1
	.word	15
	.ascii "thermalmonitord"
	.space 1
	.align	2
lC44:
	.word	1
	.word	4
	.ascii "load"
	.align	2
lC45:
	.word	1
	.word	2
	.ascii "-w"
	.space 2
	.align	2
lC46:
	.word	1
	.word	61
	.ascii "/System/Library/LaunchDaemons/com.apple.thermalmonitord.plist"
	.space 3
	.align	2
lC47:
	.word	1
	.word	79
	.align	2
lC48:
	.word	1
	.word	9
	.ascii "thermaldp"
	.space 3
	.align	2
lC49:
	.word	1
	.word	1
	.ascii "0"
	.space 3
	.align	2
lC50:
	.word	1
	.word	64
	.align	2
lC51:
	.word	1
	.word	48
	.text
	.align	2
_smc_daemon__float_to_hex__to_hex_char.5:
LFB4:
	.loc 1 54 7
	stp	x29, x30, [sp, -32]!
LCFI10:
	mov	x29, sp
LCFI11:
	strb	w0, [x29, 31]
	str	x16, [x29, 16]
	.loc 1 56 17
	ldrb	w0, [x29, 31]
	cmp	w0, 15
	bls	L212
	.loc 1 56 17 is_stmt 0 discriminator 1
	mov	w1, 56
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Index_Check
L212:
	.loc 1 56 38 is_stmt 1 discriminator 2
	ldrb	w0, [x29, 31]
	add	w0, w0, 1
	sxtw	x0, w0
	.loc 1 56 10 discriminator 2
	adrp	x1, _hex_map.14@PAGE
	add	x1, x1, _hex_map.14@PAGEOFF;
	add	x0, x1, x0
	ldrsb	w0, [x0, -1]
	.loc 1 57 11
	ldp	x29, x30, [sp], 32
LCFI12:
	ret
LFE4:
	.align	2
_smc_daemon__float_to_hex.4:
LFB3:
	.loc 1 46 4
	stp	x29, x30, [sp, -80]!
LCFI13:
	mov	x29, sp
LCFI14:
	stp	x20, x21, [sp, 16]
LCFI15:
	str	s0, [x29, 44]
	str	x16, [x29, 32]
	.loc 1 46 4
	add	x0, x29, 80
	.loc 1 46 4 is_stmt 0 discriminator 1
	str	x0, [x29, 56]
	.loc 1 59 12 is_stmt 1
	ldr	w0, [x29, 44]
	str	w0, [x29, 76]
	.loc 1 60 30
	ldr	w0, [x29, 76]
	and	w0, w0, 255
	cmp	w0, 255
	bls	L215
	.loc 1 60 30 is_stmt 0 discriminator 1
	mov	w1, 60
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L215:
	.loc 1 60 10 is_stmt 1 discriminator 2
	strb	w0, [x29, 75]
	.loc 1 61 25
	ldr	w0, [x29, 76]
	lsr	w0, w0, 8
	.loc 1 61 47
	and	w0, w0, 255
	cmp	w0, 255
	bls	L216
	.loc 1 61 47 is_stmt 0 discriminator 1
	mov	w1, 61
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L216:
	.loc 1 61 10 is_stmt 1 discriminator 2
	strb	w0, [x29, 74]
	.loc 1 62 25
	ldr	w0, [x29, 76]
	lsr	w0, w0, 16
	.loc 1 62 48
	and	w0, w0, 255
	cmp	w0, 255
	bls	L217
	.loc 1 62 48 is_stmt 0 discriminator 1
	mov	w1, 62
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L217:
	.loc 1 62 10 is_stmt 1 discriminator 2
	strb	w0, [x29, 73]
	.loc 1 63 48
	ldr	w0, [x29, 76]
	lsr	w0, w0, 24
	cmp	w0, 255
	bls	L218
	.loc 1 63 48 is_stmt 0 discriminator 1
	mov	w1, 63
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L218:
	.loc 1 63 10 is_stmt 1 discriminator 2
	strb	w0, [x29, 72]
	.loc 1 65 21
	ldrb	w0, [x29, 75]
	lsr	w0, w0, 4
	and	w0, w0, 255
	add	x1, x29, 56
	mov	x16, x1
	bl	_smc_daemon__float_to_hex__to_hex_char.5
	.loc 1 65 18 discriminator 2
	strb	w0, [x29, 64]
	.loc 1 66 21
	ldrb	w0, [x29, 75]
	and	w0, w0, 15
	and	w0, w0, 255
	add	x1, x29, 56
	mov	x16, x1
	bl	_smc_daemon__float_to_hex__to_hex_char.5
	.loc 1 66 18 discriminator 2
	strb	w0, [x29, 65]
	.loc 1 67 21
	ldrb	w0, [x29, 74]
	lsr	w0, w0, 4
	and	w0, w0, 255
	add	x1, x29, 56
	mov	x16, x1
	bl	_smc_daemon__float_to_hex__to_hex_char.5
	.loc 1 67 18 discriminator 2
	strb	w0, [x29, 66]
	.loc 1 68 21
	ldrb	w0, [x29, 74]
	and	w0, w0, 15
	and	w0, w0, 255
	add	x1, x29, 56
	mov	x16, x1
	bl	_smc_daemon__float_to_hex__to_hex_char.5
	.loc 1 68 18 discriminator 2
	strb	w0, [x29, 67]
	.loc 1 69 21
	ldrb	w0, [x29, 73]
	lsr	w0, w0, 4
	and	w0, w0, 255
	add	x1, x29, 56
	mov	x16, x1
	bl	_smc_daemon__float_to_hex__to_hex_char.5
	.loc 1 69 18 discriminator 2
	strb	w0, [x29, 68]
	.loc 1 70 21
	ldrb	w0, [x29, 73]
	and	w0, w0, 15
	and	w0, w0, 255
	add	x1, x29, 56
	mov	x16, x1
	bl	_smc_daemon__float_to_hex__to_hex_char.5
	.loc 1 70 18 discriminator 2
	strb	w0, [x29, 69]
	.loc 1 71 21
	ldrb	w0, [x29, 72]
	lsr	w0, w0, 4
	and	w0, w0, 255
	add	x1, x29, 56
	mov	x16, x1
	bl	_smc_daemon__float_to_hex__to_hex_char.5
	.loc 1 71 18 discriminator 2
	strb	w0, [x29, 70]
	.loc 1 72 21
	ldrb	w0, [x29, 72]
	and	w0, w0, 15
	and	w0, w0, 255
	add	x1, x29, 56
	mov	x16, x1
	bl	_smc_daemon__float_to_hex__to_hex_char.5
	.loc 1 72 18 discriminator 2
	strb	w0, [x29, 71]
	.loc 1 74 7
	mov	x1, 4
	mov	x0, 16
	bl	_system__secondary_stack__ss_allocate
	mov	x1, x0
	.loc 1 74 7 is_stmt 0 discriminator 2
	mov	x0, x1
	mov	w2, 1
	str	w2, [x0]
	mov	w2, 8
	str	w2, [x0, 4]
	ldr	x2, [x29, 64]
	str	x2, [x0, 8]
	mov	x0, x1
	add	x0, x0, 8
	mov	x20, x0
	mov	x0, x1
	mov	x21, x0
	.loc 1 74 7
	mov	x0, x20
	mov	x1, x21
	.loc 1 75 8 is_stmt 1
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 80
LCFI16:
	ret
LFE3:
	.const
	.align	3
lC160:
	.ascii "/usr/sbin/pmset"
	.text
	.align	2
_smc_daemon__run_power_command.12:
LFB5:
	.loc 1 172 4
	stp	x29, x30, [sp, -64]!
LCFI17:
	mov	x29, sp
LCFI18:
	stp	x0, x1, [x29, 32]
	str	x16, [x29, 24]
	.loc 1 172 4
	ldr	x0, [x29, 40]
	ldr	w0, [x0]
	ldr	x1, [x29, 40]
	ldr	w1, [x1, 4]
LBB107:
	cmp	w1, w0
	.loc 1 172 4 is_stmt 0 discriminator 4
	cmp	w1, w0
	blt	L224
	.loc 1 172 4 discriminator 5
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
L224:
	.loc 1 172 4 discriminator 8
	cmp	w1, w0
LBB108:
	.loc 1 175 18 is_stmt 1
	adrp	x0, lC160@PAGE
	add	x6, x0, lC160@PAGEOFF;
	adrp	x0, lC74@PAGE
	add	x7, x0, lC74@PAGEOFF;
	ldp	x2, x3, [x29, 32]
	mov	x0, x6
	mov	x1, x7
	bl	_system__os_lib__spawn
	.loc 1 175 18 is_stmt 0 discriminator 1
	strb	w0, [x29, 63]
LBE108:
	.loc 1 176 8 is_stmt 1
	nop
LBE107:
	ldp	x29, x30, [sp], 64
LCFI19:
	ret
LFE5:
	.const
	.align	2
lC74:
	.word	1
	.word	15
	.text
	.const
	.align	3
lC161:
	.ascii "[DAEMON] Activating Turbo Fans and High Performance Mode... (Trigger: "
	.align	3
lC162:
	.ascii ")"
	.align	3
lC163:
	.ascii "High thermal demand ("
	.align	3
lC164:
	.ascii "). Engaging Turbo Performance profiles."
	.align	3
lC165:
	.ascii "TURBO"
	.text
	.align	2
_smc_daemon__activate_turbo_mode.8:
LFB6:
	.loc 1 178 4
	sub	sp, sp, #624
LCFI20:
	stp	x29, x30, [sp]
LCFI21:
	mov	x29, sp
LCFI22:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI23:
	stp	x0, x1, [x29, 496]
	mov	x19, x16
	str	x16, [x29, 488]
	.loc 1 178 4
	ldr	x0, [x29, 504]
	ldr	w3, [x0]
	ldr	x0, [x29, 504]
	ldr	w2, [x0, 4]
	cmp	w2, w3
	blt	L229
	.loc 1 178 4 is_stmt 0 discriminator 1
	sub	w0, w2, w3
	add	w28, w0, 1
	b	L230
L229:
	.loc 1 178 4 discriminator 2
	mov	w28, 0
L230:
LBB109:
	.loc 1 178 4 discriminator 4
	cmp	w2, w3
	.loc 1 178 4 discriminator 8
	cmp	w2, w3
	blt	L234
	.loc 1 178 4 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x4, x0
	mov	x5, 0
	lsr	x1, x4, 61
	lsl	x7, x5, 3
	mov	x0, x7
	add	x0, x1, x0
	mov	x7, x0
	lsl	x6, x4, 3
L234:
	.loc 1 178 4 discriminator 12
	cmp	w2, w3
	.loc 1 180 22 is_stmt 1
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	.loc 1 180 7 discriminator 1
	cmp	w0, 0
	bne	L245
	.loc 1 184 19
	mov	w1, 1
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__set_turboP
LBB110:
	.loc 1 185 7
	mov	x0, sp
	str	x0, [x29, 480]
	.loc 1 185 99 discriminator 1
	add	w0, w28, 70
	add	w0, w0, 1
	str	w0, [x29, 620]
	ldrsw	x0, [x29, 620]
	str	x0, [x29, 608]
	ldrsw	x0, [x29, 620]
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x25, x21, 3
	mov	x0, x25
	add	x0, x1, x0
	mov	x25, x0
	lsl	x24, x20, 3
	ldrsw	x0, [x29, 620]
	mov	x22, x0
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x27, x23, 3
	mov	x0, x27
	add	x0, x1, x0
	mov	x27, x0
	lsl	x26, x22, 3
	ldrsw	x0, [x29, 620]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	str	x0, [x29, 600]
LBB111:
	.loc 1 185 99 is_stmt 0 discriminator 2
	ldr	x1, [x29, 600]
	str	x1, [x29, 96]
	mov	w0, 1
	str	w0, [x29, 544]
	ldr	w0, [x29, 620]
	str	w0, [x29, 548]
	add	x0, x29, 544
	str	x0, [x29, 104]
	adrp	x0, lC161@PAGE
	add	x1, x0, lC161@PAGEOFF;
	str	x1, [x29, 112]
	adrp	x0, lC65@PAGE
	add	x1, x0, lC65@PAGEOFF;
	str	x1, [x29, 120]
	adrp	x0, lC162@PAGE
	add	x1, x0, lC162@PAGEOFF;
	str	x1, [x29, 128]
	adrp	x0, lC52@PAGE
	add	x1, x0, lC52@PAGEOFF;
	str	x1, [x29, 136]
	ldp	x6, x7, [x29, 128]
	ldp	x4, x5, [x29, 496]
	ldp	x2, x3, [x29, 112]
	ldp	x0, x1, [x29, 96]
	bl	_system__concat_3__str_concat_3
LBE111:
	.loc 1 185 7 is_stmt 1 discriminator 5
	ldr	x1, [x29, 600]
	str	x1, [x29, 144]
	mov	w0, 1
	str	w0, [x29, 552]
	ldr	w0, [x29, 620]
	str	w0, [x29, 556]
	add	x0, x29, 552
	str	x0, [x29, 152]
	ldp	x0, x1, [x29, 144]
	bl	_ada__text_io__put_line__2
	.loc 1 185 0 discriminator 8
	ldr	x0, [x29, 480]
	mov	sp, x0
LBE110:
	.loc 1 188 20
	ldr	w3, [x19, 136]
	ldr	x1, [x19, 112]
	ldr	x0, [x19, 104]
	mov	x2, x0
	mov	w0, w3
	bl	_smc_helper_write_key_hex
	.loc 1 188 20 is_stmt 0 discriminator 1
	str	w0, [x19, 132]
	.loc 1 189 20 is_stmt 1
	ldr	w3, [x19, 136]
	ldr	x1, [x19, 96]
	ldr	x0, [x19, 88]
	mov	x2, x0
	mov	w0, w3
	bl	_smc_helper_write_key_hex
	.loc 1 189 20 is_stmt 0 discriminator 1
	str	w0, [x19, 132]
LBB112:
	.loc 1 193 10 is_stmt 1
	add	x0, x29, 512
	str	x0, [x29, 160]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 168]
	ldp	x0, x1, [x29, 160]
	bl	_system__strings__string_listIP
	.loc 1 195 22
	mov	x0, 20
	bl	___gnat_malloc
	mov	x4, x0
	.loc 1 195 22 is_stmt 0 discriminator 2
	adrp	x0, lC66@PAGE
	add	x0, x0, lC66@PAGEOFF;
	mov	x3, x4
	mov	x2, x0
	ldp	x0, x1, [x2]
	ldr	w2, [x2, 16]
	stp	x0, x1, [x3]
	str	w2, [x3, 16]
	add	x0, x4, 8
	str	x0, [x29, 176]
	mov	x0, x4
	str	x0, [x29, 184]
	ldp	x0, x1, [x29, 176]
	.loc 1 195 19 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2]
	.loc 1 196 22
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 196 22 is_stmt 0 discriminator 2
	adrp	x0, lC67@PAGE
	add	x0, x0, lC67@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 192]
	mov	x0, x3
	str	x0, [x29, 200]
	ldp	x0, x1, [x29, 192]
	.loc 1 196 19 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, 16]
	.loc 1 197 10
	add	x0, x29, 512
	str	x0, [x29, 208]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 216]
	mov	x16, x19
	ldp	x0, x1, [x29, 208]
	bl	_smc_daemon__run_power_command.12
	.loc 1 198 21
	ldr	x0, [x29, 512]
	cmp	x0, 0
	beq	L239
	.loc 1 198 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 512]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 198 21 discriminator 3
	str	xzr, [x29, 512]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 520]
L239:
	.loc 1 199 21 is_stmt 1
	ldr	x0, [x29, 528]
	cmp	x0, 0
	beq	L240
	.loc 1 199 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 528]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 199 21 discriminator 3
	str	xzr, [x29, 528]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 536]
L240:
	.loc 1 201 22 is_stmt 1
	mov	x0, 20
	bl	___gnat_malloc
	mov	x4, x0
	.loc 1 201 22 is_stmt 0 discriminator 2
	adrp	x0, lC68@PAGE
	add	x0, x0, lC68@PAGEOFF;
	mov	x3, x4
	mov	x2, x0
	ldp	x0, x1, [x2]
	ldr	w2, [x2, 16]
	stp	x0, x1, [x3]
	str	w2, [x3, 16]
	add	x0, x4, 8
	str	x0, [x29, 224]
	mov	x0, x4
	str	x0, [x29, 232]
	ldp	x0, x1, [x29, 224]
	.loc 1 201 19 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2]
	.loc 1 202 22
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 202 22 is_stmt 0 discriminator 2
	adrp	x0, lC69@PAGE
	add	x0, x0, lC69@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 240]
	mov	x0, x3
	str	x0, [x29, 248]
	ldp	x0, x1, [x29, 240]
	.loc 1 202 19 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, 16]
	.loc 1 203 10
	add	x0, x29, 512
	str	x0, [x29, 256]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 264]
	mov	x16, x19
	ldp	x0, x1, [x29, 256]
	bl	_smc_daemon__run_power_command.12
	.loc 1 204 21
	ldr	x0, [x29, 512]
	cmp	x0, 0
	beq	L241
	.loc 1 204 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 512]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 204 21 discriminator 3
	str	xzr, [x29, 512]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 520]
L241:
	.loc 1 205 21 is_stmt 1
	ldr	x0, [x29, 528]
	cmp	x0, 0
	beq	L242
	.loc 1 205 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 528]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 205 21 discriminator 3
	str	xzr, [x29, 528]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 536]
L242:
LBE112:
LBB113:
	.loc 1 210 10 is_stmt 1
	add	x0, x29, 512
	str	x0, [x29, 272]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 280]
	ldp	x0, x1, [x29, 272]
	bl	_system__strings__string_listIP
	.loc 1 212 22
	mov	x0, 20
	bl	___gnat_malloc
	mov	x1, x0
	.loc 1 212 22 is_stmt 0 discriminator 2
	adrp	x0, lC70@PAGE
	add	x0, x0, lC70@PAGEOFF;
	mov	x4, x1
	ldp	x2, x3, [x0]
	ldr	w0, [x0, 16]
	stp	x2, x3, [x4]
	str	w0, [x4, 16]
	add	x0, x1, 8
	str	x0, [x29, 288]
	mov	x0, x1
	str	x0, [x29, 296]
	ldp	x0, x1, [x29, 288]
	.loc 1 212 19 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2]
	.loc 1 213 22
	mov	x0, 12
	bl	___gnat_malloc
	.loc 1 213 22 is_stmt 0 discriminator 2
	adrp	x1, lC71@PAGE
	add	x2, x1, lC71@PAGEOFF;
	mov	x1, x0
	ldr	x3, [x2]
	ldr	w2, [x2, 8]
	str	x3, [x1]
	str	w2, [x1, 8]
	add	x1, x0, 8
	str	x1, [x29, 304]
	str	x0, [x29, 312]
	ldp	x0, x1, [x29, 304]
	.loc 1 213 19 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, 16]
	.loc 1 214 10
	add	x0, x29, 512
	str	x0, [x29, 320]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 328]
	mov	x16, x19
	ldp	x0, x1, [x29, 320]
	bl	_smc_daemon__run_power_command.12
	.loc 1 215 21
	ldr	x0, [x29, 512]
	cmp	x0, 0
	beq	L243
	.loc 1 215 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 512]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 215 21 discriminator 3
	str	xzr, [x29, 512]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 520]
L243:
	.loc 1 216 21 is_stmt 1
	ldr	x0, [x29, 528]
	cmp	x0, 0
	beq	L244
	.loc 1 216 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 528]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 216 21 discriminator 3
	str	xzr, [x29, 528]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 536]
L244:
LBE113:
	.loc 1 220 26 is_stmt 1
	mov	w0, 1
	strb	w0, [x19, 140]
	.loc 1 221 33
	bl	_ada__calendar__clock
	.loc 1 221 33 is_stmt 0 discriminator 1
	str	x0, [x19, 80]
	.loc 1 222 23 is_stmt 1
	movi	v31.2s, #0
	str	s31, [x19, 128]
	.loc 1 223 25
	mov	w0, 0
	str	w0, [x19, 124]
LBB114:
	.loc 1 225 16
	mov	x0, sp
	mov	x19, x0
	.loc 1 225 72 discriminator 1
	add	w0, w28, 21
	add	w0, w0, 39
	str	w0, [x29, 596]
	ldrsw	x0, [x29, 596]
	str	x0, [x29, 584]
	ldrsw	x0, [x29, 596]
	str	x0, [x29, 432]
	str	xzr, [x29, 440]
	ldp	x2, x3, [x29, 432]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 472]
	ldr	x1, [x29, 472]
	add	x0, x0, x1
	str	x0, [x29, 472]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 464]
	ldrsw	x0, [x29, 596]
	str	x0, [x29, 416]
	str	xzr, [x29, 424]
	ldp	x2, x3, [x29, 416]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x1, x3
	lsl	x1, x1, 3
	str	x1, [x29, 456]
	ldr	x1, [x29, 456]
	add	x0, x0, x1
	str	x0, [x29, 456]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 448]
	ldrsw	x0, [x29, 596]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	str	x0, [x29, 576]
LBB115:
	.loc 1 225 72 is_stmt 0 discriminator 2
	ldr	x0, [x29, 576]
	str	x0, [x29, 336]
	mov	w0, 1
	str	w0, [x29, 560]
	ldr	w0, [x29, 596]
	str	w0, [x29, 564]
	add	x0, x29, 560
	str	x0, [x29, 344]
	adrp	x0, lC163@PAGE
	add	x0, x0, lC163@PAGEOFF;
	str	x0, [x29, 352]
	adrp	x0, lC72@PAGE
	add	x0, x0, lC72@PAGEOFF;
	str	x0, [x29, 360]
	adrp	x0, lC164@PAGE
	add	x0, x0, lC164@PAGEOFF;
	str	x0, [x29, 368]
	adrp	x0, lC73@PAGE
	add	x0, x0, lC73@PAGEOFF;
	str	x0, [x29, 376]
	ldp	x6, x7, [x29, 368]
	ldp	x4, x5, [x29, 496]
	ldp	x2, x3, [x29, 352]
	ldp	x0, x1, [x29, 336]
	bl	_system__concat_3__str_concat_3
LBE115:
LBB116:
	.loc 1 225 16 is_stmt 1 discriminator 5
	adrp	x0, lC165@PAGE
	add	x0, x0, lC165@PAGEOFF;
	str	x0, [x29, 384]
	adrp	x0, lC27@PAGE
	add	x0, x0, lC27@PAGEOFF;
	str	x0, [x29, 392]
	ldr	x0, [x29, 576]
	str	x0, [x29, 400]
	mov	w0, 1
	str	w0, [x29, 568]
	ldr	w0, [x29, 596]
	str	w0, [x29, 572]
	add	x0, x29, 568
	str	x0, [x29, 408]
	ldp	x2, x3, [x29, 400]
	ldp	x0, x1, [x29, 384]
	bl	_smc_files__notify_user
LBE116:
	.loc 1 225 0 discriminator 8
	mov	sp, x19
LBE114:
	.loc 1 226 8
	b	L228
L245:
	.loc 1 181 10
	nop
L228:
LBE109:
	.loc 1 226 8
	mov	sp, x29
LCFI24:
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	add	sp, sp, 624
LCFI25:
	ret
LFE6:
	.const
	.align	2
lC65:
	.word	1
	.word	70
	.align	2
lC52:
	.word	1
	.word	1
	.align	2
lC66:
	.word	1
	.word	9
	.ascii "powermode"
	.space 3
	.align	2
lC67:
	.word	1
	.word	1
	.ascii "0"
	.space 3
	.align	2
lC68:
	.word	1
	.word	12
	.ascii "lowpowermode"
	.align	2
lC69:
	.word	1
	.word	1
	.ascii "0"
	.space 3
	.align	2
lC70:
	.word	1
	.word	9
	.ascii "thermaldp"
	.space 3
	.align	2
lC71:
	.word	1
	.word	1
	.ascii "1"
	.space 3
	.align	2
lC72:
	.word	1
	.word	21
	.align	2
lC73:
	.word	1
	.word	39
	.text
	.const
	.align	3
lC166:
	.ascii "[DAEMON] Deactivating Turbo/Endurance Mode and Restoring Normal State... (Trigger: "
	.align	3
lC167:
	.ascii "Temperature Normal. Restoring default power settings."
	.text
	.align	2
_smc_daemon__deactivate_turbo_mode.7:
LFB7:
	.loc 1 228 4
	sub	sp, sp, #576
LCFI26:
	stp	x29, x30, [sp]
LCFI27:
	mov	x29, sp
LCFI28:
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
LCFI29:
	stp	x0, x1, [x29, 480]
	mov	x19, x16
	str	x16, [x29, 472]
	.loc 1 228 4
	ldr	x0, [x29, 488]
	ldr	w3, [x0]
	ldr	x0, [x29, 488]
	ldr	w2, [x0, 4]
	cmp	w2, w3
	blt	L247
	.loc 1 228 4 is_stmt 0 discriminator 1
	sub	w0, w2, w3
	add	w28, w0, 1
	b	L248
L247:
	.loc 1 228 4 discriminator 2
	mov	w28, 0
L248:
LBB117:
	.loc 1 228 4 discriminator 4
	cmp	w2, w3
	.loc 1 228 4 discriminator 8
	cmp	w2, w3
	blt	L252
	.loc 1 228 4 discriminator 9
	sxtw	x1, w2
	sxtw	x0, w3
	sub	x0, x1, x0
	add	x0, x0, 1
	mov	x4, x0
	mov	x5, 0
	lsr	x1, x4, 61
	lsl	x7, x5, 3
	mov	x0, x7
	add	x0, x1, x0
	mov	x7, x0
	lsl	x6, x4, 3
L252:
	.loc 1 228 4 discriminator 12
	cmp	w2, w3
	.loc 1 230 26 is_stmt 1
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__is_turbo_activeP
	.loc 1 230 26 is_stmt 0 discriminator 1
	eor	w0, w0, 1
	and	w0, w0, 255
	.loc 1 230 7 is_stmt 1 discriminator 1
	cmp	w0, 0
	bne	L267
	.loc 1 234 19
	mov	w1, 0
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__set_turboP
	.loc 1 235 19
	adrp	x0, _smc_daemon_state__daemon_state@GOTPAGE
	ldr	x0, [x0, _smc_daemon_state__daemon_state@GOTPAGEOFF]
	bl	_smc_daemon_state__daemon_state__reset_spikesP
LBB118:
	.loc 1 236 7
	mov	x0, sp
	str	x0, [x29, 464]
	.loc 1 236 112 discriminator 1
	add	w0, w28, 83
	add	w0, w0, 1
	str	w0, [x29, 572]
	ldrsw	x0, [x29, 572]
	str	x0, [x29, 560]
	ldrsw	x0, [x29, 572]
	mov	x20, x0
	mov	x21, 0
	lsr	x1, x20, 61
	lsl	x25, x21, 3
	mov	x0, x25
	add	x0, x1, x0
	mov	x25, x0
	lsl	x24, x20, 3
	ldrsw	x0, [x29, 572]
	mov	x22, x0
	mov	x23, 0
	lsr	x1, x22, 61
	lsl	x27, x23, 3
	mov	x0, x27
	add	x0, x1, x0
	mov	x27, x0
	lsl	x26, x22, 3
	ldrsw	x0, [x29, 572]
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	str	x0, [x29, 552]
LBB119:
	.loc 1 236 112 is_stmt 0 discriminator 2
	ldr	x1, [x29, 552]
	str	x1, [x29, 96]
	mov	w0, 1
	str	w0, [x29, 536]
	ldr	w0, [x29, 572]
	str	w0, [x29, 540]
	add	x0, x29, 536
	str	x0, [x29, 104]
	adrp	x0, lC166@PAGE
	add	x1, x0, lC166@PAGEOFF;
	str	x1, [x29, 112]
	adrp	x0, lC53@PAGE
	add	x1, x0, lC53@PAGEOFF;
	str	x1, [x29, 120]
	adrp	x0, lC162@PAGE
	add	x1, x0, lC162@PAGEOFF;
	str	x1, [x29, 128]
	adrp	x0, lC52@PAGE
	add	x1, x0, lC52@PAGEOFF;
	str	x1, [x29, 136]
	ldp	x6, x7, [x29, 128]
	ldp	x4, x5, [x29, 480]
	ldp	x2, x3, [x29, 112]
	ldp	x0, x1, [x29, 96]
	bl	_system__concat_3__str_concat_3
LBE119:
	.loc 1 236 7 is_stmt 1 discriminator 5
	ldr	x1, [x29, 552]
	str	x1, [x29, 144]
	mov	w0, 1
	str	w0, [x29, 544]
	ldr	w0, [x29, 572]
	str	w0, [x29, 548]
	add	x0, x29, 544
	str	x0, [x29, 152]
	ldp	x0, x1, [x29, 144]
	bl	_ada__text_io__put_line__2
	.loc 1 236 0 discriminator 8
	ldr	x0, [x29, 464]
	mov	sp, x0
LBE118:
	.loc 1 239 20
	ldr	w3, [x19, 136]
	ldr	x1, [x19, 112]
	ldr	x0, [x19, 72]
	mov	x2, x0
	mov	w0, w3
	bl	_smc_helper_write_key_hex
	.loc 1 239 20 is_stmt 0 discriminator 1
	str	w0, [x19, 132]
	.loc 1 240 20 is_stmt 1
	ldr	w3, [x19, 136]
	ldr	x1, [x19, 96]
	ldr	x0, [x19, 64]
	mov	x2, x0
	mov	w0, w3
	bl	_smc_helper_write_key_hex
	.loc 1 240 20 is_stmt 0 discriminator 1
	str	w0, [x19, 132]
LBB120:
	.loc 1 244 10 is_stmt 1
	add	x0, x29, 504
	str	x0, [x29, 160]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 168]
	ldp	x0, x1, [x29, 160]
	bl	_system__strings__string_listIP
	.loc 1 246 22
	mov	x0, 20
	bl	___gnat_malloc
	mov	x4, x0
	.loc 1 246 22 is_stmt 0 discriminator 2
	adrp	x0, lC54@PAGE
	add	x0, x0, lC54@PAGEOFF;
	mov	x3, x4
	mov	x2, x0
	ldp	x0, x1, [x2]
	ldr	w2, [x2, 16]
	stp	x0, x1, [x3]
	str	w2, [x3, 16]
	add	x0, x4, 8
	str	x0, [x29, 176]
	mov	x0, x4
	str	x0, [x29, 184]
	ldp	x0, x1, [x29, 176]
	.loc 1 246 19 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, -8]
	.loc 1 247 22
	mov	x0, 12
	bl	___gnat_malloc
	mov	x3, x0
	.loc 1 247 22 is_stmt 0 discriminator 2
	adrp	x0, lC55@PAGE
	add	x0, x0, lC55@PAGEOFF;
	mov	x2, x3
	ldr	x1, [x0]
	ldr	w0, [x0, 8]
	str	x1, [x2]
	str	w0, [x2, 8]
	add	x0, x3, 8
	str	x0, [x29, 192]
	mov	x0, x3
	str	x0, [x29, 200]
	ldp	x0, x1, [x29, 192]
	.loc 1 247 19 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, 8]
	.loc 1 248 10
	add	x0, x29, 504
	str	x0, [x29, 208]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 216]
	mov	x16, x19
	ldp	x0, x1, [x29, 208]
	bl	_smc_daemon__run_power_command.12
	.loc 1 249 21
	ldr	x0, [x29, 504]
	cmp	x0, 0
	beq	L257
	.loc 1 249 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 504]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 249 21 discriminator 3
	str	xzr, [x29, 504]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 512]
L257:
	.loc 1 250 21 is_stmt 1
	ldr	x0, [x29, 520]
	cmp	x0, 0
	beq	L258
	.loc 1 250 21 is_stmt 0 discriminator 1
	ldr	x0, [x29, 520]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 250 21 discriminator 3
	str	xzr, [x29, 520]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 528]
L258:
LBE120:
LBB121:
	.loc 1 255 10 is_stmt 1
	add	x0, x29, 504
	str	x0, [x29, 224]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 232]
	ldp	x0, x1, [x29, 224]
	bl	_system__strings__string_listIP
	.loc 1 257 10
	ldr	w0, [x19, 120]
	cmp	w0, 20
	bgt	L259
	.loc 1 258 25
	mov	x0, 20
	bl	___gnat_malloc
	.loc 1 258 25 is_stmt 0 discriminator 2
	adrp	x1, lC56@PAGE
	add	x2, x1, lC56@PAGEOFF;
	mov	x1, x0
	mov	x4, x2
	ldp	x2, x3, [x4]
	ldr	w4, [x4, 16]
	stp	x2, x3, [x1]
	str	w4, [x1, 16]
	add	x1, x0, 8
	str	x1, [x29, 240]
	str	x0, [x29, 248]
	ldp	x0, x1, [x29, 240]
	.loc 1 258 22 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, -8]
	.loc 1 259 25
	mov	x0, 12
	bl	___gnat_malloc
	.loc 1 259 25 is_stmt 0 discriminator 2
	adrp	x1, lC57@PAGE
	add	x2, x1, lC57@PAGEOFF;
	mov	x1, x0
	ldr	x3, [x2]
	ldr	w2, [x2, 8]
	str	x3, [x1]
	str	w2, [x1, 8]
	add	x1, x0, 8
	str	x1, [x29, 256]
	str	x0, [x29, 264]
	ldp	x0, x1, [x29, 256]
	.loc 1 259 22 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, 8]
	.loc 1 260 13
	add	x0, x29, 504
	str	x0, [x29, 272]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 280]
	mov	x16, x19
	ldp	x0, x1, [x29, 272]
	bl	_smc_daemon__run_power_command.12
	.loc 1 261 24
	ldr	x0, [x29, 504]
	cmp	x0, 0
	beq	L260
	.loc 1 261 24 is_stmt 0 discriminator 1
	ldr	x0, [x29, 504]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 261 24 discriminator 3
	str	xzr, [x29, 504]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 512]
L260:
	.loc 1 262 24 is_stmt 1
	ldr	x0, [x29, 520]
	cmp	x0, 0
	beq	L261
	.loc 1 262 24 is_stmt 0 discriminator 1
	ldr	x0, [x29, 520]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 262 24 discriminator 3
	str	xzr, [x29, 520]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 528]
L261:
	.loc 1 264 25 is_stmt 1
	mov	x0, 20
	bl	___gnat_malloc
	.loc 1 264 25 is_stmt 0 discriminator 2
	adrp	x1, lC58@PAGE
	add	x2, x1, lC58@PAGEOFF;
	mov	x1, x0
	mov	x4, x2
	ldp	x2, x3, [x4]
	ldr	w4, [x4, 16]
	stp	x2, x3, [x1]
	str	w4, [x1, 16]
	add	x1, x0, 8
	str	x1, [x29, 288]
	str	x0, [x29, 296]
	ldp	x0, x1, [x29, 288]
	.loc 1 264 22 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, -8]
	.loc 1 265 25
	mov	x0, 12
	bl	___gnat_malloc
	.loc 1 265 25 is_stmt 0 discriminator 2
	adrp	x1, lC59@PAGE
	add	x2, x1, lC59@PAGEOFF;
	mov	x1, x0
	ldr	x3, [x2]
	ldr	w2, [x2, 8]
	str	x3, [x1]
	str	w2, [x1, 8]
	add	x1, x0, 8
	str	x1, [x29, 304]
	str	x0, [x29, 312]
	ldp	x0, x1, [x29, 304]
	.loc 1 265 22 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, 8]
	.loc 1 266 13
	add	x0, x29, 504
	str	x0, [x29, 320]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 328]
	mov	x16, x19
	ldp	x0, x1, [x29, 320]
	bl	_smc_daemon__run_power_command.12
	.loc 1 267 24
	ldr	x0, [x29, 504]
	cmp	x0, 0
	beq	L262
	.loc 1 267 24 is_stmt 0 discriminator 1
	ldr	x0, [x29, 504]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 267 24 discriminator 3
	str	xzr, [x29, 504]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 512]
L262:
	.loc 1 268 24 is_stmt 1
	ldr	x0, [x29, 520]
	cmp	x0, 0
	beq	L263
	.loc 1 268 24 is_stmt 0 discriminator 1
	ldr	x0, [x29, 520]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 268 24 discriminator 3
	str	xzr, [x29, 520]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 528]
	b	L263
L259:
	.loc 1 270 25 is_stmt 1
	mov	x0, 20
	bl	___gnat_malloc
	.loc 1 270 25 is_stmt 0 discriminator 2
	adrp	x1, lC60@PAGE
	add	x2, x1, lC60@PAGEOFF;
	mov	x1, x0
	mov	x4, x2
	ldp	x2, x3, [x4]
	ldr	w4, [x4, 16]
	stp	x2, x3, [x1]
	str	w4, [x1, 16]
	add	x1, x0, 8
	str	x1, [x29, 336]
	str	x0, [x29, 344]
	ldp	x0, x1, [x29, 336]
	.loc 1 270 22 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, -8]
	.loc 1 271 25
	mov	x0, 12
	bl	___gnat_malloc
	.loc 1 271 25 is_stmt 0 discriminator 2
	adrp	x1, lC61@PAGE
	add	x2, x1, lC61@PAGEOFF;
	mov	x1, x0
	ldr	x3, [x2]
	ldr	w2, [x2, 8]
	str	x3, [x1]
	str	w2, [x1, 8]
	add	x1, x0, 8
	str	x1, [x29, 352]
	str	x0, [x29, 360]
	ldp	x0, x1, [x29, 352]
	.loc 1 271 22 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, 8]
	.loc 1 272 13
	add	x0, x29, 504
	str	x0, [x29, 368]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 376]
	mov	x16, x19
	ldp	x0, x1, [x29, 368]
	bl	_smc_daemon__run_power_command.12
	.loc 1 273 24
	ldr	x0, [x29, 504]
	cmp	x0, 0
	beq	L264
	.loc 1 273 24 is_stmt 0 discriminator 1
	ldr	x0, [x29, 504]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 273 24 discriminator 3
	str	xzr, [x29, 504]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 512]
L264:
	.loc 1 274 24 is_stmt 1
	ldr	x0, [x29, 520]
	cmp	x0, 0
	beq	L265
	.loc 1 274 24 is_stmt 0 discriminator 1
	ldr	x0, [x29, 520]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 274 24 discriminator 3
	str	xzr, [x29, 520]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 528]
L265:
	.loc 1 276 25 is_stmt 1
	mov	x0, 20
	bl	___gnat_malloc
	.loc 1 276 25 is_stmt 0 discriminator 2
	adrp	x1, lC62@PAGE
	add	x2, x1, lC62@PAGEOFF;
	mov	x1, x0
	mov	x4, x2
	ldp	x2, x3, [x4]
	ldr	w4, [x4, 16]
	stp	x2, x3, [x1]
	str	w4, [x1, 16]
	add	x1, x0, 8
	str	x1, [x29, 384]
	str	x0, [x29, 392]
	ldp	x0, x1, [x29, 384]
	.loc 1 276 22 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, -8]
	.loc 1 277 25
	mov	x0, 12
	bl	___gnat_malloc
	.loc 1 277 25 is_stmt 0 discriminator 2
	adrp	x1, lC63@PAGE
	add	x2, x1, lC63@PAGEOFF;
	mov	x1, x0
	ldr	x3, [x2]
	ldr	w2, [x2, 8]
	str	x3, [x1]
	str	w2, [x1, 8]
	add	x1, x0, 8
	str	x1, [x29, 400]
	str	x0, [x29, 408]
	ldp	x0, x1, [x29, 400]
	.loc 1 277 22 is_stmt 1 discriminator 2
	add	x2, x29, 512
	stp	x0, x1, [x2, 8]
	.loc 1 278 13
	add	x0, x29, 504
	str	x0, [x29, 416]
	adrp	x0, lC42@PAGE
	add	x0, x0, lC42@PAGEOFF;
	str	x0, [x29, 424]
	mov	x16, x19
	ldp	x0, x1, [x29, 416]
	bl	_smc_daemon__run_power_command.12
	.loc 1 279 24
	ldr	x0, [x29, 504]
	cmp	x0, 0
	beq	L266
	.loc 1 279 24 is_stmt 0 discriminator 1
	ldr	x0, [x29, 504]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 279 24 discriminator 3
	str	xzr, [x29, 504]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 512]
L266:
	.loc 1 280 24 is_stmt 1
	ldr	x0, [x29, 520]
	cmp	x0, 0
	beq	L263
	.loc 1 280 24 is_stmt 0 discriminator 1
	ldr	x0, [x29, 520]
	sub	x0, x0, #8
	bl	___gnat_free
	.loc 1 280 24 discriminator 3
	str	xzr, [x29, 520]
	adrp	x0, lC17@PAGE
	add	x0, x0, lC17@PAGEOFF;
	str	x0, [x29, 528]
L263:
LBE121:
LBB122:
	.loc 1 284 16 is_stmt 1
	adrp	x0, lC156@PAGE
	add	x0, x0, lC156@PAGEOFF;
	str	x0, [x29, 432]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 440]
	adrp	x0, lC167@PAGE
	add	x0, x0, lC167@PAGEOFF;
	str	x0, [x29, 448]
	adrp	x0, lC64@PAGE
	add	x0, x0, lC64@PAGEOFF;
	str	x0, [x29, 456]
	ldp	x2, x3, [x29, 448]
	ldp	x0, x1, [x29, 432]
	bl	_smc_files__notify_user
LBE122:
	.loc 1 285 8
	b	L246
L267:
	.loc 1 231 10
	nop
L246:
LBE117:
	.loc 1 285 8
	mov	sp, x29
LCFI30:
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	add	sp, sp, 576
LCFI31:
	ret
LFE7:
	.const
	.align	2
lC53:
	.word	1
	.word	83
	.align	2
lC54:
	.word	1
	.word	9
	.ascii "thermaldp"
	.space 3
	.align	2
lC55:
	.word	1
	.word	1
	.ascii "0"
	.space 3
	.align	2
lC56:
	.word	1
	.word	9
	.ascii "powermode"
	.space 3
	.align	2
lC57:
	.word	1
	.word	1
	.ascii "1"
	.space 3
	.align	2
lC58:
	.word	1
	.word	12
	.ascii "lowpowermode"
	.align	2
lC59:
	.word	1
	.word	1
	.ascii "1"
	.space 3
	.align	2
lC60:
	.word	1
	.word	9
	.ascii "powermode"
	.space 3
	.align	2
lC61:
	.word	1
	.word	1
	.ascii "0"
	.space 3
	.align	2
lC62:
	.word	1
	.word	12
	.ascii "lowpowermode"
	.align	2
lC63:
	.word	1
	.word	1
	.ascii "0"
	.space 3
	.align	2
lC64:
	.word	1
	.word	53
	.text
	.const
	.align	3
lC168:
	.ascii ":"
	.text
	.align	2
_smc_daemon__get_time_str.10:
LFB8:
	.loc 1 288 4
	sub	sp, sp, #688
LCFI32:
	stp	x29, x30, [sp, 32]
LCFI33:
	add	x29, sp, 32
LCFI34:
	stp	x19, x20, [sp, 48]
	stp	x21, x22, [sp, 64]
	stp	x23, x24, [sp, 80]
	stp	x25, x26, [sp, 96]
	stp	x27, x28, [sp, 112]
LCFI35:
	str	x16, [x29, 456]
	mov	x0, sp
	str	x0, [x29, 448]
	.loc 1 290 43
	bl	_ada__calendar__clock
	.loc 1 290 43 is_stmt 0 discriminator 2
	str	x0, [x29, 640]
LBB123:
	.loc 1 297 7 is_stmt 1
	add	x0, x29, 472
	mov	x8, x0
	ldr	x0, [x29, 640]
	bl	_ada__calendar__split
	.loc 1 297 7 is_stmt 0 discriminator 2
	ldr	w0, [x29, 472]
	str	w0, [x29, 636]
	ldr	w0, [x29, 476]
	str	w0, [x29, 632]
	ldr	w0, [x29, 480]
	str	w0, [x29, 628]
	ldr	x0, [x29, 488]
	str	x0, [x29, 616]
LBE123:
	.loc 1 298 15 is_stmt 1
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
	bcc	L269
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L269:
	mov	x1, x5
	cmp	x1, 0
	blt	L270
	.loc 1 298 15 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L271
L270:
	.loc 1 298 15 discriminator 3
	mov	w1, 298
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L271:
	.loc 1 298 33 is_stmt 1 discriminator 4
	mov	w2, w1
	.loc 1 298 12 discriminator 4
	mov	w0, 46021
	movk	w0, 0x91a2, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	add	w0, w2, w0
	asr	w1, w0, 11
	asr	w0, w2, 31
	sub	w0, w1, w0
	str	w0, [x29, 612]
	.loc 1 299 15
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
	bcc	L272
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L272:
	mov	x1, x5
	cmp	x1, 0
	blt	L273
	.loc 1 299 15 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L274
L273:
	.loc 1 299 15 discriminator 3
	mov	w1, 299
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L274:
	.loc 1 299 33 is_stmt 1 discriminator 4
	mov	w2, w1
	mov	w0, 3600
	sdiv	w1, w2, w0
	mov	w0, 3600
	mul	w0, w1, w0
	sub	w2, w2, w0
	.loc 1 299 11 discriminator 4
	mov	w0, 34953
	movk	w0, 0x8888, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	add	w0, w2, w0
	asr	w1, w0, 5
	asr	w0, w2, 31
	sub	w0, w1, w0
	str	w0, [x29, 608]
	.loc 1 300 14
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
	bcc	L275
	mov	x0, 51712
	movk	x0, 0x3b9a, lsl 16
	eor	x0, x4, x0
	asr	x1, x0, 63
	eor	x0, x1, 1
	sub	x0, x0, x1
	add	x5, x5, x0
L275:
	mov	x1, x5
	cmp	x1, 0
	blt	L276
	.loc 1 300 14 is_stmt 0 discriminator 2
	mov	x0, 2147483647
	cmp	x1, x0
	ble	L277
L276:
	.loc 1 300 14 discriminator 3
	mov	w1, 300
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L277:
	.loc 1 300 32 is_stmt 1 discriminator 4
	mov	w2, w1
	.loc 1 300 11 discriminator 4
	mov	w0, 60
	sdiv	w1, w2, w0
	mov	w0, 60
	mul	w0, w1, w0
	sub	w0, w2, w0
	str	w0, [x29, 604]
	.loc 1 301 24
	add	x0, x29, 528
	str	x0, [x29, 256]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 264]
	ldp	x1, x2, [x29, 256]
	ldr	w0, [x29, 612]
	bl	_system__img_int__impl__image_integer
	.loc 1 301 24 is_stmt 0 discriminator 2
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
	.loc 1 302 23 is_stmt 1
	add	x0, x29, 512
	str	x0, [x29, 112]
	adrp	x0, lC9@PAGE
	add	x1, x0, lC9@PAGEOFF;
	str	x1, [x29, 120]
	ldp	x1, x2, [x29, 112]
	ldr	w0, [x29, 608]
	bl	_system__img_int__impl__image_integer
	mov	w26, w0
	.loc 1 302 23 is_stmt 0 discriminator 2
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
	.loc 1 303 23 is_stmt 1
	add	x0, x29, 496
	str	x0, [x29, 128]
	adrp	x0, lC9@PAGE
	add	x1, x0, lC9@PAGEOFF;
	str	x1, [x29, 136]
	ldp	x1, x2, [x29, 128]
	ldr	w0, [x29, 604]
	bl	_system__img_int__impl__image_integer
	mov	w19, w0
	.loc 1 303 23 is_stmt 0 discriminator 2
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
	.loc 1 301 14 is_stmt 1
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
	.loc 1 301 14 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 302 14 is_stmt 1
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
	.loc 1 302 14 is_stmt 0 discriminator 4
	mov	x22, x0
	mov	x23, x1
	.loc 1 303 14 is_stmt 1
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
	.loc 1 303 14 is_stmt 0 discriminator 4
	mov	x4, x0
	mov	x5, x1
	.loc 1 302 55 is_stmt 1
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L278
	.loc 1 302 55 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w2, w0, 1
	b	L279
L278:
	.loc 1 302 55 discriminator 6
	mov	w2, 0
L279:
	.loc 1 302 55 discriminator 8
	add	w3, w2, 1
	mov	x0, x23
	ldr	w1, [x0, 4]
	mov	x0, x23
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L280
	.loc 1 302 55 discriminator 9
	mov	x0, x23
	ldr	w1, [x0, 4]
	mov	x0, x23
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L281
L280:
	.loc 1 302 55 discriminator 10
	mov	w0, 0
L281:
	.loc 1 302 55 discriminator 12
	add	w0, w3, w0
	add	w3, w0, 1
	mov	x0, x5
	ldr	w1, [x0, 4]
	mov	x0, x5
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L282
	.loc 1 302 55 discriminator 13
	mov	x0, x5
	ldr	w1, [x0, 4]
	mov	x0, x5
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L283
L282:
	.loc 1 302 55 discriminator 14
	mov	w0, 0
L283:
	.loc 1 302 55 discriminator 16
	add	w3, w3, w0
	cmp	w2, 0
	beq	L284
	.loc 1 302 55 discriminator 17
	mov	x0, x21
	ldr	w0, [x0]
	str	w0, [x29, 652]
	b	L285
L284:
	.loc 1 302 55 discriminator 18
	mov	w0, 1
	str	w0, [x29, 652]
L285:
	.loc 1 302 55 discriminator 20
	sub	w1, w3, #1
	mov	w2, 0
	ldr	w0, [x29, 652]
	adds	w0, w0, w1
	bvc	L286
	mov	w2, 1
L286:
	.loc 1 302 55 discriminator 21
	mov	w0, w2
	cmp	w0, 0
	beq	L288
	.loc 1 302 55 discriminator 22
	mov	w1, 302
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L288:
	.loc 1 302 55 discriminator 23
	sub	w1, w3, #1
	ldr	w0, [x29, 652]
	adds	w0, w0, w1
	.loc 1 302 55 discriminator 26
	str	w0, [x29, 600]
	.loc 1 302 55 discriminator 27
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
	ble	L291
	.loc 1 302 55 discriminator 28
	ldr	w0, [x29, 652]
	cmp	w0, 0
	bgt	L291
	.loc 1 302 55 discriminator 30
	mov	w1, 302
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L291:
	.loc 1 302 55 discriminator 31
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
LBB124:
	.loc 1 302 55 discriminator 33
	ldr	x0, [x29, 576]
	str	x0, [x29, 192]
	ldr	w0, [x29, 652]
	str	w0, [x29, 568]
	ldr	w0, [x29, 600]
	str	w0, [x29, 572]
	add	x0, x29, 568
	str	x0, [x29, 200]
	adrp	x0, lC168@PAGE
	add	x0, x0, lC168@PAGEOFF;
	str	x0, [x29, 208]
	adrp	x0, lC52@PAGE
	add	x0, x0, lC52@PAGEOFF;
	str	x0, [x29, 216]
	adrp	x0, lC168@PAGE
	add	x0, x0, lC168@PAGEOFF;
	str	x0, [x29, 224]
	adrp	x0, lC52@PAGE
	add	x0, x0, lC52@PAGEOFF;
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
LBE124:
	.loc 1 288 4 is_stmt 1
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
	.loc 1 301 7
	ldrsw	x1, [x29, 600]
	ldrsw	x0, [x29, 652]
	sub	x0, x1, x0
	add	x0, x0, 12
	and	x0, x0, -4
	mov	x1, 4
	bl	_system__secondary_stack__ss_allocate
	mov	x19, x0
	.loc 1 301 7 is_stmt 0 discriminator 6
	mov	x0, x19
	ldr	w1, [x29, 652]
	str	w1, [x0]
	ldr	w1, [x29, 600]
	str	w1, [x0, 4]
	add	x0, x0, 8
	ldr	x1, [x29, 576]
	mov	x2, x24
	bl	_memcpy
	.loc 1 301 7 discriminator 7
	mov	x0, x19
	add	x0, x0, 8
	str	x0, [x29, 240]
	mov	x0, x19
	str	x0, [x29, 248]
	.loc 1 304 8 is_stmt 1
	ldr	x0, [x29, 448]
	mov	sp, x0
	.loc 1 301 7
	ldp	x0, x1, [x29, 240]
	.loc 1 304 8
	sub	sp, x29, #32
LCFI36:
	ldp	x29, x30, [sp, 32]
	ldp	x19, x20, [sp, 48]
	ldp	x21, x22, [sp, 64]
	ldp	x23, x24, [sp, 80]
	ldp	x25, x26, [sp, 96]
	ldp	x27, x28, [sp, 112]
	add	sp, sp, 688
LCFI37:
	ret
LFE8:
	.const
	.align	3
lC169:
	.ascii "-"
	.text
	.align	2
_smc_daemon__get_day_str.9:
LFB9:
	.loc 1 306 4
	sub	sp, sp, #672
LCFI38:
	stp	x29, x30, [sp, 32]
LCFI39:
	add	x29, sp, 32
LCFI40:
	stp	x19, x20, [sp, 48]
	stp	x21, x22, [sp, 64]
	stp	x23, x24, [sp, 80]
	stp	x25, x26, [sp, 96]
	stp	x27, x28, [sp, 112]
LCFI41:
	str	x16, [x29, 456]
	mov	x0, sp
	str	x0, [x29, 448]
	.loc 1 308 43
	bl	_ada__calendar__clock
	.loc 1 308 43 is_stmt 0 discriminator 2
	str	x0, [x29, 624]
LBB125:
	.loc 1 314 7 is_stmt 1
	add	x0, x29, 464
	mov	x8, x0
	ldr	x0, [x29, 624]
	bl	_ada__calendar__split
	.loc 1 314 7 is_stmt 0 discriminator 2
	ldr	w0, [x29, 464]
	str	w0, [x29, 620]
	ldr	w0, [x29, 468]
	str	w0, [x29, 616]
	ldr	w0, [x29, 472]
	str	w0, [x29, 612]
	ldr	x0, [x29, 480]
	str	x0, [x29, 600]
LBE125:
	.loc 1 315 24 is_stmt 1
	add	x0, x29, 520
	str	x0, [x29, 112]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 120]
	ldp	x1, x2, [x29, 112]
	ldr	w0, [x29, 620]
	bl	_system__img_int__impl__image_integer
	mov	w28, w0
	.loc 1 315 24 is_stmt 0 discriminator 2
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
	.loc 1 316 25 is_stmt 1
	add	x0, x29, 504
	str	x0, [x29, 128]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 136]
	ldp	x1, x2, [x29, 128]
	ldr	w0, [x29, 616]
	bl	_system__img_int__impl__image_integer
	mov	w26, w0
	.loc 1 316 25 is_stmt 0 discriminator 2
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
	.loc 1 317 23 is_stmt 1
	add	x0, x29, 488
	str	x0, [x29, 144]
	adrp	x0, lC9@PAGE
	add	x0, x0, lC9@PAGEOFF;
	str	x0, [x29, 152]
	ldp	x1, x2, [x29, 144]
	ldr	w0, [x29, 612]
	bl	_system__img_int__impl__image_integer
	mov	w19, w0
	.loc 1 317 23 is_stmt 0 discriminator 2
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
	.loc 1 315 14 is_stmt 1
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
	.loc 1 315 14 is_stmt 0 discriminator 4
	mov	x20, x0
	mov	x21, x1
	.loc 1 316 14 is_stmt 1
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
	.loc 1 316 14 is_stmt 0 discriminator 4
	mov	x22, x0
	mov	x23, x1
	.loc 1 317 14 is_stmt 1
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
	.loc 1 317 14 is_stmt 0 discriminator 4
	mov	x4, x0
	mov	x5, x1
	.loc 1 316 57 is_stmt 1
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L294
	.loc 1 316 57 is_stmt 0 discriminator 5
	mov	x0, x21
	ldr	w1, [x0, 4]
	mov	x0, x21
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w2, w0, 1
	b	L295
L294:
	.loc 1 316 57 discriminator 6
	mov	w2, 0
L295:
	.loc 1 316 57 discriminator 8
	add	w3, w2, 1
	mov	x0, x23
	ldr	w1, [x0, 4]
	mov	x0, x23
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L296
	.loc 1 316 57 discriminator 9
	mov	x0, x23
	ldr	w1, [x0, 4]
	mov	x0, x23
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L297
L296:
	.loc 1 316 57 discriminator 10
	mov	w0, 0
L297:
	.loc 1 316 57 discriminator 12
	add	w0, w3, w0
	add	w3, w0, 1
	mov	x0, x5
	ldr	w1, [x0, 4]
	mov	x0, x5
	ldr	w0, [x0]
	cmp	w1, w0
	blt	L298
	.loc 1 316 57 discriminator 13
	mov	x0, x5
	ldr	w1, [x0, 4]
	mov	x0, x5
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	w0, w0, 1
	b	L299
L298:
	.loc 1 316 57 discriminator 14
	mov	w0, 0
L299:
	.loc 1 316 57 discriminator 16
	add	w3, w3, w0
	cmp	w2, 0
	beq	L300
	.loc 1 316 57 discriminator 17
	mov	x0, x21
	ldr	w0, [x0]
	str	w0, [x29, 636]
	b	L301
L300:
	.loc 1 316 57 discriminator 18
	mov	w0, 1
	str	w0, [x29, 636]
L301:
	.loc 1 316 57 discriminator 20
	sub	w1, w3, #1
	mov	w2, 0
	ldr	w0, [x29, 636]
	adds	w0, w0, w1
	bvc	L302
	mov	w2, 1
L302:
	.loc 1 316 57 discriminator 21
	mov	w0, w2
	cmp	w0, 0
	beq	L304
	.loc 1 316 57 discriminator 22
	mov	w1, 316
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Overflow_Check
L304:
	.loc 1 316 57 discriminator 23
	sub	w1, w3, #1
	ldr	w0, [x29, 636]
	adds	w0, w0, w1
	.loc 1 316 57 discriminator 26
	str	w0, [x29, 596]
	.loc 1 316 57 discriminator 27
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
	ble	L307
	.loc 1 316 57 discriminator 28
	ldr	w0, [x29, 636]
	cmp	w0, 0
	bgt	L307
	.loc 1 316 57 discriminator 30
	mov	w1, 316
	adrp	x0, lC78@PAGE
	add	x0, x0, lC78@PAGEOFF;
	bl	___gnat_rcheck_CE_Range_Check
L307:
	.loc 1 316 57 discriminator 31
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
LBB126:
	.loc 1 316 57 discriminator 33
	ldr	x0, [x29, 568]
	str	x0, [x29, 208]
	ldr	w0, [x29, 636]
	str	w0, [x29, 560]
	ldr	w0, [x29, 596]
	str	w0, [x29, 564]
	add	x0, x29, 560
	str	x0, [x29, 216]
	adrp	x0, lC169@PAGE
	add	x0, x0, lC169@PAGEOFF;
	str	x0, [x29, 224]
	adrp	x0, lC52@PAGE
	add	x0, x0, lC52@PAGEOFF;
	str	x0, [x29, 232]
	adrp	x0, lC169@PAGE
	add	x0, x0, lC169@PAGEOFF;
	str	x0, [x29, 240]
	adrp	x0, lC52@PAGE
	add	x0, x0, lC52@PAGEOFF;
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
LBE126:
	.loc 1 306 4 is_stmt 1
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
	.loc 1 315 7
	ldrsw	x1, [x29, 596]
	ldrsw	x0, [x29, 636]
	sub	x0, x1, x0
	add	x0, x0, 12
	and	x0, x0, -4
	mov	x1, 4
	bl	_system__secondary_stack__ss_allocate
	mov	x19, x0
	.loc 1 315 7 is_stmt 0 discriminator 6
	mov	x0, x19
	ldr	w1, [x29, 636]
	str	w1, [x0]
	ldr	w1, [x29, 596]
	str	w1, [x0, 4]
	add	x0, x0, 8
	ldr	x1, [x29, 568]
	mov	x2, x24
	bl	_memcpy
	.loc 1 315 7 discriminator 7
	mov	x0, x19
	add	x0, x0, 8
	str	x0, [x29, 256]
	mov	x0, x19
	str	x0, [x29, 264]
	.loc 1 318 8 is_stmt 1
	ldr	x0, [x29, 448]
	mov	sp, x0
	.loc 1 315 7
	ldp	x0, x1, [x29, 256]
	.loc 1 318 8
	sub	sp, x29, #32
LCFI42:
	ldp	x29, x30, [sp, 32]
	ldp	x19, x20, [sp, 48]
	ldp	x21, x22, [sp, 64]
	ldp	x23, x24, [sp, 80]
	ldp	x25, x26, [sp, 96]
	ldp	x27, x28, [sp, 112]
	add	sp, sp, 672
LCFI43:
	ret
LFE9:
	.align	2
_smc_daemon__read_and_validate_smc_temp.3:
LFB10:
	.loc 1 321 4
	stp	x29, x30, [sp, -96]!
LCFI44:
	mov	x29, sp
LCFI45:
	str	x19, [sp, 16]
LCFI46:
	stp	x0, x1, [x29, 48]
	str	s0, [x29, 44]
	mov	x19, x16
	str	x16, [x29, 32]
	.loc 1 321 4
	ldr	x0, [x29, 56]
	ldr	w0, [x0]
	ldr	x1, [x29, 56]
	ldr	w1, [x1, 4]
LBB127:
	cmp	w1, w0
	.loc 1 321 4 is_stmt 0 discriminator 4
	cmp	w1, w0
	blt	L313
	.loc 1 321 4 discriminator 5
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
L313:
	.loc 1 321 4 discriminator 8
	cmp	w1, w0
	.loc 1 322 32 is_stmt 1
	ldp	x0, x1, [x29, 48]
	bl	_interfaces__c__strings__new_string
	.loc 1 322 32 is_stmt 0 discriminator 2
	str	x0, [x29, 88]
	.loc 1 323 7 is_stmt 1
	str	wzr, [x29, 76]
	.loc 1 326 25
	ldr	w0, [x19, 136]
	add	x1, x29, 76
	mov	x2, x1
	ldr	x1, [x29, 88]
	bl	_smc_helper_read_key
	.loc 1 326 25 is_stmt 0 discriminator 2
	str	w0, [x29, 84]
	.loc 1 327 7 is_stmt 1
	ldr	x0, [x29, 88]
	bl	_interfaces__c__strings__free
	.loc 1 327 7 is_stmt 0 discriminator 2
	str	x0, [x29, 88]
	.loc 1 328 7 is_stmt 1
	ldr	w0, [x29, 84]
	cmp	w0, 0
	bne	L316
LBB128:
	.loc 1 330 13
	ldr	s31, [x29, 76]
	str	s31, [x29, 80]
	.loc 1 332 13
	ldr	s31, [x29, 80]
	fcmpe	s31, #0.0
	bge	L321
	b	L316
L321:
	.loc 1 332 27 discriminator 1
	ldr	s31, [x29, 80]
	mov	w0, 1123024896
	fmov	s30, w0
	fcmpe	s31, s30
	bls	L322
	b	L316
L322:
	.loc 1 333 16
	ldr	s31, [x29, 80]
	b	L320
L316:
LBE128:
	.loc 1 337 7
	ldr	s31, [x29, 44]
L320:
LBE127:
	.loc 1 338 8
	fmov	s0, s31
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
LCFI47:
	ret
LFE10:
	.align	2
_smc_daemon___finalizer.13:
LFB11:
	stp	x29, x30, [sp, -32]!
LCFI48:
	mov	x29, sp
LCFI49:
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
LCFI50:
	ret
LFE11:
	.align	2
_smc_daemon__A225b___finalizer.1:
LFB12:
	stp	x29, x30, [sp, -32]!
LCFI51:
	mov	x29, sp
LCFI52:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 56
	bl	_system__tasking__stages__expunge_unactivated_tasks
	ldp	x29, x30, [sp], 32
LCFI53:
	ret
LFE12:
	.align	2
_smc_daemon__A230b___finalizer.2:
LFB13:
	stp	x29, x30, [sp, -32]!
LCFI54:
	mov	x29, sp
LCFI55:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 48
	bl	_system__tasking__stages__expunge_unactivated_tasks
	ldp	x29, x30, [sp], 32
LCFI56:
	ret
LFE13:
	.align	2
_smc_daemon__B_12__B_13___finalizer.6:
LFB14:
	stp	x29, x30, [sp, -32]!
LCFI57:
	mov	x29, sp
LCFI58:
	mov	x0, x16
	str	x16, [x29, 24]
	add	x0, x0, 24
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI59:
	ret
LFE14:
	.align	2
_smc_daemon__L_9__B433b___finalizer.11:
LFB15:
	stp	x29, x30, [sp, -32]!
LCFI60:
	mov	x29, sp
LCFI61:
	mov	x0, x16
	str	x16, [x29, 24]
	bl	_system__secondary_stack__ss_release
	ldp	x29, x30, [sp], 32
LCFI62:
	ret
LFE15:
	.const
	.align	3
_lm_taskT1.18:
	.ascii "lm_task"
	.space 1
	.align	3
_ts_taskT1.17:
	.ascii "ts_task"
	.space 1
	.align	3
_python_path.16:
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/ml_venv/bin/python3"
	.align	3
_fall_path.15:
	.ascii "/usr/local/smcSystemDemandNow/ml_venv/bin/python3"
	.align	3
_hex_map.14:
	.ascii "0123456789abcdef"
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
	.uleb128 0x12b0
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0x9d
	.uleb128 0x256
	.byte	0x9e
	.uleb128 0x255
	.byte	0x4
	.set L$set$13,LCFI6-LCFI5
	.long L$set$13
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$14,LCFI7-LCFI6
	.long L$set$14
	.byte	0x93
	.uleb128 0x254
	.byte	0x94
	.uleb128 0x253
	.byte	0x95
	.uleb128 0x252
	.byte	0x96
	.uleb128 0x251
	.byte	0x97
	.uleb128 0x250
	.byte	0x98
	.uleb128 0x24f
	.byte	0x99
	.uleb128 0x24e
	.byte	0x9a
	.uleb128 0x24d
	.byte	0x9b
	.uleb128 0x24c
	.byte	0x9c
	.uleb128 0x24b
	.byte	0x4
	.set L$set$15,LCFI8-LCFI7
	.long L$set$15
	.byte	0xd
	.uleb128 0x1f
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
	.quad	LFB4
	.set L$set$19,LFE4-LFB4
	.quad L$set$19
	.byte	0x4
	.set L$set$20,LCFI10-LFB4
	.long L$set$20
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
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
	.quad	LFB3
	.set L$set$25,LFE3-LFB3
	.quad L$set$25
	.byte	0x4
	.set L$set$26,LCFI13-LFB3
	.long L$set$26
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$27,LCFI14-LCFI13
	.long L$set$27
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$28,LCFI15-LCFI14
	.long L$set$28
	.byte	0x94
	.uleb128 0x8
	.byte	0x95
	.uleb128 0x7
	.byte	0x4
	.set L$set$29,LCFI16-LCFI15
	.long L$set$29
	.byte	0xde
	.byte	0xdd
	.byte	0xd4
	.byte	0xd5
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE6:
LSFDE8:
	.set L$set$30,LEFDE8-LASFDE8
	.long L$set$30
LASFDE8:
	.set L$set$31,Lframe0-Lsection__debug_frame
	.long L$set$31
	.quad	LFB5
	.set L$set$32,LFE5-LFB5
	.quad L$set$32
	.byte	0x4
	.set L$set$33,LCFI17-LFB5
	.long L$set$33
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$34,LCFI18-LCFI17
	.long L$set$34
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$35,LCFI19-LCFI18
	.long L$set$35
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE8:
LSFDE10:
	.set L$set$36,LEFDE10-LASFDE10
	.long L$set$36
LASFDE10:
	.set L$set$37,Lframe0-Lsection__debug_frame
	.long L$set$37
	.quad	LFB6
	.set L$set$38,LFE6-LFB6
	.quad L$set$38
	.byte	0x4
	.set L$set$39,LCFI20-LFB6
	.long L$set$39
	.byte	0xe
	.uleb128 0x270
	.byte	0x4
	.set L$set$40,LCFI21-LCFI20
	.long L$set$40
	.byte	0x9d
	.uleb128 0x4e
	.byte	0x9e
	.uleb128 0x4d
	.byte	0x4
	.set L$set$41,LCFI22-LCFI21
	.long L$set$41
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$42,LCFI23-LCFI22
	.long L$set$42
	.byte	0x93
	.uleb128 0x4c
	.byte	0x94
	.uleb128 0x4b
	.byte	0x95
	.uleb128 0x4a
	.byte	0x96
	.uleb128 0x49
	.byte	0x97
	.uleb128 0x48
	.byte	0x98
	.uleb128 0x47
	.byte	0x99
	.uleb128 0x46
	.byte	0x9a
	.uleb128 0x45
	.byte	0x9b
	.uleb128 0x44
	.byte	0x9c
	.uleb128 0x43
	.byte	0x4
	.set L$set$43,LCFI24-LCFI23
	.long L$set$43
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$44,LCFI25-LCFI24
	.long L$set$44
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
LEFDE10:
LSFDE12:
	.set L$set$45,LEFDE12-LASFDE12
	.long L$set$45
LASFDE12:
	.set L$set$46,Lframe0-Lsection__debug_frame
	.long L$set$46
	.quad	LFB7
	.set L$set$47,LFE7-LFB7
	.quad L$set$47
	.byte	0x4
	.set L$set$48,LCFI26-LFB7
	.long L$set$48
	.byte	0xe
	.uleb128 0x240
	.byte	0x4
	.set L$set$49,LCFI27-LCFI26
	.long L$set$49
	.byte	0x9d
	.uleb128 0x48
	.byte	0x9e
	.uleb128 0x47
	.byte	0x4
	.set L$set$50,LCFI28-LCFI27
	.long L$set$50
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$51,LCFI29-LCFI28
	.long L$set$51
	.byte	0x93
	.uleb128 0x46
	.byte	0x94
	.uleb128 0x45
	.byte	0x95
	.uleb128 0x44
	.byte	0x96
	.uleb128 0x43
	.byte	0x97
	.uleb128 0x42
	.byte	0x98
	.uleb128 0x41
	.byte	0x99
	.uleb128 0x40
	.byte	0x9a
	.uleb128 0x3f
	.byte	0x9b
	.uleb128 0x3e
	.byte	0x9c
	.uleb128 0x3d
	.byte	0x4
	.set L$set$52,LCFI30-LCFI29
	.long L$set$52
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$53,LCFI31-LCFI30
	.long L$set$53
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
	.uleb128 0x2b0
	.byte	0x4
	.set L$set$58,LCFI33-LCFI32
	.long L$set$58
	.byte	0x9d
	.uleb128 0x52
	.byte	0x9e
	.uleb128 0x51
	.byte	0x4
	.set L$set$59,LCFI34-LCFI33
	.long L$set$59
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x290
	.byte	0x4
	.set L$set$60,LCFI35-LCFI34
	.long L$set$60
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
	.set L$set$61,LCFI36-LCFI35
	.long L$set$61
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x2b0
	.byte	0x4
	.set L$set$62,LCFI37-LCFI36
	.long L$set$62
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
LEFDE14:
LSFDE16:
	.set L$set$63,LEFDE16-LASFDE16
	.long L$set$63
LASFDE16:
	.set L$set$64,Lframe0-Lsection__debug_frame
	.long L$set$64
	.quad	LFB9
	.set L$set$65,LFE9-LFB9
	.quad L$set$65
	.byte	0x4
	.set L$set$66,LCFI38-LFB9
	.long L$set$66
	.byte	0xe
	.uleb128 0x2a0
	.byte	0x4
	.set L$set$67,LCFI39-LCFI38
	.long L$set$67
	.byte	0x9d
	.uleb128 0x50
	.byte	0x9e
	.uleb128 0x4f
	.byte	0x4
	.set L$set$68,LCFI40-LCFI39
	.long L$set$68
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x280
	.byte	0x4
	.set L$set$69,LCFI41-LCFI40
	.long L$set$69
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
	.set L$set$70,LCFI42-LCFI41
	.long L$set$70
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x2a0
	.byte	0x4
	.set L$set$71,LCFI43-LCFI42
	.long L$set$71
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
LEFDE16:
LSFDE18:
	.set L$set$72,LEFDE18-LASFDE18
	.long L$set$72
LASFDE18:
	.set L$set$73,Lframe0-Lsection__debug_frame
	.long L$set$73
	.quad	LFB10
	.set L$set$74,LFE10-LFB10
	.quad L$set$74
	.byte	0x4
	.set L$set$75,LCFI44-LFB10
	.long L$set$75
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$76,LCFI45-LCFI44
	.long L$set$76
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$77,LCFI46-LCFI45
	.long L$set$77
	.byte	0x93
	.uleb128 0xa
	.byte	0x4
	.set L$set$78,LCFI47-LCFI46
	.long L$set$78
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE18:
LSFDE20:
	.set L$set$79,LEFDE20-LASFDE20
	.long L$set$79
LASFDE20:
	.set L$set$80,Lframe0-Lsection__debug_frame
	.long L$set$80
	.quad	LFB11
	.set L$set$81,LFE11-LFB11
	.quad L$set$81
	.byte	0x4
	.set L$set$82,LCFI48-LFB11
	.long L$set$82
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$83,LCFI49-LCFI48
	.long L$set$83
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$84,LCFI50-LCFI49
	.long L$set$84
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE20:
LSFDE22:
	.set L$set$85,LEFDE22-LASFDE22
	.long L$set$85
LASFDE22:
	.set L$set$86,Lframe0-Lsection__debug_frame
	.long L$set$86
	.quad	LFB12
	.set L$set$87,LFE12-LFB12
	.quad L$set$87
	.byte	0x4
	.set L$set$88,LCFI51-LFB12
	.long L$set$88
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$89,LCFI52-LCFI51
	.long L$set$89
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$90,LCFI53-LCFI52
	.long L$set$90
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE22:
LSFDE24:
	.set L$set$91,LEFDE24-LASFDE24
	.long L$set$91
LASFDE24:
	.set L$set$92,Lframe0-Lsection__debug_frame
	.long L$set$92
	.quad	LFB13
	.set L$set$93,LFE13-LFB13
	.quad L$set$93
	.byte	0x4
	.set L$set$94,LCFI54-LFB13
	.long L$set$94
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$95,LCFI55-LCFI54
	.long L$set$95
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$96,LCFI56-LCFI55
	.long L$set$96
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE24:
LSFDE26:
	.set L$set$97,LEFDE26-LASFDE26
	.long L$set$97
LASFDE26:
	.set L$set$98,Lframe0-Lsection__debug_frame
	.long L$set$98
	.quad	LFB14
	.set L$set$99,LFE14-LFB14
	.quad L$set$99
	.byte	0x4
	.set L$set$100,LCFI57-LFB14
	.long L$set$100
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$101,LCFI58-LCFI57
	.long L$set$101
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$102,LCFI59-LCFI58
	.long L$set$102
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE26:
LSFDE28:
	.set L$set$103,LEFDE28-LASFDE28
	.long L$set$103
LASFDE28:
	.set L$set$104,Lframe0-Lsection__debug_frame
	.long L$set$104
	.quad	LFB15
	.set L$set$105,LFE15-LFB15
	.quad L$set$105
	.byte	0x4
	.set L$set$106,LCFI60-LFB15
	.long L$set$106
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$107,LCFI61-LCFI60
	.long L$set$107
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$108,LCFI62-LCFI61
	.long L$set$108
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE28:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$109,LECIE1-LSCIE1
	.long L$set$109
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
LSFDE31:
	.set L$set$110,LEFDE31-LASFDE31
	.long L$set$110
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB2-.
	.set L$set$111,LFE2-LFB2
	.quad L$set$111
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$112,LCFI0-LFB2
	.long L$set$112
	.byte	0xe
	.uleb128 0x150
	.byte	0x9d
	.uleb128 0x2a
	.byte	0x9e
	.uleb128 0x29
	.byte	0x4
	.set L$set$113,LCFI1-LCFI0
	.long L$set$113
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$114,LCFI2-LCFI1
	.long L$set$114
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
	.set L$set$115,LCFI3-LCFI2
	.long L$set$115
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
LEFDE31:
LSFDE33:
	.set L$set$116,LEFDE33-LASFDE33
	.long L$set$116
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB1-.
	.set L$set$117,LFE1-LFB1
	.quad L$set$117
	.uleb128 0x8
	.quad	LLSDA1-.
	.byte	0x4
	.set L$set$118,LCFI4-LFB1
	.long L$set$118
	.byte	0xe
	.uleb128 0x12b0
	.byte	0x4
	.set L$set$119,LCFI5-LCFI4
	.long L$set$119
	.byte	0x9d
	.uleb128 0x256
	.byte	0x9e
	.uleb128 0x255
	.byte	0x4
	.set L$set$120,LCFI6-LCFI5
	.long L$set$120
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$121,LCFI7-LCFI6
	.long L$set$121
	.byte	0x93
	.uleb128 0x254
	.byte	0x94
	.uleb128 0x253
	.byte	0x95
	.uleb128 0x252
	.byte	0x96
	.uleb128 0x251
	.byte	0x97
	.uleb128 0x250
	.byte	0x98
	.uleb128 0x24f
	.byte	0x99
	.uleb128 0x24e
	.byte	0x9a
	.uleb128 0x24d
	.byte	0x9b
	.uleb128 0x24c
	.byte	0x9c
	.uleb128 0x24b
	.byte	0x4
	.set L$set$122,LCFI8-LCFI7
	.long L$set$122
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$123,LCFI9-LCFI8
	.long L$set$123
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
LEFDE33:
LSFDE35:
	.set L$set$124,LEFDE35-LASFDE35
	.long L$set$124
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB4-.
	.set L$set$125,LFE4-LFB4
	.quad L$set$125
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$126,LCFI10-LFB4
	.long L$set$126
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$127,LCFI11-LCFI10
	.long L$set$127
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$128,LCFI12-LCFI11
	.long L$set$128
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE35:
LSFDE37:
	.set L$set$129,LEFDE37-LASFDE37
	.long L$set$129
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB3-.
	.set L$set$130,LFE3-LFB3
	.quad L$set$130
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$131,LCFI13-LFB3
	.long L$set$131
	.byte	0xe
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$132,LCFI14-LCFI13
	.long L$set$132
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$133,LCFI15-LCFI14
	.long L$set$133
	.byte	0x94
	.uleb128 0x8
	.byte	0x95
	.uleb128 0x7
	.byte	0x4
	.set L$set$134,LCFI16-LCFI15
	.long L$set$134
	.byte	0xde
	.byte	0xdd
	.byte	0xd4
	.byte	0xd5
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE37:
LSFDE39:
	.set L$set$135,LEFDE39-LASFDE39
	.long L$set$135
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB5-.
	.set L$set$136,LFE5-LFB5
	.quad L$set$136
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$137,LCFI17-LFB5
	.long L$set$137
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$138,LCFI18-LCFI17
	.long L$set$138
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$139,LCFI19-LCFI18
	.long L$set$139
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE39:
LSFDE41:
	.set L$set$140,LEFDE41-LASFDE41
	.long L$set$140
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB6-.
	.set L$set$141,LFE6-LFB6
	.quad L$set$141
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$142,LCFI20-LFB6
	.long L$set$142
	.byte	0xe
	.uleb128 0x270
	.byte	0x4
	.set L$set$143,LCFI21-LCFI20
	.long L$set$143
	.byte	0x9d
	.uleb128 0x4e
	.byte	0x9e
	.uleb128 0x4d
	.byte	0x4
	.set L$set$144,LCFI22-LCFI21
	.long L$set$144
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$145,LCFI23-LCFI22
	.long L$set$145
	.byte	0x93
	.uleb128 0x4c
	.byte	0x94
	.uleb128 0x4b
	.byte	0x95
	.uleb128 0x4a
	.byte	0x96
	.uleb128 0x49
	.byte	0x97
	.uleb128 0x48
	.byte	0x98
	.uleb128 0x47
	.byte	0x99
	.uleb128 0x46
	.byte	0x9a
	.uleb128 0x45
	.byte	0x9b
	.uleb128 0x44
	.byte	0x9c
	.uleb128 0x43
	.byte	0x4
	.set L$set$146,LCFI24-LCFI23
	.long L$set$146
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$147,LCFI25-LCFI24
	.long L$set$147
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
LEFDE41:
LSFDE43:
	.set L$set$148,LEFDE43-LASFDE43
	.long L$set$148
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB7-.
	.set L$set$149,LFE7-LFB7
	.quad L$set$149
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$150,LCFI26-LFB7
	.long L$set$150
	.byte	0xe
	.uleb128 0x240
	.byte	0x4
	.set L$set$151,LCFI27-LCFI26
	.long L$set$151
	.byte	0x9d
	.uleb128 0x48
	.byte	0x9e
	.uleb128 0x47
	.byte	0x4
	.set L$set$152,LCFI28-LCFI27
	.long L$set$152
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$153,LCFI29-LCFI28
	.long L$set$153
	.byte	0x93
	.uleb128 0x46
	.byte	0x94
	.uleb128 0x45
	.byte	0x95
	.uleb128 0x44
	.byte	0x96
	.uleb128 0x43
	.byte	0x97
	.uleb128 0x42
	.byte	0x98
	.uleb128 0x41
	.byte	0x99
	.uleb128 0x40
	.byte	0x9a
	.uleb128 0x3f
	.byte	0x9b
	.uleb128 0x3e
	.byte	0x9c
	.uleb128 0x3d
	.byte	0x4
	.set L$set$154,LCFI30-LCFI29
	.long L$set$154
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.set L$set$155,LCFI31-LCFI30
	.long L$set$155
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
LEFDE43:
LSFDE45:
	.set L$set$156,LEFDE45-LASFDE45
	.long L$set$156
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB8-.
	.set L$set$157,LFE8-LFB8
	.quad L$set$157
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$158,LCFI32-LFB8
	.long L$set$158
	.byte	0xe
	.uleb128 0x2b0
	.byte	0x4
	.set L$set$159,LCFI33-LCFI32
	.long L$set$159
	.byte	0x9d
	.uleb128 0x52
	.byte	0x9e
	.uleb128 0x51
	.byte	0x4
	.set L$set$160,LCFI34-LCFI33
	.long L$set$160
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x290
	.byte	0x4
	.set L$set$161,LCFI35-LCFI34
	.long L$set$161
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
	.set L$set$162,LCFI36-LCFI35
	.long L$set$162
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x2b0
	.byte	0x4
	.set L$set$163,LCFI37-LCFI36
	.long L$set$163
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
LEFDE45:
LSFDE47:
	.set L$set$164,LEFDE47-LASFDE47
	.long L$set$164
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB9-.
	.set L$set$165,LFE9-LFB9
	.quad L$set$165
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$166,LCFI38-LFB9
	.long L$set$166
	.byte	0xe
	.uleb128 0x2a0
	.byte	0x4
	.set L$set$167,LCFI39-LCFI38
	.long L$set$167
	.byte	0x9d
	.uleb128 0x50
	.byte	0x9e
	.uleb128 0x4f
	.byte	0x4
	.set L$set$168,LCFI40-LCFI39
	.long L$set$168
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x280
	.byte	0x4
	.set L$set$169,LCFI41-LCFI40
	.long L$set$169
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
	.set L$set$170,LCFI42-LCFI41
	.long L$set$170
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0x2a0
	.byte	0x4
	.set L$set$171,LCFI43-LCFI42
	.long L$set$171
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
LEFDE47:
LSFDE49:
	.set L$set$172,LEFDE49-LASFDE49
	.long L$set$172
LASFDE49:
	.long	LASFDE49-EH_frame1
	.quad	LFB10-.
	.set L$set$173,LFE10-LFB10
	.quad L$set$173
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$174,LCFI44-LFB10
	.long L$set$174
	.byte	0xe
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$175,LCFI45-LCFI44
	.long L$set$175
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$176,LCFI46-LCFI45
	.long L$set$176
	.byte	0x93
	.uleb128 0xa
	.byte	0x4
	.set L$set$177,LCFI47-LCFI46
	.long L$set$177
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE49:
LSFDE51:
	.set L$set$178,LEFDE51-LASFDE51
	.long L$set$178
LASFDE51:
	.long	LASFDE51-EH_frame1
	.quad	LFB11-.
	.set L$set$179,LFE11-LFB11
	.quad L$set$179
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$180,LCFI48-LFB11
	.long L$set$180
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$181,LCFI49-LCFI48
	.long L$set$181
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$182,LCFI50-LCFI49
	.long L$set$182
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE51:
LSFDE53:
	.set L$set$183,LEFDE53-LASFDE53
	.long L$set$183
LASFDE53:
	.long	LASFDE53-EH_frame1
	.quad	LFB12-.
	.set L$set$184,LFE12-LFB12
	.quad L$set$184
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$185,LCFI51-LFB12
	.long L$set$185
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$186,LCFI52-LCFI51
	.long L$set$186
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$187,LCFI53-LCFI52
	.long L$set$187
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE53:
LSFDE55:
	.set L$set$188,LEFDE55-LASFDE55
	.long L$set$188
LASFDE55:
	.long	LASFDE55-EH_frame1
	.quad	LFB13-.
	.set L$set$189,LFE13-LFB13
	.quad L$set$189
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$190,LCFI54-LFB13
	.long L$set$190
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$191,LCFI55-LCFI54
	.long L$set$191
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$192,LCFI56-LCFI55
	.long L$set$192
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE55:
LSFDE57:
	.set L$set$193,LEFDE57-LASFDE57
	.long L$set$193
LASFDE57:
	.long	LASFDE57-EH_frame1
	.quad	LFB14-.
	.set L$set$194,LFE14-LFB14
	.quad L$set$194
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$195,LCFI57-LFB14
	.long L$set$195
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$196,LCFI58-LCFI57
	.long L$set$196
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$197,LCFI59-LCFI58
	.long L$set$197
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE57:
LSFDE59:
	.set L$set$198,LEFDE59-LASFDE59
	.long L$set$198
LASFDE59:
	.long	LASFDE59-EH_frame1
	.quad	LFB15-.
	.set L$set$199,LFE15-LFB15
	.quad L$set$199
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$200,LCFI60-LFB15
	.long L$set$200
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$201,LCFI61-LCFI60
	.long L$set$201
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$202,LCFI62-LCFI61
	.long L$set$202
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE59:
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
	.long	0x3c34
	.short	0x4
	.set L$set$203,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$203
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU Ada 15.0.1 20250418 (prerelease) -gnatA -gnat2012 -gnato -gnatwa -gnata -g -gnatR2js -gnatws -gnatis -gnatec=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.30339/GNAT-TEMP-000003.TMP -gnatem=/private/var/folders/vj/2td27x090rqc1ln_jr_6v83m0000gn/T/GPR.30339/GNAT-TEMP-000004.TMP -mmacosx-version-min=14.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -fPIC\0"
	.byte	0xd
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/src/smc_daemon.adb\0"
	.ascii "/usr/local/smcSystemDemandNow/smc_daemon/obj/gnatprove/data_representation\0"
	.quad	Ltext0
	.set L$set$204,LFE10-Ltext0
	.quad L$set$204
	.set L$set$205,Ldebug_line0-Lsection__debug_line
	.long L$set$205
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
	.set L$set$206,LASF0-Lsection__debug_str
	.long L$set$206
	.byte	0x5
	.byte	0
	.long	0x49f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x4e2
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.byte	0
	.long	0x4c6
	.uleb128 0x10
	.ascii "LB0\0"
	.byte	0x5
	.byte	0
	.long	0x50c
	.byte	0
	.uleb128 0x10
	.ascii "UB0\0"
	.byte	0x5
	.byte	0
	.long	0x50c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.set L$set$207,LASF1-Lsection__debug_str
	.long L$set$207
	.byte	0x5
	.byte	0
	.long	0x51f
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	0x484
	.uleb128 0x11
	.long	0x484
	.uleb128 0x11
	.long	0x484
	.uleb128 0x12
	.long	0x2cf
	.long	0x501
	.uleb128 0x13
	.long	0x501
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
	.long	0x501
	.uleb128 0x8
	.byte	0x8
	.long	0x4a5
	.uleb128 0x15
	.ascii "system__strings__string_list\0"
	.byte	0x10
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.long	0x590
	.uleb128 0x16
	.set L$set$208,LASF0-Lsection__debug_str
	.long L$set$208
	.byte	0x4
	.byte	0x2b
	.byte	0x9
	.long	0x558
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x595
	.uleb128 0x17
	.byte	0x8
	.byte	0x4
	.byte	0x2b
	.byte	0x9
	.long	0x582
	.uleb128 0xa
	.ascii "LB0\0"
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.long	0x50c
	.byte	0
	.uleb128 0xa
	.ascii "UB0\0"
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.long	0x50c
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.set L$set$209,LASF1-Lsection__debug_str
	.long L$set$209
	.byte	0x4
	.byte	0x2b
	.byte	0x9
	.long	0x5b4
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	0x525
	.uleb128 0x12
	.long	0x45d
	.long	0x5b4
	.uleb128 0x13
	.long	0x501
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
	.long	0x55e
	.uleb128 0x7
	.ascii "system__tasking__task_id\0"
	.byte	0x6
	.byte	0x6d
	.byte	0x9
	.long	0x5e0
	.uleb128 0xb
	.long	0x5ba
	.uleb128 0x8
	.byte	0x8
	.long	0x5e6
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
	.long	0x8de
	.uleb128 0x19
	.ascii "entry_num\0"
	.byte	0x6
	.short	0x3db
	.byte	0x21
	.long	0x8de
	.byte	0
	.uleb128 0x19
	.ascii "common\0"
	.byte	0x6
	.short	0x3dc
	.byte	0x7
	.long	0x932
	.byte	0x8
	.uleb128 0x1a
	.ascii "entry_calls\0"
	.byte	0x6
	.short	0x3df
	.byte	0x7
	.long	0x2158
	.short	0x530
	.uleb128 0x1a
	.ascii "new_base_priority\0"
	.byte	0x6
	.short	0x3e6
	.byte	0x7
	.long	0xeeb
	.short	0xc50
	.uleb128 0x1a
	.ascii "open_accepts\0"
	.byte	0x6
	.short	0x3eb
	.byte	0x7
	.long	0x218a
	.short	0xc58
	.uleb128 0x1a
	.ascii "chosen_index\0"
	.byte	0x6
	.short	0x3f2
	.byte	0x7
	.long	0x22cd
	.short	0xc68
	.uleb128 0x1a
	.ascii "master_of_task\0"
	.byte	0x6
	.short	0x3fc
	.byte	0x7
	.long	0x22f6
	.short	0xc6c
	.uleb128 0x1a
	.ascii "master_within\0"
	.byte	0x6
	.short	0x403
	.byte	0x7
	.long	0x22f6
	.short	0xc70
	.uleb128 0x1a
	.ascii "alive_count\0"
	.byte	0x6
	.short	0x40c
	.byte	0x7
	.long	0xf5b
	.short	0xc74
	.uleb128 0x1a
	.ascii "awake_count\0"
	.byte	0x6
	.short	0x412
	.byte	0x7
	.long	0xf5b
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
	.long	0x1449
	.short	0xc84
	.uleb128 0x1a
	.ascii "deferral_level\0"
	.byte	0x6
	.short	0x46c
	.byte	0x7
	.long	0xf5b
	.short	0xc88
	.uleb128 0x1a
	.ascii "pending_atc_level\0"
	.byte	0x6
	.short	0x474
	.byte	0x7
	.long	0x2323
	.short	0xc8c
	.uleb128 0x1a
	.ascii "serial_number\0"
	.byte	0x6
	.short	0x482
	.byte	0x7
	.long	0x234a
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
	.long	0x2371
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
	.long	0x2381
	.short	0xcb0
	.uleb128 0x12
	.long	0x23b2
	.long	0x8c5
	.uleb128 0x1b
	.long	0x90b
	.long	0x620
	.byte	0
	.uleb128 0x1a
	.ascii "entry_queues\0"
	.byte	0x6
	.short	0x498
	.byte	0x7
	.long	0x8b2
	.short	0xdb0
	.byte	0
	.uleb128 0x3
	.sleb128 0
	.sleb128 2147483647
	.ascii "system__tasking__task_entry_index\0"
	.long	0x90b
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
	.long	0xc09
	.uleb128 0x19
	.ascii "state\0"
	.byte	0x6
	.short	0x1f7
	.byte	0x7
	.long	0xee6
	.byte	0
	.uleb128 0x19
	.ascii "parent\0"
	.byte	0x6
	.short	0x1ff
	.byte	0x7
	.long	0x5ba
	.byte	0x8
	.uleb128 0x19
	.ascii "base_priority\0"
	.byte	0x6
	.short	0x203
	.byte	0x7
	.long	0xeeb
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
	.long	0xf07
	.byte	0x18
	.uleb128 0x19
	.ascii "current_priority\0"
	.byte	0x6
	.short	0x219
	.byte	0x7
	.long	0xeeb
	.byte	0x1c
	.uleb128 0x19
	.ascii "protected_action_nesting\0"
	.byte	0x6
	.short	0x230
	.byte	0x7
	.long	0xf6e
	.byte	0x20
	.uleb128 0x12
	.long	0x2cf
	.long	0xa0f
	.uleb128 0x1d
	.long	0x501
	.sleb128 256
	.byte	0
	.uleb128 0x19
	.ascii "task_image\0"
	.byte	0x6
	.short	0x237
	.byte	0x7
	.long	0x9fe
	.byte	0x24
	.uleb128 0x1a
	.ascii "task_image_len\0"
	.byte	0x6
	.short	0x23b
	.byte	0x7
	.long	0xf5b
	.short	0x124
	.uleb128 0x1a
	.ascii "call\0"
	.byte	0x6
	.short	0x23e
	.byte	0x7
	.long	0xf73
	.short	0x128
	.uleb128 0x1a
	.ascii "ll\0"
	.byte	0x6
	.short	0x246
	.byte	0x7
	.long	0x14e1
	.short	0x130
	.uleb128 0x1a
	.ascii "task_arg\0"
	.byte	0x6
	.short	0x24d
	.byte	0x7
	.long	0x12d4
	.short	0x1a8
	.uleb128 0x1a
	.ascii "task_alternate_stack\0"
	.byte	0x6
	.short	0x255
	.byte	0x7
	.long	0x12d4
	.short	0x1b0
	.uleb128 0x1a
	.ascii "task_entry_point\0"
	.byte	0x6
	.short	0x25a
	.byte	0x7
	.long	0x16db
	.short	0x1b8
	.uleb128 0x1a
	.ascii "compiler_data\0"
	.byte	0x6
	.short	0x262
	.byte	0x7
	.long	0x171c
	.short	0x1c0
	.uleb128 0x1a
	.ascii "all_tasks_link\0"
	.byte	0x6
	.short	0x268
	.byte	0x7
	.long	0x5ba
	.short	0x460
	.uleb128 0x1a
	.ascii "activation_link\0"
	.byte	0x6
	.short	0x26d
	.byte	0x7
	.long	0x5ba
	.short	0x468
	.uleb128 0x1a
	.ascii "activator\0"
	.byte	0x6
	.short	0x272
	.byte	0x7
	.long	0x5db
	.short	0x470
	.uleb128 0x1a
	.ascii "wait_count\0"
	.byte	0x6
	.short	0x27c
	.byte	0x7
	.long	0xf5b
	.short	0x478
	.uleb128 0x1a
	.ascii "elaborated\0"
	.byte	0x6
	.short	0x297
	.byte	0x7
	.long	0x1ca3
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
	.long	0x1cd2
	.short	0x489
	.uleb128 0x1a
	.ascii "analyzer\0"
	.byte	0x6
	.short	0x2a8
	.byte	0x7
	.long	0x1d76
	.short	0x490
	.uleb128 0x1a
	.ascii "global_task_lock_nesting\0"
	.byte	0x6
	.short	0x2ab
	.byte	0x7
	.long	0xf5b
	.short	0x4e8
	.uleb128 0x1a
	.ascii "fall_back_handler\0"
	.byte	0x6
	.short	0x2b4
	.byte	0x7
	.long	0x1f2e
	.short	0x4f0
	.uleb128 0x1a
	.ascii "specific_handler\0"
	.byte	0x6
	.short	0x2ba
	.byte	0x7
	.long	0x1f2e
	.short	0x500
	.uleb128 0x1a
	.ascii "debug_events\0"
	.byte	0x6
	.short	0x2c0
	.byte	0x7
	.long	0x202f
	.short	0x510
	.uleb128 0x1a
	.ascii "domain\0"
	.byte	0x6
	.short	0x2c4
	.byte	0x7
	.long	0x2063
	.short	0x518
	.byte	0
	.uleb128 0x1e
	.ascii "system__tasking__task_states\0"
	.byte	0x1
	.byte	0x6
	.byte	0x84
	.byte	0x9
	.long	0xee6
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
	.long	0xc09
	.uleb128 0x3
	.sleb128 0
	.sleb128 63
	.ascii "system__any_priority\0"
	.long	0x501
	.uleb128 0x3
	.sleb128 0
	.sleb128 65535
	.ascii "system__multiprocessors__cpu_range\0"
	.long	0xf33
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "system__multiprocessors__Tcpu_rangeB\0"
	.uleb128 0x3
	.sleb128 0
	.sleb128 2147483647
	.ascii "natural\0"
	.long	0x501
	.uleb128 0xb
	.long	0xf5b
	.uleb128 0x7
	.ascii "system__tasking__entry_call_link\0"
	.byte	0x6
	.byte	0xf2
	.byte	0x9
	.long	0xf9c
	.uleb128 0x8
	.byte	0x8
	.long	0xfa2
	.uleb128 0x20
	.ascii "system__tasking__entry_call_record\0"
	.byte	0x60
	.byte	0x6
	.short	0x362
	.byte	0x9
	.long	0x1137
	.uleb128 0x19
	.ascii "self\0"
	.byte	0x6
	.short	0x363
	.byte	0x7
	.long	0x5ba
	.byte	0
	.uleb128 0x19
	.ascii "mode\0"
	.byte	0x6
	.short	0x366
	.byte	0x7
	.long	0x1137
	.byte	0x8
	.uleb128 0x19
	.ascii "state\0"
	.byte	0x6
	.short	0x368
	.byte	0x7
	.long	0x12cf
	.byte	0x9
	.uleb128 0x19
	.ascii "uninterpreted_data\0"
	.byte	0x6
	.short	0x375
	.byte	0x7
	.long	0x12d4
	.byte	0x10
	.uleb128 0x19
	.ascii "exception_to_raise\0"
	.byte	0x6
	.short	0x378
	.byte	0x7
	.long	0x12ec
	.byte	0x18
	.uleb128 0x19
	.ascii "prev\0"
	.byte	0x6
	.short	0x37c
	.byte	0x7
	.long	0xf73
	.byte	0x20
	.uleb128 0x19
	.ascii "next\0"
	.byte	0x6
	.short	0x37e
	.byte	0x7
	.long	0xf73
	.byte	0x28
	.uleb128 0x19
	.ascii "level\0"
	.byte	0x6
	.short	0x380
	.byte	0x7
	.long	0x1449
	.byte	0x30
	.uleb128 0x19
	.ascii "e\0"
	.byte	0x6
	.short	0x387
	.byte	0x7
	.long	0x146b
	.byte	0x34
	.uleb128 0x19
	.ascii "prio\0"
	.byte	0x6
	.short	0x389
	.byte	0x7
	.long	0xeeb
	.byte	0x38
	.uleb128 0x19
	.ascii "called_task\0"
	.byte	0x6
	.short	0x38f
	.byte	0x7
	.long	0x5db
	.byte	0x40
	.uleb128 0x19
	.ascii "called_po\0"
	.byte	0x6
	.short	0x397
	.byte	0x7
	.long	0x12e7
	.byte	0x48
	.uleb128 0x19
	.ascii "acceptor_prev_call\0"
	.byte	0x6
	.short	0x3a2
	.byte	0x7
	.long	0xf73
	.byte	0x50
	.uleb128 0x19
	.ascii "acceptor_prev_priority\0"
	.byte	0x6
	.short	0x3a5
	.byte	0x7
	.long	0x14b5
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
	.long	0x11e3
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
	.long	0x12cf
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
	.long	0x11e3
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "system__address\0"
	.uleb128 0xb
	.long	0x12d4
	.uleb128 0x7
	.ascii "ada__exceptions__exception_id\0"
	.byte	0x7
	.byte	0x9d
	.byte	0x9
	.long	0x1312
	.uleb128 0x8
	.byte	0x8
	.long	0x1318
	.uleb128 0x9
	.ascii "system__standard_library__exception_data\0"
	.byte	0x28
	.byte	0x8
	.byte	0x61
	.byte	0x9
	.long	0x13de
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
	.long	0xf5b
	.byte	0x4
	.uleb128 0xa
	.ascii "full_name\0"
	.byte	0x8
	.byte	0x72
	.byte	0x7
	.long	0x12d4
	.byte	0x8
	.uleb128 0xa
	.ascii "htable_ptr\0"
	.byte	0x8
	.byte	0x76
	.byte	0x7
	.long	0x13de
	.byte	0x10
	.uleb128 0xa
	.ascii "foreign_data\0"
	.byte	0x8
	.byte	0x7b
	.byte	0x7
	.long	0x12d4
	.byte	0x18
	.uleb128 0xa
	.ascii "raise_hook\0"
	.byte	0x8
	.byte	0x7f
	.byte	0x7
	.long	0x1413
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.ascii "system__standard_library__exception_data_ptr\0"
	.byte	0x8
	.byte	0x52
	.byte	0x9
	.long	0x1312
	.uleb128 0x7
	.ascii "system__standard_library__raise_action\0"
	.byte	0x8
	.byte	0x4d
	.byte	0x9
	.long	0x1442
	.uleb128 0x8
	.byte	0x8
	.long	0x1448
	.uleb128 0x22
	.uleb128 0x3
	.sleb128 0
	.sleb128 19
	.ascii "system__tasking__atc_level\0"
	.long	0x501
	.uleb128 0x3
	.sleb128 -2
	.sleb128 2147483647
	.ascii "system__tasking__entry_index\0"
	.long	0x1493
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii "system__tasking__Tentry_indexB\0"
	.uleb128 0x3
	.sleb128 -1
	.sleb128 63
	.ascii "system__tasking__rendezvous_priority\0"
	.long	0x501
	.uleb128 0x9
	.ascii "system__task_primitives__private_data\0"
	.byte	0x78
	.byte	0x9
	.byte	0x5d
	.byte	0x9
	.long	0x1545
	.uleb128 0xa
	.ascii "thread\0"
	.byte	0x9
	.byte	0x5e
	.byte	0x7
	.long	0x1545
	.byte	0
	.uleb128 0xa
	.ascii "lwp\0"
	.byte	0x9
	.byte	0x6a
	.byte	0x7
	.long	0x12d4
	.byte	0x8
	.uleb128 0xa
	.ascii "cv\0"
	.byte	0x9
	.byte	0x6f
	.byte	0x7
	.long	0x1598
	.byte	0x10
	.uleb128 0xa
	.ascii "l\0"
	.byte	0x9
	.byte	0x72
	.byte	0x7
	.long	0x1678
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "system__os_interface__pthread_t\0"
	.long	0x1573
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
	.long	0x15e7
	.uleb128 0x19
	.ascii "sig\0"
	.byte	0xa
	.short	0x247
	.byte	0x7
	.long	0x15e7
	.byte	0
	.uleb128 0x19
	.ascii "opaque\0"
	.byte	0xa
	.short	0x248
	.byte	0x7
	.long	0x1634
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "system__os_interface__long\0"
	.long	0x161b
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "interfaces__c__TlongB\0"
	.uleb128 0x12
	.long	0x1644
	.long	0x1644
	.uleb128 0x1d
	.long	0x24d
	.sleb128 40
	.byte	0
	.uleb128 0x24
	.byte	0
	.byte	0xff
	.ascii "interfaces__c__char\0"
	.long	0x165f
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
	.long	0x16b2
	.uleb128 0xa
	.ascii "data\0"
	.byte	0xb
	.byte	0x34
	.byte	0x7
	.long	0x16b2
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x1644
	.long	0x16c2
	.uleb128 0x25
	.long	0x16c2
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
	.long	0x170b
	.uleb128 0x8
	.byte	0x8
	.long	0x1711
	.uleb128 0x27
	.long	0x171c
	.uleb128 0x28
	.long	0x12d4
	.byte	0
	.uleb128 0x1c
	.ascii "system__soft_links__tsd\0"
	.short	0x2a0
	.byte	0xc
	.short	0x156
	.byte	0x9
	.long	0x17a2
	.uleb128 0x19
	.ascii "pri_stack_info\0"
	.byte	0xc
	.short	0x157
	.byte	0x7
	.long	0x17a2
	.byte	0
	.uleb128 0x19
	.ascii "jmpbuf_address\0"
	.byte	0xc
	.short	0x15d
	.byte	0x7
	.long	0x12d4
	.byte	0x18
	.uleb128 0x19
	.ascii "sec_stack_ptr\0"
	.byte	0xc
	.short	0x163
	.byte	0x7
	.long	0x186a
	.byte	0x20
	.uleb128 0x19
	.ascii "current_excep\0"
	.byte	0xc
	.short	0x166
	.byte	0x7
	.long	0x1b4d
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.ascii "system__stack_checking__stack_info\0"
	.byte	0x18
	.byte	0xd
	.byte	0x30
	.byte	0x9
	.long	0x17fa
	.uleb128 0xa
	.ascii "limit\0"
	.byte	0xd
	.byte	0x31
	.byte	0x7
	.long	0x12d4
	.byte	0
	.uleb128 0xa
	.ascii "base\0"
	.byte	0xd
	.byte	0x32
	.byte	0x7
	.long	0x12d4
	.byte	0x8
	.uleb128 0xa
	.ascii "size\0"
	.byte	0xd
	.byte	0x33
	.byte	0x7
	.long	0x17fa
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "system__storage_elements__storage_offset\0"
	.long	0x183c
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "system__storage_elements__Tstorage_offsetB\0"
	.uleb128 0x7
	.ascii "system__secondary_stack__ss_stack_ptr\0"
	.byte	0xe
	.byte	0x32
	.byte	0x9
	.long	0x1898
	.uleb128 0x8
	.byte	0x8
	.long	0x189e
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
	.long	0x1942
	.uleb128 0xa
	.ascii "default_chunk_size\0"
	.byte	0xe
	.byte	0x2b
	.byte	0x13
	.long	0x1942
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
	.long	0x199c
	.byte	0x10
	.uleb128 0x19
	.ascii "top\0"
	.byte	0xe
	.short	0x142
	.byte	0x7
	.long	0x19d1
	.byte	0x18
	.uleb128 0x19
	.ascii "static_chunk\0"
	.byte	0xe
	.short	0x145
	.byte	0x7
	.long	0x1a8d
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.sleb128 -9223372036854775808
	.sleb128 9223372036854775807
	.ascii "system__parameters__size_type\0"
	.long	0x1979
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.ascii "system__parameters__Tsize_typeB\0"
	.uleb128 0x3
	.sleb128 0
	.sleb128 9223372036854775807
	.ascii "system__secondary_stack__memory_size\0"
	.long	0x1979
	.uleb128 0x20
	.ascii "system__secondary_stack__stack_pointer\0"
	.byte	0x10
	.byte	0xe
	.short	0x12c
	.byte	0x9
	.long	0x1a22
	.uleb128 0x19
	.ascii "byte\0"
	.byte	0xe
	.short	0x12d
	.byte	0x7
	.long	0x1a22
	.byte	0
	.uleb128 0x19
	.ascii "chunk\0"
	.byte	0xe
	.short	0x131
	.byte	0x7
	.long	0x1a58
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.sleb128 0
	.sleb128 9223372036854775807
	.ascii "system__secondary_stack__memory_index\0"
	.long	0x1979
	.uleb128 0x26
	.ascii "system__secondary_stack__ss_chunk_ptr\0"
	.byte	0xe
	.short	0x114
	.byte	0x9
	.long	0x1a87
	.uleb128 0x8
	.byte	0x8
	.long	0x1a8d
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
	.long	0x1b20
	.uleb128 0x19
	.ascii "size\0"
	.byte	0xe
	.short	0x117
	.byte	0x13
	.long	0x199c
	.byte	0
	.uleb128 0x19
	.ascii "next\0"
	.byte	0xe
	.short	0x118
	.byte	0x7
	.long	0x1a58
	.byte	0x8
	.uleb128 0x19
	.ascii "size_up_to_chunk\0"
	.byte	0xe
	.short	0x11c
	.byte	0x7
	.long	0x199c
	.byte	0x10
	.uleb128 0x12
	.long	0x1b20
	.long	0x1b0e
	.uleb128 0x1b
	.long	0x1979
	.long	0x1ac2
	.byte	0
	.uleb128 0x19
	.ascii "memory\0"
	.byte	0xe
	.short	0x121
	.byte	0x7
	.long	0x1afb
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
	.long	0x1c20
	.uleb128 0xa
	.ascii "id\0"
	.byte	0x7
	.byte	0xfb
	.byte	0x7
	.long	0x12ec
	.byte	0
	.uleb128 0xa
	.ascii "machine_occurrence\0"
	.byte	0x7
	.byte	0xfe
	.byte	0x7
	.long	0x12d4
	.byte	0x8
	.uleb128 0x19
	.ascii "msg_length\0"
	.byte	0x7
	.short	0x102
	.byte	0x7
	.long	0xf5b
	.byte	0x10
	.uleb128 0x19
	.ascii "msg\0"
	.byte	0x7
	.short	0x105
	.byte	0x7
	.long	0x1c20
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
	.long	0xf5b
	.byte	0xe0
	.uleb128 0x19
	.ascii "num_tracebacks\0"
	.byte	0x7
	.short	0x114
	.byte	0x7
	.long	0x1c31
	.byte	0xe4
	.uleb128 0x19
	.ascii "tracebacks\0"
	.byte	0x7
	.short	0x117
	.byte	0x7
	.long	0x1c38
	.byte	0xe8
	.byte	0
	.uleb128 0x12
	.long	0x2cf
	.long	0x1c31
	.uleb128 0x1d
	.long	0x501
	.sleb128 200
	.byte	0
	.uleb128 0x2a
	.sleb128 0
	.sleb128 50
	.long	0x501
	.uleb128 0x2b
	.ascii "ada__exceptions__tracebacks_array\0"
	.long	0x1c6a
	.long	0x1c6a
	.uleb128 0x1d
	.long	0x501
	.sleb128 50
	.byte	0
	.uleb128 0x23
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "system__traceback_entries__traceback_entry\0"
	.long	0x12d4
	.uleb128 0x26
	.ascii "system__tasking__access_boolean\0"
	.byte	0x6
	.short	0x1bd
	.byte	0x9
	.long	0x1ccc
	.uleb128 0x8
	.byte	0x8
	.long	0x374
	.uleb128 0x24
	.byte	0
	.byte	0x2
	.ascii "system__task_info__task_info_type\0"
	.long	0x1cfb
	.uleb128 0x2c
	.byte	0x1
	.byte	0x12
	.byte	0x54
	.byte	0x4
	.long	0x1d76
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
	.long	0x1e79
	.uleb128 0x19
	.ascii "task_name\0"
	.byte	0xf
	.short	0x11f
	.byte	0x7
	.long	0x1e79
	.byte	0
	.uleb128 0x19
	.ascii "stack_base\0"
	.byte	0xf
	.short	0x122
	.byte	0x7
	.long	0x1e89
	.byte	0x20
	.uleb128 0x19
	.ascii "stack_size\0"
	.byte	0xf
	.short	0x126
	.byte	0x7
	.long	0xf5b
	.byte	0x28
	.uleb128 0x19
	.ascii "pattern_size\0"
	.byte	0xf
	.short	0x129
	.byte	0x7
	.long	0xf5b
	.byte	0x2c
	.uleb128 0x19
	.ascii "pattern\0"
	.byte	0xf
	.short	0x12c
	.byte	0x7
	.long	0x1ee7
	.byte	0x30
	.uleb128 0x19
	.ascii "pattern_limit\0"
	.byte	0xf
	.short	0x12f
	.byte	0x7
	.long	0x1e89
	.byte	0x38
	.uleb128 0x19
	.ascii "topmost_touched_mark\0"
	.byte	0xf
	.short	0x132
	.byte	0x7
	.long	0x1e89
	.byte	0x40
	.uleb128 0x19
	.ascii "pattern_overlay_address\0"
	.byte	0xf
	.short	0x138
	.byte	0x7
	.long	0x12d4
	.byte	0x48
	.uleb128 0x19
	.ascii "result_id\0"
	.byte	0xf
	.short	0x13c
	.byte	0x7
	.long	0x50c
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.long	0x2cf
	.long	0x1e89
	.uleb128 0x1d
	.long	0x501
	.sleb128 32
	.byte	0
	.uleb128 0x23
	.byte	0
	.quad	0xffffffffffffffff
	.ascii "system__stack_usage__stack_address\0"
	.long	0x1eba
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "system__storage_elements__integer_address\0"
	.uleb128 0x6
	.byte	0
	.long	0xffffffff
	.ascii "system__stack_usage__pattern_type\0"
	.long	0x1f13
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
	.long	0x1f7b
	.uleb128 0x19
	.ascii "P9s\0"
	.byte	0x6
	.short	0x16c
	.byte	0x4
	.long	0x12d4
	.byte	0
	.uleb128 0x19
	.ascii "S10s\0"
	.byte	0x6
	.short	0x16c
	.byte	0x4
	.long	0x2029
	.byte	0x8
	.byte	0
	.uleb128 0x27
	.long	0x1f95
	.uleb128 0x28
	.long	0x12d4
	.uleb128 0x28
	.long	0x1f95
	.uleb128 0x28
	.long	0x5ba
	.uleb128 0x28
	.long	0x2023
	.byte	0
	.uleb128 0x21
	.ascii "system__tasking__cause_of_termination\0"
	.byte	0x1
	.byte	0x6
	.short	0x160
	.byte	0x9
	.long	0x2023
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
	.long	0x1b4d
	.uleb128 0x2e
	.byte	0x8
	.long	0x1f7b
	.uleb128 0x2f
	.ascii "system__tasking__debug_event_array\0"
	.byte	0x1
	.long	0x374
	.long	0x2063
	.uleb128 0x1d
	.long	0x501
	.sleb128 16
	.byte	0
	.uleb128 0x26
	.ascii "system__tasking__dispatching_domain_access\0"
	.byte	0x6
	.short	0x184
	.byte	0x9
	.long	0x2097
	.uleb128 0x30
	.ascii "system__tasking__dispatching_domain\0"
	.byte	0x10
	.byte	0x6
	.short	0x17b
	.byte	0x9
	.long	0x210e
	.uleb128 0x31
	.set L$set$210,LASF0-Lsection__debug_str
	.long L$set$210
	.byte	0x6
	.short	0x184
	.byte	0x9
	.long	0x20d3
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x210e
	.uleb128 0x17
	.byte	0x8
	.byte	0x10
	.byte	0x19
	.byte	0x31
	.long	0x20ff
	.uleb128 0x19
	.ascii "LB0\0"
	.byte	0x6
	.short	0x17b
	.byte	0x9
	.long	0x212d
	.byte	0
	.uleb128 0x19
	.ascii "UB0\0"
	.byte	0x6
	.short	0x17b
	.byte	0x9
	.long	0x212d
	.byte	0x4
	.byte	0
	.uleb128 0x31
	.set L$set$211,LASF1-Lsection__debug_str
	.long L$set$211
	.byte	0x6
	.short	0x184
	.byte	0x9
	.long	0x2152
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	0x374
	.long	0x212d
	.uleb128 0x13
	.long	0xf33
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
	.long	0xf33
	.uleb128 0x8
	.byte	0x8
	.long	0x20d9
	.uleb128 0x2b
	.ascii "system__tasking__entry_call_array\0"
	.long	0xfa2
	.long	0x218a
	.uleb128 0x1d
	.long	0x501
	.sleb128 19
	.byte	0
	.uleb128 0x26
	.ascii "system__tasking__accept_list_access\0"
	.byte	0x6
	.short	0x33c
	.byte	0x9
	.long	0x21b7
	.uleb128 0x30
	.ascii "system__tasking__accept_list\0"
	.byte	0x10
	.byte	0x6
	.short	0x339
	.byte	0x9
	.long	0x2228
	.uleb128 0x31
	.set L$set$212,LASF0-Lsection__debug_str
	.long L$set$212
	.byte	0x6
	.short	0x33c
	.byte	0x9
	.long	0x21ec
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2228
	.uleb128 0x32
	.byte	0x8
	.byte	0x6
	.short	0x332
	.byte	0x2a
	.long	0x2219
	.uleb128 0x19
	.ascii "LB0\0"
	.byte	0x6
	.short	0x339
	.byte	0x9
	.long	0x2296
	.byte	0
	.uleb128 0x19
	.ascii "UB0\0"
	.byte	0x6
	.short	0x339
	.byte	0x9
	.long	0x2296
	.byte	0x4
	.byte	0
	.uleb128 0x31
	.set L$set$213,LASF1-Lsection__debug_str
	.long L$set$213
	.byte	0x6
	.short	0x33c
	.byte	0x9
	.long	0x22c7
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	0x2247
	.long	0x2247
	.uleb128 0x13
	.long	0x501
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
	.long	0x2296
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
	.long	0x8de
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.sleb128 2147483647
	.ascii "system__tasking__positive_select_index\0"
	.long	0x501
	.uleb128 0x8
	.byte	0x8
	.long	0x21f2
	.uleb128 0x3
	.sleb128 0
	.sleb128 2147483647
	.ascii "system__tasking__select_index\0"
	.long	0x501
	.uleb128 0x3
	.sleb128 -2147483648
	.sleb128 2147483647
	.ascii "system__tasking__master_level\0"
	.long	0x501
	.uleb128 0x3
	.sleb128 -1
	.sleb128 20
	.ascii "system__tasking__atc_level_base\0"
	.long	0x501
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
	.long	0x12e7
	.long	0x23b2
	.uleb128 0x1d
	.long	0x501
	.sleb128 32
	.byte	0
	.uleb128 0x9
	.ascii "system__tasking__entry_queue\0"
	.byte	0x10
	.byte	0x6
	.byte	0xf4
	.byte	0x9
	.long	0x23f5
	.uleb128 0xa
	.ascii "head\0"
	.byte	0x6
	.byte	0xf5
	.byte	0x7
	.long	0xf73
	.byte	0
	.uleb128 0xa
	.ascii "tail\0"
	.byte	0x6
	.byte	0xf6
	.byte	0x7
	.long	0xf73
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x7
	.ascii "system__unsigned_types__packed_byte\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x7
	.ascii "interfaces__unsigned_8\0"
	.uleb128 0x4
	.long	0x241c
	.uleb128 0x3
	.sleb128 1901
	.sleb128 2399
	.ascii "ada__calendar__year_number\0"
	.long	0x501
	.uleb128 0x14
	.sleb128 12
	.ascii "ada__calendar__month_number\0"
	.long	0x501
	.uleb128 0x14
	.sleb128 31
	.ascii "ada__calendar__day_number\0"
	.long	0x501
	.uleb128 0x3
	.sleb128 0
	.sleb128 86400000000000
	.ascii "ada__calendar__day_duration\0"
	.long	0x24ca
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
	.long	0x2576
	.uleb128 0xc
	.byte	0x8
	.byte	0xd
	.sleb128 -9
	.ascii "ada__real_time__Ttime_spanB\0"
	.uleb128 0x34
	.ascii "smc_daemon\0"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.ascii "_ada_smc_daemon\0"
	.quad	LFB1
	.set L$set$214,LFE1-LFB1
	.quad L$set$214
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b74
	.uleb128 0x35
	.byte	0x1
	.byte	0x11
	.byte	0x4
	.long	0x3b80
	.uleb128 0x35
	.byte	0x1
	.byte	0x12
	.byte	0x4
	.long	0x3b8c
	.uleb128 0x35
	.byte	0x1
	.byte	0x13
	.byte	0x4
	.long	0x3b99
	.uleb128 0x35
	.byte	0x1
	.byte	0x14
	.byte	0x4
	.long	0x3bd2
	.uleb128 0x35
	.byte	0x1
	.byte	0x15
	.byte	0x4
	.long	0x3bd8
	.uleb128 0x35
	.byte	0x1
	.byte	0x16
	.byte	0x4
	.long	0x3be6
	.uleb128 0x36
	.ascii "smc_daemon__get_euid\0"
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.ascii "geteuid\0"
	.long	0x226
	.uleb128 0x37
	.ascii "smc_daemon__handle_signal\0"
	.byte	0x1
	.byte	0x28
	.byte	0x4
	.quad	LFB2
	.set L$set$215,LFE2-LFB2
	.quad L$set$215
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.byte	0x23
	.uleb128 0x98
	.byte	0x6
	.long	0x269f
	.uleb128 0x38
	.ascii "sig\0"
	.byte	0x1
	.byte	0x25
	.byte	0x1d
	.long	0x248
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x39
	.quad	LBB2
	.set L$set$216,LBE2-LBB2
	.quad L$set$216
	.uleb128 0x12
	.long	0x2cf
	.long	0x268f
	.uleb128 0x1d
	.long	0x501
	.sleb128 77
	.byte	0
	.uleb128 0x3a
	.ascii "S17b\0"
	.long	0x267e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x26aa
	.uleb128 0x28
	.long	0x226
	.byte	0
	.uleb128 0x7
	.ascii "smc_daemon__signal_handler_t\0"
	.byte	0x1
	.byte	0x1e
	.byte	0x9
	.long	0x26cf
	.uleb128 0x8
	.byte	0x8
	.long	0x269f
	.uleb128 0x3b
	.ascii "smc_daemon__c_signal\0"
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.ascii "signal\0"
	.long	0x26aa
	.long	0x2708
	.uleb128 0x28
	.long	0x226
	.uleb128 0x28
	.long	0x26aa
	.byte	0
	.uleb128 0x3c
	.ascii "smc_daemon__float_to_hex\0"
	.byte	0x1
	.byte	0x2e
	.byte	0x4
	.long	0x484
	.quad	LFB3
	.set L$set$217,LFE3-LFB3
	.quad L$set$217
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0x98
	.byte	0x6
	.long	0x2882
	.uleb128 0x38
	.ascii "val\0"
	.byte	0x1
	.byte	0x2e
	.byte	0x1b
	.long	0x36f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.byte	0x1
	.byte	0x2f
	.byte	0x7
	.long	0x3bbf
	.uleb128 0x3d
	.ascii "smc_daemon__float_to_hex__float_to_word\0"
	.long	0x1f13
	.long	0x2795
	.uleb128 0x28
	.long	0x366
	.byte	0
	.uleb128 0x3e
	.ascii "word\0"
	.byte	0x1
	.byte	0x31
	.byte	0x7
	.long	0x1f13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3e
	.ascii "b0\0"
	.byte	0x1
	.byte	0x32
	.byte	0x7
	.long	0x241c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x3e
	.ascii "b1\0"
	.byte	0x1
	.byte	0x32
	.byte	0xb
	.long	0x241c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x3e
	.ascii "b2\0"
	.byte	0x1
	.byte	0x32
	.byte	0xf
	.long	0x241c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -7
	.uleb128 0x3e
	.ascii "b3\0"
	.byte	0x1
	.byte	0x32
	.byte	0x13
	.long	0x241c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x12
	.long	0x2cf
	.long	0x27ed
	.uleb128 0x1d
	.long	0x501
	.sleb128 16
	.byte	0
	.uleb128 0x11
	.long	0x27dd
	.uleb128 0x3e
	.ascii "hex_map\0"
	.byte	0x1
	.byte	0x33
	.byte	0x7
	.long	0x27ed
	.uleb128 0x9
	.byte	0x3
	.quad	_hex_map.14
	.uleb128 0x12
	.long	0x2cf
	.long	0x281c
	.uleb128 0x1d
	.long	0x501
	.sleb128 8
	.byte	0
	.uleb128 0x3e
	.ascii "result\0"
	.byte	0x1
	.byte	0x34
	.byte	0x7
	.long	0x280c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3f
	.ascii "smc_daemon__float_to_hex__to_hex_char\0"
	.byte	0x1
	.byte	0x36
	.byte	0x7
	.long	0x2cf
	.quad	LFB4
	.set L$set$218,LFE4-LFB4
	.quad L$set$218
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.byte	0x6
	.uleb128 0x38
	.ascii "v\0"
	.byte	0x1
	.byte	0x36
	.byte	0x1d
	.long	0x2436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x3e
	.ascii "conn\0"
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.long	0x280
	.uleb128 0x6
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x3e
	.ascii "res\0"
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.long	0x226
	.uleb128 0x6
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x3e
	.ascii "key_f0tg\0"
	.byte	0x1
	.byte	0x58
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3e
	.ascii "key_f1tg\0"
	.byte	0x1
	.byte	0x59
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3e
	.ascii "key_f0md\0"
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x3e
	.ascii "key_f1md\0"
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x3e
	.ascii "key_f0fb\0"
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x3e
	.ascii "key_f1fb\0"
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x3e
	.ascii "key_f0dc\0"
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3e
	.ascii "key_f1dc\0"
	.byte	0x1
	.byte	0x5f
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x3e
	.ascii "key_f0st\0"
	.byte	0x1
	.byte	0x60
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x3e
	.ascii "key_f1st\0"
	.byte	0x1
	.byte	0x61
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x3e
	.ascii "key_f0ac\0"
	.byte	0x1
	.byte	0x62
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x3e
	.ascii "key_f1ac\0"
	.byte	0x1
	.byte	0x63
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3e
	.ascii "key_apmx\0"
	.byte	0x1
	.byte	0x65
	.byte	0x4
	.long	0x29f
	.uleb128 0x5
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x3e
	.ascii "key_mtpl\0"
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.long	0x29f
	.uleb128 0x5
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x3e
	.ascii "hex_01\0"
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.long	0x29f
	.uleb128 0x5
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x3e
	.ascii "hex_00\0"
	.byte	0x1
	.byte	0x69
	.byte	0x4
	.long	0x29f
	.uleb128 0x5
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x3e
	.ascii "hex_fb\0"
	.byte	0x1
	.byte	0x6a
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x3e
	.ascii "hex_dc\0"
	.byte	0x1
	.byte	0x6b
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x3e
	.ascii "hex_st\0"
	.byte	0x1
	.byte	0x6c
	.byte	0x4
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x3e
	.ascii "hex_mtpl_on\0"
	.byte	0x1
	.byte	0x6e
	.byte	0x4
	.long	0x29f
	.uleb128 0x5
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x3e
	.ascii "hex_mtpl_off\0"
	.byte	0x1
	.byte	0x6f
	.byte	0x4
	.long	0x29f
	.uleb128 0x5
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x3e
	.ascii "current_temp\0"
	.byte	0x1
	.byte	0x72
	.byte	0x4
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x3e
	.ascii "prev_temp\0"
	.byte	0x1
	.byte	0x73
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3e
	.ascii "temp_gradient\0"
	.byte	0x1
	.byte	0x74
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3e
	.ascii "power\0"
	.byte	0x1
	.byte	0x76
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3e
	.ascii "battery_percent\0"
	.byte	0x1
	.byte	0x77
	.byte	0x4
	.long	0x21b
	.uleb128 0x5
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x3e
	.ascii "f0ac_val\0"
	.byte	0x1
	.byte	0x79
	.byte	0x4
	.long	0x2dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -620
	.uleb128 0x3e
	.ascii "f1ac_val\0"
	.byte	0x1
	.byte	0x7a
	.byte	0x4
	.long	0x2dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x3e
	.ascii "target_rpm\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x4
	.long	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3e
	.ascii "cpu_gpu_target\0"
	.byte	0x1
	.byte	0x7d
	.byte	0x4
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x3e
	.ascii "battery_target\0"
	.byte	0x1
	.byte	0x7e
	.byte	0x4
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x3e
	.ascii "pid_loop_state\0"
	.byte	0x1
	.byte	0x80
	.byte	0x4
	.long	0x30d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x3e
	.ascii "last_tcmz_temp\0"
	.byte	0x1
	.byte	0x83
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3e
	.ascii "last_gpu_temp\0"
	.byte	0x1
	.byte	0x84
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3e
	.ascii "last_talp_temp\0"
	.byte	0x1
	.byte	0x85
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3e
	.ascii "last_tarf_temp\0"
	.byte	0x1
	.byte	0x86
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3e
	.ascii "last_talt_temp\0"
	.byte	0x1
	.byte	0x87
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3e
	.ascii "last_talw_temp\0"
	.byte	0x1
	.byte	0x88
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3e
	.ascii "last_tart_temp\0"
	.byte	0x1
	.byte	0x89
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3e
	.ascii "last_tarw_temp\0"
	.byte	0x1
	.byte	0x8a
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3e
	.ascii "last_ts0p_temp\0"
	.byte	0x1
	.byte	0x8b
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3e
	.ascii "last_ts1p_temp\0"
	.byte	0x1
	.byte	0x8c
	.byte	0x4
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3e
	.ascii "last_telemetry_time\0"
	.byte	0x1
	.byte	0x8f
	.byte	0x4
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3e
	.ascii "loop_start_time\0"
	.byte	0x1
	.byte	0x90
	.byte	0x4
	.long	0x3ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x3e
	.ascii "prev_x\0"
	.byte	0x1
	.byte	0x93
	.byte	0x4
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3e
	.ascii "prev_y\0"
	.byte	0x1
	.byte	0x93
	.byte	0xc
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3e
	.ascii "prev_z\0"
	.byte	0x1
	.byte	0x93
	.byte	0x14
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3e
	.ascii "cx\0"
	.byte	0x1
	.byte	0x94
	.byte	0x4
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x3e
	.ascii "cy\0"
	.byte	0x1
	.byte	0x94
	.byte	0x8
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x3e
	.ascii "cz\0"
	.byte	0x1
	.byte	0x94
	.byte	0xc
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x3e
	.ascii "prev_sms_valid\0"
	.byte	0x1
	.byte	0x95
	.byte	0x4
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x3e
	.ascii "sms_success\0"
	.byte	0x1
	.byte	0x96
	.byte	0x4
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -417
	.uleb128 0x3e
	.ascii "delta_x\0"
	.byte	0x1
	.byte	0x97
	.byte	0x4
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x3e
	.ascii "delta_y\0"
	.byte	0x1
	.byte	0x97
	.byte	0xd
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x3e
	.ascii "delta_z\0"
	.byte	0x1
	.byte	0x97
	.byte	0x16
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x3e
	.ascii "calibrated_pres_rpm\0"
	.byte	0x1
	.byte	0x9a
	.byte	0x4
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3e
	.ascii "calibration_active\0"
	.byte	0x1
	.byte	0x9b
	.byte	0x4
	.long	0x374
	.uleb128 0x6
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x3e
	.ascii "calibration_start_time\0"
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.long	0x384
	.uleb128 0x5
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x3e
	.ascii "calibration_sum\0"
	.byte	0x1
	.byte	0x9d
	.byte	0x4
	.long	0x366
	.uleb128 0x6
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x3e
	.ascii "calibration_count\0"
	.byte	0x1
	.byte	0x9e
	.byte	0x4
	.long	0xf5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 -816
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x3e
	.ascii "python_pid\0"
	.byte	0x1
	.byte	0xa1
	.byte	0x4
	.long	0x413
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x3e
	.ascii "python_spawned\0"
	.byte	0x1
	.byte	0xa2
	.byte	0x4
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x12
	.long	0x45d
	.long	0x2e6d
	.uleb128 0x1d
	.long	0x501
	.sleb128 1
	.byte	0
	.uleb128 0x3e
	.ascii "python_args\0"
	.byte	0x1
	.byte	0xa3
	.byte	0x4
	.long	0x2e5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x7
	.ascii "smc_daemon__latency_monitor_access\0"
	.byte	0x1
	.byte	0xa6
	.byte	0x9
	.long	0x3bfb
	.uleb128 0x3e
	.ascii "lm_task\0"
	.byte	0x1
	.byte	0xa9
	.byte	0x4
	.long	0x2e85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x7
	.ascii "smc_daemon__thermal_suspender_access\0"
	.byte	0x1
	.byte	0xa7
	.byte	0x9
	.long	0x3c18
	.uleb128 0x3e
	.ascii "ts_task\0"
	.byte	0x1
	.byte	0xaa
	.byte	0x4
	.long	0x2ec4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x37
	.ascii "smc_daemon__run_power_command\0"
	.byte	0x1
	.byte	0xac
	.byte	0x4
	.quad	LFB5
	.set L$set$219,LFE5-LFB5
	.quad L$set$219
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x23
	.uleb128 0x98
	.byte	0x6
	.long	0x2f76
	.uleb128 0x40
	.set L$set$220,LASF2-Lsection__debug_str
	.long L$set$220
	.byte	0x1
	.byte	0xac
	.byte	0x21
	.long	0x590
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.quad	LBB107
	.set L$set$221,LBE107-LBB107
	.quad L$set$221
	.uleb128 0x41
	.set L$set$222,LASF3-Lsection__debug_str
	.long L$set$222
	.byte	0x1
	.byte	0xad
	.byte	0x7
	.long	0x374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x37
	.ascii "smc_daemon__activate_turbo_mode\0"
	.byte	0x1
	.byte	0xb2
	.byte	0x4
	.quad	LFB6
	.set L$set$223,LFE6-LFB6
	.quad L$set$223
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0x23
	.uleb128 0x98
	.byte	0x6
	.long	0x311d
	.uleb128 0x38
	.ascii "reason\0"
	.byte	0x1
	.byte	0xb2
	.byte	0x23
	.long	0x4d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x42
	.quad	LBB110
	.set L$set$224,LBE110-LBB110
	.quad L$set$224
	.long	0x3040
	.uleb128 0x3a
	.ascii "smc_daemon__activate_turbo_mode__B54b__TTS60bSP1___U\0"
	.long	0x501
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x12
	.long	0x2cf
	.long	0x3031
	.uleb128 0x1b
	.long	0x501
	.long	0x2fe1
	.byte	0
	.uleb128 0x3a
	.ascii "S60b\0"
	.long	0x301e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x42
	.quad	LBB112
	.set L$set$225,LBE112-LBB112
	.quad L$set$225
	.long	0x3076
	.uleb128 0x12
	.long	0x45d
	.long	0x3065
	.uleb128 0x1d
	.long	0x501
	.sleb128 2
	.byte	0
	.uleb128 0x41
	.set L$set$226,LASF2-Lsection__debug_str
	.long L$set$226
	.byte	0x1
	.byte	0xc1
	.byte	0xa
	.long	0x3055
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x42
	.quad	LBB113
	.set L$set$227,LBE113-LBB113
	.quad L$set$227
	.long	0x30ac
	.uleb128 0x12
	.long	0x45d
	.long	0x309b
	.uleb128 0x1d
	.long	0x501
	.sleb128 2
	.byte	0
	.uleb128 0x41
	.set L$set$228,LASF2-Lsection__debug_str
	.long L$set$228
	.byte	0x1
	.byte	0xd2
	.byte	0xa
	.long	0x308b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x39
	.quad	LBB114
	.set L$set$229,LBE114-LBB114
	.quad L$set$229
	.uleb128 0x3a
	.ascii "smc_daemon__activate_turbo_mode__B80b__TTS86bSP1___U\0"
	.long	0x501
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.long	0x2cf
	.long	0x310d
	.uleb128 0x1b
	.long	0x501
	.long	0x30bd
	.byte	0
	.uleb128 0x3a
	.ascii "S86b\0"
	.long	0x30fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x37
	.ascii "smc_daemon__deactivate_turbo_mode\0"
	.byte	0x1
	.byte	0xe4
	.byte	0x4
	.quad	LFB7
	.set L$set$230,LFE7-LFB7
	.quad L$set$230
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x23
	.uleb128 0x98
	.byte	0x6
	.long	0x3254
	.uleb128 0x38
	.ascii "reason\0"
	.byte	0x1
	.byte	0xe4
	.byte	0x25
	.long	0x4d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.quad	LBB118
	.set L$set$231,LBE118-LBB118
	.quad L$set$231
	.long	0x31eb
	.uleb128 0x3a
	.ascii "smc_daemon__deactivate_turbo_mode__B89b__TTS95bSP1___U\0"
	.long	0x501
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x12
	.long	0x2cf
	.long	0x31dc
	.uleb128 0x1b
	.long	0x501
	.long	0x318a
	.byte	0
	.uleb128 0x3a
	.ascii "S95b\0"
	.long	0x31c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x42
	.quad	LBB120
	.set L$set$232,LBE120-LBB120
	.quad L$set$232
	.long	0x3221
	.uleb128 0x12
	.long	0x45d
	.long	0x3210
	.uleb128 0x1d
	.long	0x501
	.sleb128 2
	.byte	0
	.uleb128 0x41
	.set L$set$233,LASF2-Lsection__debug_str
	.long L$set$233
	.byte	0x1
	.byte	0xf4
	.byte	0xa
	.long	0x3200
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x39
	.quad	LBB121
	.set L$set$234,LBE121-LBB121
	.quad L$set$234
	.uleb128 0x12
	.long	0x45d
	.long	0x3242
	.uleb128 0x1d
	.long	0x501
	.sleb128 2
	.byte	0
	.uleb128 0x41
	.set L$set$235,LASF2-Lsection__debug_str
	.long L$set$235
	.byte	0x1
	.byte	0xff
	.byte	0xa
	.long	0x3232
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x43
	.ascii "smc_daemon__get_time_str\0"
	.byte	0x1
	.short	0x120
	.byte	0x4
	.long	0x484
	.quad	LFB8
	.set L$set$236,LFE8-LFB8
	.quad L$set$236
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.byte	0x91
	.sleb128 -200
	.byte	0x6
	.byte	0x23
	.uleb128 0x98
	.byte	0x6
	.long	0x338d
	.uleb128 0x44
	.byte	0x1
	.short	0x121
	.byte	0x7
	.long	0x3bb3
	.uleb128 0x45
	.ascii "now\0"
	.byte	0x1
	.short	0x122
	.byte	0x7
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x45
	.ascii "year\0"
	.byte	0x1
	.short	0x123
	.byte	0x7
	.long	0x243b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x45
	.ascii "month\0"
	.byte	0x1
	.short	0x124
	.byte	0x7
	.long	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x45
	.ascii "day\0"
	.byte	0x1
	.short	0x125
	.byte	0x7
	.long	0x2481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x45
	.ascii "seconds\0"
	.byte	0x1
	.short	0x126
	.byte	0x7
	.long	0x24a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x45
	.ascii "hour\0"
	.byte	0x1
	.short	0x127
	.byte	0x7
	.long	0xf5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x45
	.ascii "min\0"
	.byte	0x1
	.short	0x127
	.byte	0xd
	.long	0xf5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x45
	.ascii "sec\0"
	.byte	0x1
	.short	0x127
	.byte	0x12
	.long	0xf5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.ascii "L171b\0"
	.long	0x501
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3a
	.ascii "smc_daemon__get_time_str__TTS172bSP1___U\0"
	.long	0x501
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	0x2cf
	.long	0x337c
	.uleb128 0x46
	.long	0x501
	.long	0x3326
	.long	0x3334
	.byte	0
	.uleb128 0x3a
	.ascii "S172b\0"
	.long	0x3365
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x43
	.ascii "smc_daemon__get_day_str\0"
	.byte	0x1
	.short	0x132
	.byte	0x4
	.long	0x484
	.quad	LFB9
	.set L$set$237,LFE9-LFB9
	.quad L$set$237
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.byte	0x23
	.uleb128 0x98
	.byte	0x6
	.long	0x3493
	.uleb128 0x44
	.byte	0x1
	.short	0x133
	.byte	0x7
	.long	0x3bb3
	.uleb128 0x45
	.ascii "now\0"
	.byte	0x1
	.short	0x134
	.byte	0x7
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x45
	.ascii "year\0"
	.byte	0x1
	.short	0x135
	.byte	0x7
	.long	0x243b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x45
	.ascii "month\0"
	.byte	0x1
	.short	0x136
	.byte	0x7
	.long	0x245f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x45
	.ascii "day\0"
	.byte	0x1
	.short	0x137
	.byte	0x7
	.long	0x2481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x45
	.ascii "seconds\0"
	.byte	0x1
	.short	0x138
	.byte	0x7
	.long	0x24a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.ascii "L213b\0"
	.long	0x501
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3a
	.ascii "smc_daemon__get_day_str__TTS214bSP1___U\0"
	.long	0x501
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	0x2cf
	.long	0x3482
	.uleb128 0x46
	.long	0x501
	.long	0x342d
	.long	0x343b
	.byte	0
	.uleb128 0x3a
	.ascii "S214b\0"
	.long	0x346b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x43
	.ascii "smc_daemon__read_and_validate_smc_temp\0"
	.byte	0x1
	.short	0x141
	.byte	0x4
	.long	0x366
	.quad	LFB10
	.set L$set$238,LFE10-LFB10
	.quad L$set$238
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x23
	.uleb128 0x98
	.byte	0x6
	.long	0x357b
	.uleb128 0x47
	.ascii "key\0"
	.byte	0x1
	.short	0x141
	.byte	0x29
	.long	0x4dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x47
	.ascii "last_val\0"
	.byte	0x1
	.short	0x141
	.byte	0x37
	.long	0x36f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.quad	LBB127
	.set L$set$239,LBE127-LBB127
	.quad L$set$239
	.uleb128 0x45
	.ascii "key_char\0"
	.byte	0x1
	.short	0x142
	.byte	0x7
	.long	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x45
	.ascii "val_float\0"
	.byte	0x1
	.short	0x143
	.byte	0x7
	.long	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x45
	.ascii "read_res\0"
	.byte	0x1
	.short	0x144
	.byte	0x7
	.long	0x226
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x39
	.quad	LBB128
	.set L$set$240,LBE128-LBB128
	.quad L$set$240
	.uleb128 0x45
	.ascii "val\0"
	.byte	0x1
	.short	0x14a
	.byte	0xd
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.ascii "sig_resint\0"
	.byte	0x1
	.short	0x155
	.byte	0x4
	.long	0x26aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x45
	.ascii "sig_resterm\0"
	.byte	0x1
	.short	0x156
	.byte	0x4
	.long	0x26aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x42
	.quad	LBB10
	.set L$set$241,LBE10-LBB10
	.quad L$set$241
	.long	0x35e2
	.uleb128 0x12
	.long	0x2cf
	.long	0x35d2
	.uleb128 0x1d
	.long	0x501
	.sleb128 68
	.byte	0
	.uleb128 0x3a
	.ascii "S245b\0"
	.long	0x35c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.byte	0
	.uleb128 0x48
	.set L$set$242,Ldebug_ranges0+0-Lsection__debug_ranges
	.long L$set$242
	.long	0x363f
	.uleb128 0x49
	.set L$set$243,LASF3-Lsection__debug_str
	.long L$set$243
	.byte	0x1
	.short	0x175
	.byte	0x7
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -297
	.uleb128 0x12
	.long	0x45d
	.long	0x360c
	.uleb128 0x1d
	.long	0x501
	.sleb128 3
	.byte	0
	.uleb128 0x49
	.set L$set$244,LASF2-Lsection__debug_str
	.long L$set$244
	.byte	0x1
	.short	0x176
	.byte	0x7
	.long	0x35fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.uleb128 0x39
	.quad	LBB15
	.set L$set$245,LBE15-LBB15
	.quad L$set$245
	.uleb128 0x45
	.ascii "i\0"
	.byte	0x1
	.short	0x17c
	.byte	0xb
	.long	0x501
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x48
	.set L$set$246,Ldebug_ranges0+0x30-Lsection__debug_ranges
	.long L$set$246
	.long	0x376e
	.uleb128 0x12
	.long	0x2cf
	.long	0x3658
	.uleb128 0x1d
	.long	0x501
	.sleb128 60
	.byte	0
	.uleb128 0x11
	.long	0x3648
	.uleb128 0x45
	.ascii "python_path\0"
	.byte	0x1
	.short	0x182
	.byte	0x7
	.long	0x3658
	.uleb128 0x9
	.byte	0x3
	.quad	_python_path.16
	.uleb128 0x12
	.long	0x2cf
	.long	0x368c
	.uleb128 0x1d
	.long	0x501
	.sleb128 49
	.byte	0
	.uleb128 0x11
	.long	0x367c
	.uleb128 0x45
	.ascii "fall_path\0"
	.byte	0x1
	.short	0x183
	.byte	0x7
	.long	0x368c
	.uleb128 0x9
	.byte	0x3
	.quad	_fall_path.15
	.uleb128 0x12
	.long	0x2cf
	.long	0x36bf
	.uleb128 0x1d
	.long	0x501
	.sleb128 256
	.byte	0
	.uleb128 0x45
	.ascii "exec_path\0"
	.byte	0x1
	.short	0x184
	.byte	0x7
	.long	0x36ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.uleb128 0x45
	.ascii "len\0"
	.byte	0x1
	.short	0x185
	.byte	0x7
	.long	0xf5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3a
	.ascii "EXPTR\0"
	.long	0x3c35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x3a
	.ascii "EXCLN\0"
	.long	0x3c35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x3a
	.ascii "EXPRP\0"
	.long	0x3c35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x4a
	.set L$set$247,Ldebug_ranges0+0x70-Lsection__debug_ranges
	.long L$set$247
	.uleb128 0x3a
	.ascii "smc_daemon__B_8__B273b__TTS282bSP1___U\0"
	.long	0x501
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x12
	.long	0x2cf
	.long	0x375c
	.uleb128 0x1b
	.long	0x501
	.long	0x3719
	.byte	0
	.uleb128 0x3a
	.ascii "S282b\0"
	.long	0x3749
	.uleb128 0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x42
	.quad	LBB24
	.set L$set$248,LBE24-LBB24
	.quad L$set$248
	.long	0x37a4
	.uleb128 0x12
	.long	0x2cf
	.long	0x3794
	.uleb128 0x1d
	.long	0x501
	.sleb128 75
	.byte	0
	.uleb128 0x3a
	.ascii "S302b\0"
	.long	0x3783
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.byte	0
	.uleb128 0x42
	.quad	LBB44
	.set L$set$249,LBE44-LBB44
	.quad L$set$249
	.long	0x37ed
	.uleb128 0x45
	.ascii "precool_active\0"
	.byte	0x1
	.short	0x1e9
	.byte	0xa
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -361
	.uleb128 0x45
	.ascii "time_left\0"
	.byte	0x1
	.short	0x1ea
	.byte	0xa
	.long	0x2371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0
	.uleb128 0x42
	.quad	LBB46
	.set L$set$250,LBE46-LBB46
	.quad L$set$250
	.long	0x3819
	.uleb128 0x45
	.ascii "tb0t_val\0"
	.byte	0x1
	.short	0x1fc
	.byte	0xa
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.byte	0
	.uleb128 0x48
	.set L$set$251,Ldebug_ranges0+0xa0-Lsection__debug_ranges
	.long L$set$251
	.long	0x38a5
	.uleb128 0x45
	.ascii "f0tg_hex\0"
	.byte	0x1
	.short	0x20f
	.byte	0xa
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x45
	.ascii "f1tg_hex\0"
	.byte	0x1
	.short	0x210
	.byte	0xa
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4a
	.set L$set$252,Ldebug_ranges0+0xd0-Lsection__debug_ranges
	.long L$set$252
	.uleb128 0x3a
	.ascii "B329b\0"
	.long	0x501
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x3a
	.ascii "B333b\0"
	.long	0x501
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x12
	.long	0x2cf
	.long	0x3888
	.uleb128 0x46
	.long	0x501
	.long	0x3853
	.long	0x3862
	.byte	0
	.uleb128 0x45
	.ascii "hex_str\0"
	.byte	0x1
	.short	0x217
	.byte	0x10
	.long	0x389d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2d
	.byte	0x8
	.long	0x3871
	.byte	0
	.byte	0
	.uleb128 0x42
	.quad	LBB57
	.set L$set$253,LBE57-LBB57
	.quad L$set$253
	.long	0x38da
	.uleb128 0x12
	.long	0x2cf
	.long	0x38ca
	.uleb128 0x1d
	.long	0x501
	.sleb128 30
	.byte	0
	.uleb128 0x3a
	.ascii "S352b\0"
	.long	0x38ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.byte	0
	.uleb128 0x42
	.quad	LBB59
	.set L$set$254,LBE59-LBB59
	.quad L$set$254
	.long	0x390f
	.uleb128 0x12
	.long	0x2cf
	.long	0x38ff
	.uleb128 0x1d
	.long	0x501
	.sleb128 29
	.byte	0
	.uleb128 0x3a
	.ascii "S368b\0"
	.long	0x38ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -960
	.byte	0
	.uleb128 0x42
	.quad	LBB61
	.set L$set$255,LBE61-LBB61
	.quad L$set$255
	.long	0x3944
	.uleb128 0x12
	.long	0x2cf
	.long	0x3934
	.uleb128 0x1d
	.long	0x501
	.sleb128 31
	.byte	0
	.uleb128 0x3a
	.ascii "S384b\0"
	.long	0x3924
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.byte	0
	.uleb128 0x42
	.quad	LBB64
	.set L$set$256,LBE64-LBB64
	.quad L$set$256
	.long	0x39fe
	.uleb128 0x45
	.ascii "avg_rpm\0"
	.byte	0x1
	.short	0x253
	.byte	0x10
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x45
	.ascii "diff\0"
	.byte	0x1
	.short	0x254
	.byte	0x10
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x45
	.ascii "est_hpa\0"
	.byte	0x1
	.short	0x255
	.byte	0x10
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x42
	.quad	LBB65
	.set L$set$257,LBE65-LBB65
	.quad L$set$257
	.long	0x39cb
	.uleb128 0x12
	.long	0x2cf
	.long	0x39bb
	.uleb128 0x1d
	.long	0x501
	.sleb128 85
	.byte	0
	.uleb128 0x3a
	.ascii "S401b\0"
	.long	0x39aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.byte	0
	.uleb128 0x39
	.quad	LBB67
	.set L$set$258,LBE67-LBB67
	.quad L$set$258
	.uleb128 0x12
	.long	0x2cf
	.long	0x39ed
	.uleb128 0x1d
	.long	0x501
	.sleb128 77
	.byte	0
	.uleb128 0x3a
	.ascii "S417b\0"
	.long	0x39dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.byte	0
	.byte	0
	.uleb128 0x42
	.quad	LBB83
	.set L$set$259,LBE83-LBB83
	.quad L$set$259
	.long	0x3a47
	.uleb128 0x45
	.ascii "elapsed_span\0"
	.byte	0x1
	.short	0x293
	.byte	0xa
	.long	0x2543
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x45
	.ascii "target_span\0"
	.byte	0x1
	.short	0x294
	.byte	0xa
	.long	0x2543
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.byte	0
	.uleb128 0x42
	.quad	LBB87
	.set L$set$260,LBE87-LBB87
	.quad L$set$260
	.long	0x3a8f
	.uleb128 0x49
	.set L$set$261,LASF3-Lsection__debug_str
	.long L$set$261
	.byte	0x1
	.short	0x2a2
	.byte	0xa
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -465
	.uleb128 0x12
	.long	0x45d
	.long	0x3a7d
	.uleb128 0x1d
	.long	0x501
	.sleb128 3
	.byte	0
	.uleb128 0x49
	.set L$set$262,LASF2-Lsection__debug_str
	.long L$set$262
	.byte	0x1
	.short	0x2a3
	.byte	0xa
	.long	0x3a6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.byte	0
	.uleb128 0x42
	.quad	LBB90
	.set L$set$263,LBE90-LBB90
	.quad L$set$263
	.long	0x3ad7
	.uleb128 0x49
	.set L$set$264,LASF3-Lsection__debug_str
	.long L$set$264
	.byte	0x1
	.short	0x2b2
	.byte	0x7
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -466
	.uleb128 0x12
	.long	0x45d
	.long	0x3ac5
	.uleb128 0x1d
	.long	0x501
	.sleb128 2
	.byte	0
	.uleb128 0x49
	.set L$set$265,LASF2-Lsection__debug_str
	.long L$set$265
	.byte	0x1
	.short	0x2b3
	.byte	0x7
	.long	0x3ab5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.byte	0
	.uleb128 0x42
	.quad	LBB92
	.set L$set$266,LBE92-LBB92
	.quad L$set$266
	.long	0x3b40
	.uleb128 0x49
	.set L$set$267,LASF3-Lsection__debug_str
	.long L$set$267
	.byte	0x1
	.short	0x2bd
	.byte	0x7
	.long	0x374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -467
	.uleb128 0x12
	.long	0x45d
	.long	0x3b0d
	.uleb128 0x1d
	.long	0x501
	.sleb128 3
	.byte	0
	.uleb128 0x49
	.set L$set$268,LASF2-Lsection__debug_str
	.long L$set$268
	.byte	0x1
	.short	0x2be
	.byte	0x7
	.long	0x3afd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.uleb128 0x39
	.quad	LBB94
	.set L$set$269,LBE94-LBB94
	.quad L$set$269
	.uleb128 0x45
	.ascii "i\0"
	.byte	0x1
	.short	0x2c4
	.byte	0xb
	.long	0x501
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.uleb128 0x39
	.quad	LBB96
	.set L$set$270,LBE96-LBB96
	.quad L$set$270
	.uleb128 0x12
	.long	0x45d
	.long	0x3b61
	.uleb128 0x1d
	.long	0x501
	.sleb128 2
	.byte	0
	.uleb128 0x49
	.set L$set$271,LASF2-Lsection__debug_str
	.long L$set$271
	.byte	0x1
	.short	0x2ca
	.byte	0x7
	.long	0x3b51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.byte	0
	.byte	0
	.uleb128 0x4b
	.ascii "ada\0"
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.long	0x3bbf
	.uleb128 0x4c
	.ascii "text_io\0"
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.uleb128 0x4c
	.ascii "calendar\0"
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.uleb128 0x4c
	.ascii "real_time\0"
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.uleb128 0x4d
	.ascii "strings\0"
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.uleb128 0x4c
	.ascii "fixed\0"
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4b
	.ascii "interfaces\0"
	.byte	0x1
	.byte	0x6
	.byte	0x6
	.long	0x3be6
	.uleb128 0x4d
	.ascii "c\0"
	.byte	0x1
	.byte	0x6
	.byte	0x6
	.uleb128 0x4c
	.ascii "strings\0"
	.byte	0x1
	.byte	0x7
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4c
	.ascii "smc_daemon_state\0"
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.uleb128 0x8
	.byte	0x8
	.long	0x3c01
	.uleb128 0x17
	.byte	0x8
	.byte	0x11
	.byte	0x15
	.byte	0x4
	.long	0x3c18
	.uleb128 0x16
	.set L$set$272,LASF4-Lsection__debug_str
	.long L$set$272
	.byte	0x11
	.byte	0x15
	.byte	0x4
	.long	0x5ba
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3c1e
	.uleb128 0x17
	.byte	0x8
	.byte	0x11
	.byte	0x16
	.byte	0x4
	.long	0x3c35
	.uleb128 0x16
	.set L$set$273,LASF4-Lsection__debug_str
	.long L$set$273
	.byte	0x11
	.byte	0x16
	.byte	0x4
	.long	0x5ba
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x48
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x5
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
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.set L$set$274,Ldebug_info0-Lsection__debug_info
	.long L$set$274
	.long	0x3c38
	.long	0x2596
	.ascii "smc_daemon\0"
	.long	0x3b74
	.ascii "ada\0"
	.long	0x3b80
	.ascii "text_io\0"
	.long	0x3b8c
	.ascii "calendar\0"
	.long	0x3b99
	.ascii "real_time\0"
	.long	0x3bbf
	.ascii "interfaces\0"
	.long	0x3bd2
	.ascii "c\0"
	.long	0x3bd8
	.ascii "strings\0"
	.long	0x3be6
	.ascii "smc_daemon_state\0"
	.long	0x25fb
	.ascii "smc_daemon__get_euid\0"
	.long	0x26d5
	.ascii "smc_daemon__c_signal\0"
	.long	0x3ba7
	.ascii "strings\0"
	.long	0x3bb3
	.ascii "fixed\0"
	.long	0
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.long	0x8a3
	.short	0x2
	.set L$set$275,Ldebug_info0-Lsection__debug_info
	.long L$set$275
	.long	0x3c38
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
	.long	0x501
	.ascii "integer\0"
	.long	0x484
	.ascii "string\0"
	.long	0x45d
	.ascii "system__strings__string_access\0"
	.long	0x525
	.ascii "system__strings__string_list\0"
	.long	0xc09
	.ascii "system__tasking__task_states\0"
	.long	0x1137
	.ascii "system__tasking__call_modes\0"
	.long	0x11e3
	.ascii "system__tasking__entry_call_state\0"
	.long	0x12d4
	.ascii "system__address\0"
	.long	0x13de
	.ascii "system__standard_library__exception_data_ptr\0"
	.long	0x1413
	.ascii "system__standard_library__raise_action\0"
	.long	0x1318
	.ascii "system__standard_library__exception_data\0"
	.long	0x12ec
	.ascii "ada__exceptions__exception_id\0"
	.long	0xfa2
	.ascii "system__tasking__entry_call_record\0"
	.long	0xf73
	.ascii "system__tasking__entry_call_link\0"
	.long	0x165f
	.ascii "interfaces__c__TcharB\0"
	.long	0x1598
	.ascii "system__os_interface__pthread_cond_t\0"
	.long	0x16c2
	.ascii "interfaces__c__size_t\0"
	.long	0x1678
	.ascii "system__os_locks__pthread_mutex_t\0"
	.long	0x14e1
	.ascii "system__task_primitives__private_data\0"
	.long	0x16db
	.ascii "system__tasking__task_procedure_access\0"
	.long	0x17a2
	.ascii "system__stack_checking__stack_info\0"
	.long	0x1b20
	.ascii "system__storage_elements__storage_element\0"
	.long	0x1a8d
	.ascii "system__secondary_stack__ss_chunk\0"
	.long	0x1a58
	.ascii "system__secondary_stack__ss_chunk_ptr\0"
	.long	0x19d1
	.ascii "system__secondary_stack__stack_pointer\0"
	.long	0x189e
	.ascii "system__secondary_stack__ss_stack\0"
	.long	0x186a
	.ascii "system__secondary_stack__ss_stack_ptr\0"
	.long	0x1c38
	.ascii "ada__exceptions__tracebacks_array\0"
	.long	0x1b4d
	.ascii "ada__exceptions__exception_occurrence\0"
	.long	0x171c
	.ascii "system__soft_links__tsd\0"
	.long	0x1ca3
	.ascii "system__tasking__access_boolean\0"
	.long	0x1eba
	.ascii "system__storage_elements__integer_address\0"
	.long	0x1f13
	.ascii "interfaces__unsigned_32\0"
	.long	0x1d76
	.ascii "system__stack_usage__stack_analyzer\0"
	.long	0x1f95
	.ascii "system__tasking__cause_of_termination\0"
	.long	0x1f2e
	.ascii "system__tasking__termination_handler\0"
	.long	0x202f
	.ascii "system__tasking__debug_event_array\0"
	.long	0x2097
	.ascii "system__tasking__dispatching_domain\0"
	.long	0x2063
	.ascii "system__tasking__dispatching_domain_access\0"
	.long	0x932
	.ascii "system__tasking__common_atcb\0"
	.long	0x2158
	.ascii "system__tasking__entry_call_array\0"
	.long	0x2247
	.ascii "system__tasking__accept_alternative\0"
	.long	0x21b7
	.ascii "system__tasking__accept_list\0"
	.long	0x218a
	.ascii "system__tasking__accept_list_access\0"
	.long	0x234a
	.ascii "system__tasking__task_serial_number\0"
	.long	0x2371
	.ascii "long_integer\0"
	.long	0x2381
	.ascii "system__tasking__attribute_array\0"
	.long	0x23b2
	.ascii "system__tasking__entry_queue\0"
	.long	0x5e6
	.ascii "system__tasking__ada_task_control_block\0"
	.long	0x5ba
	.ascii "system__tasking__task_id\0"
	.long	0x23f5
	.ascii "system__unsigned_types__packed_byte\0"
	.long	0x241c
	.ascii "interfaces__unsigned_8\0"
	.long	0x24ca
	.ascii "duration\0"
	.long	0x24d7
	.ascii "system__img_flt__impl__num\0"
	.long	0x24f5
	.ascii "smc_math__temperature_value\0"
	.long	0x2514
	.ascii "smc_math__power_value\0"
	.long	0x252d
	.ascii "smc_math__dt_value\0"
	.long	0
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.long	0x2c
	.short	0x2
	.set L$set$276,Ldebug_info0-Lsection__debug_info
	.long L$set$276
	.byte	0x8
	.byte	0
	.short	0
	.short	0
	.quad	Ltext0
	.set L$set$277,LFE10-Ltext0
	.quad L$set$277
	.quad	0
	.quad	0
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
Ldebug_ranges0:
	.set L$set$278,LBB13-Ltext0
	.quad L$set$278
	.set L$set$279,LBE13-Ltext0
	.quad L$set$279
	.set L$set$280,LBB106-Ltext0
	.quad L$set$280
	.set L$set$281,LBE106-Ltext0
	.quad L$set$281
	.quad	0
	.quad	0
	.set L$set$282,LBB17-Ltext0
	.quad L$set$282
	.set L$set$283,LBE17-Ltext0
	.quad L$set$283
	.set L$set$284,LBB103-Ltext0
	.quad L$set$284
	.set L$set$285,LBE103-Ltext0
	.quad L$set$285
	.set L$set$286,LBB104-Ltext0
	.quad L$set$286
	.set L$set$287,LBE104-Ltext0
	.quad L$set$287
	.quad	0
	.quad	0
	.set L$set$288,LBB18-Ltext0
	.quad L$set$288
	.set L$set$289,LBE18-Ltext0
	.quad L$set$289
	.set L$set$290,LBB21-Ltext0
	.quad L$set$290
	.set L$set$291,LBE21-Ltext0
	.quad L$set$291
	.quad	0
	.quad	0
	.set L$set$292,LBB49-Ltext0
	.quad L$set$292
	.set L$set$293,LBE49-Ltext0
	.quad L$set$293
	.set L$set$294,LBB84-Ltext0
	.quad L$set$294
	.set L$set$295,LBE84-Ltext0
	.quad L$set$295
	.quad	0
	.quad	0
	.set L$set$296,LBB52-Ltext0
	.quad L$set$296
	.set L$set$297,LBE52-Ltext0
	.quad L$set$297
	.set L$set$298,LBB53-Ltext0
	.quad L$set$298
	.set L$set$299,LBE53-Ltext0
	.quad L$set$299
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
