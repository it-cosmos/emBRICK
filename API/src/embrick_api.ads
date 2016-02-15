with Interfaces;
package emBRICK_API is

   package IntF renames Interfaces;
   type Failure_Or_Success is (FAILURE, SUCCESS);
   type node_type is range 1 .. 32;
   type module_type is new node_type;
   type ID_type is new IntF.Integer_16;
   type version_type is new IntF.Unsigned_8;
   type status_type is (NO_SLAVE, NO_ERROR, LITTLE_ERRORS,
                        NO_DATA, MANY_ERRORS);

   type bB_word_type is new IntF.Unsigned_16;
   subtype bB_byte_type is bB_word_type range 0 .. 255;
   subtype bB_bit_type is bB_byte_type range 0 .. 1;
   type byte_pos_type is new IntF.Unsigned_16;
   type bit_pos_type is range 0 .. 7;

   function bB_Init return Failure_Or_Success;

   procedure bB_Close;

   function bB_getNumModules (node: node_type) return module_type;

   function bB_getModulID (node: node_type; slave_No: module_type) return ID_type;

   function bB_getModulSwVers (node: node_type; slave_No: module_type) return version_type;

   function bB_getModulbBVers (node: node_type; slave_No: module_type) return version_type;

   function bB_getModulStatus (node: node_type; slave_No: module_type) return status_type;

   procedure bB_terminate;

   function bB_getWord (node: node_type; slave_No: module_type; byte_pos: byte_pos_type) return bB_word_type;
   function bB_getByte (node: node_type; slave_No: module_type; byte_pos: byte_pos_type) return bB_byte_type;
   function bB_getBit (node: node_type; slave_No: module_type;
                       byte_pos: byte_pos_type; bit_pos: bit_pos_type) return bB_bit_type;

   procedure bB_putWord (node: node_type; slave_No: module_type;
                         byte_pos: byte_pos_type; bB_word: bB_word_type);
   procedure bB_putByte (node: node_type; slave_No: module_type;
                         byte_pos: byte_pos_type; bB_byte: bB_byte_type);
   procedure bB_putBit (node: node_type; slave_No: module_type;
                         byte_pos: byte_pos_type; bit_pos: bit_pos_type; bB_bit: bB_bit_type);

end emBRICK_API;
