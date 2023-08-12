`timescale 1ns / 1ps

module Program_Incrementer(
        input [31:0] pc_in,
        output [31:0] pc_out
    );
    
    Thirtytwo_Bit_Adder adder (
        .a_in (pc_in),
        .b_in (32'b100),
        .carry_in (0),
        .carry_out (),
        .sum_out (pc_out)
    );

endmodule
