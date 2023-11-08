// CLOCK FREQUENCIES
`define CLK_100_FREQ        100000000
`define CLK_CPU_FREQ         50000000
`define CLK_VGA_FREQ        107692310

// CONTROL UNIT STATES
`define CU_STATE_UNUSED             3'bzzz
`define CU_STATE_FETCH              3'b000
`define CU_STATE_DECODE             3'b001
`define CU_STATE_EXECUTE            3'b010
`define CU_STATE_MEM_READ_WAIT      3'b011
`define CU_STATE_MEM_WRITE_WAIT     3'b100

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
`define OPCODE_MUL              5'b00010
`define OPCODE_DIV              5'b00011
`define OPCODE_IMUL             5'b00100
`define OPCODE_IDIV             5'b00101
`define OPCODE_AND              5'b00110
`define OPCODE_OR               5'b00111
`define OPCODE_XOR              5'b01000
`define OPCODE_SHL              5'b01001
`define OPCODE_SHR              5'b01010
`define OPCODE_SAL              5'b01011
`define OPCODE_SAR              5'b01100
`define OPCODE_ROL              5'b01101
`define OPCODE_ROR              5'b01110
`define OPCODE_JXX              5'b01111
`define OPCODE_JRX              5'b10000
`define OPCODE_ST               5'b10001
`define OPCODE_LD               5'b10010
`define OPCODE_LUI              5'b10011
`define OPCODE_LLI              5'b10100
`define OPCODE_LI               5'b10101
`define OPCODE_INT              5'b10110

// OPERATOR SIZES
`define OPSIZE_UNUSED          2'bzz
`define OPSIZE_BYTE            2'b00
`define OPSIZE_HALF            2'b01
`define OPSIZE_WORD            2'b10
`define OPSIZE_DWORD           2'b11

// OFFSET LAYOUTS
`define OFF_LAYOUT_UNUSED       2'bzz
`define OFF_LAYOUT_SHORT        2'b00
`define OFF_LAYOUT_LONG_CONT    2'b01
`define OFF_LAYOUT_LONG_SPLIT   2'b10

// ALU CONTROL
`define ALU_CTRL_UNUSED         4'bzzzz
`define ALU_CTRL_ADD            4'b0000
`define ALU_CTRL_SUB            4'b0001
`define ALU_CTRL_MUL            4'b0010
`define ALU_CTRL_DIV            4'b0011
`define ALU_CTRL_IMUL           4'b0100
`define ALU_CTRL_IDIV           4'b0101
`define ALU_CTRL_AND            4'b0110
`define ALU_CTRL_OR             4'b0111
`define ALU_CTRL_XOR            4'b1000
`define ALU_CTRL_SHL            4'b1001
`define ALU_CTRL_SHR            4'b1010
`define ALU_CTRL_SAL            4'b1011
`define ALU_CTRL_SAR            4'b1100
`define ALU_CTRL_ROL            4'b1101
`define ALU_CTRL_ROR            4'b1110

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

// UART
`define UART_BAUD_RATE          9600
`define UART_CLOCK_MAX          `CLK_CPU_FREQ / `UART_BAUD_RATE

// VGA OUTPUT MODES
`define VGA_OUTPUT_MODE_TEXT        2'b00
`define VGA_OUTPUT_MODE_LOW_RES     2'b01
`define VGA_OUTPUT_MODE_MID_RES     2'b10
`define VGA_OUTPUT_MODE_HIGH_RES    2'b11