`timescale 1ns / 1ps

module Multiplexer_x4(
        input      [1:0] sel_i,
        input      [31:0] data_00_i,
        input      [31:0] data_01_i,
        input      [31:0] data_10_i,
        input      [31:0] data_11_i,
        
        output reg [31:0] data_o
    );
    
    always @ (*) begin
        case (sel_i)
            2'b00: data_o <= data_00_i;
            2'b01: data_o <= data_01_i;
            2'b10: data_o <= data_10_i;
            2'b11: data_o <= data_11_i;
        endcase
    end
    
endmodule
