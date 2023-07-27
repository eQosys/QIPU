`timescale 1ns / 1ps

module Subtractor(
    input [31:0] a_in,
    input [31:0] b_in,
    output carry_out,
    output [31:0] diff_out
    );
    
    Thirtytwo_Bit_Adder adder(
        .a_in (a_in),
        .b_in (~b_in),
        .carry_in (1'b1),
        .sum_out (diff_out)
    );

endmodule
