`timescale 1ns / 1ps

module Program_Jump_Calculator(
        input relJmp_in,
        input [31:0] pc_in,
        input [31:0] jmpAddress_in,
        output [31:0] pc_out
    );
    
    Thirtytwo_Bit_Adder adder (
        .a_in (relJmp_in ? pc_in : 32'b0),
        .b_in (jmpAddress_in),
        .carry_in (0),
        .carry_out (),
        .sum_out (pc_out)
    );
    
endmodule
