-- =============================================================================
-- SMC_Files — File I/O, telemetry parsing, calibration persistence
-- =============================================================================
--
-- Axioms:
--   A1. EARU Data Bus: The EARU daemon writes JSON telemetry to EARU_data.dat
--       every 1 second. smcSystemDemandNow reads it every 10 seconds (100 loop
--       iterations at 10 Hz). [EARU Architecture Spec]
--   A2. Weather Pressure Independence: Open-Meteo API provides pressure_msl
--       (sea-level reduced pressure) independent of fan-RPM estimation.
--       [WMO-No. 8 CIMO Guide Ch.9]
--   A3. File Self-Healing: All file operations use Ensure_Directory_Exists and
--       exception handlers to recover from missing directories/files.
--   A4. Telemetry Cache: Thread-safe protected object caches parsed values
--       to avoid redundant SHA256 hashing and file parsing.
--   A5. Atomic Write-Retry: EARU sensor writes use 3 retries with 50ms backoff
--       to handle concurrent file access from the EARU daemon.
--
-- Citations:
--   [WMO-No. 8 CIMO Guide Ch.9] WMO Guide to Instruments and Methods of
--     Observation, Chapter 9: Surface Pressure
--   [RFC 8259] JSON Data Interchange Format
--   [Ada RM §9.4] Protected Objects for thread safety
--
-- =============================================================================

