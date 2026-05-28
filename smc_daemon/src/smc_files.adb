with Ada.Text_IO;
with Ada.Directories;
with Ada.Calendar;
with Ada.Strings.Fixed;
with SMC_Integrity;

package body SMC_Files is

   -- Internal helper to dynamically reconstruct missing parent directories (self-healing)
   procedure Ensure_Directory_Exists (Path : String) is
      use Ada.Directories;
   begin
      declare
         Dir : constant String := Containing_Directory (Path);
      begin
         if not Exists (Dir) then
            Create_Path (Dir);
         end if;
      end;
   exception
      when others =>
         null; -- Catch and yield gracefully if permissions block creation
   end Ensure_Directory_Exists;

   -----------------------
   -- Read_File_Content --
   -----------------------

   procedure Read_File_Content (Path : String; Content : out String; Length : out Natural; Success : out Boolean) is
      use Ada.Text_IO;
      File : File_Type;
   begin
      if Path = EARU_DATA_FILE then
         SMC_Integrity.Verify_And_Heal_File (Path, Content, Length, Success);
         if Success then
            return;
         end if;
      end if;

      Length := 0;
      Success := False;
      if not Ada.Directories.Exists (Path) then
         return;
      end if;

      begin
         Open (File, In_File, Path);
      exception
         when others =>
            return;
      end;
      
      begin
         while not End_Of_File (File) loop
            declare
               Line : constant String := Get_Line (File);
            begin
               if Length + Line'Length + 1 <= Content'Last then
                  Content (Length + 1 .. Length + Line'Length) := Line;
                  Length := Length + Line'Length;
                  Length := Length + 1;
                  Content (Length) := ASCII.LF;
               else
                  exit;
               end if;
            exception
               when others =>
                  exit;
            end;
         end loop;
         Close (File);
         Success := True;
      exception
         when others =>
            if Is_Open (File) then
               Close (File);
            end if;
      end;
   end Read_File_Content;

   -----------------------
   -- Parse_Float_After --
   -----------------------

   function Parse_Float_After (Str : String; Start_Pos : Positive; Default : Float) return Float is
      Idx : Positive := Start_Pos;
      End_Idx : Positive;
   begin
      -- Skip whitespace and symbols like : , [ {
      while Idx <= Str'Last and then (Str (Idx) = ' ' or else Str (Idx) = ':' or else Str (Idx) = ',' or else Str (Idx) = '[' or else Str (Idx) = '{') loop
         Idx := Idx + 1;
      end loop;
      
      End_Idx := Idx;
      while End_Idx <= Str'Last and then (Str (End_Idx) = '-' or else Str (End_Idx) = '.' or else (Str (End_Idx) >= '0' and then Str (End_Idx) <= '9') or else Str (End_Idx) = 'e' or else Str (End_Idx) = 'E') loop
         End_Idx := End_Idx + 1;
      end loop;
      
      if End_Idx > Idx then
         return Float'Value (Str (Idx .. End_Idx - 1));
      else
         return Default;
      end if;
   exception
      when others =>
         return Default;
   end Parse_Float_After;

   ---------------------
   -- Parse_Int_After --
   ---------------------

   function Parse_Int_After (Str : String; Start_Pos : Positive; Default : Integer) return Integer is
      Idx : Positive := Start_Pos;
      End_Idx : Positive;
   begin
      while Idx <= Str'Last and then (Str (Idx) = ' ' or else Str (Idx) = ':' or else Str (Idx) = ',' or else Str (Idx) = '[' or else Str (Idx) = '{') loop
         Idx := Idx + 1;
      end loop;
      
      End_Idx := Idx;
      while End_Idx <= Str'Last and then (Str (End_Idx) = '-' or else (Str (End_Idx) >= '0' and then Str (End_Idx) <= '9')) loop
         End_Idx := End_Idx + 1;
      end loop;
      
      if End_Idx > Idx then
         return Integer'Value (Str (Idx .. End_Idx - 1));
      else
         return Default;
      end if;
   exception
      when others =>
         return Default;
   end Parse_Int_After;

   -------------------
   -- Get_Unix_Time --
   -------------------

   function Get_Unix_Time return Long_Integer is
      function C_Time (T : Long_Integer := 0) return Long_Integer;
      pragma Import (C, C_Time, "time");
   begin
      return C_Time (0);
   end Get_Unix_Time;

   ----------------------
   -- Read_SMS_Values  --
   ----------------------

   procedure Read_SMS_Values (X, Y, Z : out Integer; Success : out Boolean) is
      Content : String (1 .. 65536);
      Length : Natural;
      File_Success : Boolean;
      use Ada.Strings.Fixed;
      Idx, Temp_Idx : Natural;
      FX, FY, FZ : Float := 0.0;
   begin
      X := 0; Y := 0; Z := 0; Success := False;
      Read_File_Content (EARU_DATA_FILE, Content, Length, File_Success);
      if not File_Success then
         return;
      end if;

      Idx := Index (Content (1 .. Length), """accel"": {");
      if Idx > 0 then
         Temp_Idx := Index (Content (Idx .. Length), """x"":");
         if Temp_Idx > 0 then
            FX := Parse_Float_After (Content (1 .. Length), Idx + Temp_Idx - 1 + 4, 0.0);
         end if;

         Temp_Idx := Index (Content (Idx .. Length), """y"":");
         if Temp_Idx > 0 then
            FY := Parse_Float_After (Content (1 .. Length), Idx + Temp_Idx - 1 + 4, 0.0);
         end if;

         Temp_Idx := Index (Content (Idx .. Length), """z"":");
         if Temp_Idx > 0 then
            FZ := Parse_Float_After (Content (1 .. Length), Idx + Temp_Idx - 1 + 4, 0.0);
         end if;

         -- Clamp values to avoid Constraint_Error during integer conversion
         FX := Float'Max (-327.0, Float'Min (327.0, FX));
         FY := Float'Max (-327.0, Float'Min (327.0, FY));
         FZ := Float'Max (-327.0, Float'Min (327.0, FZ));

         X := Integer (FX * 100.0);
         Y := Integer (FY * 100.0);
         Z := Integer (FZ * 100.0);
         Success := True;
      end if;
   end Read_SMS_Values;

   --------------------------
   -- Check_Load_Avg_Status --
   --------------------------

   procedure Check_Load_Avg_Status (Max_Load : out Float; Status : out Integer) is
      Content : String (1 .. 65536);
      Length : Natural;
      File_Success : Boolean;
      use Ada.Strings.Fixed;
      Idx, Comma_Idx : Natural;
      L1, L2, L3 : Float := 0.0;
   begin
      Max_Load := 0.0; Status := 0;
      Read_File_Content (EARU_DATA_FILE, Content, Length, File_Success);
      if not File_Success then
         return;
      end if;

      Idx := Index (Content (1 .. Length), """load_avg"": [");
      if Idx > 0 then
         Idx := Idx + 13; -- Skip to elements
         L1 := Parse_Float_After (Content (1 .. Length), Idx, 0.0);
         
         Comma_Idx := Index (Content (Idx .. Length), ",");
         if Comma_Idx > 0 then
            L2 := Parse_Float_After (Content (1 .. Length), Idx + Comma_Idx, 0.0);
            Comma_Idx := Index (Content (Idx + Comma_Idx .. Length), ",");
            if Comma_Idx > 0 then
               L3 := Parse_Float_After (Content (1 .. Length), Idx + Comma_Idx, 0.0);
            end if;
         end if;

         Max_Load := L1;
         if L2 > Max_Load then Max_Load := L2; end if;
         if L3 > Max_Load then Max_Load := L3; end if;

         if Max_Load >= 100.0 then
            Status := 2;
         elsif Max_Load >= 50.0 then
            Status := 1;
         else
            Status := 0;
         end if;
      end if;
   end Check_Load_Avg_Status;

   -------------------------
   -- Get_Battery_Percent --
   -------------------------

   function Get_Battery_Percent return Integer is
      Content : String (1 .. 65536);
      Length : Natural;
      File_Success : Boolean;
      use Ada.Strings.Fixed;
      Idx : Natural;
   begin
      Read_File_Content (EARU_DATA_FILE, Content, Length, File_Success);
      if not File_Success then
         return 100;
      end if;

      Idx := Index (Content (1 .. Length), """battery_percent"":");
      if Idx > 0 then
         return Parse_Int_After (Content (1 .. Length), Idx + 18, 100);
      else
         return 100;
      end if;
   end Get_Battery_Percent;

   -----------------------
   -- Log_Telemetry_CSV --
   -----------------------

   procedure Log_Telemetry_CSV (
      Day_Str         : String;
      Time_Only       : String;
      TCMZ_Temp       : Float;
      GPU_Temp        : Float;
      Battery_Temp    : Integer;
      Power           : Float;
      Manual_Takeover : Integer;
      Overdrive       : Integer;
      Temp_Gradient   : Float;
      RPM_Gradient    : Float
   ) is
      use Ada.Text_IO;
      use Ada.Directories;
      use Ada.Strings.Fixed;
      File : File_Type;
      Exists_Flag : Boolean := False;
   begin
      -- Self-heal telemetry directory if lost
      Ensure_Directory_Exists (TELEMETRY_CSV);

      begin
         if Exists (TELEMETRY_CSV) then
            Exists_Flag := True;
            if Size (TELEMETRY_CSV) > 17_000_000 then
               Rename (TELEMETRY_CSV, "/usr/local/smcSystemDemandNow/telemetry_old.csv");
               Exists_Flag := False;
            end if;
         end if;
      exception
         when others =>
            null;
      end;

      begin
         if Exists_Flag then
            Open (File, Append_File, TELEMETRY_CSV);
         else
            Create (File, Out_File, TELEMETRY_CSV);
            Put_Line (File, "Day,Time,TCMZ_Temp,GPU_Temp,Battery_Temp,Power,Manual_Takeover,Overdrive,Temp_Gradient,RPM_Gradient");
         end if;

         Put_Line (File, Day_Str & "," & Time_Only & "," &
                   Trim (Float'Image (TCMZ_Temp), Ada.Strings.Both) & "," & 
                   Trim (Float'Image (GPU_Temp), Ada.Strings.Both) & "," &
                   Trim (Integer'Image (Battery_Temp), Ada.Strings.Both) & "," & 
                   Trim (Float'Image (Power), Ada.Strings.Both) & "," &
                   Trim (Integer'Image (Manual_Takeover), Ada.Strings.Both) & "," & 
                   Trim (Integer'Image (Overdrive), Ada.Strings.Both) & "," &
                   Trim (Float'Image (Temp_Gradient), Ada.Strings.Both) & "," & 
                   Trim (Float'Image (RPM_Gradient), Ada.Strings.Both));
         Close (File);
      exception
         when others =>
            if Is_Open (File) then
               Close (File);
            end if;
      end;
   end Log_Telemetry_CSV;

   ------------------------
   -- Check_Precool_Mode --
   ------------------------

   procedure Check_Precool_Mode (Active : out Boolean; Time_Left : out Long_Integer) is
      Content : String (1 .. 1024);
      Length : Natural;
      File_Success : Boolean;
      use Ada.Strings.Fixed;
      Idx : Natural;
      Expiry : Long_Integer := 0;
   begin
      Active := False; Time_Left := 0;
      if not Ada.Directories.Exists (PRECOOL_FLAG) then
         return;
      end if;

      Read_File_Content (PRECOOL_FLAG, Content, Length, File_Success);
      if not File_Success then
         -- File exists but is locked or empty, treat as active to be safe
         Active := True;
         Time_Left := 10;
         return;
      end if;

      -- Check if it contains EXPIRY
      Idx := Index (Content (1 .. Length), "EXPIRY=");
      if Idx > 0 then
         Expiry := Long_Integer (Parse_Int_After (Content (1 .. Length), Idx + 7, 0));
         Time_Left := Expiry - Get_Unix_Time;
         if Time_Left > 0 then
            Active := True;
          else
            -- Expired, clean it up
            Delete_File (PRECOOL_FLAG);
         end if;
      else
         -- Contains PROB: probability or similar, active by existence
         Active := True;
         Time_Left := 10;
      end if;
   end Check_Precool_Mode;

   --------------------------
   -- Check_Overdrive_Mode --
   --------------------------

   procedure Check_Overdrive_Mode (Active : out Boolean; Time_Left : out Long_Integer) is
      Content : String (1 .. 1024);
      Length : Natural;
      File_Success : Boolean;
      use Ada.Strings.Fixed;
      Idx : Natural;
      Expiry : Long_Integer := 0;
   begin
      Active := False; Time_Left := 0;
      if not Ada.Directories.Exists (OVERDRIVE_FLAG) then
         return;
      end if;

      Read_File_Content (OVERDRIVE_FLAG, Content, Length, File_Success);
      if not File_Success then
         -- File exists but is locked or empty, treat as active to be safe
         Active := True;
         Time_Left := 10;
         return;
      end if;

      -- Check if it contains EXPIRY
      Idx := Index (Content (1 .. Length), "EXPIRY=");
      if Idx > 0 then
         Expiry := Long_Integer (Parse_Int_After (Content (1 .. Length), Idx + 7, 0));
         Time_Left := Expiry - Get_Unix_Time;
         if Time_Left > 0 then
            Active := True;
         else
            -- Expired, clean it up
            Delete_File (OVERDRIVE_FLAG);
         end if;
      else
         Active := True;
         Time_Left := 10;
      end if;
   end Check_Overdrive_Mode;

   -----------------
   -- Notify_User --
   -----------------

   procedure Notify_User (Title, Message : String) is
      use Ada.Text_IO;
      use Ada.Directories;
      use Ada.Calendar;
      use Ada.Strings.Fixed;
      File : File_Type;
      Line_Count : Natural := 0;
      
      -- Time formatting helpers
      Now : constant Time := Clock;
      Year : Year_Number;
      Month : Month_Number;
      Day : Day_Number;
      Seconds : Day_Duration;
      Hour, Min, Sec : Natural;
   begin
      -- Self-heal notifications directory if lost
      Ensure_Directory_Exists (NOTIFICATIONS_LOG);

      if Exists (NOTIFICATIONS_LOG) then
         begin
            Open (File, In_File, NOTIFICATIONS_LOG);
            while not End_Of_File (File) loop
               declare
                  Line : constant String := Get_Line (File);
               begin
                  Line_Count := Line_Count + 1;
               end;
            end loop;
            Close (File);
         exception
            when others =>
               if Is_Open (File) then Close (File); end if;
         end;
      end if;

      begin
         if Line_Count >= 1000 then
            Create (File, Out_File, NOTIFICATIONS_LOG);
         else
            Open (File, Append_File, NOTIFICATIONS_LOG);
         end if;
         
         Split (Now, Year, Month, Day, Seconds);
         Hour := Natural (Seconds) / 3600;
         Min := (Natural (Seconds) mod 3600) / 60;
         Sec := Natural (Seconds) mod 60;
         
         Put_Line (File, "[" & 
                   Trim (Year'Image, Ada.Strings.Both) & "-" & 
                   Trim (Month'Image, Ada.Strings.Both) & "-" & 
                   Trim (Day'Image, Ada.Strings.Both) & " " & 
                   Trim (Hour'Image, Ada.Strings.Both) & ":" & 
                   Trim (Min'Image, Ada.Strings.Both) & ":" & 
                   Trim (Sec'Image, Ada.Strings.Both) & "] [" & 
                   Title & "] " & Message);
         Close (File);
      exception
         when others =>
            if Is_Open (File) then Close (File); end if;
      end;
      Put_Line ("[NOTIFICATION LOGGED] " & Title & ": " & Message);
   end Notify_User;

   ---------------------
   -- Write_EARU_Temp --
   ---------------------

   procedure Write_EARU_Temp (Name : String; Val : Float) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
      Path : constant String := "/usr/local/EnvironmentalAwareReferentialUnit/EARU_dataIO/sensor_temp_" & Name & ".dat";
   begin
      -- Self-heal EARU directory if lost (wait until it is restored or dynamically recreate it)
      Ensure_Directory_Exists (Path);

      begin
         Create (File, Out_File, Path);
         Put (File, Trim (Float'Image (Val), Ada.Strings.Both));
         Close (File);
      exception
         when others =>
            if Is_Open (File) then Close (File); end if;
      end;
   end Write_EARU_Temp;

   --------------------
   -- Write_EARU_Fan --
   --------------------

   procedure Write_EARU_Fan (Name : String; Val : Float) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
      Path : constant String := "/usr/local/EnvironmentalAwareReferentialUnit/EARU_dataIO/sensor_fan_" & Name & ".dat";
   begin
      Ensure_Directory_Exists (Path);

      begin
         Create (File, Out_File, Path);
         Put (File, Trim (Float'Image (Val), Ada.Strings.Both));
         Close (File);
      exception
         when others =>
            if Is_Open (File) then Close (File); end if;
      end;
   end Write_EARU_Fan;

   ----------------------
   -- Write_EARU_Turbo --
   ----------------------

   procedure Write_EARU_Turbo (Active : Integer) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
      Path : constant String := "/usr/local/EnvironmentalAwareReferentialUnit/EARU_dataIO/sensor_TURBO_MODE.dat";
   begin
      Ensure_Directory_Exists (Path);

      begin
         Create (File, Out_File, Path);
         Put (File, Trim (Integer'Image (Active), Ada.Strings.Both));
         Close (File);
      exception
         when others =>
            if Is_Open (File) then Close (File); end if;
      end;
   end Write_EARU_Turbo;

   --------------------------
   -- Load_Fan_Calibration --
   --------------------------

   procedure Load_Fan_Calibration (Calibrated_RPM : out Float) is
      use Ada.Text_IO;
      File : File_Type;
   begin
      Calibrated_RPM := 0.0;
      if not Ada.Directories.Exists (CALIBRATION_FILE) then
         return;
      end if;

      begin
         Open (File, In_File, CALIBRATION_FILE);
         Calibrated_RPM := Float'Value (Get_Line (File));
         Close (File);
      exception
         when others =>
            if Is_Open (File) then Close (File); end if;
      end;
   end Load_Fan_Calibration;

   --------------------------
   -- Save_Fan_Calibration --
   --------------------------

   procedure Save_Fan_Calibration (Calibrated_RPM : Float) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
   begin
      Ensure_Directory_Exists (CALIBRATION_FILE);

      begin
         Create (File, Out_File, CALIBRATION_FILE);
         Put (File, Trim (Float'Image (Calibrated_RPM), Ada.Strings.Both));
         Close (File);
      exception
         when others =>
            if Is_Open (File) then Close (File); end if;
      end;
   end Save_Fan_Calibration;

   ----------------------------
   -- Write_Pressure_Report --
   ----------------------------

   procedure Write_Pressure_Report (Ref_RPM, Cur_RPM, Diff, Est_HPa : Float; Timestamp : Long_Integer) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
   begin
      Ensure_Directory_Exists (PRESSURE_REPORT_FILE);

      begin
         Create (File, Out_File, PRESSURE_REPORT_FILE);
         Put_Line (File, "REF_1006_RPM: " & Trim (Float'Image (Ref_RPM), Ada.Strings.Both));
         Put_Line (File, "CUR_TURBO_RPM: " & Trim (Float'Image (Cur_RPM), Ada.Strings.Both));
         Put_Line (File, "DIFF: " & (if Diff >= 0.0 then "+" else "") & Trim (Float'Image (Diff), Ada.Strings.Both));
         Put_Line (File, "EST_HPA: " & Trim (Float'Image (Est_HPa), Ada.Strings.Both));
         Put_Line (File, "TIMESTAMP: " & Trim (Long_Integer'Image (Timestamp), Ada.Strings.Both));
         Close (File);
      exception
         when others =>
            if Is_Open (File) then Close (File); end if;
      end;
   end Write_Pressure_Report;

   -----------------
   -- Delete_File --
   -----------------

   procedure Delete_File (Path : String) is
   begin
      if Ada.Directories.Exists (Path) then
         Ada.Directories.Delete_File (Path);
      end if;
   exception
      when others =>
         null;
   end Delete_File;

   ---------------------------------
   -- Check_And_Handle_TurboNow --
   ---------------------------------

   procedure Check_And_Handle_TurboNow is
      use Ada.Directories;
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
      Expiry : Long_Integer;
   begin
      if Exists (TURBONOW_FLAG) then
         -- Delete TURBONOW file immediately
         Delete_File (TURBONOW_FLAG);
         
         -- Calculate Expiry: current unix time + 600 seconds
         Expiry := Get_Unix_Time + 600;
         
         -- Create or overwrite OverdriveMode file with EXPIRY
         begin
            Create (File, Out_File, OVERDRIVE_FLAG);
            Put_Line (File, "EXPIRY=" & Trim (Expiry'Image, Ada.Strings.Both));
            Close (File);
         exception
            when others =>
               if Is_Open (File) then Close (File); end if;
         end;
         
         -- Notify user
         Notify_User ("TURBONOW", "Flag file detected! Engaging 10-minute Overdrive Turbo mode.");
      end if;
   end Check_And_Handle_TurboNow;

   -----------------------
   -- Get_HID_Idle_Time --
   -----------------------

   function Get_HID_Idle_Time return Float is
      Content : String (1 .. 65536);
      Length : Natural;
      File_Success : Boolean;
      use Ada.Strings.Fixed;
      Idx : Natural;
   begin
      Read_File_Content (EARU_DATA_FILE, Content, Length, File_Success);
      if not File_Success then
         return 0.0;
      end if;

      Idx := Index (Content (1 .. Length), """nonHumanInputHIDIdle"":");
      if Idx > 0 then
         return Parse_Float_After (Content (1 .. Length), Idx + 22, 0.0);
      end if;

      return 0.0;
   end Get_HID_Idle_Time;

end SMC_Files;
