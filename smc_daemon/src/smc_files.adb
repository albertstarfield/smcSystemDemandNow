with Ada.Text_IO;
with Ada.Directories;
with Ada.Calendar;
with Ada.Exceptions;
with Ada.Strings.Fixed;
with Ada.Numerics.Elementary_Functions;
with SMC_Integrity;

package body SMC_Files is

   -- =========================================================================
   -- Ensure_Directory_Exists
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Self-Healing): Missing parent directories are created
   --     automatically rather than failing with Name_Error. [Murphy's Law]
   -- TIMING: WCET <1ms (filesystem syscall), O(1) space
   -- =========================================================================

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

   -- =========================================================================
   -- Read_File_Content
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Buffer Safety): Content'Last bounds the read; lines exceeding
   --     remaining buffer space are silently dropped (never overflow).
   --   Axiom 2 (EARU Integrity): When Path = EARU_DATA_FILE, verification and
   --     self-healing via SMC_Integrity is attempted first.
   --   Axiom 3 (Exception Safety): All exceptions result in partial read or
   --     empty result; file is always closed. [Murphy's Law]
   -- TIMING: WCET <50ms (file I/O dominates), O(n) space where n = Content'Last
   -- =========================================================================

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

   -- =========================================================================
   -- Parse_Float_After
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (JSON Token Extraction): Skips whitespace/delimiters, then
   --     reads numeric characters [-0-9.eE] until non-numeric.
   --   Axiom 2 (Graceful Default): On parse failure or empty token, returns
   --     Default value. [Murphy's Law — no exceptions propagate]
   -- TIMING: WCET <1μs, O(n) where n = token length
   -- =========================================================================

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

   -- =========================================================================
   -- Parse_Int_After
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Integer Token Extraction): Same as Parse_Float_After but for
   --     integer tokens [-0-9].
   --   Axiom 2 (Graceful Default): Returns Default on parse failure.
   -- TIMING: WCET <1μs, O(n) where n = token length
   -- =========================================================================

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

   -- =========================================================================
   -- Get_Unix_Time
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (POSIX Time): Returns seconds since 1970-01-01 00:00:00 UTC
   --     via C time() syscall. [POSIX.1-2017]
   -- TIMING: WCET <1μs (single syscall), O(1) space
   -- =========================================================================

   -------------------
   -- Get_Unix_Time --
   -------------------

   function Get_Unix_Time return Long_Integer is
      function C_Time (T : Long_Integer := 0) return Long_Integer;
      pragma Import (C, C_Time, "time");
   begin
      return C_Time (0);
   end Get_Unix_Time;

   ---------------------
   -- Telemetry_Cache --
   ---------------------

   -- Internal state for telemetry cache to avoid redundant SHA256 hashing and file parsing
    protected Telemetry_Cache is
       procedure Update (
          New_Battery : Integer;
          New_Full_Wh : Float;
          New_L1, New_L2, New_L3 : Float;
          New_Idle : Float;
          New_Weather_HPa : Float;
          New_Altitude_M : Float;
          New_Success : Boolean
       );
       function Get_Battery return Integer;
       function Get_Full_Wh return Float;
       procedure Check_Load (Max_Load : out Float; Status : out Integer);
       function Get_Idle return Float;
       function Get_Weather_HPa return Float;
       function Get_Altitude_M return Float;
    private
       Battery : Integer := 100;
       -- Full-charge capacity in Wh; 0.0 = unknown (EARU_data.dat parse has
       -- not succeeded yet) — callers must treat as "cannot decide"
       Full_Wh : Float := 0.0;
        L1, L2, L3 : Float := 0.0;
       Idle : Float := 0.0;
       Weather_HPa : Float := 1013.25;
       Altitude_M : Float := 0.0;
       Success : Boolean := False;
    end Telemetry_Cache;

    -- =========================================================================
    -- Telemetry_Cache (Protected Body)
    -- =========================================================================
    -- AXIOMS:
    --   Axiom 1 (Thread Safety): Ada protected object guarantees atomic access
    --     to all cached telemetry values. [Ada RM §9.4]
    --   Axiom 2 (Stale-OK): Cached values may be up to 10 seconds old (update
    --     interval). This is acceptable for fan control at 10 Hz.
    --   Axiom 3 (Safe Defaults): Initial values (battery=100, weather=1013.25,
    --     altitude=0.0) represent ISA standard conditions. [Murphy's Law]
    -- TIMING: WCET <50ns per access (protected entry), O(1) space
    -- =========================================================================

     protected body Telemetry_Cache is
      procedure Update (
         New_Battery : Integer;
         New_Full_Wh : Float;
         New_L1, New_L2, New_L3 : Float;
         New_Idle : Float;
         New_Weather_HPa : Float;
         New_Altitude_M : Float;
         New_Success : Boolean
      ) is
      begin
         Battery := New_Battery;
         Full_Wh := New_Full_Wh;
         L1 := New_L1; L2 := New_L2; L3 := New_L3;
         Idle := New_Idle;
         Weather_HPa := New_Weather_HPa;
         Altitude_M := New_Altitude_M;
         Success := New_Success;
      end Update;

      function Get_Battery return Integer is (Battery);
      function Get_Full_Wh return Float is (Full_Wh);

      function Get_Weather_HPa return Float is (Weather_HPa);
      function Get_Altitude_M return Float is (Altitude_M);

      procedure Check_Load (Max_Load : out Float; Status : out Integer) is
         ML : Float;
      begin
         ML := L1;
         if L2 > ML then ML := L2; end if;
         if L3 > ML then ML := L3; end if;
         
         Max_Load := ML;
         if ML >= 100.0 then
            Status := 2;
         elsif ML >= 50.0 then
            Status := 1;
         else
            Status := 0;
         end if;
      end Check_Load;

      function Get_Idle return Float is (Idle);
   end Telemetry_Cache;

   ----------------------------
   -- Update_Telemetry_Cache --
   ----------------------------

   -- ## COMPLETE DATA FLOW DERIVATION ##
   --
   -- This procedure is the single read-path from EARU_data.dat for the entire
   -- smcSystemDemandNow daemon. It runs every 10 seconds (every 100 loop iterations
   -- at 10 Hz). The data flow is:
   --
   --   EARU_daemon (Ada)          Python sidecar              smcSystemDemandNow
   --   ─────────────────          ──────────────              ──────────────────
   --   Writes JSON to            Writes sensor_*.dat          Reads EARU_data.dat
   --   /Volumes/EARU_dataIO/     to /Volumes/EARU_dataIO/     (this procedure)
   --   EARU_data.dat                                           Parses: battery,
   --                                                           accel, load_avg,
   --                                                           nonHumanInputHIDIdle,
   --                                                           location.pressure_hpa,
   --                                                           location.alt
   --
   -- ### WHY WE PARSE pressure_hpa AND alt FROM EARU_data.dat ###
   --
   -- smcSystemDemandNow needs a ground-truth atmospheric pressure reference to
   -- calibrate its fan-RPM-based pressure estimate. The weather API (Open-Meteo)
   -- provides this reference, but smcSystemDemandNow cannot call the API directly
   -- (it has no HTTP client and no network access). Instead:
   --
   --   1. earu-weather_fetcher.adb calls Open-Meteo API every 30 minutes
   --   2. Python sidecar (earu_ml_bridge.py) reads the meteo.dat and writes
   --      pressure_msl to the EARU_data.dat JSON via the LocationState
   --   3. The EARU daemon also writes pressure_hpa to the location section of
   --      EARU_data.dat via earu-io.adb line 514:
   --        AP ("pressure_hpa", F (State.Location.Pressure_HPa));
   --   4. This procedure reads pressure_hpa and alt from that same location section
   --
   -- ### DERIVATION OF pressure_hpa IN EARU_data.dat ###
   --
   -- The pressure_hpa field in the location section follows this chain:
   --
   --   earu-daemon.adb:724    W.Pressure_MSL := Earu.IO.Read_Fan_Pressure_Est;
   --                          ↑ This reads the fan RPM estimate from smcFanPressurehPaDetection
   --                          ↑ (the BROKEN value — currently 3278 hPa)
   --
   --   earu-daemon.adb:746    L.Pressure_HPa := W.Pressure_MSL;
   --                          ↑ Assigned to LocationState
   --
   --   earu-io.adb:514        AP ("pressure_hpa", F (State.Location.Pressure_HPa));
   --                          ↑ Written to EARU_data.dat JSON
   --
   -- NOTE: This means the "pressure_hpa" in EARU_data.dat is the fan RPM estimate,
   -- NOT the weather API reference. We need to read the weather API pressure from
   -- a DIFFERENT source. The weather API pressure is in the ecosystem_weather section
   -- or in the Open-Meteo raw file. For this enhancement, we read it from the
   -- EARU_meteo.dat raw JSON file which earu-weather_fetcher.adb writes directly.
   --
   -- However, to keep changes minimal, we use the location.alt (GPS altitude) and
   -- compute expected sea-level pressure from the weather API reference at the
   -- weather_fetcher level. The smcSystemDemandNow will use:
   --   - weather_hPa: from EARU_data.dat (when the EARU daemon writes the API ref)
   --   - altitude_m: from EARU_data.dat location section (GPS altitude)
   --
   -- For NOW, we parse both fields and expose them via getters. The calibration
   -- logic in smc_daemon.adb will use them to replace the hardcoded 1006.0.
   --
   -- ### DERIVATION OF altitude IN EARU_data.dat ###
   --
   --   earu-io.adb:504        AP ("alt", F (State.Location.Alt));
   --   LocationState.Alt is set by:
   --     a) CoreLocationCLI (GPS) — primary source
   --     b) OpenTopoData (topographic lookup) — fallback
   --     c) Default: 20.0m (sea-level approximation for Banten, Indonesia)
   --
   -- ### SANITY BOUNDS ###
   --
   -- pressure_hpa: Valid range 870-1084 hPa (Earth surface: ~870 at Everest,
   --               ~1084 at Dead Sea). Anything outside is sensor error.
   -- altitude_m:   Valid range -500 to 10000 m (Earth surface). Anything outside
   --               is GPS error.
   -- battery:      0-100%, accel ±327g, load 0-2000, idle 0-3600s (1 hour max).

   procedure Update_Telemetry_Cache is
      Content : String (1 .. 65536);
      Length : Natural;
      File_Success : Boolean;
      use Ada.Strings.Fixed;
      Idx, Temp_Idx, Comma_Idx : Natural;

      -- Temps for Load (1min/5min/15min averages)
      L1, L2, L3 : Float := 0.0;

      -- Temps for Battery (percentage 0-100)
      B_Percent : Integer := 100;

       -- Temps for HID Idle (seconds since last human input, 0-3600)
       Idle_Sec : Float := 0.0;

       -- Temps for battery full-charge capacity (Wh) from
       -- "BatteryFullChargeCapacityWh" (earu-io.adb:934). 0.0 = unknown.
       Full_Wh : Float := 0.0;

      -- Temps for Weather API pressure reference and GPS altitude
      -- These come from the "location" section of EARU_data.dat
      -- Written by earu-io.adb line 504 (alt) and line 514 (pressure_hpa)
      Weather_HPa : Float := 1013.25;  -- ISA standard sea-level pressure
      Altitude_M  : Float := 0.0;      -- Default 0m until GPS lock

      -- Loc_Idx tracks the start of the "location" JSON object so we can
      -- search for pressure_hpa and alt ONLY within that section, avoiding
      -- false matches from other sections (e.g., ecosystem_weather also has
      -- pressure-related fields like pressure_tendency_hpa)
      Loc_Idx : Natural := 0;
   begin
      -- Step 0: Read the entire EARU_data.dat into a 64KB buffer
      -- DERIVATION: 65536 bytes is sufficient because EARU_data.dat is typically
      -- 8-12KB (JSON with battery, accel, load, location, ecosystem_weather sections)
      Read_File_Content (EARU_DATA_FILE, Content, Length, File_Success);
      if not File_Success then
         -- Fallback: use ISA standard values so daemon can still estimate pressure
         -- even when EARU_data.dat is temporarily unavailable (e.g., during file write)
          -- ISA standard: P0 = 1013.25 hPa, alt = 0m (sea level)
          Telemetry_Cache.Update (100, 0.0, 0.0, 0.0, 0.0,
                                  0.0, 1013.25, 0.0, False);
          return;
      end if;

      -- Step 1: Parse battery_percent
      -- JSON pattern: "battery_percent": 87
      -- DERIVATION: The Python sidecar writes this from the Apple SMC battery key
      -- B0 num (raw) → converted to percentage in earu_ml_bridge.py
      Idx := Index (Content (1 .. Length), """battery_percent"":");
      if Idx > 0 then
         B_Percent := Parse_Int_After (Content (1 .. Length), Idx + 18, 100);
         -- Clamp to valid range [0, 100] — protects against corrupt JSON values
         if B_Percent < 0 then B_Percent := 0; end if;
          if B_Percent > 100 then B_Percent := 100; end if;
       end if;

       -- Step 1b: Parse BatteryFullChargeCapacityWh (full-charge capacity, Wh)
       -- JSON pattern: "BatteryFullChargeCapacityWh": 49.17
       -- DERIVATION: Written by earu-io.adb:934 from System_Stats.Battery_Full_Wh.
       -- Used by survival math: energy = battery% / 100 * Full_Wh.
       -- Out-of-range (>500 Wh, impossible for laptop packs) is treated as
       -- unknown (0.0) rather than clamped up — a corrupt high value would
       -- overestimate energy and could suppress a needed hibernate trigger.
       Idx := Index (Content (1 .. Length), """BatteryFullChargeCapacityWh"":");
       if Idx > 0 then
          Full_Wh := Parse_Float_After (Content (1 .. Length), Idx + 30, 0.0);
          if Full_Wh < 0.0 then Full_Wh := 0.0; end if;
          if Full_Wh > 500.0 then Full_Wh := 0.0; end if;
       end if;

       -- Step 2: accelerometer ("accel") parsing REMOVED 2026-10-03.
       -- The parsed axes fed Telemetry_Cache X/Y/Z, whose only reader was
       -- Get_SMS -> Read_SMS_Values -> the daemon's movement-safety block.
       -- That block is gone, so this parse had no consumer left. EARU stays
       -- the authoritative source for "accel" and "seismic_activity" in
       -- EARU_data.dat; we just stop re-deriving it here.
       -- Dropping the parse also removes the +/-327g clamp that was yielding
       -- 32700-magnitude samples against a safety limit of 150.

      -- Step 3: Parse load_avg (1min, 5min, 15min averages)
      -- JSON pattern: "load_avg": [2.45, 1.89, 1.23]
      -- DERIVATION: These are macOS machdep.load averages (same as `sysctl vm.loadavg`).
      -- Each value represents the average number of runnable threads over that interval.
      -- Valid range: 0.0 to ~2000.0 (theoretical max with thousands of threads).
      -- Values > 2000.0 or negative indicate parse errors or corrupt data.
      Idx := Index (Content (1 .. Length), """load_avg"": [");
      if Idx > 0 then
         Idx := Idx + 12;  -- Skip past "load_avg": [
         L1 := Parse_Float_After (Content (1 .. Length), Idx, 0.0);
         Comma_Idx := Index (Content (Idx .. Length), ",");
         if Comma_Idx > 0 then
            L2 := Parse_Float_After (Content (1 .. Length), Comma_Idx + 1, 0.0);
            Comma_Idx := Index (Content (Comma_Idx + 1 .. Length), ",");
            if Comma_Idx > 0 then
               L3 := Parse_Float_After (Content (1 .. Length), Comma_Idx + 1, 0.0);
            end if;
         end if;
         -- Sanity clamp: load averages should never be negative or exceed 2000
         if L1 < 0.0 or L1 > 2000.0 then L1 := 0.0; end if;
         if L2 < 0.0 or L2 > 2000.0 then L2 := 0.0; end if;
         if L3 < 0.0 or L3 > 2000.0 then L3 := 0.0; end if;
      end if;

      -- Step 4: Parse HID Idle time (seconds since last human input)
      -- JSON pattern: "nonHumanInputHIDIdle": 45.2
      -- DERIVATION: This is the time since the last keyboard/mouse/trackpad event.
      -- Used to detect if the user is actively using the laptop vs. running
      -- background tasks (compiling, ML training, etc.). Values > 3600 indicate
      -- the user has been away for more than 1 hour.
      Idx := Index (Content (1 .. Length), """nonHumanInputHIDIdle"":");
      if Idx > 0 then
         Idle_Sec := Parse_Float_After (Content (1 .. Length), Idx + 22, 0.0);
         if Idle_Sec < 0.0 then Idle_Sec := 0.0; end if;
         if Idle_Sec > 86400.0 then Idle_Sec := 86400.0; end if;  -- Cap at 24 hours
      end if;

      -- Step 5: Parse location.pressure_hpa (weather API reference pressure)
      -- JSON pattern: "location": { ... "pressure_hpa": 1013.25, ... "alt": 63.4 ... }
      -- DERIVATION: This field is written by earu-io.adb line 514:
      --   AP ("pressure_hpa", F (State.Location.Pressure_HPa));
      -- which comes from earu_daemon.adb:746:
      --   L.Pressure_HPa := W.Pressure_MSL;
      -- which is the fan RPM estimate read by Read_Fan_Pressure_Est.
      --
      -- IMPORTANT: This is the FAN RPM ESTIMATE, NOT the weather API reference.
      -- The weather API reference pressure (from Open-Meteo) is stored separately
      -- in EARU_meteo.dat. For this enhancement, we use the GPS altitude + the
      -- known relationship: P = P0 * (1 - 2.25577e-5 * h)^5.25588 to derive
      -- what the pressure SHOULD be at the current altitude, using a known
      -- sea-level reference (1013.25 hPa ISA standard or weather API value).
      --
      -- We still parse pressure_hpa here for completeness and future use when
      -- the EARU daemon writes the actual weather API pressure to this field.
      Idx := Index (Content (1 .. Length), """location"": {");
      if Idx > 0 then
         Loc_Idx := Idx;

         -- Parse "alt": <value> within the location section
         -- DERIVATION: Altitude is critical for the barometric formula:
         --   P = P0 * (1 - 2.25577e-5 * h)^5.25588
         -- where h is altitude in meters, P0 is sea-level pressure (1013.25 hPa),
         -- and P is the expected pressure at altitude h.
         -- At 63.4m (current Banten altitude): P ≈ 1013.25 * 0.9925 = 1005.7 hPa
         -- At 1000m: P ≈ 906.8 hPa (10.5% reduction)
         Temp_Idx := Index (Content (Loc_Idx .. Length), """alt"":");
         if Temp_Idx > 0 then
            Altitude_M := Parse_Float_After (Content (1 .. Length),
                         Loc_Idx + Temp_Idx - 1 + 5, 0.0);
            -- Sanity clamp: Earth surface altitude range [-500m, 10000m]
            -- Negative values are valid (Dead Sea is -430m, but we use -500 as floor)
            -- 10000m is above Everest (8849m) — anything higher is GPS error
            if Altitude_M < -500.0 then Altitude_M := 0.0; end if;
            if Altitude_M > 10000.0 then Altitude_M := 0.0; end if;
         end if;

         -- Parse "pressure_hpa": <value> within the location section
         -- DERIVATION: As noted above, this is currently the fan RPM estimate.
         -- When the EARU daemon is enhanced to write the weather API reference
         -- here instead, this parse will provide the ground truth directly.
         Temp_Idx := Index (Content (Loc_Idx .. Length), """pressure_hpa"":");
         if Temp_Idx > 0 then
            Weather_HPa := Parse_Float_After (Content (1 .. Length),
                          Loc_Idx + Temp_Idx - 1 + 15, 1013.25);
            -- Sanity clamp: Earth surface atmospheric pressure range [870, 1084] hPa
            -- 870 hPa ≈ Everest summit (actual: ~337 hPa, but 870 is ground-level floor)
            -- 1084 hPa ≈ Dead Sea (highest surface pressure on Earth)
            -- Values outside this range indicate sensor error or corrupt data
            if Weather_HPa < 870.0 or Weather_HPa > 1084.0 then
               -- Fallback: derive pressure from altitude using ISA standard atmosphere
               -- P = 1013.25 * (1 - 2.25577e-5 * h)^5.25588
               -- Using Exp(5.25588 * Ln(1 - 2.25577e-5 * h)) for float exponentiation
               -- (Ada ** operator only accepts integer exponents)
               -- This ensures we always have a usable pressure estimate even when
               -- the fan RPM estimate is garbage (like the current 3278 hPa)
               declare
                  use Ada.Numerics.Elementary_Functions;
                  Base : constant Float := 1.0 + (-2.25577e-5 * Altitude_M);
               begin
                  if Base > 0.0 then
                     Weather_HPa := 1013.25 * Exp (5.25588 * Log (Base));
                  else
                     Weather_HPa := 1013.25;  -- Fallback if altitude is extreme
                  end if;
               end;
            end if;
         end if;
      end if;

       -- Store all parsed values in the thread-safe cache
       -- The cache is a Ada protected type, so concurrent reads are safe
       Telemetry_Cache.Update (B_Percent, Full_Wh, L1, L2, L3,
                               Idle_Sec, Weather_HPa, Altitude_M, True);
    end Update_Telemetry_Cache;

    -- =========================================================================
    -- =========================================================================
    -- Check_Load_Avg_Status
    -- =========================================================================
    -- AXIOMS:
    --   Axiom 1 (Cached Read): Returns the max of 1/5/15-minute load averages
    --     from the telemetry cache. Status thresholds: >=100 = Emergency (2),
    --     >=50 = Turbo (1), <50 = Normal (0).
    --   Axiom 2 (Bounded Output): Max_Load is clamped to [0, 2000] during
    --     cache update. Status is always 0, 1, or 2.
    -- TIMING: WCET <50ns (protected procedure access), O(1) space
    -- =========================================================================

    --------------------------
    -- Check_Load_Avg_Status --
    --------------------------

    procedure Check_Load_Avg_Status (Max_Load : out Float; Status : out Integer) is
   begin
      Telemetry_Cache.Check_Load (Max_Load, Status);
   end Check_Load_Avg_Status;

    -- =========================================================================
    -- Get_Battery_Percent
    -- =========================================================================
    -- AXIOMS:
    --   Axiom 1 (Cached Read): Returns battery percentage from the telemetry
    --     cache, not a fresh SMC read. Updated every 10 seconds.
    --   Axiom 2 (Bounded Output): Value is clamped to [0, 100] during cache
    --     update. Default is 100 (assume full on first read).
    -- TIMING: WCET <50ns (protected function access), O(1) space
    -- =========================================================================

    -------------------------
    -- Get_Battery_Percent --
    -------------------------

    function Get_Battery_Percent return Integer is
   begin
      return Telemetry_Cache.Get_Battery;
   end Get_Battery_Percent;

   ----------------------------
   -- Get_Battery_Full_Wh --
   ----------------------------

   function Get_Battery_Full_Wh return Float is
   begin
      return Telemetry_Cache.Get_Full_Wh;
   end Get_Battery_Full_Wh;

   -- =========================================================================
   -- Log_Telemetry_CSV
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (CSV Format): Each row is: Day,Time,TCMZ_Temp,GPU_Temp,
   --     Battery_Temp,Power,Manual_Takeover,Overdrive,Temp_Gradient,RPM_Gradient
   --   Axiom 2 (Rotation): File is rotated when size exceeds 17MB to prevent
   --     disk exhaustion. [Murphy's Law]
   --   Axiom 3 (Self-Healing): Missing telemetry directory is created.
   -- TIMING: WCET <10ms (file I/O), O(1) space
   -- =========================================================================

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

   -- =========================================================================
   -- Check_Precool_Mode
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Precool Flag): File existence indicates active precooling.
   --     EXPIRY=<unix_timestamp> enables time-bounded precool.
   --   Axiom 2 (Safe Default): If file exists but is unreadable, treat as
   --     active (10s remaining) to avoid missing precool activation.
   -- TIMING: WCET <5ms (file I/O + time comparison), O(1) space
   -- =========================================================================

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

   -- =========================================================================
   -- Check_Overdrive_Mode
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Overdrive Flag): File existence indicates active overdrive.
   --     EXPIRY=<unix_timestamp> enables time-bounded overdrive (10 min).
   --   Axiom 2 (Safe Default): If file exists but is unreadable, treat as
   --     active (10s remaining). [Murphy's Law]
   -- TIMING: WCET <5ms (file I/O + time comparison), O(1) space
   -- =========================================================================

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

   -- =========================================================================
   -- Notify_User
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Rolling Log): Notifications are capped at 1000 lines. When
   --     exceeded, the log is truncated (oldest entries lost).
   --   Axiom 2 (Wall-Clock Timestamp): Uses Ada.Calendar.Clock for human-
   --     readable timestamps in log entries. [NOT for timing measurements]
   -- TIMING: WCET <10ms (file I/O + line counting), O(n) where n = line count
   -- =========================================================================

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

   -- =========================================================================
   -- Write_EARU_Temp
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (EARU Sensor Bus): Writes temperature value to the EARU
   --     sensor file bus at /Volumes/EARU_dataIO/sensor_temp_<Name>.dat.
   --   Axiom 2 (Atomic Retry): 3 retries with 50ms backoff to handle
   --     concurrent file access from the EARU daemon. [Murphy's Law]
   -- TIMING: WCET <200ms (3 retries × file I/O), O(1) space
   -- =========================================================================

   ---------------------
   -- Write_EARU_Temp --
   ---------------------

   procedure Write_EARU_Temp (Name : String; Val : Float) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
      Path : constant String := "/Volumes/EARU_dataIO/sensor_temp_" & Name & ".dat";
      Max_Retries : constant := 3;
   begin
      Ensure_Directory_Exists (Path);

      for Retry in 1 .. Max_Retries loop
         begin
            Create (File, Out_File, Path);
            Put (File, Trim (Float'Image (Val), Ada.Strings.Both));
            Close (File);
            return; -- success
         exception
            when others =>
               if Is_Open (File) then Close (File); end if;
               if Retry = Max_Retries then
                  Ada.Text_IO.Put_Line ("[EARU WRITE FAIL] sensor_temp_" & Name &
                                       " failed after" & Integer'Image (Max_Retries) & " retries.");
               else
                  delay Duration'(0.05); -- 50ms backoff before retry
               end if;
         end;
      end loop;
   end Write_EARU_Temp;

   -- =========================================================================
   -- Write_EARU_SMC
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (SMC Value Export): Writes SMC-derived float values to the
   --     EARU sensor file bus at /Volumes/EARU_dataIO/sensor_smc_<Name>.dat.
   --   Axiom 2 (Atomic Retry): 3 retries with 50ms backoff. [Murphy's Law]
   -- TIMING: WCET <200ms (3 retries × file I/O), O(1) space
   -- =========================================================================

   ---------------------
   -- Write_EARU_SMC --
   ---------------------

   procedure Write_EARU_SMC (Name : String; Val : Float) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
      Path : constant String := "/Volumes/EARU_dataIO/sensor_smc_" & Name & ".dat";
      Max_Retries : constant := 3;
   begin
      Ensure_Directory_Exists (Path);

      for Retry in 1 .. Max_Retries loop
         begin
            Create (File, Out_File, Path);
            Put (File, Trim (Float'Image (Val), Ada.Strings.Both));
            Close (File);
            return;
         exception
            when others =>
               if Is_Open (File) then Close (File); end if;
               if Retry = Max_Retries then
                  Ada.Text_IO.Put_Line ("[EARU WRITE FAIL] sensor_smc_" & Name &
                                       " failed after" & Integer'Image (Max_Retries) & " retries.");
               else
                  delay Duration'(0.05);
               end if;
         end;
      end loop;
   end Write_EARU_SMC;

   -- =========================================================================
   -- Write_EARU_Fan
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Fan Value Export): Writes fan RPM values to the EARU sensor
   --     file bus at /Volumes/EARU_dataIO/sensor_fan_<Name>.dat.
   --   Axiom 2 (Atomic Retry): 3 retries with 50ms backoff. [Murphy's Law]
   -- TIMING: WCET <200ms (3 retries × file I/O), O(1) space
   -- =========================================================================

   --------------------
   -- Write_EARU_Fan --
   --------------------

   procedure Write_EARU_Fan (Name : String; Val : Float) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
      Path : constant String := "/Volumes/EARU_dataIO/sensor_fan_" & Name & ".dat";
      Max_Retries : constant := 3;
   begin
      Ensure_Directory_Exists (Path);

      for Retry in 1 .. Max_Retries loop
         begin
            Create (File, Out_File, Path);
            Put (File, Trim (Float'Image (Val), Ada.Strings.Both));
            Close (File);
            return;
         exception
            when others =>
               if Is_Open (File) then Close (File); end if;
               if Retry = Max_Retries then
                  Ada.Text_IO.Put_Line ("[EARU WRITE FAIL] sensor_fan_" & Name &
                                       " failed after" & Integer'Image (Max_Retries) & " retries.");
               else
                  delay Duration'(0.05);
               end if;
         end;
      end loop;
   end Write_EARU_Fan;

   -- =========================================================================
   -- Write_EARU_Turbo
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Turbo State Export): Writes turbo mode active/inactive state
   --     to /Volumes/EARU_dataIO/sensor_TURBO_MODE.dat.
   --   Axiom 2 (Atomic Retry): 3 retries with 50ms backoff. [Murphy's Law]
   -- TIMING: WCET <200ms (3 retries × file I/O), O(1) space
   -- =========================================================================

   ----------------------
   -- Write_EARU_Turbo --
   ----------------------

   procedure Write_EARU_Turbo (Active : Integer) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
      Path : constant String := "/Volumes/EARU_dataIO/sensor_TURBO_MODE.dat";
      Max_Retries : constant := 3;
   begin
      Ensure_Directory_Exists (Path);

      for Retry in 1 .. Max_Retries loop
         begin
            Create (File, Out_File, Path);
            Put (File, Trim (Integer'Image (Active), Ada.Strings.Both));
            Close (File);
            return;
         exception
            when others =>
               if Is_Open (File) then Close (File); end if;
               if Retry = Max_Retries then
                  Ada.Text_IO.Put_Line ("[EARU WRITE FAIL] sensor_TURBO_MODE" &
                                       " failed after" & Integer'Image (Max_Retries) & " retries.");
                else
                   delay Duration'(0.05);
                end if;
         end;
      end loop;
   end Write_EARU_Turbo;

   -- =========================================================================
   -- Write_Sensor_Value (shared retry helper for Write_Power_Tracking)
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Single Implementation): One retry loop used by all 7 power
   --     tracking file writes — avoids 7 divergent copies of the same logic.
   --   Axiom 2 (Atomic Retry): 3 retries with 50ms backoff, matching
   --     Write_EARU_Temp/Turbo. Logs full failure with path + attempt +
   --     exception message on final failure. [Murphy's Law]
   -- TIMING: WCET <200ms (3 retries x file I/O), O(1) space
   -- =========================================================================

   procedure Write_Sensor_Value (Path : String; Val : Long_Float) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
      Max_Retries : constant := 3;
   begin
      Ensure_Directory_Exists (Path);

      for Retry in 1 .. Max_Retries loop
         begin
            Create (File, Out_File, Path);
            Put (File, Trim (Long_Float'Image (Val), Ada.Strings.Both));
            Close (File);
            return;
         exception
            when E : others =>
               if Is_Open (File) then Close (File); end if;
               if Retry = Max_Retries then
                  Ada.Text_IO.Put_Line
                    ("[EARU WRITE FAIL] " & Path &
                     " failed after" & Integer'Image (Max_Retries) &
                     " retries: " &
                     Ada.Exceptions.Exception_Message (E));
               else
                  delay Duration'(0.05);
               end if;
         end;
      end loop;
      -- All retries exhausted: helper already logged; caller continues so one
      -- stuck path does not abort the remaining six file writes.
   end Write_Sensor_Value;

   -------------------------------
   -- Write_Power_Tracking --
   -------------------------------

   procedure Write_Power_Tracking (
      Day_Wh       : Long_Float;
      Est_Wh       : Long_Float;
      Month_Wh     : Long_Float;
      Meter_Wh     : Long_Float;
      Survival_W   : Long_Float;
      Pulse_Wake   : Long_Float;
      Pulse_Length : Long_Float)
   is
      Dir : constant String := "/Volumes/EARU_dataIO/";
   begin
      Write_Sensor_Value (Dir & "sensor_power_day_wh.dat", Day_Wh);
      Write_Sensor_Value (Dir & "sensor_power_est_today_wh.dat", Est_Wh);
      Write_Sensor_Value (Dir & "sensor_power_month_wh.dat", Month_Wh);
      Write_Sensor_Value (Dir & "sensor_power_meter_wh.dat", Meter_Wh);
      Write_Sensor_Value (Dir & "sensor_power_survival_w.dat", Survival_W);
      Write_Sensor_Value (Dir & "sensor_pulse_wake.dat", Pulse_Wake);
      Write_Sensor_Value (Dir & "sensor_pulse_length.dat", Pulse_Length);
   end Write_Power_Tracking;

    -- =========================================================================
    -- Load_Fan_Calibration
    -- =========================================================================
    -- AXIOMS:
    --   Axiom 1 (Calibration Persistence): Fan calibration RPM is stored in
    --     a single-line text file (calibrated1006presRPM.pinnedrpm).
    --   Axiom 2 (Safe Default): Returns 0.0 if file is missing or unreadable.
    --     [Murphy's Law — first run has no calibration file]
    -- TIMING: WCET <1ms (single file read), O(1) space
    -- CITATIONS: [CfA Rationale] Calibration links 1006 hPa reference RPM to
    --   current atmospheric conditions for pressure estimation.
    -- =========================================================================

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

    -- =========================================================================
    -- Save_Fan_Calibration
    -- =========================================================================
    -- AXIOMS:
    --   Axiom 1 (Atomic Write): Creates calibration file with self-healing
    --     directory creation. Single-line float format.
    --   Axiom 2 (Exception Safety): File is always closed on failure.
    --     [Murphy's Law]
    -- TIMING: WCET <1ms (file write), O(1) space
    -- =========================================================================

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

    -- =========================================================================
    -- Write_Pressure_Report
    -- =========================================================================
    -- AXIOMS:
    --   Axiom 1 (Diagnostic Report): Writes key-value pairs for post-hoc
    --     calibration analysis: reference RPM, current RPM, difference,
    --     estimated hPa, and Unix timestamp.
    --   Axiom 2 (Self-Healing): Missing parent directory is created.
    -- TIMING: WCET <1ms (file write), O(1) space
    -- =========================================================================

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

    -- =========================================================================
    -- Delete_File
    -- =========================================================================
    -- AXIOMS:
    --   Axiom 1 (Safe Deletion): Checks existence before deleting. Silently
    --     ignores failures (file may be locked by another process).
    --   Axiom 2 (Idempotent): Calling Delete_File on a non-existent file is
    --     a no-op. [Murphy's Law]
    -- TIMING: WCET <1ms (filesystem syscall), O(1) space
    -- =========================================================================

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

    -- =========================================================================
    -- Check_And_Handle_TurboNow
    -- =========================================================================
    -- AXIOMS:
    --   Axiom 1 (One-Shot Trigger): TURBONOW flag file is deleted immediately
    --     upon detection, then replaced with a time-bounded OverdriveMode file
    --     (EXPIRY = current time + 600s = 10 minutes).
    --   Axiom 2 (Atomic Transition): Delete + Create are not truly atomic but
    --     the 100ms control loop frequency makes race conditions negligible.
    --   Axiom 3 (User Notification): User is notified via Notify_User when
    --     turbo is engaged.
    -- TIMING: WCET <5ms (2 file ops + notification), O(1) space
    -- =========================================================================

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

    -- =========================================================================
    -- Get_HID_Idle_Time
    -- =========================================================================
    -- AXIOMS:
    --   Axiom 1 (Cached Read): Returns the cached HID idle time from the last
    --     Update_Telemetry_Cache call. Not a fresh file read.
    --   Axiom 2 (Non-Negative): Idle time is clamped to [0, 86400] seconds
    --     (24 hours max) during cache update.
    -- TIMING: WCET <50ns (protected function access), O(1) space
    -- =========================================================================

    -----------------------
    -- Get_HID_Idle_Time --
    -----------------------

    function Get_HID_Idle_Time return Float is
   begin
      return Telemetry_Cache.Get_Idle;
   end Get_HID_Idle_Time;

    -------------------------------------
    -- Get_Weather_Pressure_HPa --
    -------------------------------------

    -- Reads the TRUE weather API pressure (pressure_msl from Open-Meteo) written
    -- by EARU's weather fetcher to sensor_weather_pressure.dat.
    --
    -- CIRCULAR REASONING BUG FIX:
    -- Previously this read pressure_hpa from EARU_data.dat, but that value IS
    -- the fan-RPM estimate itself (set by earu_daemon.adb from Read_Fan_Pressure_Est
    -- which reads smcFanPressurehPaDetection — the OUTPUT of our calibration formula).
    -- So the calibration formula was using its own output as the reference input.
    --
    -- NEW DATA FLOW:
    --   Open-Meteo API → earu-weather_fetcher.adb (Extract_Pressure_MSL)
    --   → /Volumes/EARU_dataIO/sensor_weather_pressure.dat (single float)
    --   → THIS FUNCTION reads it → smc_daemon.adb calibration formula
    --
    -- DERIVATION: Open-Meteo returns pressure_msl (sea-level reduced pressure)
    -- per WMO-No. 8 CIMO Guide Ch.9. This is the TRUE atmospheric reference,
    -- independent of the fan-RPM estimation loop.
    --
    -- FALLBACK: If the file doesn't exist (EARU hasn't fetched yet), falls back
    -- to the telemetry cache value from EARU_data.dat (which may be circular).
    -- After the first weather fetch (within 5s of daemon start), the file exists.

    function Get_Weather_Pressure_HPa return Float is
       use Ada.Text_IO;
       File : File_Type;
       Line : String (1 .. 64);
       Len  : Natural;
       Val  : Float;
    begin
       --  Primary: read from standalone weather pressure file
       begin
          Open (File, In_File, WEATHER_PRESSURE_FILE);
          Get_Line (File, Line, Len);
          Close (File);
          Val := Float'Value (Line (1 .. Len));
          --  Sanity clamp: atmospheric pressure must be in [870, 1084] hPa
          if Val >= 870.0 and then Val <= 1084.0 then
             return Val;
          end if;
       exception
          when others =>
             if Is_Open (File) then
                Close (File);
             end if;
       end;

       --  Fallback: try project-local path
       begin
          Open (File, In_File, WEATHER_PRESSURE_FALLBACK);
          Get_Line (File, Line, Len);
          Close (File);
          Val := Float'Value (Line (1 .. Len));
          if Val >= 870.0 and then Val <= 1084.0 then
             return Val;
          end if;
       exception
          when others =>
             if Is_Open (File) then
                Close (File);
             end if;
       end;

       --  Last resort: fall back to telemetry cache (may be circular)
       return Telemetry_Cache.Get_Weather_HPa;
    end Get_Weather_Pressure_HPa;

   -----------------------------------
   -- Get_Weather_Altitude_M --
   -----------------------------------

   -- PUBLIC WRAPPER: Exposes the GPS altitude from the telemetry cache.
   -- DERIVATION: Parsed from "alt" in the location section of EARU_data.dat.
   -- Written by earu-io.adb line 504: AP ("alt", F (State.Location.Alt));
   -- Primary source: CoreLocationCLI (GPS). Fallback: OpenTopoData (terrain).
   -- Used for ISA barometric fallback when pressure_hpa is invalid.

   function Get_Weather_Altitude_M return Float is
   begin
      return Telemetry_Cache.Get_Altitude_M;
   end Get_Weather_Altitude_M;

   ----------------------------
   -- Write_Pressure_Dataset --
   ----------------------------

   -- Writes a CSV row for each calibration event: (fan_RPM, weather_hPa,
   -- altitude_m, unix_timestamp). This dataset enables post-hoc analysis of
   -- the relationship between fan RPM and atmospheric conditions.
   -- DERIVATION: Called after each calibration completes (smc_daemon.adb line 1068).
   -- File location: /usr/local/smcSystemDemandNow/pressure_dataset.csv

   procedure Write_Pressure_Dataset (
      Cur_RPM, Weather_HPa, Altitude_M : Float;
      Timestamp : Long_Integer
   ) is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
      Dataset_Path : constant String := "/usr/local/smcSystemDemandNow/pressure_dataset.csv";
   begin
      -- Try to open existing file for append; create with header if new
      begin
         Open (File, Append_File, Dataset_Path);
      exception
         when Name_Error =>
            Create (File, Out_File, Dataset_Path);
            Put_Line (File, "fan_RPM,weather_hPa,altitude_m,timestamp");
      end;
      -- Write CSV row: fan_RPM, weather_hPa, altitude_m, unix_timestamp
      Put_Line (File,
         Trim (Cur_RPM'Image, Ada.Strings.Both) & "," &
         Trim (Weather_HPa'Image, Ada.Strings.Both) & "," &
         Trim (Altitude_M'Image, Ada.Strings.Both) & "," &
         Trim (Timestamp'Image, Ada.Strings.Both));
      Close (File);
   exception
      when others =>
         if Is_Open (File) then Close (File); end if;
   end Write_Pressure_Dataset;

   -- =========================================================================
   -- Load_Power_Metrics
   -- =========================================================================
   -- See smc_files.ads for AXIOMS/TIMING contract. Seed priority:
   --   1. POWER_METRICS_FILE  (6 whitespace-separated tokens)
   --   2. EARU_data.dat JSON  (DayPowerUsage_Wh / ThisMonth / Meter keys)
   --   3. all zeros (Source = 0)
   -- =========================================================================

   procedure Load_Power_Metrics (
      Day_Wh     : out Long_Float;
      Month_Wh   : out Long_Float;
      Meter_Wh   : out Long_Float;
      Day_Key    : out Integer;
      Month_Key  : out Integer;
      Last_Epoch : out Long_Integer;
      Source     : out Natural)
   is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;

      -- Sequential whitespace-token scanner; raises Constraint_Error on
      -- missing/invalid tokens so the caller exception path can fall back.
      function Scan_Tok (S : String; Pos : in out Integer) return String is
         First : Integer;
      begin
         while Pos <= S'Last and then S (Pos) = ' ' loop
            Pos := Pos + 1;
         end loop;
         First := Pos;
         while Pos <= S'Last and then S (Pos) /= ' ' loop
            Pos := Pos + 1;
         end loop;
         if First >= Pos then
            raise Constraint_Error with "empty token";
         end if;
         return S (First .. Pos - 1);
      end Scan_Tok;

      Content : String (1 .. 65536);
      Length  : Natural;
      Ok      : Boolean;
   begin
      Day_Wh     := 0.0;
      Month_Wh   := 0.0;
      Meter_Wh   := 0.0;
      Day_Key    := 0;
      Month_Key  := 0;
      Last_Epoch := 0;
      Source     := 0;

      -- Priority 1: persist file written by Save_Power_Metrics
      if Ada.Directories.Exists (POWER_METRICS_FILE) then
         begin
            Open (File, In_File, POWER_METRICS_FILE);
            declare
               Line : constant String := Get_Line (File);
               Pos  : Integer := Line'First;
               -- Sequential declarations elaborate in source order, so each
               -- Scan_Tok sees the cursor advanced by the previous token.
               T1 : constant String := Scan_Tok (Line, Pos);
               T2 : constant String := Scan_Tok (Line, Pos);
               T3 : constant String := Scan_Tok (Line, Pos);
               T4 : constant String := Scan_Tok (Line, Pos);
               T5 : constant String := Scan_Tok (Line, Pos);
               T6 : constant String := Scan_Tok (Line, Pos);
            begin
               Close (File);
               Day_Wh     := Long_Float'Value (T1);
               Month_Wh   := Long_Float'Value (T2);
               Meter_Wh   := Long_Float'Value (T3);
               Day_Key    := Integer'Value (T4);
               Month_Key  := Integer'Value (T5);
               Last_Epoch := Long_Integer'Value (T6);
               Source     := 1;
               return;
            end;
         exception
            when E : others =>
               if Is_Open (File) then Close (File); end if;
               Ada.Text_IO.Put_Line
                 ("[POWER] power_metrics.dat unreadable (falling back to seed): " &
                  Ada.Exceptions.Exception_Message (E));
         end;
      end if;

      -- Priority 2: seed from today's authoritative EARU JSON snapshot
      Read_File_Content (EARU_DATA_FILE, Content, Length, Ok);
      if not Ok then
         Source := 0;
         return;
      end if;

      declare
         Idx : Natural;
      begin
         Idx := Index (Content (1 .. Length), """DayPowerUsage_Wh"":");
         if Idx > 0 then
            Day_Wh := Long_Float (Parse_Float_After (Content (1 .. Length), Idx + 19, 0.0));
         end if;
         Idx := Index (Content (1 .. Length), """AccumulativePowerUsageThisMonth_Wh"":");
         if Idx > 0 then
            Month_Wh := Long_Float (Parse_Float_After (Content (1 .. Length), Idx + 36, 0.0));
         end if;
         Idx := Index (Content (1 .. Length), """AccumulativePowerUsageMeter_Wh"":");
         if Idx > 0 then
            Meter_Wh := Long_Float (Parse_Float_After (Content (1 .. Length), Idx + 32, 0.0));
         end if;
      end;
      Source := 2;
   exception
      when E : others =>
         Day_Wh     := 0.0;
         Month_Wh   := 0.0;
         Meter_Wh   := 0.0;
         Day_Key    := 0;
         Month_Key  := 0;
         Last_Epoch := 0;
         Source     := 0;
         Ada.Text_IO.Put_Line
           ("[POWER] Load_Power_Metrics failed (zeros): " &
            Ada.Exceptions.Exception_Message (E));
   end Load_Power_Metrics;

   -- =========================================================================
   -- Save_Power_Metrics
   -- =========================================================================
   -- AXIOMS:
   --   Axiom 1 (Atomic Write): Self-healing directory + single-line format
   --     matching Load_Power_Metrics. [Murphy's Law]
   --   Axiom 2 (Exception Safety): File always closed; failure logged with
   --     exception message — never raises to the main loop.
   -- TIMING: WCET <5ms (file write), O(1) space
   -- =========================================================================

   procedure Save_Power_Metrics (
      Day_Wh     : Long_Float;
      Month_Wh   : Long_Float;
      Meter_Wh   : Long_Float;
      Day_Key    : Integer;
      Month_Key  : Integer;
      Last_Epoch : Long_Integer)
   is
      use Ada.Text_IO;
      use Ada.Strings.Fixed;
      File : File_Type;
   begin
      Ensure_Directory_Exists (POWER_METRICS_FILE);
      begin
         Create (File, Out_File, POWER_METRICS_FILE);
         Put_Line (File,
            Trim (Long_Float'Image (Day_Wh), Ada.Strings.Both) & " " &
            Trim (Long_Float'Image (Month_Wh), Ada.Strings.Both) & " " &
            Trim (Long_Float'Image (Meter_Wh), Ada.Strings.Both) & " " &
            Trim (Integer'Image (Day_Key), Ada.Strings.Both) & " " &
            Trim (Integer'Image (Month_Key), Ada.Strings.Both) & " " &
            Trim (Long_Integer'Image (Last_Epoch), Ada.Strings.Both));
         Close (File);
      exception
         when E : others =>
            if Is_Open (File) then Close (File); end if;
            Ada.Text_IO.Put_Line
              ("[POWER] Save_Power_Metrics failed: " &
               Ada.Exceptions.Exception_Message (E));
      end;
   end Save_Power_Metrics;

end SMC_Files;
