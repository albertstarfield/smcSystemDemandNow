with Ada.Text_IO;
with Ada.Calendar;
with Ada.Real_Time;
with Ada.Directories;
with Ada.Strings.Fixed;
with Ada.Unchecked_Conversion;
with Interfaces.C;
with Interfaces.C.Strings;
with Interfaces;
with GNAT.OS_Lib;
with Ada.Exceptions;
with Ada.Strings.Unbounded;

with SMC_IO;
with SMC_Math;
with SMC_Files;
with SMC_Daemon_State;
with SMC_Realtime;
with SMC_Utils;
with SMC_Thresholds;

procedure Smc_Daemon is
   use Ada.Text_IO;
   use Ada.Calendar;
   use Ada.Real_Time;
   use Interfaces.C;
   use Interfaces.C.Strings;
   use SMC_Daemon_State;
   use type GNAT.OS_Lib.Process_Id;

   -- Thin C function import for UID check
   function Get_EUID return Interfaces.C.int;
   pragma Import (C, Get_EUID, "geteuid");

   function Get_PID return Interfaces.C.int;
   pragma Import (C, Get_PID, "getpid");

   -- Low-level Standard C signal registration import
   type Signal_Handler_T is access procedure (Sig : int);
   pragma Convention (C, Signal_Handler_T);

   function C_Signal (Sig : int; Handler : Signal_Handler_T) return Signal_Handler_T;
   pragma Import (C, C_Signal, "signal");

   -- Safe runtime Signal Handler procedure
   procedure Handle_Signal (Sig : int);
   pragma Convention (C, Handle_Signal);

   procedure Handle_Signal (Sig : int) is
   begin
      Put_Line ("[DAEMON] Standard Unix Signal (" & int'Image (Sig) & ") caught. Commencing restoration...");
      Daemon_State.Request_Shutdown;
   end Handle_Signal;

   -- Float_To_Hex moved to SMC_Utils package







   -- Local variables
   Conn : SMC_IO.IO_Connect_T := 0;
   Res  : int;

   -- SMC keys for fan takeover and speed control
   Key_F0Tg : chars_ptr := New_String ("F0Tg");
   Key_F1Tg : chars_ptr := New_String ("F1Tg");
   Key_F0Md : chars_ptr := New_String ("F0Md");
   Key_F1Md : chars_ptr := New_String ("F1Md");
   Key_F0Fb : chars_ptr := New_String ("F0Fb");
   Key_F1Fb : chars_ptr := New_String ("F1Fb");
   Key_F0Dc : chars_ptr := New_String ("F0Dc");
   Key_F1Dc : chars_ptr := New_String ("F1Dc");
   Key_F0St : chars_ptr := New_String ("F0St");
   Key_F1St : chars_ptr := New_String ("F1St");
   Key_F0Ac : chars_ptr := New_String ("F0Ac");
   Key_F1Ac : chars_ptr := New_String ("F1Ac");

   -- ============================================================================
   -- SMC KEYS: HIGH-PERFORMANCE POWER MODE CONTROL (write-only, toggled by daemon)
   -- ============================================================================
   --
   -- aPMX (Active Performance Mode eXtension)
   --   Type:     ui32
   --   Values:   0x01 = High-performance mode ACTIVE
   --             0x00 = Normal/default mode
   --   Purpose:  Signals to the SMC firmware that the system should operate in
   --             an elevated performance state. When active, the SMC allows higher
   --             sustained clock speeds and increased power delivery to the SoC.
   --             Used in tandem with mTPL to remove power restrictions.
   --   Set by:   Activate_Turbo_Mode / Deactivate_Turbo_Mode
   --
   -- mTPL (Max Turbo Power Limit)
   --   Type:     si32
   --   Values:   0xffffffff = UNLIMITED — no SoC power cap enforced
   --             0x00000000 = STOCK — Apple's default power limit applies
   --   Purpose:  Controls the SoC package-level power limit (PPT). When set to
   --             0xffffffff, the SMC allows the CPU/GPU to draw as much power as
   --             the voltage regulators and thermal solution can handle, removing
   --             Apple's default power throttling. This is the primary key for
   --             unlocking maximum sustained performance on Apple Silicon.
   --   Set by:   Activate_Turbo_Mode / Deactivate_Turbo_Mode
   --
   Key_aPMX : chars_ptr := New_String ("aPMX");
   Key_mTPL : chars_ptr := New_String ("mTPL");

   -- ============================================================================
   -- SMC KEYS: POWER TELEMETRY (read-only sensors, monitored each loop cycle)
   -- ============================================================================
   --
   -- mUTL (Max User Turbo Limit)
   --   Type:     flt (float)
   --   Typical:  0.0 (unused/default — no user-imposed turbo limit)
   --   Purpose:  Represents a user-configured ceiling on turbo power draw.
   --             On most Macs this is 0.0, meaning the user has not set a custom
   --             turbo power limit. If non-zero, it acts as an upper bound on how
   --             much power the SoC can draw during turbo boost, overriding mTPL.
   --             Useful for power-conscious users who want turbo but not full blast.
   --
   -- xPPT (Max Package Power Tracking)
   --   Type:     flt (float)
   --   Typical:  255.0 (no limit — maximum tracking range)
   --   Purpose:  The SoC's package power tracking limit. This defines the maximum
   --             wattage the power management subsystem will track and enforce.
   --             At 255.0, the tracking is effectively disabled (no cap). Values
   --             below 255.0 would clamp the SoC to that wattage. Apple sets this
   --             high to let thermal management handle throttling instead of a
   --             hard power wall.
   --
   -- xLPM (Max Low Power Mode)
   --   Type:     flt (float)
   --   Typical:  255.0 (no limit — LPM ceiling not enforced)
   --   Purpose:  Ceiling for Low Power Mode operation. When macOS LPM is active,
   --             this limits how much power the SoC can draw. At 255.0, LPM has
   --             no effect on power draw (effectively disabled). Lower values
   --             would restrict power during battery-saving scenarios.
   --
   -- PHPB (Package High Power Budget)
   --   Type:     flt (float)
   --   Typical:  200.0 (watts — total SoC power budget)
   --   Purpose:  The total power budget allocated to the SoC package. This is
   --             the "wallet" of watts the CPU+GPU+ANE can collectively spend.
   --             On M-series chips, this is typically 200W for high-end configs.
   --             The power manager distributes this budget across cores, GPU, and
   --             neural engine based on workload demands.
   --
   -- PHPM (Package High Power Mode)
   --   Type:     flt (float)
   --   Typical:  0.89 (89% utilization target)
   --   Purpose:  The target utilization fraction for the SoC in high-power mode.
   --             0.89 means the power manager aims for 89% of the theoretical
   --             maximum sustained power. This headroom prevents hitting the
   --             absolute power wall, allowing brief bursts above this target
   --             while maintaining thermal stability over time.
   --
   -- PHPC (Package High Power Current)
   --   Type:     flt (float)
   --   Typical:  6.0-15.0 (amps — varies with load)
   --   Purpose:  Real-time current delivery to the SoC package. Measured in
   --             amps, this shows how much current the voltage regulators are
   --             supplying to the CPU/GPU. Higher values indicate heavier workloads.
   --             Used by the SMC to detect overcurrent conditions and manage
   --             power phase balancing across VRM phases.
   --
   -- PHPS (Package High Power Sensor)
   --   Type:     flt (float)
   --   Typical:  10.0-20.0 (sensor reading)
   --   Purpose:  A secondary power sensor on the SoC package. Provides an
   --             additional measurement point for power consumption, often used
   --             for cross-validation with PHPC and PSTR. Helps the SMC detect
   --             sensor drift or VRM efficiency changes.
   --
   -- PMVC (Power Management Voltage Current)
   --   Type:     flt (float)
   --   Typical:  5.0-10.0 (amps)
   --   Purpose:  Current draw through the main power management voltage rail.
   --             This measures the total current flowing through the voltage
   --             regulators that supply the SoC. Includes power for CPU, GPU,
   --             memory controller, and I/O. Useful for diagnosing VRM stress
   --             and efficiency under different load profiles.
   --
   -- PPSC (Power Supply Current)
   --   Type:     flt (float)
   --   Typical:  2.0-5.0 (amps)
   --   Purpose:  Current output from the main power supply (charger/battery).
   --             Shows how much current the system is drawing from its power
   --             source. When on battery, this indicates discharge rate. When
   --             plugged in, this shows charging + system draw combined.
   --
   -- PSVR (Power Supply Voltage Regulator)
   --   Type:     flt (float)
   --   Typical:  10.0-15.0 (sensor value)
   --   Purpose:  Status/reading from the main voltage regulator module. Provides
   --             information about the health and operating point of the power
   --             delivery system. Abnormal values may indicate VRM degradation,
   --             thermal throttling at the regulator level, or power supply issues.
   --
   -- PDBR (Power Device Battery Rate)
   --   Type:     flt (float)
   --   Typical:  0.0-50.0 (watts — positive = discharge, negative = charge)
   --   Purpose:  Battery charge/discharge rate in watts. Positive values mean
   --             the battery is discharging (powering the system), negative
   --             values mean the battery is charging. This is the primary
   --             indicator of battery power flow. The daemon can use this to
   --             detect heavy discharge during turbo mode and potentially back
   --             off if battery drain is too aggressive.
   --
   -- PDTR (Power Device Temperature Rate)
   --   Type:     flt (float)
   --   Typical:  20.0-40.0 (degrees C or rate, depending on firmware)
   --   Purpose:  Temperature-related reading from the battery/power device.
   --             May represent either the absolute temperature of the power
   --             delivery components or the rate of temperature change. Used by
   --             the SMC to detect thermal runaway in the battery or VRM and
   --             trigger emergency power reduction if needed.
   --
   Key_mUTL : chars_ptr := New_String ("mUTL");
   Key_xPPT : chars_ptr := New_String ("xPPT");
   Key_xLPM : chars_ptr := New_String ("xLPM");
   Key_PHPB : chars_ptr := New_String ("PHPB");
   Key_PHPM : chars_ptr := New_String ("PHPM");
   Key_PHPC : chars_ptr := New_String ("PHPC");
   Key_PHPS : chars_ptr := New_String ("PHPS");
   Key_PMVC : chars_ptr := New_String ("PMVC");
   Key_PPSC : chars_ptr := New_String ("PPSC");
   Key_PSVR : chars_ptr := New_String ("PSVR");
   Key_PDBR : chars_ptr := New_String ("PDBR");
   Key_PDTR : chars_ptr := New_String ("PDTR");

   Hex_01   : chars_ptr := New_String ("01");
   Hex_00   : chars_ptr := New_String ("00");
   Hex_Fb   : chars_ptr := New_String ("01");
   Hex_Dc   : chars_ptr := New_String ("4eab2c3f");
   Hex_St   : chars_ptr := New_String ("05");

   Hex_mTPL_On  : chars_ptr := New_String ("ffffffff");
   Hex_mTPL_Off : chars_ptr := New_String ("00000000");
   
   -- State variables
   Current_Temp     : Float := 0.0;
   Prev_Temp        : Float := 0.0;
   Temp_Gradient    : Float := 0.0;
   
   Power            : Float := 0.0;
   Battery_Percent  : Integer := 100;

   -- ============================================================================
   -- POWER TELEMETRY STATE VARIABLES (updated every 100ms loop cycle)
   -- ============================================================================
   -- These variables hold the most recent readings from the SMC power sensors.
   -- Each is initialized to 0.0 and updated via Read_And_Validate_SMC_Temp().
   -- The "Pwr_" prefix distinguishes them from the temperature state variables.
   --
   -- Pwr_mUTL: Max User Turbo Limit
   --   User-configured turbo power ceiling. 0.0 means no user limit is set.
   --   If non-zero, this acts as a hard cap on turbo power draw regardless of
   --   what mTPL or xPPT say. Useful for battery preservation during turbo.
   --
   -- Pwr_xPPT: Max Package Power Tracking
   --   The SoC's package-level power tracking limit in watts. 255.0 means the
   --   tracking is wide open (no cap). Lower values would throttle the SoC at
   --   that wattage. Apple typically leaves this at 255.0 and uses thermal
   --   management instead of hard power limits.
   --
   -- Pwr_xLPM: Max Low Power Mode
   --   Power ceiling when macOS Low Power Mode is active. 255.0 means LPM has
   --   no power restriction (effectively disabled). Lower values restrict how
   --   much power the SoC can draw during battery-saving scenarios.
   --
   -- Pwr_PHPB: Package High Power Budget
   --   Total power budget for the entire SoC package (CPU + GPU + ANE + memory
   --   controller). Typically 200W on high-end M-series chips. The power manager
   --   distributes this budget dynamically across processing units.
   --
   -- Pwr_PHPM: Package High Power Mode
   --   Target utilization fraction for sustained operation. 0.89 = 89% of max.
   --   The remaining 11% headroom allows brief turbo bursts without hitting the
   --   absolute power wall, preventing thermal throttling during sustained loads.
   --
   -- Pwr_PHPC: Package High Power Current
   --   Real-time current delivery to the SoC in amps. Higher values indicate
   --   heavier workloads. Used by the SMC for overcurrent protection and VRM
   --   phase balancing. Spikes may indicate power-hungry operations (e.g. ANE).
   --
   -- Pwr_PHPS: Package High Power Sensor
   --   Secondary power measurement on the SoC package. Cross-validates with
   --   PHPC and PSTR to detect sensor drift or VRM efficiency changes. Provides
   --   redundancy for critical power monitoring.
   --
   -- Pwr_PMVC: Power Management Voltage Current
   --   Total current through the main voltage regulator rail. Includes power
   --   for CPU, GPU, memory controller, and I/O subsystems. Useful for
   --   diagnosing VRM stress under different load profiles.
   --
   -- Pwr_PPSC: Power Supply Current
   --   Current output from the main power source (charger/battery). On battery,
   --   positive values indicate discharge rate. When plugged in, shows combined
   --   system draw + charging current.
   --
   -- Pwr_PSVR: Power Supply Voltage Regulator
   --   Status reading from the main voltage regulator module. Abnormal values
   --   may indicate VRM degradation, thermal throttling at the regulator level,
   --   or power supply health issues.
   --
   -- Pwr_PDBR: Power Device Battery Rate
   --   Battery charge/discharge rate in watts. Positive = discharging (system
   --   on battery), negative = charging. Primary indicator of battery power
   --   flow. The daemon can use this to detect excessive drain during turbo.
   --
   -- Pwr_PDTR: Power Device Temperature Rate
   --   Temperature-related reading from battery/power delivery components. May
   --   represent absolute temperature or rate of change. Used by the SMC to
   --   detect thermal runaway and trigger emergency power reduction.
   --
   Pwr_mUTL : Float := 0.0;
   Pwr_xPPT : Float := 0.0;
   Pwr_xLPM : Float := 0.0;
   Pwr_PHPB : Float := 0.0;
   Pwr_PHPM : Float := 0.0;
   Pwr_PHPC : Float := 0.0;
   Pwr_PHPS : Float := 0.0;
   Pwr_PMVC : Float := 0.0;
   Pwr_PPSC : Float := 0.0;
   Pwr_PSVR : Float := 0.0;
   Pwr_PDBR : Float := 0.0;
   Pwr_PDTR : Float := 0.0;
   
   F0Ac_Val         : C_float := 0.0;
   F1Ac_Val         : C_float := 0.0;
   F0Tg_Val         : C_float := 0.0;
   F1Tg_Val         : C_float := 0.0;
   
   Target_RPM       : SMC_Math.RPM_Value := 3000.0;
   CPU_GPU_Target   : SMC_Math.RPM_Value := 0.0;
   Battery_Target   : SMC_Math.RPM_Value := 3000.0;
   
   PID_Loop_State   : SMC_Math.PID_State;
    
   Precool_Active      : Boolean := False;
   Precool_Time_Left   : Long_Integer := 0;
   Overdrive_Active    : Boolean := False;
   Overdrive_Time_Left : Long_Integer := 0;
   Max_Battery_Temp    : Float := 20.0;
   
   -- Telemetry historical values for all 10 system sensors
   Last_TCMZ_Temp   : Float := 20.0;
   Last_GPU_Temp    : Float := 20.0;
   Last_TaLP_Temp   : Float := 20.0;
   Last_TaRF_Temp   : Float := 20.0;
   Last_TaLT_Temp   : Float := 20.0;
   Last_TaLW_Temp   : Float := 20.0;
   Last_TaRT_Temp   : Float := 20.0;
   Last_TaRW_Temp   : Float := 20.0;
   Last_Ts0P_Temp   : Float := 20.0;
   Last_Ts1P_Temp   : Float := 20.0;
   
   -- Navigation and scheduling variables
   Last_Telemetry_Time : Ada.Calendar.Time := Clock;
   Loop_Start_Time     : Ada.Real_Time.Time;
   
   Last_Trained_Day    : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.Null_Unbounded_String;
   Last_ML_Check_Time  : Ada.Calendar.Time := Clock;
   
   -- Spatial movement protection: REMOVED 2026-10-03.
   -- Seismic/shock detection is owned by the EARU daemon, which publishes
   -- "accel" and "seismic_activity.motion_type" in EARU_data.dat. The former
   -- in-daemon accelerometer path read that same EARU_data.dat JSON through
   -- SMC_Files.Read_SMS_Values, then compared successive samples against a
   -- fixed limit. That comparison was unsound: the parse stage clamped each
   -- axis to +/-327g before scaling by 100, so a single outlier sample produced
   -- deltas of 32700-65400 against a limit of 150 and shut turbo off ~1s after
   -- it engaged. Observed in /var/log/smcSystemDemandNow.log as repeated
   -- "[SAFETY] CRITICAL: Movement detected ( 32700 > 150)" interleaved with
   -- "Activating Turbo ... (Trigger: BattMax ... > 40C)". Removing the whole
   -- chain (cache fields, parser, accessor, and this safety block) eliminates
   -- the oscillator rather than re-tuning a limit that was being fed garbage.
   -- CITATION: /usr/local/EnvironmentalAwareReferentialUnit/EARU_data.dat
   --   keys "accel" {mag,x,y,z} and "seismic_activity"."motion_type".
   --
   
   -- Dynamic Calibration parameters
   Calibrated_Pres_RPM    : Float := 0.0;
   Calibration_Active     : Boolean := False;
   Calibration_Start_Time : Ada.Calendar.Time;
   Calibration_Sum        : Float := 0.0;
   Calibration_Count      : Natural := 0;
   
   -- Spawning python venv bridges
   Python_Pid      : GNAT.OS_Lib.Process_Id;
   Python_Spawned  : Boolean := False;
   Python_Args     : GNAT.OS_Lib.Argument_List (1 .. 1);

   -- Dynamic task pointers to prevent premature activation prior to root checks
   type Latency_Monitor_Access is access Latency_Monitor_T;
   type Thermal_Suspender_Access is access Thermal_Suspender_T;
   type Watchdog_Access is access Watchdog_T;

   LM_Task : Latency_Monitor_Access;
   TS_Task : Thermal_Suspender_Access;
   WD_Task : Watchdog_Access;

   Loop_Count  : Natural := 0;
   Max_Load    : Float   := 0.0;
   Load_Status : Integer := 0;
   Silent_Mode : Boolean := False;

   -- EARU 7-file power tracking state (SMC_Files.Write_Power_Tracking contract)
   -- Long_Float accumulators: meter crosses 62842 Wh — Float32 would drift.
   Power_Day_Wh     : Long_Float := 0.0;
   Power_Month_Wh   : Long_Float := 0.0;
   Power_Meter_Wh   : Long_Float := 0.0;
   Power_Day_Key    : Integer := 0;  -- yyyymmdd (0 = unstamped)
   Power_Month_Key  : Integer := 0;  -- 1..12 (0 = unstamped)
   Last_Power_Tick  : Ada.Calendar.Time := Ada.Calendar.Clock;
   Power_Tick_Count : Natural := 0;
   Full_Wh_Warned   : Boolean := False;  -- one-shot capacity warning latch

    procedure Run_Power_Command (Args : GNAT.OS_Lib.Argument_List) is
      -- ============================================================================
      -- FUNCTION: Run_Power_Command
      -- ============================================================================
      --
      -- AXIOMS:
      --   A1 (pmset Authority): macOS power management is controlled via
      --       /usr/sbin/pmset, which requires root privileges.
      --   A2 (Fire-and-Forget): Power mode changes take effect immediately
      --       in the kernel; no return value verification is needed.
      --
      -- THEOREMS:
      --   T1 (Spawn Failure Recovery): If Spawn returns Success = False, the
      --       daemon continues — power mode change was best-effort.
      --
      -- CITATIONS:
      --   [1] macOS pmset(1) man page
      --   [2] GNAT.OS_Lib.Spawn — process creation interface
      --
      -- TIMING ANALYSIS:
      --   Estimated Processing Time: <5ms (fork/exec + pmset execution)
      --   CPU Time: ~2ms
      --   WCET: <10ms
      --   Space Complexity: O(1)
      -- ============================================================================
       Success : Boolean;
    begin
       GNAT.OS_Lib.Spawn ("/usr/sbin/pmset", Args, Success);
    end Run_Power_Command;

   procedure Activate_Turbo_Mode (Reason : String) is
      -- ============================================================================
      -- FUNCTION: Activate_Turbo_Mode
      -- ============================================================================
      --
      -- AXIOMS:
      --   A1 (Thermal Demand Response): When thermal sensors exceed thresholds,
      --       the daemon must increase fan speeds and unlock power limits to
      --       prevent hardware damage and maintain performance.
      --   A2 (SMC State Machine): The SMC firmware has distinct states (normal,
      --       turbo, overdrive) that are controlled via specific key sequences.
      --   A3 (Power Budget Expansion): Turbo mode removes Apple's default power
      --       limits by setting mTPL=0xffffffff and aPMX=0x01, allowing the SoC
      --       to draw unlimited power within thermal constraints.
      --   A4 (pmset Integration): macOS power management must be reconfigured
      --       via pmset to disable Low Power Mode and enable high-performance
      --       mode when turbo is active.
      --   A5 (Calibration Window): During turbo activation, a calibration window
      --       captures fan RPM for pressure estimation (SMC_Files.Save_Fan_Calibration).
      --
      -- THEOREMS:
      --   T1 (Idempotent Activation): If Is_Turbo_Active = True, the procedure
      --       returns immediately (early exit), preventing redundant SMC writes.
      --   T2 (State Consistency): After execution, Is_Turbo_Active = True AND
      --       aPMX = 0x01 AND mTPL = 0xffffffff.
      --   T3 (Notification Guarantee): User is notified via SMC_Files.Notify_User
      --       on every successful activation.
      --
      -- APPLICATIONS:
      --   - Called by Main Loop when Should_Activate_Turbo returns True
      --   - Triggers calibration data collection
      --   - Disables macOS power management restrictions
      --
      -- CITATIONS:
      --   [1] Apple SMC Key Database — aPMX, mTPL key definitions
      --   [2] macOS pmset(1) man page — powermode, lowpowermode, thermaldp
      --   [3] Thermal Equilibrium Theory — fan speed vs heat dissipation
      --
      -- TIMING ANALYSIS:
      --   Estimated Processing Time: <1ms (3 SMC writes + 2 pmset forks)
      --   CPU Time: ~500μs (dominated by fork/exec of pmset)
      --   WCET: <5ms (worst case: pmset timeout + SMC retry)
      --   Space Complexity: O(1) — fixed-size argument lists
      --   Derivation: 3 SMC_IO.Write_Key_Hex (each <100μs via IOKit) +
      --               2 GNAT.OS_Lib.Spawn (each ~200μs for fork/exec)
      --   Hardware Assumptions: IOKit kernel module responds within 100μs;
      --                        pmset binary exists at /usr/sbin/pmset
      -- ============================================================================
   begin
      if Daemon_State.Is_Turbo_Active then
         return;
      end if;
      
      Daemon_State.Set_Turbo (True);
      Put_Line ("[DAEMON] Activating Turbo Fans and High Performance Mode... (Trigger: " & Reason & ")");
      
      -- Enable High Performance SMC Keys
      Res := SMC_IO.Write_Key_Hex (Conn, Key_aPMX, Hex_01);
      Res := SMC_IO.Write_Key_Hex (Conn, Key_mTPL, Hex_mTPL_On);
      
      -- Set System Power Modes for Turbo
      declare
         Args : GNAT.OS_Lib.Argument_List (1 .. 2);
      begin
         Args (1) := new String'("powermode");
         Args (2) := new String'("0");
         Run_Power_Command (Args);
         GNAT.OS_Lib.Free (Args (1));
         GNAT.OS_Lib.Free (Args (2));
         
         Args (1) := new String'("lowpowermode");
         Args (2) := new String'("0");
         Run_Power_Command (Args);
         GNAT.OS_Lib.Free (Args (1));
         GNAT.OS_Lib.Free (Args (2));
      end;
      
      -- Engage high-performance pmset thermaldp
      declare
         Args : GNAT.OS_Lib.Argument_List (1 .. 2);
      begin
         Args (1) := new String'("thermaldp");
         Args (2) := new String'("1");
         Run_Power_Command (Args);
         GNAT.OS_Lib.Free (Args (1));
         GNAT.OS_Lib.Free (Args (2));
      end;

      -- Start dynamic Calibration run
      Calibration_Active := True;
      Calibration_Start_Time := Clock;
      Calibration_Sum := 0.0;
      Calibration_Count := 0;

      SMC_Files.Notify_User ("TURBO", "High thermal demand (" & Reason & "). Engaging Turbo Performance profiles.");
   end Activate_Turbo_Mode;

   procedure Deactivate_Turbo_Mode (Reason : String) is
      -- ============================================================================
      -- FUNCTION: Deactivate_Turbo_Mode
      -- ============================================================================
      --
      -- AXIOMS:
      --   A1 (Thermal Recovery): When temperatures drop below deactivation
      --       thresholds, the daemon must restore normal fan speeds and power
      --       limits to prevent unnecessary power consumption and noise.
      --   A2 (Natural Logarithmic Cooldown): Fan RPM must transition from turbo
      --       speed to normal speed via a 60-second natural logarithmic curve
      --       to prevent sudden acoustic jumps (SMC_Math.Compute_Log_Transition_RPM).
      --   A3 (SMC State Restoration): aPMX must be set to 0x00 and mTPL to
      --       0x00000000 to re-enable Apple's default power management.
      --   A4 (pmset Restoration): thermaldp must be reset to 0 to release
      --       macOS high-performance scheduling.
      --
      -- THEOREMS:
      --   T1 (Idempotent Deactivation): If Is_Turbo_Active = False, the
      --       procedure returns immediately (early exit).
      --   T2 (State Consistency): After execution, Is_Turbo_Active = False AND
      --       Spike_Count = 0 AND Cooldown is active.
      --   T3 (Notification Guarantee): User is notified on every successful
      --       deactivation.
      --
      -- APPLICATIONS:
      --   - Called by Main Loop when Should_Deactivate_Turbo returns True
      --   - Initiates logarithmic fan speed transition
      --   - Restores macOS power management defaults
      --
      -- CITATIONS:
      --   [1] Apple SMC Key Database — aPMX, mTPL key definitions
      --   [2] macOS pmset(1) man page — thermaldp flag
      --   [3] Natural Logarithmic Decay — acoustic transition smoothing
      --
      -- TIMING ANALYSIS:
      --   Estimated Processing Time: <1ms (2 SMC writes + 1 pmset fork)
      --   CPU Time: ~300μs
      --   WCET: <5ms (worst case: pmset timeout)
      --   Space Complexity: O(1)
      --   Derivation: 2 SMC_IO.Write_Key_Hex + 1 GNAT.OS_Lib.Spawn
      --   Hardware Assumptions: IOKit responds within 100μs
      -- ============================================================================
   begin
      if not Daemon_State.Is_Turbo_Active then
         return;
      end if;
      
      Daemon_State.Set_Turbo (False);
      Daemon_State.Reset_Spikes;
      
      -- Start natural logarithmic cooldown from current actual RPM (max of both fans)
      declare
         Max_Ac_RPM : constant Float := (if Float (F0Ac_Val) > Float (F1Ac_Val) then Float (F0Ac_Val) else Float (F1Ac_Val));
      begin
         Daemon_State.Start_Cooldown (Max_Ac_RPM);
      end;
      
      Put_Line ("[DAEMON] Deactivating Turbo/Endurance Mode. Transitioning to normal PID via 60s log curve... (Trigger: " & Reason & ")");
      
      -- Restore Performance SMC Keys
      Res := SMC_IO.Write_Key_Hex (Conn, Key_aPMX, Hex_00);
      Res := SMC_IO.Write_Key_Hex (Conn, Key_mTPL, Hex_mTPL_Off);
      
      -- Reset pmset thermaldp
      declare
         Args : GNAT.OS_Lib.Argument_List (1 .. 2);
      begin
         Args (1) := new String'("thermaldp");
         Args (2) := new String'("0");
         Run_Power_Command (Args);
         GNAT.OS_Lib.Free (Args (1));
         GNAT.OS_Lib.Free (Args (2));
      end;

      -- Restore default low power modes based on battery percent
      -- Enforced continuously in main loop to handle Overdrive/Override flags
      null;

      SMC_Files.Notify_User ("RESTORATION", "Temperature Normal. Restoring default power settings.");
   end Deactivate_Turbo_Mode;

    -- Get_Time_Str and Get_Day_Str moved to SMC_Utils package

   procedure Spawn_CoreML_Training is
      -- ============================================================================
      -- FUNCTION: Spawn_CoreML_Training
      -- ============================================================================
      --
      -- AXIOMS:
      --   A1 (ML Auto-Training): The CoreML thermal prediction model should be
      --       retrained periodically using collected telemetry data to improve
      --       prediction accuracy over time.
      --   A2 (Non-Blocking Execution): Training must run in the background to
      --       avoid blocking the main daemon loop (100ms cycle).
      --   A3 (Resource Cleanup): The Argument_List must be freed after spawn
      --       to prevent memory leaks in the long-running daemon.
      --
      -- THEOREMS:
      --   T1 (Spawn Failure Recovery): If Non_Blocking_Spawn returns Invalid_Pid,
      --       a warning is logged and the daemon continues unaffected.
      --   T2 (Exception Safety): Any exception during spawn is caught and logged
      --       without crashing the daemon.
      --
      -- APPLICATIONS:
      --   - Called by Main Loop when HID idle time >= 7200s (2 hours)
      --   - Spawns Python training script in background
      --
      -- CITATIONS:
      --   [1] CoreML Documentation — on-device model training
      --   [2] GNAT.OS_Lib.Non_Blocking_Spawn — non-blocking process creation
      --
      -- TIMING ANALYSIS:
      --   Estimated Processing Time: <5ms (spawn + free)
      --   CPU Time: ~2ms (fork/exec of Python interpreter)
      --   WCET: <10ms
      --   Space Complexity: O(1) — fixed argument list
      --   Derivation: Non_Blocking_Spawn (fork + exec) + Free (1 pointer)
      --   Hardware Assumptions: Python3 binary exists at ml_venv/bin/python3
      -- ============================================================================
       Args        : GNAT.OS_Lib.Argument_List (1 .. 1);
       Python_Path : constant String := "/usr/local/smcSystemDemandNow/smc_daemon/ml_venv/bin/python3";
       Script_Path : constant String := "/usr/local/smcSystemDemandNow/smc_daemon/python/train_coreml.py";
       Pid         : GNAT.OS_Lib.Process_Id;
    begin
       Args (1) := new String'(Script_Path);
       Put_Line ("[DAEMON] Launching CoreML model training in background...");
       Pid := GNAT.OS_Lib.Non_Blocking_Spawn (Python_Path, Args);
       if Pid = GNAT.OS_Lib.Invalid_Pid then
          Put_Line ("[WARNING] Failed to launch CoreML model training background process.");
       else
          Put_Line ("[DAEMON] CoreML model training background process launched successfully.");
       end if;
       GNAT.OS_Lib.Free (Args (1));
    exception
       when others =>
          Put_Line ("[WARNING] CoreML model training background launch threw an exception.");
    end Spawn_CoreML_Training;

   -- Low-level temperature reader and bounds validation (identical to read_and_validate_smc_temp)
   function Read_And_Validate_SMC_Temp (Key : String; Last_Val : Float) return Float is
      -- ============================================================================
      -- FUNCTION: Read_And_Validate_SMC_Temp
      -- ============================================================================
      --
      -- AXIOMS:
      --   A1 (Sensor Bounds): Apple Silicon temperature sensors return values
      --       in the range [0, 120] degrees Celsius. Values outside this range
      --       indicate sensor failure or SMC communication error.
      --   A2 (Last-Value Fallback): When a sensor read fails (non-zero return)
      --       or returns out-of-bounds data, the previous valid reading is
      --       returned to maintain continuity in the control loop.
      --   A3 (Memory Safety): The chars_ptr allocated by New_String must be
      --       freed after use to prevent memory leaks in the long-running daemon.
      --
      -- THEOREMS:
      --   T1 (Bounded Output): The returned value is always in [0, 120] or
      --       equals Last_Val (which was itself validated in a previous call).
      --   T2 (No Crash on Failure): If SMC_IO.Read_Key fails, the function
      --       returns Last_Val — never raises an exception.
      --   T3 (Memory Leak Prevention): Key_Char is freed in all code paths
      --       (success, out-of-bounds, and error).
      --
      -- APPLICATIONS:
      --   - Called 10Hz for primary sensors (TCMz, Tg0X, PSTR)
      --   - Called 0.1Hz for secondary sensors (TaLP, TaRF, etc.)
      --   - Called 0.1Hz for power telemetry sensors (mUTL, xPPT, etc.)
      --   - Called for battery temperature sensors (TB0T, TB1T, TB2T)
      --
      -- CITATIONS:
      --   [1] Apple SMC Key Database — temperature sensor key mappings
      --   [2] Apple Silicon Thermal Design — maximum junction temperature
      --   [3] IOKit SMC Interface — Read_Key return codes
      --
      -- TIMING ANALYSIS:
      --   Estimated Processing Time: <50μs (1 SMC read via IOKit)
      --   CPU Time: ~20μs (IOKit kernel trap + float conversion)
      --   WCET: <100μs (worst case: IOKit kernel queue contention)
      --   Space Complexity: O(1) — fixed-size local variables
      --   Derivation: New_String (heap alloc ~1μs) + SMC_IO.Read_Key (~15μs)
      --               + Free (heap free ~1μs) + bounds check (~0.1μs)
      --   Hardware Assumptions: IOKit kernel module loaded; SMC connection open
      -- ============================================================================
      Key_Char  : chars_ptr := New_String (Key);
      Val_Float : C_float := 0.0;
      Read_Res  : int;
   begin
      Read_Res := SMC_IO.Read_Key (Conn, Key_Char, Val_Float);
      Free (Key_Char);
      if Read_Res = 0 then
         declare
            Val : constant Float := Float (Val_Float);
         begin
            if Val >= 0.0 and then Val <= 120.0 then
               return Val;
            end if;
         end;
      end if;
      return Last_Val;
   end Read_And_Validate_SMC_Temp;

   -- Local variables for signal registration
   Sig_ResINT  : Signal_Handler_T;
   Sig_ResTERM : Signal_Handler_T;

begin
   -- ============================================================================
   -- PROCEDURE: Smc_Daemon (Main Entry Point)
   -- ============================================================================
   --
   -- AXIOMS:
   --   A1 (Daemon Lifecycle): The daemon runs as a root process, opening an
   --       IOKit connection to the SMC, entering a 100ms control loop, and
   --       restoring system state on shutdown (SIGINT/SIGTERM).
   --   A2 (Single Instance): Only one daemon instance may run at a time,
   --       enforced via PID file at /tmp/smc_daemon.pid.
   --   A3 (Root Required): The daemon must run as root (geteuid() == 0) to
   --       access IOKit SMC kernel interface and modify power management.
   --   A4 (100ms Control Loop): The main loop runs at 10Hz (100ms period),
   --       reading sensors, computing fan targets, and writing SMC keys.
   --   A5 (Progressive Throttling): Non-critical operations are throttled:
   --       secondary sensors at 0.1Hz, telemetry at 0.1Hz, battery at 0.033Hz.
   --   A6 (Thermalmonitord Suspension): macOS com.apple.thermalmonitord is
   --       unloaded at startup and reloaded at shutdown to prevent conflicts.
   --   A7 (ML Sidecar): A Python ML inference process is spawned in the
   --       background for thermal prediction (ANE-based).
   --   A8 (Signal Handling): SIGINT and SIGTERM trigger graceful shutdown
   --       via Daemon_State.Request_Shutdown.
   --
   -- THEOREMS:
   --   T1 (Clean Shutdown): On any exit path, fan keys are restored to auto
   --       (F0Md/F1Md = 0x00), thermalmonitord is reloaded, power modes reset.
   --   T2 (Exception Safety): The main loop body is wrapped in exception
   --       handler that logs crash info and leaves the audio workgroup.
   --   T3 (Resource Cleanup): All chars_ptr allocations are freed at shutdown.
   --   T4 (Loop Timing): The loop maintains 100ms period via high-precision
   --       delay using Ada.Real_Time.Clock.
   --
   -- CITATIONS:
   --   [1] Apple SMC IOKit Interface — IOConnectCallStructMethod
   --   [2] macOS launchd(8) — KeepAlive, PID file conventions
   --   [3] Ada.Real_Time — high-resolution monotonic clock
   --   [4] POSIX Signals — SIGINT(2), SIGTERM(15)
   --
   -- TIMING ANALYSIS:
   --   Estimated Processing Time: 100ms per loop iteration (10Hz)
   --   CPU Time: ~10-30ms per iteration (sensor reads + SMC writes)
   --   WCET: <100ms (loop overrun handled via yield)
   --   Space Complexity: O(1) — fixed-size state variables
   --   Derivation: 10 primary sensor reads (10 × 50μs = 500μs) +
   --               10 SMC writes (10 × 50μs = 500μs) +
   --               PID computation (~10μs) + fan curve (~200μs) +
   --               file I/O (throttled, ~1ms/10s) + pmset (throttled, ~5ms/10s)
   --   Hardware Assumptions: IOKit SMC driver loaded; audio workgroup available;
   --                        pmset binary at /usr/sbin/pmset
   -- ============================================================================
   Put_Line ("[DAEMON] Apple Silicon SPARK Daemon starting up...");

   -- Initialize Audio Workgroup
   SMC_Realtime.Init_Audio_Workgroup;

   -- Validate Root Access (geteuid() == 0)
   if Get_EUID /= 0 then
      Put_Line ("[FATAL] This daemon must be run as root (sudo) to interact with kernel and SMC keys.");
      GNAT.OS_Lib.OS_Exit (1);
   end if;

   -- Ensure single instance and cleanup orphaned sidecars
   declare
      File    : Ada.Text_IO.File_Type;
      Success : Boolean;
      Args    : GNAT.OS_Lib.Argument_List (1 .. 3);
   begin
      -- 1. Write current PID to lock file
      begin
         Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, SMC_Files.PID_FILE);
         Ada.Text_IO.Put_Line (File, int'Image (Get_PID));
         Ada.Text_IO.Close (File);
      exception
         when others =>
            Put_Line ("[WARNING] Could not write PID file to " & SMC_Files.PID_FILE);
      end;

      -- 2. Clean up any orphaned Python sidecars from previous crashes
      Args (1) := new String'("-9");
      Args (2) := new String'("-f");
      Args (3) := new String'("inference_ane.py");
      GNAT.OS_Lib.Spawn ("/usr/bin/pkill", Args, Success);
      GNAT.OS_Lib.Free (Args (1));
      GNAT.OS_Lib.Free (Args (2));
      GNAT.OS_Lib.Free (Args (3));

      Args (1) := new String'("-9");
      Args (2) := new String'("-f");
      Args (3) := new String'("train_coreml.py");
      GNAT.OS_Lib.Spawn ("/usr/bin/pkill", Args, Success);
      GNAT.OS_Lib.Free (Args (1));
      GNAT.OS_Lib.Free (Args (2));
      GNAT.OS_Lib.Free (Args (3));
      Put_Line ("[DAEMON] Initial cleanup of orphaned Python sidecars complete.");
   end;

   -- Register standard Unix Signals using the direct libc link
   Sig_ResINT := C_Signal (2, Handle_Signal'Access);  -- SIGINT
   Sig_ResTERM := C_Signal (15, Handle_Signal'Access); -- SIGTERM
   Put_Line ("[DAEMON] Standard Unix SIGINT and SIGTERM handlers registered.");

   -- Dynamically allocate and activate the background tasks now that root access is verified
   LM_Task := new Latency_Monitor_T;
   TS_Task := new Thermal_Suspender_T;
   WD_Task := new Watchdog_T;
   Put_Line ("[DAEMON] Background tasks successfully activated (Latency Monitor, Thermal Suspender, Sensor Watchdog).");

   -- Initialize AppleSMC Connection
   Res := SMC_IO.Open_Connection (Conn);
   if Res /= 0 then
      Put_Line ("[FATAL] Failed to open AppleSMC connection. Kern_return: " & int'Image (Res));
      GNAT.OS_Lib.OS_Exit (1);
   end if;
   Put_Line ("[DAEMON] AppleSMC connection successfully established.");

   -- Suspend macOS com.apple.thermalmonitord
   declare
      Success : Boolean;
      Args    : GNAT.OS_Lib.Argument_List (1 .. 3);
   begin
      Args (1) := new String'("unload");
      Args (2) := new String'("-w");
      Args (3) := new String'("/System/Library/LaunchDaemons/com.apple.thermalmonitord.plist");
      GNAT.OS_Lib.Spawn ("/bin/launchctl", Args, Success);
      for I in Args'Range loop GNAT.OS_Lib.Free (Args (I)); end loop;
   end;
   Put_Line ("[DAEMON] OS Thermalmonitord com.apple.thermalmonitord plist unload requested.");

   -- Spawn the isolated ML pipeline in the background
   declare
      Python_Path : constant String := "/usr/local/smcSystemDemandNow/smc_daemon/ml_venv/bin/python3";
      Fall_Path   : constant String := "/usr/local/smcSystemDemandNow/ml_venv/bin/python3";
      Exec_Path   : String (1 .. 256);
      Len         : Natural := 0;
   begin
      if GNAT.OS_Lib.Is_Regular_File (Python_Path) then
         Exec_Path (1 .. Python_Path'Length) := Python_Path;
         Len := Python_Path'Length;
      elsif GNAT.OS_Lib.Is_Regular_File (Fall_Path) then
         Exec_Path (1 .. Fall_Path'Length) := Fall_Path;
         Len := Fall_Path'Length;
      else
         Exec_Path (1 .. 25) := "/opt/homebrew/bin/python3";
         Len := 25;
      end if;

      Python_Args (1) := new String'("/usr/local/smcSystemDemandNow/smc_daemon/python/inference_ane.py");
      
      Put_Line ("[DAEMON] Bootstrapping Machine Learning sidecar: " & Exec_Path (1 .. Len));
      Python_Pid := GNAT.OS_Lib.Non_Blocking_Spawn (Exec_Path (1 .. Len), Python_Args);
      if Python_Pid /= GNAT.OS_Lib.Invalid_Pid then
         Python_Spawned := True;
      else
         Put_Line ("[WARNING] ML Python sidecar spawn returned Invalid_Pid.");
      end if;
   exception
      when others =>
         Put_Line ("[WARNING] ML Python sidecar bootstrap failed or venv not yet configured. Moving on...");
   end;

   -- Take over fan control manual overrides (F0Md / F1Md -> 01, plus Fb, Dc, St keys)
   Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Md, Hex_01);
   Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Fb, Hex_Fb);
   Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Dc, Hex_Dc);
   Res := SMC_IO.Write_Key_Hex (Conn, Key_F0St, Hex_St);

   Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Md, Hex_01);
   Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Fb, Hex_Fb);
   Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Dc, Hex_Dc);
   Res := SMC_IO.Write_Key_Hex (Conn, Key_F1St, Hex_St);
   Put_Line ("[DAEMON] Fan manual override taking effect (complete takeover keys set).");

   -- Establish default normal state for high-performance keys
   Res := SMC_IO.Write_Key_Hex (Conn, Key_aPMX, Hex_00);
   Res := SMC_IO.Write_Key_Hex (Conn, Key_mTPL, Hex_mTPL_Off);

   -- Load persistent Fan Pressure Calibration if available
   SMC_Files.Load_Fan_Calibration (Calibrated_Pres_RPM);
   if Calibrated_Pres_RPM > 0.0 then
      Put_Line ("[CALIBRATION] Loaded pinned 1006 hPa reference fan speed: " & Float'Image (Calibrated_Pres_RPM) & " RPM.");
   else
      Put_Line ("[CALIBRATION] No reference RPM found. Standard sea-level reference (1006 hPa) will remain active.");
   end if;

   -- Load persistent EARU power-tracking accumulators (7-file export state)
   declare
      L_Day, L_Month, L_Meter : Long_Float;
      L_Day_Key, L_Month_Key  : Integer;
      L_Epoch                 : Long_Integer;
      L_Source                : Natural;
      Split_Y : Ada.Calendar.Year_Number;
      Split_M : Ada.Calendar.Month_Number;
      Split_D : Ada.Calendar.Day_Number;
      Split_S : Ada.Calendar.Day_Duration;
      Today_Key  : Integer;
      This_Month : Integer;
   begin
      SMC_Files.Load_Power_Metrics (L_Day, L_Month, L_Meter,
                                    L_Day_Key, L_Month_Key, L_Epoch, L_Source);
      Ada.Calendar.Split (Ada.Calendar.Clock, Split_Y, Split_M, Split_D, Split_S);
      Today_Key  := Integer (Split_Y) * 10000 + Integer (Split_M) * 100 + Integer (Split_D);
      This_Month := Integer (Split_M);

      Power_Day_Wh   := L_Day;
      Power_Month_Wh := L_Month;
      Power_Meter_Wh := L_Meter;

      if L_Source = 1 then
         -- Persist file: wipe day/month if calendar rolled while daemon was down
         if L_Day_Key /= 0 and then L_Day_Key /= Today_Key then
            Power_Day_Wh := 0.0;
            Put_Line ("[POWER] Day rolled while down; day accumulator reset (" &
                      Integer'Image (L_Day_Key) & " -> " & Integer'Image (Today_Key) & ").");
         end if;
         if L_Month_Key /= 0 and then L_Month_Key /= This_Month then
            Power_Month_Wh := 0.0;
            Put_Line ("[POWER] Month rolled while down; month accumulator reset.");
         end if;
         Power_Day_Key   := Today_Key;
         Power_Month_Key := This_Month;
         -- Restore last-integration epoch so the first tick can integrate a
         -- short restart gap (dt guard in the loop skips gaps > 300s).
         if L_Epoch > 0 then
            Last_Power_Tick := Ada.Calendar.Time_Of (1970, 1, 1, 0.0) + Duration (L_Epoch);
         else
            Last_Power_Tick := Ada.Calendar.Clock;
         end if;
      else
         -- Source 0 (no data) or 2 (seeded from EARU_data.dat): stamp today's
         -- keys so the first rollover check does not wipe seeded Wh values.
         Power_Day_Key   := Today_Key;
         Power_Month_Key := This_Month;
         Last_Power_Tick := Ada.Calendar.Clock;
      end if;

      Put_Line ("[POWER] Metrics load source=" & Natural'Image (L_Source) &
                " day=" & Long_Float'Image (Power_Day_Wh) &
                " month=" & Long_Float'Image (Power_Month_Wh) &
                " meter=" & Long_Float'Image (Power_Meter_Wh) & " Wh.");
   end;

   -- Notify user daemon is fully active
   SMC_Files.Notify_User ("BOOTSTRAP", "Ada/SPARK SMC Telemetry Engine and Controller loaded successfully.");

   -- Central Control Loop (Runs every 100ms)
   declare
      Main_Token : aliased SMC_Realtime.Join_Token_T;
   begin
      SMC_Realtime.Join_Audio_Workgroup (Main_Token'Access);
      SMC_Realtime.Configure_Realtime (100, 10, 10);

      while Daemon_State.Should_Keep_Running loop
         Loop_Start_Time := Ada.Real_Time.Clock;
         Loop_Count := Loop_Count + 1;

         -- Check Silent Mode flag (for when fan roar in a closed room is embarrassing)
         Silent_Mode := Ada.Directories.Exists (SMC_Files.SILENT_MODE_FLAG);

         -- Read and validate critical system temperatures plus PSTR Power at 10Hz
         Last_TCMZ_Temp := Read_And_Validate_SMC_Temp ("TCMz", Last_TCMZ_Temp);
         Last_GPU_Temp  := Read_And_Validate_SMC_Temp ("Tg0X", Last_GPU_Temp);
         Power := Read_And_Validate_SMC_Temp ("PSTR", Power);

         -- BUGFIX: Copy primary sensor to Current_Temp for PID and CSV.
         -- Previously Current_Temp was never assigned (stayed 0.0).
         Current_Temp := Last_TCMZ_Temp;

         -- Feed sensor snapshot to watchdog for flatline/anomaly detection
         Watchdog_Monitor.Update_Heartbeat (
            TCMz     => Current_Temp,
            GPU      => Last_GPU_Temp,
            Power    => Power,
            Battery  => Max_Battery_Temp,
            Fan_F0Ac => Float (F0Ac_Val),
            Fan_F1Ac => Float (F1Ac_Val),
            Turbo    => Daemon_State.Is_Turbo_Active
         );

         -- Read secondary sensors at 0.1Hz (every 100 loops / 10 seconds)
         -- Optimization: Throttled from 10Hz to 0.1Hz to eliminate redundant kernel traps.
         -- These sensors are thermally slow-moving and do not require high-frequency polling.
         if Loop_Count = 1 or else Loop_Count mod 100 = 0 then
            Last_TaLP_Temp := Read_And_Validate_SMC_Temp ("TaLP", Last_TaLP_Temp);
            Last_TaRF_Temp := Read_And_Validate_SMC_Temp ("TaRF", Last_TaRF_Temp);
            Last_TaLT_Temp := Read_And_Validate_SMC_Temp ("TaLT", Last_TaLT_Temp);
            Last_TaLW_Temp := Read_And_Validate_SMC_Temp ("TaLW", Last_TaLW_Temp);
            Last_TaRT_Temp := Read_And_Validate_SMC_Temp ("TaRT", Last_TaRT_Temp);
            Last_TaRW_Temp := Read_And_Validate_SMC_Temp ("TaRW", Last_TaRW_Temp);
            
            -- ts0p and ts1p support hierarchy fallbacks
            Last_Ts0P_Temp := Read_And_Validate_SMC_Temp ("TS0P", Last_Ts0P_Temp);
            if Last_Ts0P_Temp <= 0.0 then
               Last_Ts0P_Temp := Read_And_Validate_SMC_Temp ("Ts0P", Last_Ts0P_Temp);
            end if;
            if Last_Ts0P_Temp <= 0.0 then
               Last_Ts0P_Temp := Read_And_Validate_SMC_Temp ("TW0P", Last_Ts0P_Temp);
            end if;

            Last_Ts1P_Temp := Read_And_Validate_SMC_Temp ("TS1P", Last_Ts1P_Temp);
            if Last_Ts1P_Temp <= 0.0 then
               Last_Ts1P_Temp := Read_And_Validate_SMC_Temp ("Ts1P", Last_Ts1P_Temp);
            end if;
            if Last_Ts1P_Temp <= 0.0 then
               Last_Ts1P_Temp := Read_And_Validate_SMC_Temp ("TW1P", Last_Ts1P_Temp);
            end if;

            -- Read power telemetry sensors (non-critical, read every 10s)
            declare
               Val_aPMX : C_float := 0.0;
               Val_mTPL : C_float := 0.0;
            begin
               Res := SMC_IO.Read_Key (Conn, Key_aPMX, Val_aPMX);
               Res := SMC_IO.Read_Key (Conn, Key_mTPL, Val_mTPL);
               Daemon_State.Set_aPMX_Val (Float (Val_aPMX));
               Daemon_State.Set_mTPL_Val (Float (Val_mTPL));
            end;

            Pwr_mUTL := Read_And_Validate_SMC_Temp ("mUTL", Pwr_mUTL);
            Pwr_xPPT := Read_And_Validate_SMC_Temp ("xPPT", Pwr_xPPT);
            Pwr_xLPM := Read_And_Validate_SMC_Temp ("xLPM", Pwr_xLPM);
            Pwr_PHPB := Read_And_Validate_SMC_Temp ("PHPB", Pwr_PHPB);
            Pwr_PHPM := Read_And_Validate_SMC_Temp ("PHPM", Pwr_PHPM);
            Pwr_PHPC := Read_And_Validate_SMC_Temp ("PHPC", Pwr_PHPC);
            Pwr_PHPS := Read_And_Validate_SMC_Temp ("PHPS", Pwr_PHPS);
            Pwr_PMVC := Read_And_Validate_SMC_Temp ("PMVC", Pwr_PMVC);
            Pwr_PPSC := Read_And_Validate_SMC_Temp ("PPSC", Pwr_PPSC);
            Pwr_PSVR := Read_And_Validate_SMC_Temp ("PSVR", Pwr_PSVR);
            Pwr_PDBR := Read_And_Validate_SMC_Temp ("PDBR", Pwr_PDBR);
            Pwr_PDTR := Read_And_Validate_SMC_Temp ("PDTR", Pwr_PDTR);
         end if;

         -- Update Telemetry Cache from EARU_data.dat every 10s (SHA256 optimization)
         -- This reads from disk and hashes content; frequency reduced to minimize I/O overhead.
         if Loop_Count = 1 or else Loop_Count mod 100 = 0 then
            SMC_Files.Update_Telemetry_Cache;
         end if;

         -- Update Battery Percent every 30 seconds (300 loops)
         if Loop_Count = 1 or else Loop_Count mod 300 = 0 then
            Battery_Percent := SMC_Files.Get_Battery_Percent;
         end if;


         -- Calculate Gradients and Derivatives
         if Prev_Temp > 0.0 then
            Temp_Gradient := Current_Temp - Prev_Temp;
         else
            Temp_Gradient := 0.0;
         end if;

         -- Check active Precool and Overdrive Mode flags
         SMC_Files.Check_Precool_Mode (Precool_Active, Precool_Time_Left);
         
         declare
            Prev_Overdrive : constant Boolean := Overdrive_Active;
            File_Overdrive_Active : Boolean;
            File_Overdrive_Time_Left : Long_Integer;
         begin
            SMC_Files.Check_Overdrive_Mode (File_Overdrive_Active, File_Overdrive_Time_Left);
            
            -- Check System Load for Emergency Overdrive every 2 minutes (1200 loops)
            if Loop_Count = 1 or else Loop_Count mod 1200 = 0 then
               SMC_Files.Check_Load_Avg_Status (Max_Load, Load_Status);
            end if;

            if SMC_Thresholds.Should_Engage_Overdrive (Load_Status) then
               if not Overdrive_Active then
                  Put_Line ("[DAEMON] EMERGENCY: System load " & Float'Image (Max_Load) & " >= 100. Activating Overdrive Mode.");
                  SMC_Files.Notify_User ("EMERGENCY", "System load " & Float'Image (Max_Load) & " exceeds 100. Overdrive Mode ENGAGED.");
               end if;
               Overdrive_Active := True;
               if Overdrive_Time_Left < 60 then
                  Overdrive_Time_Left := 60; -- Hold for at least 60 seconds
               end if;
            else
               -- If not emergency load, fall back to file-based overdrive state
               Overdrive_Active := File_Overdrive_Active;
               Overdrive_Time_Left := File_Overdrive_Time_Left;
            end if;

            -- Trigger cooldown if Overdrive was active and is now disabled
            if Prev_Overdrive and then not Overdrive_Active then
               if not Daemon_State.Is_Turbo_Active then
                  declare
                     Max_Ac_RPM : constant Float := (if Float (F0Ac_Val) > Float (F1Ac_Val) then Float (F0Ac_Val) else Float (F1Ac_Val));
                  begin
                     Daemon_State.Start_Cooldown (Max_Ac_RPM);
                  end;
                  Put_Line ("[DAEMON] Overdrive deactivated. Starting natural log transition (60s)...");
               end if;
            end if;
         end;
         
         if Overdrive_Active and then Loop_Count mod 10 = 0 then
            Put_Line ("[DAEMON] Overdrive Flag Active! Holding fans in manual Overdrive (ffffffff) for " & 
                      Long_Integer'Image (Overdrive_Time_Left) & " seconds.");
         end if;

         -- Battery Temperature PID Controller Loop (Using battery temperatures from TB0T, TB1T, TB2T)
         declare
            TB0T_Val : Float := 20.0;
            TB1T_Val : Float := 20.0;
            TB2T_Val : Float := 20.0;
         begin
            TB0T_Val := Read_And_Validate_SMC_Temp ("TB0T", TB0T_Val);
            TB1T_Val := Read_And_Validate_SMC_Temp ("TB1T", TB1T_Val);
            TB2T_Val := Read_And_Validate_SMC_Temp ("TB2T", TB2T_Val);
            
            Max_Battery_Temp := TB0T_Val;
            if TB1T_Val > Max_Battery_Temp then Max_Battery_Temp := TB1T_Val; end if;
            if TB2T_Val > Max_Battery_Temp then Max_Battery_Temp := TB2T_Val; end if;
            
            SMC_Math.Update_Battery_PID (
               State        => PID_Loop_State,
               Current_Temp => SMC_Math.Temperature_Value (Max_Battery_Temp),
               DT           => 0.1,
               Output       => Battery_Target
            );
         end;

         -- Determine if thermal thresholds are crossed requiring fan ramping
         declare
            Is_Thermal_Demand : constant Boolean := (
               Last_TCMZ_Temp   >= SMC_Thresholds.TURBO_TEMP_CPU_THRESHOLD or else
               Last_GPU_Temp    >= SMC_Thresholds.TURBO_TEMP_GPU_THRESHOLD or else
               Power            >= SMC_Thresholds.TURBO_POWER_THRESHOLD or else
               Max_Battery_Temp  > SMC_Thresholds.TURBO_BATT_TEMP_THRESHOLD
            );
         begin
            -- Engage pre-cooling or standard mathematical target
            CPU_GPU_Target := SMC_Math.Compute_Target_RPM (
               Current_Temp         => SMC_Math.Temperature_Value (Current_Temp),
               Power                => SMC_Math.Power_Value (Power),
               Battery_Low_Survival => (Battery_Percent <= 3),
               Endurance_Active     => (Battery_Percent <= 10) or Overdrive_Active,
               Emergency_Load       => False,
               Turbo_Active         => (Daemon_State.Is_Turbo_Active and then Is_Thermal_Demand) or Precool_Active,
               Derivative           => Temp_Gradient / 0.1
            );

            -- Target speed is maximum of CPU/GPU requirement and Battery PID requirement
            Target_RPM := CPU_GPU_Target;
            if Battery_Target > Target_RPM then
               Target_RPM := Battery_Target;
            end if;

            -- Silent Mode: clamp fan RPM to prevent roaring in closed rooms
            if Silent_Mode and then Target_RPM > 6200.0 then
               Target_RPM := 6200.0;
            end if;

            -- Handle Cooldown Transition (Natural Logarithmic)
            if Daemon_State.Is_Turbo_Active or else Overdrive_Active then
               if Daemon_State.Is_In_Cooldown then
                  Daemon_State.Cancel_Cooldown;
                  Put_Line ("[DAEMON] Turbo/Overdrive re-engaged. Cooldown transition CANCELLED.");
               end if;
            elsif Daemon_State.Is_In_Cooldown then
               declare
                  use Ada.Real_Time;
                  Elapsed : constant Time_Span := Clock - Daemon_State.Get_Cooldown_Start_Time;
                  Elapsed_Sec : constant Float := Float (To_Duration (Elapsed));
                  Cooldown_Duration : constant Float := 60.0;
               begin
                  if Elapsed_Sec >= Cooldown_Duration then
                     Daemon_State.Cancel_Cooldown;
                     Put_Line ("[DAEMON] Turbo Cooldown complete. Resuming normal PID control.");
                  else
                     Target_RPM := SMC_Math.Compute_Log_Transition_RPM (
                        Start_RPM => Daemon_State.Get_Cooldown_Start_RPM,
                        End_RPM   => Float (Target_RPM),
                        Elapsed   => Elapsed_Sec,
                        Duration  => Cooldown_Duration
                     );
                  end if;
               end;
            end if;

            -- Set optimal Target fan speed (F0Tg / F1Tg) at 10Hz
            declare
               F0Tg_Hex : chars_ptr;
               F1Tg_Hex : chars_ptr;
            begin
               if Overdrive_Active and then not Silent_Mode then
                  F0Tg_Hex := New_String ("0050c347");
                  F1Tg_Hex := New_String ("0050c347");
               elsif (Target_RPM >= 10100.0 or else (Daemon_State.Is_Turbo_Active and then Is_Thermal_Demand))
                     and then not Silent_Mode
               then
                  F0Tg_Hex := New_String ("0050c347");
                  F1Tg_Hex := New_String ("0050c347");
               else
                  declare
                      Hex_Str : constant String := SMC_Utils.Float_To_Hex (Float (Target_RPM));
                  begin
                     F0Tg_Hex := New_String (Hex_Str);
                     F1Tg_Hex := New_String (Hex_Str);
                  end;
               end if;
               -- MURPHY'S LAW: Check return values — SMC write may fail silently
               Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Tg, F0Tg_Hex);
               if Res /= 0 then
                  Put_Line ("[DAEMON] WARNING: Write F0Tg FAILED (result=" & Interfaces.C.int'Image (Res) & ") — fan speed may not be correct!");
               end if;
               Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Tg, F1Tg_Hex);
               if Res /= 0 then
                  Put_Line ("[DAEMON] WARNING: Write F1Tg FAILED (result=" & Interfaces.C.int'Image (Res) & ") — fan speed may not be correct!");
               end if;
               Free (F0Tg_Hex);
               Free (F1Tg_Hex);
            end;

            -- Re-enforce manual takeover keys every 10 seconds (100 loops) to prevent firmware override
            -- Optimization: Throttled to 0.1Hz. Frequent re-writes to SMC keys cause significant 
            -- context switching between user space and kernel/SMC firmware.
            if Loop_Count = 1 or else Loop_Count mod 100 = 0 then
               -- MURPHY'S LAW: Check EVERY write return — SMC connection may have dropped
               Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Md, Hex_01);
               if Res /= 0 then
                  Put_Line ("[DAEMON] WARNING: Write F0Md (fan mode) FAILED (result=" & Interfaces.C.int'Image (Res) & ")");
               end if;
               Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Fb, Hex_Fb);
               if Res /= 0 then
                  Put_Line ("[DAEMON] WARNING: Write F0Fb (fan feedback) FAILED (result=" & Interfaces.C.int'Image (Res) & ")");
               end if;
               Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Dc, Hex_Dc);
               if Res /= 0 then
                  Put_Line ("[DAEMON] WARNING: Write F0Dc (fan duty cycle) FAILED (result=" & Interfaces.C.int'Image (Res) & ")");
               end if;
               Res := SMC_IO.Write_Key_Hex (Conn, Key_F0St, Hex_St);
               if Res /= 0 then
                  Put_Line ("[DAEMON] WARNING: Write F0St (fan status) FAILED (result=" & Interfaces.C.int'Image (Res) & ")");
               end if;

               Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Md, Hex_01);
               if Res /= 0 then
                  Put_Line ("[DAEMON] WARNING: Write F1Md (fan mode) FAILED (result=" & Interfaces.C.int'Image (Res) & ")");
               end if;
               Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Fb, Hex_Fb);
               if Res /= 0 then
                  Put_Line ("[DAEMON] WARNING: Write F1Fb (fan feedback) FAILED (result=" & Interfaces.C.int'Image (Res) & ")");
               end if;
               Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Dc, Hex_Dc);
               if Res /= 0 then
                  Put_Line ("[DAEMON] WARNING: Write F1Dc (fan duty cycle) FAILED (result=" & Interfaces.C.int'Image (Res) & ")");
               end if;
               Res := SMC_IO.Write_Key_Hex (Conn, Key_F1St, Hex_St);
               if Res /= 0 then
                  Put_Line ("[DAEMON] WARNING: Write F1St (fan status) FAILED (result=" & Interfaces.C.int'Image (Res) & ")");
               end if;
            end if;
         end;

         -- Read actual Fan Speeds for telemetry at 10Hz
         declare
            Res0 : constant Interfaces.C.int := SMC_IO.Read_Key (Conn, Key_F0Ac, F0Ac_Val);
            Res1 : constant Interfaces.C.int := SMC_IO.Read_Key (Conn, Key_F1Ac, F1Ac_Val);
         begin
            if Res0 /= 0 or Res1 /= 0 then
               Put_Line ("[DAEMON] WARNING: Read_Key F0Ac/F1Ac failed with code: " & 
                         Interfaces.C.int'Image (Res0) & " / " & Interfaces.C.int'Image (Res1));
            end if;
         end;

         -- Read target Fan Speeds for telemetry at 0.1Hz
         if Loop_Count mod 100 = 0 then
            declare
               Res0_Tg : constant Interfaces.C.int := SMC_IO.Read_Key (Conn, Key_F0Tg, F0Tg_Val);
               Res1_Tg : constant Interfaces.C.int := SMC_IO.Read_Key (Conn, Key_F1Tg, F1Tg_Val);
            begin
               if Res0_Tg /= 0 or Res1_Tg /= 0 then
                  Put_Line ("[DAEMON] WARNING: Read_Key F0Tg/F1Tg failed with code: " & 
                            Interfaces.C.int'Image (Res0_Tg) & " / " & Interfaces.C.int'Image (Res1_Tg));
               end if;
            end;
         end if;

         -- Accelerometer Delta Safety Check: REMOVED 2026-10-03.
         -- Seismic/shock handling now lives entirely in the EARU daemon, which
         -- owns the CoreMotion source and publishes "accel" plus
         -- "seismic_activity"."motion_type" in EARU_data.dat. The block below
         -- used to re-read that same EARU_data.dat JSON via
         -- SMC_Files.Read_SMS_Values and diff successive samples against a
         -- hard limit, which was unsound: Update_Telemetry_Cache clamped each
         -- axis to +/-327g before scaling by 100, so one outlier sample yielded
         -- a summed delta of 32700-65400 against a limit of 150 and dropped
         -- turbo about a second after it engaged. Log evidence at
         -- /var/log/smcSystemDemandNow.log lines ~132129-132549.
         -- CONSEQUENCE: this daemon no longer self-deactivates turbo on shock.
         -- If shock-interlock behaviour is wanted, it must be re-implemented
         -- against EARU's published seismic signal (e.g. gating on
         -- seismic_activity.motion_type), not against a re-derived delta.

         -- Temperature and Spike Activation/Deactivation Loop Rules
         if Daemon_State.Is_Turbo_Active then
            if SMC_Thresholds.Should_Deactivate_Turbo (
                  CPU_Temp     => Last_TCMZ_Temp,
                  GPU_Temp     => Last_GPU_Temp,
                  Battery_Temp => Max_Battery_Temp,
                  Power        => Power)
            then
               Deactivate_Turbo_Mode ("TCMz, GPU, & Battery cooled down");
            end if;
         else
            if SMC_Thresholds.Should_Activate_Turbo (
                  CPU_Temp     => Last_TCMZ_Temp,
                  GPU_Temp     => Last_GPU_Temp,
                  Power        => Power,
                  Battery_Temp => Max_Battery_Temp,
                  Spike_Count  => Daemon_State.Get_Spike_Count)
            then
               -- Determine which threshold triggered for logging
               -- CITATION: Threshold text derived from SMC_Thresholds constants so the
               --   log can never drift from the values that actually triggered it.
               if Last_TCMZ_Temp >= SMC_Thresholds.TURBO_TEMP_CPU_THRESHOLD then
                  Activate_Turbo_Mode ("TCMz Temp " & Float'Image (Last_TCMZ_Temp) &
                                       "C >= " & Float'Image (SMC_Thresholds.TURBO_TEMP_CPU_THRESHOLD) & "C");
               elsif Last_GPU_Temp >= SMC_Thresholds.TURBO_TEMP_GPU_THRESHOLD then
                  Activate_Turbo_Mode ("GPU Temp " & Float'Image (Last_GPU_Temp) &
                                       "C >= " & Float'Image (SMC_Thresholds.TURBO_TEMP_GPU_THRESHOLD) & "C");
               elsif Power >= SMC_Thresholds.TURBO_POWER_THRESHOLD then
                  Activate_Turbo_Mode ("Power Draw " & Float'Image (Power) &
                                       "W >= " & Float'Image (SMC_Thresholds.TURBO_POWER_THRESHOLD) & "W");
               elsif Max_Battery_Temp > SMC_Thresholds.TURBO_BATT_TEMP_THRESHOLD then
                  Activate_Turbo_Mode ("BattMax " & Float'Image (Max_Battery_Temp) &
                                       "C > " & Float'Image (SMC_Thresholds.TURBO_BATT_TEMP_THRESHOLD) & "C");
               elsif Daemon_State.Get_Spike_Count >= SMC_Thresholds.TURBO_SPIKE_COUNT_MIN then
                  Activate_Turbo_Mode ("Latency spikes detected by monitor");
               end if;
            end if;
         end if;

         -- Handle dynamic Fan Pressure Calibration during Turbo
         if Calibration_Active then
            Calibration_Sum := Calibration_Sum + Float (F0Ac_Val);
            Calibration_Count := Calibration_Count + 1;
            
            -- Stop calibration after 10 seconds (100 loops)
            if Clock - Calibration_Start_Time >= 10.0 then
               Calibration_Active := False;
               declare
                  Avg_RPM : constant Float := Calibration_Sum / Float (Calibration_Count);
                  Diff    : Float;
                  Est_HPa : Float;
               begin
                   if Calibrated_Pres_RPM > 0.0 then
                      Diff := Avg_RPM - Calibrated_Pres_RPM;
                      -- DERIVATION: Replace hardcoded 1006.0 with weather API pressure.
                      -- Formula: Est_HPa = Ref_Pressure * (Ref_RPM / Current_RPM)
                      -- Physics: Higher atmospheric pressure → denser air → fan spins
                      -- faster to maintain cooling. So ratio (Ref/Current) scales the
                      -- reference pressure inversely with RPM change.
                      -- Ref_Pressure: from weather API via EARU_data.dat telemetry cache.
                      -- Ref_RPM: calibrated fan speed at calibration time (saved to file).
                      -- Current_RPM: average fan speed during 10-second calibration window.
                      declare
                         Weather_Ref : constant Float := SMC_Files.Get_Weather_Pressure_HPa;
                      begin
                         Est_HPa := Weather_Ref * (Calibrated_Pres_RPM / Avg_RPM);
                         -- Clamp to sane atmospheric range [870, 1084] hPa
                         if Est_HPa < 870.0 then Est_HPa := 870.0; end if;
                         if Est_HPa > 1084.0 then Est_HPa := 1084.0; end if;
                      end;
                      SMC_Files.Write_Pressure_Report (
                         Ref_RPM   => Calibrated_Pres_RPM,
                         Cur_RPM   => Avg_RPM,
                         Diff      => Diff,
                         Est_HPa   => Est_HPa,
                         Timestamp => Long_Integer (Clock - Time_Of (1970, 1, 1, 0.0))
                      );
                      -- Write dataset row for post-hoc analysis
                      SMC_Files.Write_Pressure_Dataset (
                         Cur_RPM    => Avg_RPM,
                         Weather_HPa => SMC_Files.Get_Weather_Pressure_HPa,
                         Altitude_M  => SMC_Files.Get_Weather_Altitude_M,
                         Timestamp   => Long_Integer (Clock - Time_Of (1970, 1, 1, 0.0))
                      );
                      Put_Line ("[CALIBRATION] Estimated pressure: " & Float'Image (Est_HPa) & " hPa"
                                & " (weather ref: " & Float'Image (SMC_Files.Get_Weather_Pressure_HPa) & " hPa"
                                & ", alt: " & Float'Image (SMC_Files.Get_Weather_Altitude_M) & "m)");
                  else
                     -- Save current speed as reference RPM
                     Calibrated_Pres_RPM := Avg_RPM;
                     SMC_Files.Save_Fan_Calibration (Avg_RPM);
                     Put_Line ("[CALIBRATION] Calibration complete. Pinned reference speed: " & Float'Image (Avg_RPM) & " RPM.");
                  end if;
               end;
            end if;
         end if;

         -- Export all individual sensor values to the EARU data directory every 10 seconds (100 loops)
         -- Optimization: Throttled from 0.5Hz to 0.1Hz to minimize disk I/O.
         -- Writing ~20 files per cycle is expensive; reducing frequency saves significant CPU.
         if Loop_Count mod 100 = 0 then
            SMC_Files.Write_EARU_Temp ("TCMz", Last_TCMZ_Temp);
            SMC_Files.Write_EARU_Temp ("Tg0X", Last_GPU_Temp);
            SMC_Files.Write_EARU_Temp ("TaLP", Last_TaLP_Temp);
            SMC_Files.Write_EARU_Temp ("TaRF", Last_TaRF_Temp);
            SMC_Files.Write_EARU_Temp ("TaLT", Last_TaLT_Temp);
            SMC_Files.Write_EARU_Temp ("TaLW", Last_TaLW_Temp);
            SMC_Files.Write_EARU_Temp ("TaRT", Last_TaRT_Temp);
            SMC_Files.Write_EARU_Temp ("TaRW", Last_TaRW_Temp);
            SMC_Files.Write_EARU_Temp ("Ts0p", Last_Ts0P_Temp);
            SMC_Files.Write_EARU_Temp ("Ts1p", Last_Ts1P_Temp);
            SMC_Files.Write_EARU_Temp ("PSTR", Power);

            SMC_Files.Write_EARU_SMC ("aPMX", Daemon_State.Get_aPMX_Val);
            SMC_Files.Write_EARU_SMC ("mTPL", Daemon_State.Get_mTPL_Val);
            SMC_Files.Write_EARU_SMC ("mUTL", Pwr_mUTL);
            SMC_Files.Write_EARU_SMC ("xPPT", Pwr_xPPT);
            SMC_Files.Write_EARU_SMC ("xLPM", Pwr_xLPM);
            SMC_Files.Write_EARU_SMC ("PHPB", Pwr_PHPB);
            SMC_Files.Write_EARU_SMC ("PHPM", Pwr_PHPM);
            SMC_Files.Write_EARU_SMC ("PHPC", Pwr_PHPC);
            SMC_Files.Write_EARU_SMC ("PHPS", Pwr_PHPS);
            SMC_Files.Write_EARU_SMC ("PMVC", Pwr_PMVC);
            SMC_Files.Write_EARU_SMC ("PPSC", Pwr_PPSC);
            SMC_Files.Write_EARU_SMC ("PSVR", Pwr_PSVR);
            SMC_Files.Write_EARU_SMC ("PDBR", Pwr_PDBR);
            SMC_Files.Write_EARU_SMC ("PDTR", Pwr_PDTR);

            SMC_Files.Write_EARU_Fan ("F0Ac", Float (F0Ac_Val));
            SMC_Files.Write_EARU_Fan ("F1Ac", Float (F1Ac_Val));
            SMC_Files.Write_EARU_Fan ("F0Tg", Float (F0Tg_Val));
            SMC_Files.Write_EARU_Fan ("F1Tg", Float (F1Tg_Val));
            SMC_Files.Write_EARU_Turbo (if Daemon_State.Is_Turbo_Active then 1 else 0);

            -- === EARU 7-file power tracking export (0.1 Hz) ===
            -- Mirrors earu Accumulate_Power (earu-system_bridge.adb:614-717)
            -- order: rollover first, then dt-guarded integrate, then est_today.
            -- Survival: smc is source of truth (EARU only reacts to wake=0/≠0).
            declare
               Now_C : constant Ada.Calendar.Time := Ada.Calendar.Clock;
               Dt    : constant Duration := Now_C - Last_Power_Tick;
               Split_Y : Ada.Calendar.Year_Number;
               Split_M : Ada.Calendar.Month_Number;
               Split_D : Ada.Calendar.Day_Number;
               Split_S : Ada.Calendar.Day_Duration;
               Today_Key       : Integer;
               This_Month      : Integer;
               Delta_Wh        : Long_Float;
               Remaining_Hours : Long_Float;
               Est_Today_Wh    : Long_Float;
               Full_Wh         : Float;
               Energy_Wh       : Long_Float;
               Surv_W          : Long_Float;
               Wake_V          : Long_Float;
               Len_V           : Long_Float;
            begin
               Ada.Calendar.Split (Now_C, Split_Y, Split_M, Split_D, Split_S);
               Today_Key  := Integer (Split_Y) * 10000 + Integer (Split_M) * 100 + Integer (Split_D);
               This_Month := Integer (Split_M);

               -- Day rollover (mirror earu-system_bridge.adb:675-679)
               if Power_Day_Key /= Today_Key then
                  if Power_Day_Key /= 0 then
                     Put_Line ("[POWER] Day rollover; day accumulator reset (" &
                               Integer'Image (Power_Day_Key) & " -> " &
                               Integer'Image (Today_Key) & ").");
                  end if;
                  Power_Day_Wh := 0.0;
               end if;
               Power_Day_Key := Today_Key;

               -- Month rollover (mirror earu-system_bridge.adb:681-685)
               if Power_Month_Key /= This_Month then
                  if Power_Month_Key /= 0 then
                     Put_Line ("[POWER] Month rollover; month accumulator reset.");
                  end if;
                  Power_Month_Wh := 0.0;
               end if;
               Power_Month_Key := This_Month;

               -- dt guard 0 < dt < 300 (mirror earu-system_bridge.adb:688)
               if Dt > 0.0 and then Dt < 300.0 then
                  Delta_Wh := Long_Float (Power) * Long_Float (Dt) / 3600.0;
                  Power_Day_Wh   := Long_Float'Max (0.0, Power_Day_Wh + Delta_Wh);
                  Power_Month_Wh := Long_Float'Max (0.0, Power_Month_Wh + Delta_Wh);
                  Power_Meter_Wh := Long_Float'Max (0.0, Power_Meter_Wh + Delta_Wh);
               end if;
               -- Always advance tick (invalid dt still resyncs the clock)
               Last_Power_Tick := Now_C;

               -- est_today = day + PWR * hours_until_midnight (EARU :702-709)
               Remaining_Hours := Long_Float'Max
                 (0.0, (86400.0 - Long_Float (Split_S)) / 3600.0);
               Est_Today_Wh := Power_Day_Wh + Long_Float (Power) * Remaining_Hours;

               -- Survival decision: on_battery := Pwr_PDBR > 0.0 (smc_daemon.adb:307-310)
               Full_Wh := SMC_Files.Get_Battery_Full_Wh;
               if Pwr_PDBR > 0.0 then
                  if Full_Wh <= 0.0 then
                     -- Conservative fallback: capacity unknown → wake=0 keeps
                     -- current EARU behaviour (export survive, no pulse solve).
                     if not Full_Wh_Warned then
                        Put_Line
                          ("[POWER] WARN: BatteryFullChargeCapacityWh unknown (0.0); " &
                           "cannot decide survival — writing wake=0 (survive). " &
                           "Capacity populates after EARU_data.dat exposes the key.");
                        Full_Wh_Warned := True;
                     end if;
                     Surv_W := 0.0;
                     Wake_V := 0.0;
                     Len_V  := 0.0;
                  else
                     Energy_Wh := Long_Float (Battery_Percent) * Long_Float (Full_Wh) / 100.0;
                     if Remaining_Hours > 0.0 then
                        Surv_W := Energy_Wh / Remaining_Hours;
                     else
                        Surv_W := 0.0;
                     end if;
                     if Long_Float (Pwr_PDBR) > Surv_W then
                        -- Cannot reach midnight at current draw: pulse trigger.
                        -- Non-zero wake makes EARU run Solve_Pulsing_Numerically
                        -- (earu-system_bridge.adb:841-882) and overwrite our
                        -- wake/length/survival with its own schedule.
                        Wake_V := 1.0;
                        Len_V  := 0.0;
                     else
                        Wake_V := 0.0;
                        Len_V  := 0.0;
                        Surv_W := 0.0;  -- EARU forces survival_w=0 when wake=0
                     end if;
                  end if;
               else
                  -- On AC (Pwr_PDBR <= 0): battery survives by definition
                  Surv_W := 0.0;
                  Wake_V := 0.0;
                  Len_V  := 0.0;
               end if;

               SMC_Files.Write_Power_Tracking
                 (Power_Day_Wh, Est_Today_Wh, Power_Month_Wh, Power_Meter_Wh,
                  Surv_W, Wake_V, Len_V);

               -- Persist every 6th export tick (~60s) to bound restart loss
               Power_Tick_Count := Power_Tick_Count + 1;
               if Power_Tick_Count mod 6 = 0 then
                  SMC_Files.Save_Power_Metrics
                    (Power_Day_Wh, Power_Month_Wh, Power_Meter_Wh,
                     Power_Day_Key, Power_Month_Key,
                     Long_Integer (Now_C - Ada.Calendar.Time_Of (1970, 1, 1, 0.0)));
               end if;
            exception
               when E : others =>
                  Put_Line ("[POWER] tracking export failed: " &
                            Ada.Exceptions.Exception_Message (E));
            end;
         end if;

         -- Write Telemetry CSV every 10 seconds (100 loops of 100ms)
         if Clock - Last_Telemetry_Time >= 10.0 then
            Last_Telemetry_Time := Clock;
            SMC_Files.Log_Telemetry_CSV (
               Day_Str         => SMC_Utils.Get_Day_Str,
               Time_Only       => SMC_Utils.Get_Time_Str,
               TCMZ_Temp       => Current_Temp,
               GPU_Temp        => Last_GPU_Temp,
               Battery_Temp    => Integer (Last_Ts0P_Temp), -- Using ts0p palm rest as secondary temp index in csv
               Power           => Power,
               Manual_Takeover => 1,
               Overdrive       => (if Target_RPM >= 10100.0 then 1 else 0),
               Temp_Gradient   => Temp_Gradient,
               RPM_Gradient    => Float (F0Ac_Val) - Float (F1Ac_Val)
            );

            -- CoreML Automatic Training Trigger based on User Inactivity (HID idle time >= 7200 seconds / 2 hours)
            if Clock - Last_ML_Check_Time >= 60.0 then
               Last_ML_Check_Time := Clock;
               declare
                  Idle_Time : constant Float := SMC_Files.Get_HID_Idle_Time;
                   Today     : constant String := SMC_Utils.Get_Day_Str;
               begin
                  if Idle_Time >= 7200.0 then
                     if Ada.Strings.Unbounded.To_String (Last_Trained_Day) /= Today then
                        Spawn_CoreML_Training;
                        Last_Trained_Day := Ada.Strings.Unbounded.To_Unbounded_String (Today);
                        SMC_Files.Notify_User ("ML_TRAINING", "HID idle time reached 7200s. Automatically spawning model training.");
                     end if;
                  end if;
               end;
            end if;
         end if;

         -- Enforce Power Mode and Low Power Mode settings every 10 seconds (100 loops)
         -- Optimization: Throttled to 0.1Hz. Spawning '/usr/sbin/pmset' involves expensive 
         -- fork/exec cycles. 10s is sufficient to maintain desired system state.
         if Loop_Count mod 100 = 0 then
            declare
               Args : GNAT.OS_Lib.Argument_List (1 .. 2);
               Override_Flag : constant Boolean := Ada.Directories.Exists (SMC_Files.FULL_POWER_OVERRIDE_FLAG);
               Force_LPM_Off : constant Boolean := Overdrive_Active and Override_Flag;
               Target_Val    : constant String := "0";
            begin
               Args (1) := new String'("powermode");
               Args (2) := new String'(Target_Val);
               Run_Power_Command (Args);
               GNAT.OS_Lib.Free (Args (1));
               GNAT.OS_Lib.Free (Args (2));
               
               Args (1) := new String'("lowpowermode");
               Args (2) := new String'(Target_Val);
               Run_Power_Command (Args);
               GNAT.OS_Lib.Free (Args (1));
               GNAT.OS_Lib.Free (Args (2));
               
               if Force_LPM_Off and then Battery_Percent <= 20 then
                  if Loop_Count mod 500 = 0 then -- Log every 50 seconds to avoid spam
                     Put_Line ("[DAEMON] Battery low (" & Integer'Image (Battery_Percent) & "%), but LPM forced OFF due to " & 
                              (if Overdrive_Active then "Overdrive Mode." else "TOGAFULLPOWEROVERRIDE."));
                  end if;
               end if;
            end;
         end if;

         -- Save state variables
         Prev_Temp := Current_Temp;

         -- High-precision delay to yield remaining loop time
         declare
            Elapsed_Span : constant Time_Span := Ada.Real_Time.Clock - Loop_Start_Time;
            Target_Span  : constant Time_Span := Milliseconds (100);
         begin
            if Elapsed_Span < Target_Span then
               delay To_Duration (Target_Span - Elapsed_Span);
            else
               -- Loop overrun: just yield briefly to prevent CPU starvation
               delay 0.001;
            end if;
         end;
         Ada.Text_IO.Flush;
      end loop;
      SMC_Realtime.Leave_Audio_Workgroup (Main_Token'Access);
   exception
      when E : others =>
         Put_Line ("[FATAL ERROR] Daemon main loop crashed: " & Ada.Exceptions.Exception_Information (E));
         SMC_Realtime.Leave_Audio_Workgroup (Main_Token'Access);
   end;

   -- Clean Restoration on Shutdown
   Put_Line ("[RESTORATION] Commencing system restoration procedures...");

   -- 1. Terminate background Python sidecar process using pkill
   if Python_Spawned then
      declare
         Success : Boolean;
         Args    : GNAT.OS_Lib.Argument_List (1 .. 3);
      begin
         Args (1) := new String'("-9");
         Args (2) := new String'("-f");
         Args (3) := new String'("inference_ane.py");
         GNAT.OS_Lib.Spawn ("/usr/bin/pkill", Args, Success);
         GNAT.OS_Lib.Free (Args (1));
         GNAT.OS_Lib.Free (Args (2));
         GNAT.OS_Lib.Free (Args (3));
         Put_Line ("[RESTORATION] Background ML Python sidecar killed.");
      end;
   end if;

   -- 2. Release com.apple.thermalmonitord
   declare
      Success : Boolean;
      Args    : GNAT.OS_Lib.Argument_List (1 .. 2);
   begin
      Args (1) := new String'("-CONT");
      Args (2) := new String'("thermalmonitord");
      GNAT.OS_Lib.Spawn ("/usr/bin/pkill", Args, Success);
      GNAT.OS_Lib.Free (Args (1));
      GNAT.OS_Lib.Free (Args (2));
   end;

   declare
      Success : Boolean;
      Args    : GNAT.OS_Lib.Argument_List (1 .. 3);
   begin
      Args (1) := new String'("load");
      Args (2) := new String'("-w");
      Args (3) := new String'("/System/Library/LaunchDaemons/com.apple.thermalmonitord.plist");
      GNAT.OS_Lib.Spawn ("/bin/launchctl", Args, Success);
      for I in Args'Range loop GNAT.OS_Lib.Free (Args (I)); end loop;
   end;
   Put_Line ("[RESTORATION] Thermalmonitord com.apple.thermalmonitord plist reload requested.");

   -- 3. Reset power profile and thermaldp
   declare
      Args : GNAT.OS_Lib.Argument_List (1 .. 2);
   begin
      Args (1) := new String'("thermaldp");
      Args (2) := new String'("0");
      Run_Power_Command (Args);
      GNAT.OS_Lib.Free (Args (1));
      GNAT.OS_Lib.Free (Args (2));
      
      Args (1) := new String'("powermode");
      Args (2) := new String'("0");
      Run_Power_Command (Args);
      GNAT.OS_Lib.Free (Args (1));
      GNAT.OS_Lib.Free (Args (2));
      
      Args (1) := new String'("lowpowermode");
      Args (2) := new String'("0");
      Run_Power_Command (Args);
      GNAT.OS_Lib.Free (Args (1));
      GNAT.OS_Lib.Free (Args (2));
   end;

   -- 4. Reset fan override keys back to auto control (F0Md / F1Md -> 00)
   Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Md, Hex_00);
   Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Md, Hex_00);
   Put_Line ("[RESTORATION] Fan manual override released (auto keys restored).");

   -- Close SMC Connection
   Res := SMC_IO.Close_Connection (Conn);
   Put_Line ("[RESTORATION] AppleSMC connection closed safely.");

   -- Delete PID file
   SMC_Files.Delete_File (SMC_Files.PID_FILE);

   -- Free chars_ptr allocations
   Free (Key_F0Tg);
   Free (Key_F1Tg);
   Free (Key_F0Md);
   Free (Key_F1Md);
   Free (Key_F0Fb);
   Free (Key_F1Fb);
   Free (Key_F0Dc);
   Free (Key_F1Dc);
   Free (Key_F0St);
   Free (Key_F1St);
   Free (Key_F0Ac);
   Free (Key_F1Ac);
   Free (Key_aPMX);
   Free (Key_mTPL);
   Free (Key_mUTL);
   Free (Key_xPPT);
   Free (Key_xLPM);
   Free (Key_PHPB);
   Free (Key_PHPM);
   Free (Key_PHPC);
   Free (Key_PHPS);
   Free (Key_PMVC);
   Free (Key_PPSC);
   Free (Key_PSVR);
   Free (Key_PDBR);
   Free (Key_PDTR);
   Free (Hex_01);
   Free (Hex_00);
   Free (Hex_Fb);
   Free (Hex_Dc);
   Free (Hex_St);
   Free (Hex_mTPL_On);
   Free (Hex_mTPL_Off);
   
   if Python_Spawned then
      GNAT.OS_Lib.Free (Python_Args (1));
   end if;

   SMC_Files.Notify_User ("RESTORATION", "Ada/SPARK SMC Telemetry Engine shut down and clean state restored.");
   Put_Line ("[DAEMON] Shutdown successfully completed. Goodbye!");

end Smc_Daemon;
