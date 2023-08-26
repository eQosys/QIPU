`timescale 1ns / 1ps

module Immediate_Extender(
        input [1:0] extendMode_in,
        input [31:0] regA_in,
        input [22:0] imm_in,
        output reg [31:0] imm_out
    );
    
    always @ (*) begin
        case (extendMode_in)
            2'b00: imm_out <= 32'bz; // immediate not used
            2'b01: imm_out <= {imm_in[22:7], regA_in[15:0]}; // lui
            2'b10: imm_out <= {regA_in[31:16], imm_in[22:7]}; // lli
            2'b11: imm_out <= {{9{imm_in[22]}}, imm_in}; // li
        endcase
    end
    
endmodule
