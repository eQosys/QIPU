`timescale 1ns / 1ps

module Offset_Layout_Selector (
        input [1:0] offsetLayout_in,
        input [13:0] offsetNormal_in,
        input [12:0] offsetShort_in,
        input [17:0] offsetLongContinuous_in,
        input [13:0] offsetLongSplitUpper_in,
        input [3:0] offsetLongSplitLower_in,
        output reg [31:0] offset_out
    );
    
    always @ (*) begin
        case (offsetLayout_in)
            2'b00: offset_out <= {{18{offsetNormal_in[13]}}, offsetNormal_in};
            2'b01: offset_out <= {{19{offsetShort_in[12]}}, offsetShort_in};
            2'b10: offset_out <= {{14{offsetLongContinuous_in[17]}}, offsetLongContinuous_in};
            2'b11: offset_out <= {{14{offsetLongSplitUpper_in[13]}}, offsetLongSplitUpper_in, offsetLongSplitLower_in};
            default: offset_out <= 32'bz;
        endcase
    end
    
endmodule
