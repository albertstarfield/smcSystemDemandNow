package SMC_Math with SPARK_Mode is

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
   ) return RPM_Value;

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
   ) return RPM_Value;

end SMC_Math;
