`timescale 1ns / 1ps

module ALU(
        input      [ 3:0] alu_ctrl_i,
        input             src1_sel_i,
        input      [31:0] src1_i,
        input      [31:0] src2_i,
        
        output reg [31:0] res_o,
        output            is_zero_o,
        output            is_neg_o
    );
    
    localparam ALU_CTRL_ADD = 4'b0000;
    localparam ALU_CTRL_SUB = 4'b0001;
    localparam ALU_CTRL_AND = 4'b0010;
    localparam ALU_CTRL_OR  = 4'b0011;
    localparam ALU_CTRL_XOR = 4'b0100;
    localparam ALU_CTRL_SHL = 4'b0101;
    localparam ALU_CTRL_SHR = 4'b0110;
    
    wire [31:0] src1;
    
    assign is_zero_o = res_o == 0;
    assign is_neg_o  = res_o[31];
    assign src1      = src1_sel_i == 0 ? 32'b0 : src1_i;
    
    always @ (*) begin
        case (alu_ctrl_i)
        ALU_CTRL_ADD: res_o <= src1 +  src2_i;
        ALU_CTRL_SUB: res_o <= src1 -  src2_i;
        ALU_CTRL_AND: res_o <= src1 &  src2_i;
        ALU_CTRL_OR:  res_o <= src1 |  src2_i;
        ALU_CTRL_XOR: res_o <= src1 ^  src2_i;
        ALU_CTRL_SHL: res_o <= src1 << src2_i;
        ALU_CTRL_SHR: res_o <= src1 >> src2_i;
        default:      res_o <= 'bz;
        endcase
    end

endmodule
