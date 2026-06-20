with Ada.Calendar;
with Ada.Strings.Fixed;
with Interfaces;

package SMC_Utils with SPARK_Mode is

   -- Valid temperature range for SMC sensor readings (degrees Celsius)
   subtype Valid_Temperature is Float range 0.0 .. 120.0;
   subtype Temperature_Gradient_Range is Float range -200.0 .. 200.0;

   -- Validate a raw temperature reading from the SMC.
   -- Returns Last_Val if the reading is out of bounds or invalid.
   function Validate_Temperature (
      Raw_Val  : Float;
      Last_Val : Float
   ) return Float
     with
       Post => (if Raw_Val in Valid_Temperature then Validate_Temperature'Result = Raw_Val
                else Validate_Temperature'Result = Last_Val);

   -- Compute temperature gradient (rate of change) between two readings.
   -- Returns 0.0 if Prev_Temp is zero (no previous reading available).
   function Compute_Gradient (
      Current_Temp : Float;
      Prev_Temp    : Float;
      DT           : Float
   ) return Temperature_Gradient_Range
     with
       Pre => DT > 0.0;

   -- Get current time as "H:M:S" string for log entries
   function Get_Time_Str return String;

   -- Get current date as "YYYY-MM-DD" string for log entries
   function Get_Day_Str return String;

   -- Convert a Float to its IEEE 754 hex representation (8-char string).
   -- Used to write SMC fan target keys.
   -- NOTE: Uses Unchecked_Conversion, so body is SPARK_Mode => Off.
   function Float_To_Hex (Val : Float) return String;

end SMC_Utils;
