`timescale 1ns / 1ps

module Half_Adder(
    input a_in,
    input b_in,
    output high_out,
    output low_out
    );
    
    assign high_out = a_in & b_in;
    assign low_out = a_in ^ b_in;

endmodule

module Full_Adder(
    input a_in,
    input b_in,
    input carry_in,
    output high_out,
    output low_out
    );
    
    wire low_to_or;
    wire high_to_or;
    wire low_to_high;
    
    Half_Adder low_adder(
        .a_in (a_in),
        .b_in (b_in),
        .high_out (low_to_or),
        .low_out (low_to_high)
    );
    
    Half_Adder high_adder(
        .a_in (low_to_high),
        .b_in (carry_in),
        .high_out (high_to_or),
        .low_out (low_out)
    );
    
    assign high_out = low_to_or | high_to_or;
    
endmodule

module Two_Bit_Adder(
    input [1:0] a_in,
    input [1:0] b_in,
    input carry_in,
    output carry_out,
    output [1:0] sum_out
    );
    
    wire high_to_carry;
    
    Full_Adder low_adder(
        .a_in (a_in[0]),
        .b_in (b_in[0]),
        .carry_in (carry_in),
        .high_out (high_to_carry),
        .low_out (sum_out[0])
    );
    
    Full_Adder high_adder(
        .a_in (a_in[1]),
        .b_in (b_in[1]),
        .carry_in (high_to_carry),
        .high_out (carry_out),
        .low_out (sum_out[1])
    );
    
endmodule

module Four_Bit_Adder(
    input [3:0] a_in,
    input [3:0] b_in,
    input carry_in,
    output carry_out,
    output [3:0] sum_out
    );
    
    wire carry_to_carry;
    
    Two_Bit_Adder low_adder(
        .a_in (a_in[1:0]),
        .b_in (b_in[1:0]),
        .carry_in (carry_in),
        .carry_out (carry_to_carry),
        .sum_out (sum_out[1:0])
    );
    
    Two_Bit_Adder high_adder(
        .a_in (a_in[3:2]),
        .b_in (b_in[3:2]),
        .carry_in (carry_to_carry),
        .carry_out (carry_out),
        .sum_out (sum_out[3:2])
    );
    
endmodule

module Eight_Bit_Adder(
    input [7:0] a_in,
    input [7:0] b_in,
    input carry_in,
    output carry_out,
    output [7:0] sum_out
    );
    
    wire carry_to_carry;
    
    Four_Bit_Adder low_adder(
        .a_in (a_in[3:0]),
        .b_in (b_in[3:0]),
        .carry_in (carry_in),
        .carry_out (carry_to_carry),
        .sum_out (sum_out[3:0])
    );
    
    Four_Bit_Adder high_adder(
        .a_in (a_in[7:4]),
        .b_in (b_in[7:4]),
        .carry_in (carry_to_carry),
        .carry_out (carry_out),
        .sum_out (sum_out[7:4])
    );
    
endmodule

module Sixteen_Bit_Adder(
    input [15:0] a_in,
    input [15:0] b_in,
    input carry_in,
    output carry_out,
    output [15:0] sum_out
    );
    
    wire carry_to_carry;
    
    Eight_Bit_Adder low_adder(
        .a_in (a_in[7:0]),
        .b_in (b_in[7:0]),
        .carry_in (carry_in),
        .carry_out (carry_to_carry),
        .sum_out (sum_out[7:0])
    );
    
    Eight_Bit_Adder high_adder(
        .a_in (a_in[15:8]),
        .b_in (b_in[15:8]),
        .carry_in (carry_to_carry),
        .carry_out (carry_out),
        .sum_out (sum_out[15:8])
    );
    
endmodule

module Thirtytwo_Bit_Adder(
    input [31:0] a_in,
    input [31:0] b_in,
    input carry_in,
    output carry_out,
    output [31:0] sum_out
    );
    
    wire carry_to_carry;
    
    Sixteen_Bit_Adder low_adder(
        .a_in (a_in[15:0]),
        .b_in (b_in[15:0]),
        .carry_in (carry_in),
        .carry_out (carry_to_carry),
        .sum_out (sum_out[15:0])
    );
    
    Sixteen_Bit_Adder high_adder(
        .a_in (a_in[31:16]),
        .b_in (b_in[31:16]),
        .carry_in (carry_to_carry),
        .carry_out (carry_out),
        .sum_out (sum_out[31:16])
    );
    
endmodule

module Adder(
    input [31:0] a_in,
    input [31:0] b_in,
    output carry_out,
    output [31:0] sum_out
    );
    
    Thirtytwo_Bit_Adder adder(
        .a_in (a_in),
        .b_in (b_in),
        .carry_in (1'b0),
        .carry_out (carry_out),
        .sum_out (sum_out)
    );
    
endmodule