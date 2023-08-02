`timescale 1ns / 1ps

module Offset_Extender(
        input is_short_in,
        input [13:0] offset_in,
        output [31:0] offset_out
    );
    
    wire [13:0] offset_wire;
    assign offset_wire = is_short_in ? {offset_in[12], offset_in[12:0]} : offset_in;
    
    assign offset_out = {{19{1'b0}}, offset_wire};
endmodule
