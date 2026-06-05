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

   function Float_To_Hex (Val : Float) return String is
      use Interfaces;
      function Float_To_Word is new Ada.Unchecked_Conversion (Float, Unsigned_32);
      Word : Unsigned_32;
      B0, B1, B2, B3 : Unsigned_8;
      Hex_Map : constant String (1 .. 16) := "0123456789abcdef";
      Result : String (1 .. 8);
      
      function To_Hex_Char (V : Unsigned_8) return Character is
      begin
         return Hex_Map (Natural (V) + 1);
      end To_Hex_Char;
   begin
      Word := Float_To_Word (Val);
      B0 := Unsigned_8 (Word and 16#FF#);
      B1 := Unsigned_8 (Shift_Right (Word, 8) and 16#FF#);
      B2 := Unsigned_8 (Shift_Right (Word, 16) and 16#FF#);
      B3 := Unsigned_8 (Shift_Right (Word, 24) and 16#FF#);
      
      Result (1) := To_Hex_Char (Shift_Right (B0, 4) and 16#0F#);
      Result (2) := To_Hex_Char (B0 and 16#0F#);
      Result (3) := To_Hex_Char (Shift_Right (B1, 4) and 16#0F#);
      Result (4) := To_Hex_Char (B1 and 16#0F#);
      Result (5) := To_Hex_Char (Shift_Right (B2, 4) and 16#0F#);
      Result (6) := To_Hex_Char (B2 and 16#0F#);
      Result (7) := To_Hex_Char (Shift_Right (B3, 4) and 16#0F#);
      Result (8) := To_Hex_Char (B3 and 16#0F#);
      
      return Result;
   end Float_To_Hex;







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

   Key_aPMX : chars_ptr := New_String ("aPMX");
   Key_mTPL : chars_ptr := New_String ("mTPL");

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
   
   -- Spatial movement protection variables
   Prev_X, Prev_Y, Prev_Z : Integer := 0;
   CX, CY, CZ             : Integer := 0;
   Prev_SMS_Valid         : Boolean := False;
   SMS_Success            : Boolean;
   Delta_X, Delta_Y, Delta_Z : Integer;
   
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

   LM_Task : Latency_Monitor_Access;
   TS_Task : Thermal_Suspender_Access;

   Loop_Count  : Natural := 0;
   Max_Load    : Float   := 0.0;
   Load_Status : Integer := 0;

   procedure Run_Power_Command (Args : GNAT.OS_Lib.Argument_List) is
      Success : Boolean;
   begin
      GNAT.OS_Lib.Spawn ("/usr/sbin/pmset", Args, Success);
   end Run_Power_Command;

   procedure Activate_Turbo_Mode (Reason : String) is
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
   begin
      if not Daemon_State.Is_Turbo_Active then
         return;
      end if;
      
      Daemon_State.Set_Turbo (False);
      Daemon_State.Reset_Spikes;
      Put_Line ("[DAEMON] Deactivating Turbo/Endurance Mode and Restoring Normal State... (Trigger: " & Reason & ")");
      
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

   -- Helper to print current timestamp string for logs
   function Get_Time_Str return String is
      use Ada.Strings.Fixed;
      Now : constant Ada.Calendar.Time := Clock;
      Year : Year_Number;
      Month : Month_Number;
      Day : Day_Number;
      Seconds : Day_Duration;
      Hour, Min, Sec : Natural;
   begin
      Split (Now, Year, Month, Day, Seconds);
      Hour := Natural (Seconds) / 3600;
      Min := (Natural (Seconds) mod 3600) / 60;
      Sec := Natural (Seconds) mod 60;
      return Trim (Hour'Image, Ada.Strings.Both) & ":" & 
             Trim (Min'Image, Ada.Strings.Both) & ":" & 
             Trim (Sec'Image, Ada.Strings.Both);
   end Get_Time_Str;

   function Get_Day_Str return String is
      use Ada.Strings.Fixed;
      Now : constant Ada.Calendar.Time := Clock;
      Year : Year_Number;
      Month : Month_Number;
      Day : Day_Number;
      Seconds : Day_Duration;
   begin
      Split (Now, Year, Month, Day, Seconds);
      return Trim (Year'Image, Ada.Strings.Both) & "-" & 
             Trim (Month'Image, Ada.Strings.Both) & "-" & 
             Trim (Day'Image, Ada.Strings.Both);
   end Get_Day_Str;

   procedure Spawn_CoreML_Training is
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
   Put_Line ("[DAEMON] Apple Silicon SPARK Daemon starting up...");

   -- Initialize Audio Workgroup
   SMC_Realtime.Init_Audio_Workgroup;

   -- Validate Root Access (geteuid() == 0)
   if Get_EUID /= 0 then
      Put_Line ("[FATAL] This daemon must be run as root (sudo) to interact with kernel and SMC keys.");
      GNAT.OS_Lib.OS_Exit (1);
   end if;

   -- Register standard Unix Signals using the direct libc link
   Sig_ResINT := C_Signal (2, Handle_Signal'Access);  -- SIGINT
   Sig_ResTERM := C_Signal (15, Handle_Signal'Access); -- SIGTERM
   Put_Line ("[DAEMON] Standard Unix SIGINT and SIGTERM handlers registered.");

   -- Dynamically allocate and activate the background tasks now that root access is verified
   LM_Task := new Latency_Monitor_T;
   TS_Task := new Thermal_Suspender_T;
   Put_Line ("[DAEMON] Background tasks successfully activated.");

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

         -- Read and validate all 10 system temperatures plus PSTR Power using safe SMC bounds readers
         Last_TCMZ_Temp := Read_And_Validate_SMC_Temp ("TCMz", Last_TCMZ_Temp);
         Last_GPU_Temp  := Read_And_Validate_SMC_Temp ("Tg0X", Last_GPU_Temp);
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

         -- Read power consumption
         Power := Read_And_Validate_SMC_Temp ("PSTR", Power);

         Current_Temp := Last_TCMZ_Temp;

         -- Update Telemetry Cache from EARU_data.dat every 500ms (SHA256 optimization)
         if Loop_Count = 1 or else Loop_Count mod 5 = 0 then
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
            File_Overdrive_Active : Boolean;
            File_Overdrive_Time_Left : Long_Integer;
         begin
            SMC_Files.Check_Overdrive_Mode (File_Overdrive_Active, File_Overdrive_Time_Left);
            
            -- Check System Load for Emergency Overdrive every 2 minutes (1200 loops)
            if Loop_Count = 1 or else Loop_Count mod 1200 = 0 then
               SMC_Files.Check_Load_Avg_Status (Max_Load, Load_Status);
            end if;

            if Load_Status = 2 then
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
         end;
         
         if Overdrive_Active then
            Put_Line ("[DAEMON] Overdrive Flag Active! Holding fans in manual Overdrive (ffffffff) for " & 
                      Long_Integer'Image (Overdrive_Time_Left) & " seconds.");
         end if;

         -- Engage pre-cooling or standard mathematical target
         CPU_GPU_Target := SMC_Math.Compute_Target_RPM (
            Current_Temp         => SMC_Math.Temperature_Value (Current_Temp),
            Power                => SMC_Math.Power_Value (Power),
            Battery_Low_Survival => (Battery_Percent <= 3),
            Endurance_Active     => (Battery_Percent <= 10) or Overdrive_Active,
            Emergency_Load       => (Daemon_State.Get_Spike_Count >= 5),
            Turbo_Active         => Daemon_State.Is_Turbo_Active or Precool_Active,
            Derivative           => Temp_Gradient / 0.1
         );

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

         -- Target speed is maximum of CPU/GPU requirement and Battery PID requirement
         Target_RPM := CPU_GPU_Target;
         if Battery_Target > Target_RPM then
            Target_RPM := Battery_Target;
         end if;

         -- Set optimal Target fan speed (F0Tg / F1Tg)
         declare
            F0Tg_Hex : chars_ptr;
            F1Tg_Hex : chars_ptr;
         begin
            if Overdrive_Active then
               F0Tg_Hex := New_String ("0050c347");
               F1Tg_Hex := New_String ("0050c347");
            elsif Target_RPM >= 10100.0 or else Daemon_State.Is_Turbo_Active then
               F0Tg_Hex := New_String ("0050c347");
               F1Tg_Hex := New_String ("0050c347");
            else
               declare
                  Hex_Str : constant String := Float_To_Hex (Float (Target_RPM));
               begin
                  F0Tg_Hex := New_String (Hex_Str);
                  F1Tg_Hex := New_String (Hex_Str);
               end;
            end if;
            Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Tg, F0Tg_Hex);
            Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Tg, F1Tg_Hex);
            Free (F0Tg_Hex);
            Free (F1Tg_Hex);

            -- Re-enforce manual takeover keys in the loop to prevent macOS SMC firmware override
            Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Md, Hex_01);
            Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Fb, Hex_Fb);
            Res := SMC_IO.Write_Key_Hex (Conn, Key_F0Dc, Hex_Dc);
            Res := SMC_IO.Write_Key_Hex (Conn, Key_F0St, Hex_St);

            Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Md, Hex_01);
            Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Fb, Hex_Fb);
            Res := SMC_IO.Write_Key_Hex (Conn, Key_F1Dc, Hex_Dc);
            Res := SMC_IO.Write_Key_Hex (Conn, Key_F1St, Hex_St);
         end;

         -- Read actual Fan Speeds for telemetry
         declare
            Res0 : constant Interfaces.C.int := SMC_IO.Read_Key (Conn, Key_F0Ac, F0Ac_Val);
            Res1 : constant Interfaces.C.int := SMC_IO.Read_Key (Conn, Key_F1Ac, F1Ac_Val);
         begin
            if Res0 /= 0 or Res1 /= 0 then
               Put_Line ("[DAEMON] WARNING: Read_Key F0Ac/F1Ac failed with code: " & 
                         Interfaces.C.int'Image (Res0) & " / " & Interfaces.C.int'Image (Res1));
            end if;
         end;

         -- Read target Fan Speeds for telemetry
         declare
            Res0_Tg : constant Interfaces.C.int := SMC_IO.Read_Key (Conn, Key_F0Tg, F0Tg_Val);
            Res1_Tg : constant Interfaces.C.int := SMC_IO.Read_Key (Conn, Key_F1Tg, F1Tg_Val);
         begin
            if Res0_Tg /= 0 or Res1_Tg /= 0 then
               Put_Line ("[DAEMON] WARNING: Read_Key F0Tg/F1Tg failed with code: " & 
                         Interfaces.C.int'Image (Res0_Tg) & " / " & Interfaces.C.int'Image (Res1_Tg));
            end if;
         end;

         -- Accelerometer Delta Safety Check every 500ms (5 loops)
         if Loop_Count = 1 or else Loop_Count mod 5 = 0 then
            SMC_Files.Read_SMS_Values (CX, CY, CZ, SMS_Success);
            if SMS_Success and then Prev_SMS_Valid then
               Delta_X := abs (CX - Prev_X);
               Delta_Y := abs (CY - Prev_Y);
               Delta_Z := abs (CZ - Prev_Z);

               declare
                  Total_Delta : constant Integer := Delta_X + Delta_Y + Delta_Z;
                  Limit       : constant Integer := (if Overdrive_Active then 200 else 150);
                  Safety_Disabled : constant Boolean := Ada.Directories.Exists (SMC_Files.DISABLE_SAFETY_FLAG);
               begin
                  if (Daemon_State.Is_Turbo_Active or Overdrive_Active) and then (Total_Delta > Limit) then
                     if Safety_Disabled then
                        -- Log that we are suppressing the safety shutdown
                        if Loop_Count mod 100 = 0 then
                           Put_Line ("[SAFETY] Movement detected (" & Integer'Image (Total_Delta) & " >" & Integer'Image (Limit) & "), but safety is DISABLED via flag.");
                        end if;
                     else
                        Daemon_State.Set_Turbo (False);
                        Daemon_State.Reset_Spikes;
                        if Overdrive_Active then
                           Overdrive_Active := False;
                           Overdrive_Time_Left := 0;
                           SMC_Files.Notify_User ("SAFETY", "Extreme spatial movement (>2g) detected during TURBONOW! Deactivating Turbo/Overdrive Mode.");
                        else
                           SMC_Files.Notify_User ("SAFETY", "Significant spatial movement detected. Deactivating Turbo Mode.");
                        end if;
                     end if;
                  end if;
               end;
            end if;
            Prev_X := CX;
            Prev_Y := CY;
            Prev_Z := CZ;
            Prev_SMS_Valid := SMS_Success;
         end if;

         -- Temperature and Spike Activation/Deactivation Loop Rules
         if Daemon_State.Is_Turbo_Active then
            if Last_TCMZ_Temp < 80.0 and then Last_GPU_Temp < 80.0 and then Max_Battery_Temp < 38.0 and then Power < 35.0 then
               Deactivate_Turbo_Mode ("TCMz, GPU, & Battery cooled down");
            end if;
         else
            if Last_TCMZ_Temp >= 93.0 then
               Activate_Turbo_Mode ("TCMz Temp " & Float'Image (Last_TCMZ_Temp) & "C >= 93C");
            elsif Last_GPU_Temp >= 93.0 then
               Activate_Turbo_Mode ("GPU Temp " & Float'Image (Last_GPU_Temp) & "C >= 93C");
            elsif Power >= 45.0 then
               Activate_Turbo_Mode ("Power Draw " & Float'Image (Power) & "W >= 45W");
            elsif Max_Battery_Temp > 40.0 then
               Activate_Turbo_Mode ("BattMax " & Float'Image (Max_Battery_Temp) & "C > 40C");
            elsif Daemon_State.Get_Spike_Count >= 3 then
               Activate_Turbo_Mode ("Latency spikes detected by monitor");
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
                     Est_HPa := 1006.0 * (Calibrated_Pres_RPM / Avg_RPM);
                     SMC_Files.Write_Pressure_Report (
                        Ref_RPM   => Calibrated_Pres_RPM,
                        Cur_RPM   => Avg_RPM,
                        Diff      => Diff,
                        Est_HPa   => Est_HPa,
                        Timestamp => Long_Integer (Clock - Time_Of (1970, 1, 1, 0.0))
                     );
                     Put_Line ("[CALIBRATION] Calibration complete. Estimated atmospheric pressure: " & Float'Image (Est_HPa) & " hPa.");
                  else
                     -- Save current speed as reference RPM
                     Calibrated_Pres_RPM := Avg_RPM;
                     SMC_Files.Save_Fan_Calibration (Avg_RPM);
                     Put_Line ("[CALIBRATION] Calibration complete. Pinned reference speed: " & Float'Image (Avg_RPM) & " RPM.");
                  end if;
               end;
            end if;
         end if;

         -- Export all individual sensor values to the EARU data directory every 1 second (10 loops)
         if Loop_Count mod 10 = 0 then
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

            SMC_Files.Write_EARU_Fan ("F0Ac", Float (F0Ac_Val));
            SMC_Files.Write_EARU_Fan ("F1Ac", Float (F1Ac_Val));
            SMC_Files.Write_EARU_Fan ("F0Tg", Float (F0Tg_Val));
            SMC_Files.Write_EARU_Fan ("F1Tg", Float (F1Tg_Val));
            SMC_Files.Write_EARU_Turbo (if Daemon_State.Is_Turbo_Active then 1 else 0);
         end if;

         -- Write Telemetry CSV every 10 seconds (100 loops of 100ms)
         if Clock - Last_Telemetry_Time >= 10.0 then
            Last_Telemetry_Time := Clock;
            SMC_Files.Log_Telemetry_CSV (
               Day_Str         => Get_Day_Str,
               Time_Only       => Get_Time_Str,
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
                  Today     : constant String := Get_Day_Str;
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

         -- Enforce Power Mode and Low Power Mode settings every 1 second
         -- This ensures TOGAFULLPOWEROVERRIDE and Overdrive Mode are respected even if 
         -- the user or OS changes settings in the background.
         if Loop_Count mod 10 = 0 then
            declare
               Args : GNAT.OS_Lib.Argument_List (1 .. 2);
               Override_Flag : constant Boolean := Ada.Directories.Exists (SMC_Files.FULL_POWER_OVERRIDE_FLAG);
               Force_LPM_Off : constant Boolean := Overdrive_Active and Override_Flag;
               -- Forced LPM OFF ("0") periodically as requested.
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
            use Ada.Real_Time;
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
