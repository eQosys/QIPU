`timescale 1ns / 1ps

module Data_Memory(
        input clk_in,
        input [31:0] address_in,
        input writeEnable_in,
        input [31:0] writeData_in,
        output [31:0] data_out
    );
    
    reg [31:0] memory[127:0];
    
    always @ (posedge clk_in) begin
        if (writeEnable_in) begin
            memory[address_in] <= writeData_in;
        end
    end
    
    assign data_out = memory[address_in];
    
endmodule
