with STM32F4.SPI;
with STM32F4_Discovery; use STM32F4_Discovery;
package body embrick_api is

   package SPI renames STM32F4.SPI;
   ---------------------------------------
   -- bB_Init ----------------------------
   --   The function initializes IOs, SPI 			*
   --   and emBRICK protocol stack
   --
   --   returns SUCCESS or FAILURE
   ---------------------------------------
   function bB_Init return Failure_Or_Success is
      use SPI;
      conf : SPI.SPI_Configuration := (Direction           => D2Lines_FullDuplex,
                                       Mode                => Master,
                                       Data_Size           => Data_16,
                                       Clock_Polarity      => High,
                                       Clock_Phase         => P1Edge,
                                       Slave_Management    => Software_Managed,
                                       Baud_Rate_Prescaler => BRP_128,
                                       First_Bit           => MSB,
                                       CRC_Poly => 0);
      p : SPI_Port;
   begin
      Configure(p, conf);
      return SUCCESS;
   end;

   ---------------------------------------
   -- bB_Close --
   --   The procedure closes spi interfase
   ---------------------------------------
   procedure bB_Close is
   begin
      null;
   end;

   ----------------------------------------------
   -- bB_getNumModules --------------------------
   --   The function retuns the number of modules
   --
   --   returns number of modules
   ----------------------------------------------
   function bB_getNumModules (node: node_type) return module_type is
   begin
      return 1;
   end;

   ---------------------------------------------
   -- bB_getModulID ----------------------------
   --   The function gets the ID-Number of slave
   --   on node
   --   Parameter:
   --     node: node number
    --
   --   returns ID-Number
   ---------------------------------------------
   function bB_getModulID (node: node_type; slave_No: module_type) return ID_type is
   begin
      return 1;
   end;

   -------------------------------------------
   -- bB_getModulSwVers ----------------------
   --   The function gets the software version
   --   of slave on node
   --
   --   Parameter:
   --     node: node number
   --     slave_No: slave number
   --   returns Software version
   -------------------------------------------
   function bB_getModulSwVers (node: node_type; slave_No: module_type) return version_type is
   begin
      return 1;
   end;

   -------------------------------
   -- bB_getModulbBVers --
   --   The function gets the protokoll version
   --   of slave on node
   --
   --   Parameter:
   --     node: node number
   --     slave_No: slave number
   --   returns protokoll version
   -------------------------------------------
   function bB_getModulbBVers (node: node_type; slave_No: module_type) return version_type is
   begin
      return 1;
   end;

   -------------------------------
   -- bB_getModulStatus --
   --   The function gets the State of slave on node
   --   of slave on node
   --
   --   Parameter:
   --     node: node number
   --     slave_No: slave number
   --   returns status_type
   -------------------------------------------
   function bB_getModulStatus (node: node_type; slave_No: module_type) return status_type is
   begin
      return NO_ERROR;
   end;

   -------------------------------
   -- bB_terminate --
   --   The procedure deinitializes IOs, SPI, 		*
   --   emBRICK Bus.
   -------------------------------
   procedure bB_terminate is
   begin
      null;
   end;

   ---------------------------------------------
   -- bB_getWord -------------------------------
   --   The function reads the data(16-bits)
   --   from slave on node
   --
   --   Parameter:
   --     node: node number
   --     slave_No: slave number
   --     byte_pos: Position of MSB in bB message
   --       of this slave
   --
   --    returns bB_word_type (16 bit)
    ---------------------------------------------
   function bB_getWord (node: node_type; slave_No: module_type; byte_pos: byte_pos_type) return bB_word_type is
   begin
      return 1;
   end;

   ----------------------------------------------
   -- bB_getByte --
   --   The function reads the data(8-bits)
   --   from slave on node
   --
   --   Parameter:
   --     node: node number
   --     slave_No: slave number
   --     byte_pos: Position of byte in bB message
   --       of this slave
   --
   --   returns bB_byte_type (8 bit)
   ----------------------------------------------
   function bB_getByte (node: node_type; slave_No: module_type; byte_pos: byte_pos_type) return bB_byte_type is
   begin
      return 1;
   end;

   -------------------------------
   -- bB_getBit --
   --   The function reads the bit state
   --   in byte from slave on node
   --
   --   Parameter:
   --     node: node number
   --     slave_No: slave number
   --     byte_pos: Position of byte in bB message
   --       of this slave
   --     bit_pos: Position of bit in byte
   --
   --  returns bit state
   ----------------------------------------------
   function bB_getBit (node: node_type; slave_No: module_type;
                       byte_pos: byte_pos_type; bit_pos: bit_pos_type) return bB_bit_type is
   begin
      return 1;
   end;

   ----------------------------------------------
   -- bB_putWord --
   --   The procedure writes the data(16-bits)
   --   into slave on node
   --
   --   Parameter:
   --     node: node number
   --     slave_No: slave number
   --     byte_pos: Position of MSB in bB message
   --       of this slave
   --     bB_word: word to be written
   ----------------------------------------------
   procedure bB_putWord (node: node_type; slave_No: module_type;
                         byte_pos: byte_pos_type; bB_word: bB_word_type) is
   begin
      null;
   end;

   ----------------------------------------------
   -- bB_putByte --
   --   The procedure writes the data(8-bits)
   --   into slave on node
   --
   --   Parameter:
   --     node: node number
   --     slave_No: slave number
   --     byte_pos: Position of MSB in bB message
   --       of this slave
   --     bB_byte: byte to be written
   ----------------------------------------------
   procedure bB_putByte (node: node_type; slave_No: module_type;
                         byte_pos: byte_pos_type; bB_byte: bB_byte_type) is
   begin
      null;
   end;

   ----------------------------------------------
   -- bB_putBit --
   --   The procedure write the bit
   --   in byte into slave on node
   --
   --   Parameter:
   --     node: node number
   --     slave_No: slave number
   --     byte_pos: Position of MSB in bB message
   --       of this slave
   --     bit_pos: Position of bit in byte(0...7)
   --     bB_bit: bit to be written *0,1)
   ----------------------------------------------
   procedure bB_putBit (node: node_type; slave_No: module_type;
                        byte_pos: byte_pos_type; bit_pos: bit_pos_type; bB_bit: bB_bit_type) is
   begin
      null;
   end;











end embrick_api;
