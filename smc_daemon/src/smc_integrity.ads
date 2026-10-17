-- SPARK STATUS: SPARK_Mode => Off.
--   RATIONALE: Verify_And_Heal_File performs file I/O (Open/Read/Write/
--   Rename) and SHA256 hashing via GNAT.SHA256, which is outside the SPARK
--   subset. The pure helpers (Hash, Base64_Encode/Decode) are SPARK-eligible
--   in principle but live in the same package as the I/O entry point, so the
--   whole package is marked off. SAFETY-NET: Verify_And_Heal_File logs the
--   exception type + message and returns Success=False on any failure; it never
--   raises to its caller.
package SMC_Integrity with SPARK_Mode => Off is

   -- Perform SHA256 hashing on a string
   function Hash (Input : String) return String;

   -- Decode Base64 data to string
   function Base64_Decode (Data : String) return String;

   -- Encode String to Base64
   function Base64_Encode (Data : String) return String;

   -- Verifies the file at Path. If corrupted but recovery matches, 
   -- self-patches the file and returns the healed content.
   -- Returns Success = True if verified/restored, False otherwise.
   procedure Verify_And_Heal_File (
      Path    : String;
      Content : out String;
      Length  : out Natural;
      Success : out Boolean
   );

end SMC_Integrity;
