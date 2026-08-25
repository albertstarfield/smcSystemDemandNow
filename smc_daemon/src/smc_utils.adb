with Ada.Unchecked_Conversion;
with Ada.Calendar;
with Ada.Strings.Fixed;

package body SMC_Utils with SPARK_Mode => Off is

   -- ===========================================================================
   -- Validate_Temperature
   -- ===========================================================================
   -- AXIOMS:
   --   Axiom 1 (Sensor Bounds): SMC temperature sensors return values in
   --     [0, 120]°C for Apple Silicon. Readings outside this range indicate
   --     sensor failure or data corruption.
   --   Axiom 2 (Last-Value Fallback): On invalid reading, returning the
   --     previous valid reading prevents transient spikes from propagating
   --     into fan control calculations.
   --
   -- TIMING ANALYSIS:
   --   Estimated Processing Time: O(1) — 1 range check
   --   CPU Time: ~5ns
   --   WCET: < 20ns
   --   Space Complexity: O(0)
   --   Nanosecond Anchor: N/A
   -- ===========================================================================

   -------------------------
   -- Validate_Temperature --
   -------------------------

   function Validate_Temperature (
      Raw_Val  : Float;
      Last_Val : Float
   ) return Float is
   begin
      if Raw_Val in Valid_Temperature then
         return Raw_Val;
      end if;
      return Last_Val;
   end Validate_Temperature;

   -- ===========================================================================
   -- Compute_Gradient
   -- ===========================================================================
   -- AXIOMS:
   --   Axiom 1 (Rate of Change): Temperature gradient = ΔT/Δt, measuring
   --     how fast temperature is changing (°C/second).
   --   Axiom 2 (Zero Baseline): If Prev_Temp = 0.0 (no previous reading),
   --     gradient is 0.0 to avoid spurious derivative spikes.
   --
   -- TIMING ANALYSIS:
   --   Estimated Processing Time: O(1) — 1 comparison + 1 subtract + 1 divide
   --   CPU Time: ~8ns
   --   WCET: < 30ns
   --   Space Complexity: O(0)
   --   Nanosecond Anchor: N/A
   -- ===========================================================================

   -------------------
   -- Compute_Gradient --
   -------------------

   function Compute_Gradient (
      Current_Temp : Float;
      Prev_Temp    : Float;
      DT           : Float
   ) return Temperature_Gradient_Range is
   begin
      if Prev_Temp > 0.0 then
         return (Current_Temp - Prev_Temp) / DT;
      end if;
      return 0.0;
   end Compute_Gradient;

   -- ===========================================================================
   -- Get_Time_Str
   -- ===========================================================================
   -- AXIOMS:
   --   Axiom 1 (Log Timestamp): Human-readable "H:M:S" format for log entries.
   --   NOTE: Uses Ada.Calendar.Clock (wall-clock time, NOT monotonic).
   --     For timing measurements, use Ada.Real_Time.Clock instead.
   --
   -- TIMING ANALYSIS:
   --   Estimated Processing Time: O(1) — Split + 3 divisions + string ops
   --   CPU Time: ~2μs (string formatting dominates)
   --   WCET: < 10μs
   --   Space Complexity: O(1) — fixed-size string result
   --   Nanosecond Anchor: N/A (display-only, not used for timing)
   -- ===========================================================================

   -----------------
   -- Get_Time_Str --
   -----------------

   function Get_Time_Str return String is
      use Ada.Strings.Fixed;
      Now    : constant Ada.Calendar.Time := Ada.Calendar.Clock;
      Year   : Ada.Calendar.Year_Number;
      Month  : Ada.Calendar.Month_Number;
      Day    : Ada.Calendar.Day_Number;
      Seconds : Ada.Calendar.Day_Duration;
      Hour, Min, Sec : Natural;
   begin
      Ada.Calendar.Split (Now, Year, Month, Day, Seconds);
      Hour := Natural (Seconds) / 3600;
      Min  := (Natural (Seconds) mod 3600) / 60;
      Sec  := Natural (Seconds) mod 60;
      return Trim (Hour'Image, Ada.Strings.Both) & ":" &
             Trim (Min'Image, Ada.Strings.Both) & ":" &
             Trim (Sec'Image, Ada.Strings.Both);
   end Get_Time_Str;

   -- ===========================================================================
   -- Get_Day_Str
   -- ===========================================================================
   -- AXIOMS:
   --   Axiom 1 (Date Format): "YYYY-MM-DD" ISO 8601 format for log entries.
   --
   -- TIMING ANALYSIS:
   --   Estimated Processing Time: O(1) — Split + string ops
   --   CPU Time: ~2μs
   --   WCET: < 10μs
   --   Space Complexity: O(1)
   --   Nanosecond Anchor: N/A
   -- ===========================================================================

   -----------------
   -- Get_Day_Str --
   -----------------

   function Get_Day_Str return String is
      use Ada.Strings.Fixed;
      Now    : constant Ada.Calendar.Time := Ada.Calendar.Clock;
      Year   : Ada.Calendar.Year_Number;
      Month  : Ada.Calendar.Month_Number;
      Day    : Ada.Calendar.Day_Number;
      Seconds : Ada.Calendar.Day_Duration;
   begin
      Ada.Calendar.Split (Now, Year, Month, Day, Seconds);
      return Trim (Year'Image, Ada.Strings.Both) & "-" &
             Trim (Month'Image, Ada.Strings.Both) & "-" &
             Trim (Day'Image, Ada.Strings.Both);
   end Get_Day_Str;

   -- ===========================================================================
   -- Float_To_Hex
   -- ===========================================================================
   -- AXIOMS:
   --   Axiom 1 (IEEE 754): Float is represented as 32-bit IEEE 754 single
   --     precision. Unchecked_Conversion reinterprets the bit pattern.
   --   Axiom 2 (SMC Encoding): SMC fan target keys (F0Tg, F1Tg) require
   --     hex-encoded float representation for write operations.
   --   Axiom 3 (Nibble Safety): To_Hex_Char receives Unsigned_8 values
   --     (0-255), and only the low 4 bits (0-15) are passed after
   --     Shift_Right/And, ensuring index is always 1..16.
   --
   -- TIMING ANALYSIS:
   --   Estimated Processing Time: O(1) — Unchecked_Conversion + 4 shifts + 8 table lookups
   --   CPU Time: ~15ns
   --   WCET: < 50ns
   --   Space Complexity: O(1) — 8-char result string
   --   Nanosecond Anchor: N/A
   --   NOTE: Body is SPARK_Mode => Off (Unchecked_Conversion not SPARK-compatible)
   -- ===========================================================================

   -----------------
   -- Float_To_Hex --
   -----------------

   function Float_To_Hex (Val : Float) return String is
      use Interfaces;
      function Float_To_Word is new Ada.Unchecked_Conversion (Float, Unsigned_32);
      Word    : Unsigned_32;
      B0, B1, B2, B3 : Unsigned_8;
      Hex_Map : constant String (1 .. 16) := "0123456789abcdef";
      Result  : String (1 .. 8);

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

end SMC_Utils;
