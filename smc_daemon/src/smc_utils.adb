with Ada.Unchecked_Conversion;
with Ada.Calendar;
with Ada.Strings.Fixed;

package body SMC_Utils with SPARK_Mode => Off is

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
