`timescale 1ns / 1ps

module Random_Access_Memory (
        input clk_in,
        input writeEnable_in,
        input [31:0] dataAddress_in,
        input [31:0] writeData_in,
        input [31:0] instrAddress_in,
        output [31:0] data_out,
        output [31:0] instruction_out
    );
    
    reg [31:0] memory[0:255];
    
    always @ (posedge clk_in) begin
        if (writeEnable_in) begin
            memory[dataAddress_in] <= writeData_in;
        end
    end
    
    assign data_out = memory[dataAddress_in / 4];
    assign instruction_out = memory[instrAddress_in / 4];
    
endmodule
