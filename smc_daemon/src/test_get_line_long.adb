with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Test_Get_Line_Long is
   File : File_Type;
   Path : constant String := "long_line_10k.txt";
   Line : Unbounded_String;
begin
   -- Create a long line
   Create (File, Out_File, Path);
   for I in 1 .. 10000 loop
      Put (File, "A");
   end loop;
   New_Line (File);
   Close (File);
   
   -- Read it back using the function Get_Line
   Open (File, In_File, Path);
   begin
      Line := To_Unbounded_String (Get_Line (File));
      Put_Line ("Read length: " & Integer'Image (Length (Line)));
   exception
      when others =>
         Put_Line ("Exception during Get_Line");
   end;
   Close (File);
end Test_Get_Line_Long;
