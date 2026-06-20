package SMC_Files is

   -- Paths matching C daemon
   TELEMETRY_CSV  : constant String := "/usr/local/smcSystemDemandNow/telemetry.csv";
   PRECOOL_FLAG   : constant String := "/usr/local/smcSystemDemandNow/PrecoolMode";
   OVERDRIVE_FLAG : constant String := "/usr/local/smcSystemDemandNow/OverdriveMode";
   TURBONOW_FLAG  : constant String := "/usr/local/smcSystemDemandNow/TURBONOW";
   EARU_DATA_FILE : constant String := "/usr/local/EnvironmentalAwareReferentialUnit/EARU_data.dat";
   SILENT_MODE_FLAG : constant String := "/usr/local/smcSystemDemandNow/SilentMode";
   DISABLE_SAFETY_FLAG : constant String := "/usr/local/smcSystemDemandNow/DisableSafety";
   FULL_POWER_OVERRIDE_FLAG : constant String := "/usr/local/smcSystemDemandNow/TOGAFULLPOWEROVERRIDE";
   CALIBRATION_FILE : constant String := "calibrated1006presRPM.pinnedrpm";
   
   PRESSURE_REPORT_FILE : constant String := "/usr/local/EnvironmentalAwareReferentialUnit/EARU_dataIO/smcFanPressurehPaDetection";
   NOTIFICATIONS_LOG    : constant String := "/usr/local/smcSystemDemandNow/smc_notifications.log";
   PID_FILE             : constant String := "/var/run/smc_daemon.pid";

   -- Read accelerometer values from EARU_data.dat
   procedure Read_SMS_Values (X, Y, Z : out Integer; Success : out Boolean);

   -- Check load average status: returns 2 for Emergency (>= 100), 1 for Turbo (>= 50), 0 otherwise
   procedure Check_Load_Avg_Status (Max_Load : out Float; Status : out Integer);

   -- Read battery percentage from EARU_data.dat
   function Get_Battery_Percent return Integer;

   -- Telemetry CSV logging and rotation (exceeding 17MB)
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
   );

   -- ML Precool flag monitoring
   procedure Check_Precool_Mode (Active : out Boolean; Time_Left : out Long_Integer);
   procedure Check_Overdrive_Mode (Active : out Boolean; Time_Left : out Long_Integer);

   -- rolling log implementation for notifications (max 1000 lines)
   procedure Notify_User (Title, Message : String);

   -- Fetch and cache all telemetry from EARU_data.dat in one pass
   procedure Update_Telemetry_Cache;

   -- Check if TURBONOW file exists. If so, delete it and set OverdriveMode for 10 minutes
   procedure Check_And_Handle_TurboNow;

   -- EARU temperature/fan/turbo state exports
   procedure Write_EARU_Temp (Name : String; Val : Float);
   procedure Write_EARU_SMC (Name : String; Val : Float);
   procedure Write_EARU_Fan (Name : String; Val : Float);
   procedure Write_EARU_Turbo (Active : Integer);

   -- Calibration files reading and writing
   procedure Load_Fan_Calibration (Calibrated_RPM : out Float);
   procedure Save_Fan_Calibration (Calibrated_RPM : Float);
   procedure Write_Pressure_Report (Ref_RPM, Cur_RPM, Diff, Est_HPa : Float; Timestamp : Long_Integer);

   -- Delete a file safely
   procedure Delete_File (Path : String);

   -- Read HID idle time in seconds from EARU_data.dat
   function Get_HID_Idle_Time return Float;

end SMC_Files;
