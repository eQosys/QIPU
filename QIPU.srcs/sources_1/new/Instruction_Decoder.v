`timescale 1ns / 1ps


`define INS_OPCODE_OFFSET                 0
`define INS_OPCODE_WIDTH                  5

`define INS_REG_DEST_OFFSET               5
`define INS_REG_DEST_WIDTH                4

`define INS_JMP_COND_OFFSET               5
`define INS_JMP_COND_WIDTH                4

`define INS_OP_SIZE_OFFSET                9
`define INS_OP_SIZE_WIDTH                 2

`define INS_OFF_SEL_OFFSET               11
`define INS_OFF_SEL_WIDTH                 1

`define INS_REG_SRC1_OFFSET              12
`define INS_REG_SRC1_WIDTH                4

`define INS_REG_SRC2_OFFSET              16
`define INS_REG_SRC2_WIDTH                4

`define INS_IMM_LONG_OFFSET               9
`define INS_IMM_LONG_WIDTH               23

`define INS_IMM_SHORT_OFFSET             16
`define INS_IMM_SHORT_WIDTH              16

`define INS_IMM_SHORT_UNUSED_OFFSET       9
`define INS_IMM_SHORT_UNUSED_WIDTH        3

`define INS_OFF_SHORT_OFFSET             20
`define INS_OFF_SHORT_WIDTH              12

`define INS_OFF_LONG_CONT_OFFSET         16
`define INS_OFF_LONG_CONT_WIDTH          16

`define INS_OFF_LONG_SPLIT_LWR_OFFSET     5
`define INS_OFF_LONG_SPLIT_LWR_WIDTH      4

`define INS_OFF_LONG_SPLIT_UPR_OFFSET    20
`define INS_OFF_LONG_SPLIT_UPR_WIDTH     12

module Instruction_Decoder(
        input         clk_i,
        input         rst_i,
        input         enable_i,
        input  [31:0] instr_i,
        
        output [(INS_OPCODE_WIDTH        - 1) : 0] opcode_o,
        output [(INS_REG_DEST_WIDTH      - 1) : 0] reg_dest_o,
        output [(INS_JMP_COND_WIDTH      - 1) : 0] jmp_cond_o,
        output [(INS_OP_SIZE_WIDTH       - 1) : 0] op_size_o,
        output                                     off_sel_o,
        output [(INS_REG_SRC1_WIDTH      - 1) : 0] reg_src1_o,
        output [(INS_REG_SRC2_WIDTH      - 1) : 0] reg_src2_o,
        output [(INS_IMM_MAX_WIDTH       - 1) : 0] imm_o,
        output [(INS_OFF_SHORT_WIDTH     - 1) : 0] off_short_o,
        output [(INS_OFF_LONG_CONT_WIDTH - 1) : 0] off_long_cont_o,
        output [(INS_OFF_LONG_CONT_WIDTH - 1) : 0] off_long_split_o
    );
    
    reg  [31:0] instr;
    
    assign opcode_o         = instr[(INS_OPCODE_OFFSET             + INS_OPCODE_WIDTH             - 1) : INS_OPCODE_OFFSET            ];
    assign reg_dest_o       = instr[(INS_REG_DEST_OFFSET           + INS_REG_DEST_WIDTH           - 1) : INS_REG_DEST_OFFSET          ];
    assign jmp_cond_o       = instr[(INS_JMP_COND_OFFSET           + INS_JMP_COND_WIDTH           - 1) : INS_JMP_COND_OFFSET          ];
    assign off_sel_o        = instr[(INS_OFF_SEL_OFFSET            + INS_OFF_SEL_WIDTH            - 1) : INS_OFF_SEL_OFFSET           ];
    assign reg_src1_o       = instr[(INS_REG_SRC1_OFFSET           + INS_REG_SRC1_WIDTH           - 1) : INS_REG_SRC1_OFFSET          ];
    assign reg_src2_o       = instr[(INS_REG_SRC2_OFFSET           + INS_REG_SRC2_WIDTH           - 1) : INS_REG_SRC2_OFFSET          ];
    assign imm_o            = instr[(INS_IMM_LONG_OFFSET           + INS_IMM_LONG_WIDTH           - 1) : INS_IMM_LONG_OFFSET          ];
    assign off_short_o      = instr[(INS_OFF_SHORT_OFFSET          + INS_OFF_SHORT_WIDTH          - 1) : INS_OFF_SHORT_OFFSET         ];
    assign off_long_cont_o  = instr[(INS_OFF_LONG_CONT_OFFSET      + INS_OFF_LONG_CONT_WIDTH      - 1) : INS_OFF_LONG_CONT_OFFSET     ];
    assign off_long_split_o ={instr[(INS_OFF_LONG_SPLIT_UPR_OFFSET + INS_OFF_LONG_SPLIT_UPR_WIDTH - 1) : INS_OFF_LONG_SPLIT_UPR_OFFSET],
                              instr[(INS_OFF_LONG_SPLIT_LWR_OFFSET + INS_OFF_LONG_SPLIT_LWR_WIDTH - 1) : INS_OFF_LONG_SPLIT_LWR_OFFSET]};
    
    always @ (posedge clk_i) begin
        if (rst_i)
            instr <= 0;
        else if (enable_i)
            instr <= instr_i;
    end
    
endmodule
