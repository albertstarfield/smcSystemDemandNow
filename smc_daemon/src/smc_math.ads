package SMC_Math with SPARK_Mode is

   -- RPM_Value: the commanded fan-speed domain for this daemon.
   --
   -- OPEN DEFECT 2026-10-04 -- CEILING IS BELOW THE FAN'S REAL SPEED.
   -- RPM_Value'Last is 10100.0, but the fan's free-running speed is 11,000 RPM at
   -- 990 hPa inlet (operator datum), and the affinity-law model N = 11000*(990/P)^(2/3)
   -- projects 10,831 RPM at sea level. So this ceiling cannot represent the fan's
   -- actual speed.
   -- Confirmed empirically: F0Ac was observed reading 10,891.6 RPM in
   -- /var/log/smcSystemDemandNow.log -- ABOVE this ceiling. That is why
   -- Compute_Log_Transition_RPM now routes every exit path through a local
   -- Saturate helper; a bare conversion of such a reading raises Constraint_Error
   -- and unwinds the entire daemon main loop to the [FATAL ERROR] handler.
   --
   -- CONSEQUENCE: the max-fan sentinel "Target_RPM >= 10100.0" used to select the
   -- maximum-fan SMC value (smc_daemon.adb) is BELOW what the fan actually reaches
   -- at maximum. It works as a threshold only incidentally.
   --
   -- Fan speed varies with inlet pressure: roughly +18% from sea level to 2,000 m
   -- altitude, +24% by 4,200 m. Density-driven variation is a DISTURBANCE TO
   -- REJECT, not a limit to feedforward -- control is closed on temperature, so
   -- higher achievable speed simply reaches the thermal target sooner.
   --
   -- NOT YET RESOLVED. Raising RPM_Value'Last touches every fan clamp in the
   -- project and needs an operator-chosen value; ~15,000 RPM would cover sea
   -- level through ~4,000 m altitude with margin. An altitude-aware sentinel is a
   -- possible follow-up so "at maximum" tracks achievable speed.
   --
   -- Full derivation, tables and Knudsen/Reynolds analysis:
   --   smc_daemon/docs/FAN_RPM_PRESSURE_ANALYSIS.md
   subtype RPM_Value is Float range 0.0 .. 10100.0;
   subtype Temperature_Value is Float range -50.0 .. 250.0;
   subtype Power_Value is Float range 0.0 .. 500.0;
   subtype DT_Value is Float range 0.001 .. 86400.0;

   -- Constants matching C
   TEMP_ACTIVATE_FAN_CONTROL : constant Float := 86.0;
   TEMP_OVERDRIVE           : constant Float := 95.0;
   POWER_ACTIVATE           : constant Float := 40.0;
   MIN_MANUAL_FAN_RPM       : constant Float := 3000.0;
   MAX_NORMAL_FAN_RPM       : constant Float := 6800.0;
   DERIVATIVE_THRESHOLD     : constant Float := 1.5;

   PID_TARGET_BATTERY_TEMP  : constant Float := 39.0;
   PID_KP                   : constant Float := 200.0;
   PID_KI                   : constant Float := 20.0;
   PID_KD                   : constant Float := 50.0;

   type PID_State is record
      Integral    : Float   := 0.0;
      Prev_Error  : Float   := 0.0;
      Initialized : Boolean := False;
   end record;

    -- Compute target RPM for CPU/GPU based on temperature, power, and state triggers
    function Compute_Target_RPM (
       Current_Temp         : Temperature_Value;
       Power                : Power_Value;
       Battery_Low_Survival : Boolean;
       Endurance_Active     : Boolean;
       Emergency_Load       : Boolean;
       Turbo_Active         : Boolean;
       Derivative           : Float
    ) return RPM_Value
      with
        Pre => Derivative in -100.0 .. 100.0,
        Post => Compute_Target_RPM'Result in 0.0 .. 10100.0;

   -- Run PID loop for battery temperature control
   procedure Update_Battery_PID (
      State        : in out PID_State;
      Current_Temp : Temperature_Value;
      DT           : DT_Value;
      Output       : out RPM_Value
   ) with
     Pre => State.Integral in -1000.0 .. 1000.0 and
            State.Prev_Error in -1000.0 .. 1000.0,
     Post => Output in MIN_MANUAL_FAN_RPM .. MAX_NORMAL_FAN_RPM;

    -- Compute logarithmic transition between two RPM values over a duration
    function Compute_Log_Transition_RPM (
       Start_RPM : Float;
       End_RPM   : Float;
       Elapsed   : Float;
       Duration  : Float
    ) return RPM_Value
      with
        Pre => Duration > 0.0 and then Elapsed >= 0.0,
        Post => Compute_Log_Transition_RPM'Result in 0.0 .. 10100.0;

end SMC_Math;
