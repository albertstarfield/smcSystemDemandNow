package body SMC_Math with SPARK_Mode is

   ------------------------
   -- Compute_Target_RPM --
   ------------------------

   function Compute_Target_RPM (
      Current_Temp         : Temperature_Value;
      Power                : Power_Value;
      Battery_Low_Survival : Boolean;
      Endurance_Active     : Boolean;
      Emergency_Load       : Boolean;
      Turbo_Active         : Boolean;
      Derivative           : Float
   ) return RPM_Value is
      Target_RPM : Float;
      T          : Float;
   begin
      if Battery_Low_Survival then
         return 0.0;
      end if;

      if Endurance_Active or Emergency_Load then
         return 10100.0;
      end if;

      if Turbo_Active then
         if Current_Temp >= TEMP_OVERDRIVE then
            return 10100.0;
         else
            return MAX_NORMAL_FAN_RPM;
         end if;
      end if;

      if Current_Temp >= TEMP_OVERDRIVE then
         return 10100.0;
      elsif Current_Temp >= TEMP_ACTIVATE_FAN_CONTROL or Power >= POWER_ACTIVATE then
         if Current_Temp >= TEMP_ACTIVATE_FAN_CONTROL then
            -- Linear interpolation between ACTIVATE (86.0) and OVERDRIVE - 1 (94.0).
            -- Divisor is exactly (95.0 - 1.0 - 86.0) = 8.0.
            T := (Current_Temp - TEMP_ACTIVATE_FAN_CONTROL) / 8.0;
            if T < 0.0 then
               T := 0.0;
            elsif T > 1.0 then
               T := 1.0;
            end if;
            Target_RPM := MIN_MANUAL_FAN_RPM + (T * (MAX_NORMAL_FAN_RPM - MIN_MANUAL_FAN_RPM));
         else
            Target_RPM := MIN_MANUAL_FAN_RPM;
         end if;

         -- If temperature is rising too fast, go to max normal speed immediately
         if Derivative > DERIVATIVE_THRESHOLD and Current_Temp >= TEMP_ACTIVATE_FAN_CONTROL then
            Target_RPM := MAX_NORMAL_FAN_RPM;
         end if;

         -- Clamp
         if Target_RPM < MIN_MANUAL_FAN_RPM then
            Target_RPM := MIN_MANUAL_FAN_RPM;
         elsif Target_RPM > MAX_NORMAL_FAN_RPM then
            Target_RPM := MAX_NORMAL_FAN_RPM;
         end if;

         return Target_RPM;
      else
         return 0.0;
      end if;
   end Compute_Target_RPM;

   ------------------------
   -- Update_Battery_PID --
   ------------------------

   procedure Update_Battery_PID (
      State        : in out PID_State;
      Current_Temp : Temperature_Value;
      DT           : DT_Value;
      Output       : out RPM_Value
   ) is
      Error         : Float;
      P, I, D       : Float;
      Derived_Error : Float;
      Temp_Output   : Float;
   begin
      if not State.Initialized then
         State.Prev_Error  := 0.0;
         State.Integral    := 0.0;
         State.Initialized := True;
         Output            := MIN_MANUAL_FAN_RPM;
         return;
      end if;

      Error := Current_Temp - PID_TARGET_BATTERY_TEMP;

      -- Proportional term
      P := PID_KP * Error;

      -- Integral term with anti-windup clamping to prevent memory overflow
      State.Integral := State.Integral + (Error * DT);
      if State.Integral > 1000.0 then
         State.Integral := 1000.0;
      elsif State.Integral < -1000.0 then
         State.Integral := -1000.0;
      end if;

      I := PID_KI * State.Integral;

      -- Derivative term
      Derived_Error := (Error - State.Prev_Error) / DT;
      D := PID_KD * Derived_Error;

      Temp_Output := P + I + D;

      -- Clamp final output
      if Temp_Output < MIN_MANUAL_FAN_RPM then
         Output := MIN_MANUAL_FAN_RPM;
      elsif Temp_Output > MAX_NORMAL_FAN_RPM then
         Output := MAX_NORMAL_FAN_RPM;
      else
         Output := Temp_Output;
      end if;

      -- Save error for next iteration
      State.Prev_Error := Error;
   end Update_Battery_PID;

end SMC_Math;
