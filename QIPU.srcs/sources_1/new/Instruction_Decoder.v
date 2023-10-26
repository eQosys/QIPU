`timescale 1ns / 1ps

module Instruction_Decoder(
        input         clk_i,
        input         rst_i,
        input         enable_i,
        input  [31:0] instr_i,
        
        output [ 4:0] opcode_o,
        output [ 3:0] reg_dest_o,
        output [ 3:0] jmp_cond_o,
        output        off_sel_o,
        output [ 3:0] reg_src1_o,
        output [ 3:0] reg_src2_o,
        output [22:0] imm_o,
        output [13:0] off_normal_o,
        output [12:0] off_short_o,
        output [17:0] off_long_cont_o,
        output [17:0] off_long_split_o,
        output        rel_jmp_o
    );
    
    reg  [31:0] instr;
    wire [31:0] temp_instr = enable_i ? instr_i : instr;
    
    assign opcode_o         = temp_instr[ 4: 0];
    assign reg_dest_o       = temp_instr[ 8: 5];
    assign jmp_cond_o       = temp_instr[ 8: 5];
    assign off_sel_o        = temp_instr[    9];
    assign reg_src1_o       = temp_instr[13:10];
    assign reg_src2_o       = temp_instr[17:14];
    assign imm_o            = temp_instr[31: 9];
    assign off_normal_o     = temp_instr[31:18];
    assign off_short_o      = temp_instr[30:18];
    assign off_long_cont_o  = temp_instr[31:14];
    assign off_long_split_o ={temp_instr[31:18], temp_instr[8:5] };
    assign rel_jmp_o        = temp_instr[   31];
    
    always @ (posedge clk_i) begin
        if (rst_i)
            instr <= 0;
        else if (enable_i)
            instr <= instr_i;
    end
    
endmodule