package SMC_Files is

   -- Paths matching C daemon
   TELEMETRY_CSV  : constant String := "/usr/local/smcSystemDemandNow/telemetry.csv";
   PRECOOL_FLAG   : constant String := "/usr/local/smcSystemDemandNow/PrecoolMode";
   OVERDRIVE_FLAG : constant String := "/usr/local/smcSystemDemandNow/OverdriveMode";
   TURBONOW_FLAG  : constant String := "/usr/local/smcSystemDemandNow/TURBONOW";
   EARU_DATA_FILE : constant String := "/usr/local/EnvironmentalAwareReferentialUnit/EARU_data.dat";
   -- Silent Mode: for when you're in a closed room and the fan roar is really
   -- quite embarrassing. Create the SilentMode file to suppress aggressive fan curves.
   SILENT_MODE_FLAG : constant String := "/usr/local/smcSystemDemandNow/SilentMode";
   -- DISABLE_SAFETY_FLAG retired 2026-10-03 along with the movement-safety
   -- block it gated. It had no other consumer.
   FULL_POWER_OVERRIDE_FLAG : constant String := "/usr/local/smcSystemDemandNow/TOGAFULLPOWEROVERRIDE";
   CALIBRATION_FILE : constant String := "calibrated1006presRPM.pinnedrpm";
   
   PRESSURE_REPORT_FILE : constant String := "/Volumes/EARU_dataIO/smcFanPressurehPaDetection";
   NOTIFICATIONS_LOG    : constant String := "/usr/local/smcSystemDemandNow/smc_notifications.log";
   PID_FILE             : constant String := "/var/run/smc_daemon.pid";

   -- Persistence for the 7-file EARU power-tracking export (day/month/meter
   -- Wh accumulators + rollover keys + last integration epoch). Without this,
   -- a daemon restart would reset the lifetime meter (62842+ Wh) and EARU
   -- would adopt the reset value, corrupting its cumulative counters.
   -- Format: one line, 6 whitespace-separated tokens:
   --   <day_wh> <month_wh> <meter_wh> <day_key yyyymmdd> <month_key 1-12> <unix_epoch>
   POWER_METRICS_FILE : constant String := "/usr/local/smcSystemDemandNow/power_metrics.dat";

   -- TRUE weather API pressure: extracted from Open-Meteo JSON by EARU
   -- weather fetcher. Contains the sea-level reduced pressure (pressure_msl)
   -- per WMO-No. 8 CIMO Guide Ch.9. This breaks the circular reasoning
   -- where the calibration formula used its own fan-RPM output as reference.
   WEATHER_PRESSURE_FILE : constant String :=
      "/Volumes/EARU_dataIO/sensor_weather_pressure.dat";
   WEATHER_PRESSURE_FALLBACK : constant String :=
      "/usr/local/EnvironmentalAwareReferentialUnit/sensor_weather_pressure.dat";

   -- Accelerometer/accelerometer-delta access REMOVED 2026-10-03.
   -- Read_SMS_Values was deleted: it was a thin passthrough to
   -- Telemetry_Cache.Get_SMS and its only consumer was the daemon's
   -- movement-safety block, which was removed because its delta comparison was
   -- fed outlier-clamped samples. Motion/seismic data is owned and published by
   -- the EARU daemon in EARU_data.dat ("accel", "seismic_activity").
   -- SEE: smc_daemon.adb spatial-movement protection note.

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
   -- WIRED 2026-10-04: called from smc_daemon.adb at 1Hz, immediately before
   -- Check_Overdrive_Mode so a freshly written window latches in the same loop
   -- iteration. Was previously implemented but never invoked (dead feature).
   -- Drop a file at /usr/local/smcSystemDemandNow/TURBONOW to engage a
   -- 10-minute Overdrive window; it is consumed (deleted) on success and
   -- retained for retry if the OverdriveMode write fails.
   procedure Check_And_Handle_TurboNow;

   -- EARU temperature/fan/turbo state exports
   procedure Write_EARU_Temp (Name : String; Val : Float);
   procedure Write_EARU_SMC (Name : String; Val : Float);
   procedure Write_EARU_Fan (Name : String; Val : Float);
   procedure Write_EARU_Turbo (Active : Integer);

   -- =========================================================================
   -- Write_Power_Tracking
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (EARU Read Contract): EARU Read_Power_Tracking
   --     (earu-system_bridge.adb:546-556) reads exactly these 7 files from
   --     /Volumes/EARU_dataIO/ every 5s via Real_IO.Get (single-line float).
   --   Axiom 2 (Source of Truth Gate): EARU adopts day/month/meter/est values
   --     iff day/=0 OR month/=0 (earu-system_bridge.adb:1611-1621); before
   --     this writer existed, both were 0 so EARU used its own accumulator.
   --   Axiom 3 (Pulse Wake is a Boolean Trigger): Pulse_Wake = 0.0 means
   --     "battery survives midnight" (earu-system_bridge.adb:839); /= 0.0
   --     makes EARU run Solve_Pulsing_Numerically and overwrite wake/length/
   --     survival with its own values (earu-system_bridge.adb:867-882).
   --   Axiom 4 (Atomic Retry): 3 retries x 50ms backoff per file, matching
   --     Write_EARU_Temp. [Murphy's Law — concurrent EARU access]
   -- TIMING: WCET <1.4s worst case (7 files x 3 retries x 50ms + I/O),
   --   typical <70ms (7 uncached writes); O(1) space
   -- CITATIONS:
   --   [earu-system_bridge.adb:535-598] Read_Power_Tracking contract
   --   [earu-io.adb:979-986] JSON export keys these values feed
   -- =========================================================================
   procedure Write_Power_Tracking (
      Day_Wh       : Long_Float;
      Est_Wh       : Long_Float;
      Month_Wh     : Long_Float;
      Meter_Wh     : Long_Float;
      Survival_W   : Long_Float;
      Pulse_Wake   : Long_Float;
      Pulse_Length : Long_Float);

   -- =========================================================================
   -- Load_Power_Metrics / Save_Power_Metrics
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Restart Survival): Accumulators must survive daemon restarts
   --     or EARU adopts reset day/month values and the meter regresses.
   --   Axiom 2 (Seed Priority): persist file > EARU_data.dat snapshot >
   --     zeros. EARU_data.dat keys (earu-io.adb:979-982) carry today's
   --     authoritative values on first-ever run.
   --   Axiom 3 (Safe Default): any read/parse failure returns zeros with
   --     Source=0 or seed values with Source=2; never raises.
   --     [Murphy's Law]
   -- TIMING: WCET <100ms (1-2 file reads + JSON scan), O(1) space
   -- Source codes: 0 = zeros (no data anywhere), 1 = persist file,
   --               2 = seeded from EARU_data.dat
   -- =========================================================================
   procedure Load_Power_Metrics (
      Day_Wh     : out Long_Float;
      Month_Wh   : out Long_Float;
      Meter_Wh   : out Long_Float;
      Day_Key    : out Integer;
      Month_Key  : out Integer;
      Last_Epoch : out Long_Integer;
      Source     : out Natural);

   procedure Save_Power_Metrics (
      Day_Wh     : Long_Float;
      Month_Wh   : Long_Float;
      Meter_Wh   : Long_Float;
      Day_Key    : Integer;
      Month_Key  : Integer;
      Last_Epoch : Long_Integer);

   -- =========================================================================
   -- Get_Battery_Full_Wh
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Cached Read): Full-charge capacity (Wh) parsed from
   --     EARU_data.dat "BatteryFullChargeCapacityWh" (earu-io.adb:934)
   --     every 10s by Update_Telemetry_Cache. Not a fresh file read.
   --   Axiom 2 (0.0 = Unknown): Returns 0.0 until first successful parse
   --     or when value is out of sane battery range [0, 500] Wh. Callers
   --     MUST treat 0.0 as "cannot decide" and fall back conservatively.
   -- TIMING: WCET <50ns (protected function access), O(1) space
   -- =========================================================================
   function Get_Battery_Full_Wh return Float;

   -- Calibration files reading and writing
   procedure Load_Fan_Calibration (Calibrated_RPM : out Float);
   procedure Save_Fan_Calibration (Calibrated_RPM : Float);
   procedure Write_Pressure_Report (Ref_RPM, Cur_RPM, Diff, Est_HPa : Float; Timestamp : Long_Integer);

   -- Weather reference: reads pressure_hpa and altitude from EARU_data.dat location section
   function Get_Weather_Pressure_HPa return Float;
   function Get_Weather_Altitude_M return Float;

   -- Pressure calibration dataset CSV (fan_RPM, weather_hPa, altitude, timestamp)
   procedure Write_Pressure_Dataset (Cur_RPM, Weather_HPa, Altitude_M : Float; Timestamp : Long_Integer);

   -- Delete a file safely
   procedure Delete_File (Path : String);

   -- Read HID idle time in seconds from EARU_data.dat
   function Get_HID_Idle_Time return Float;

end SMC_Files;
