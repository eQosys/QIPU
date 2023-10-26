// CONTROL UNIT STATES
`define CU_STATE_UNUSED             2'bzz
`define CU_STATE_FETCH              2'b00
`define CU_STATE_EXECUTE            2'b01
`define CU_STATE_MEM_READ_WAIT      2'b10
`define CU_STATE_MEM_WRITE_WAIT     2'b11

// CONTROL UNIT WAIT FOR
`define CU_EXE_TYPE_REGISTER    2'b00
`define CU_EXE_TYPE_MEM_READ    2'b01
`define CU_EXE_TYPE_MEM_WRITE   2'b10

// MEM ADDRESS SELECT
`define MEM_ADDR_SEL_UNUSED     1'bz
`define MEM_ADDR_SEL_INSTR      1'b0
`define MEM_ADDR_SEL_DATA       1'b1

// OPCODES
`define OPCODE_UNUSED           5'bzzzzz
`define OPCODE_ADD              5'b00000
`define OPCODE_SUB              5'b00001
`define OPCODE_AND              5'b00010
`define OPCODE_OR               5'b00011
`define OPCODE_XOR              5'b00100
`define OPCODE_SHL              5'b00101
`define OPCODE_SHR              5'b00110
`define OPCODE_JXX              5'b00111
`define OPCODE_ST               5'b01000
`define OPCODE_LD               5'b01001
`define OPCODE_LUI              5'b01010
`define OPCODE_LLI              5'b01011
`define OPCODE_LI               5'b01100

// OFFSET LAYOUTS
`define OFF_LAYOUT_UNUSED       2'bzz
`define OFF_LAYOUT_NORMAL       2'b00
`define OFF_LAYOUT_SHORT        2'b01
`define OFF_LAYOUT_LONG_CONT    2'b10
`define OFF_LAYOUT_LONG_SPLIT   2'b11

// ALU CONTROL
`define ALU_CTRL_UNUSED         4'bzzzz
`define ALU_CTRL_ADD            4'b0000
`define ALU_CTRL_SUB            4'b0001
`define ALU_CTRL_AND            4'b0010
`define ALU_CTRL_OR             4'b0011
`define ALU_CTRL_XOR            4'b0100
`define ALU_CTRL_SHL            4'b0101
`define ALU_CTRL_SHR            4'b0110

// ALU SOURCE 1 SELECT
`define ALU_SRC1_SEL_UNUSED     1'bz
`define ALU_SRC1_SEL_ZERO       1'b0
`define ALU_SRC1_SEL_REG        1'b1

// RESULT SELECT
`define RES_SEL_UNUSED          2'bzz
`define RES_SEL_ALU             2'b00
`define RES_SEL_MEM             2'b01
`define RES_SEL_IMM             2'b10
`define RES_SEL_PC_NEXT         2'b11

// IMMEDIATE EXTEND MODE
`define IMM_EX_MODE_UNUSED      2'bzz
`define IMM_EX_MODE_UPPER       2'b00
`define IMM_EX_MODE_LOWER       2'b01
`define IMM_EX_MODE_FULL        2'b10