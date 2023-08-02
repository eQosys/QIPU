`timescale 1ns / 1ps

module Multiplexer(
        input [1:0] select_in,
        input [31:0] a_in,
        input [31:0] b_in,
        input [31:0] c_in,
        input [31:0] d_in,
        output reg [31:0] res_out
    );
    
    always @ (*) begin
        case (select_in)
            2'b00: res_out <= a_in;
            2'b01: res_out <= b_in;
            2'b10: res_out <= c_in;
            2'b11: res_out <= d_in;
        endcase
    end
    
endmodule
