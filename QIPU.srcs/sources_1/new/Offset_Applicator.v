`timescale 1ns / 1ps

module Offset_Applicator(
        input offsetEnable_in,
        input [31:0] data_in,
        input [31:0] offset_in,
        output [31:0] result_out
    );
    
    wire [31:0] appliedData_wire;
    
    Thirtytwo_Bit_Adder (
        .a_in (data_in),
        .b_in (offset_in),
        .carry_in(0),
        .carry_out (),
        .sum_out (appliedData_wire)
    );
    
    assign result_out = offsetEnable_in ? appliedData_wire : data_in;
    
endmodule
