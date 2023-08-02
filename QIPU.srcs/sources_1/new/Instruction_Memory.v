`timescale 1ns / 1ps

module Instruction_Memory(
        input [31:0] address_in,
        output [31:0] instruction_out,
        input writeEnable_in,
        input [4:0] addrToWrite_in,
        input [31:0] instrToWrite_in
    );
    
    reg [31:0] memory[31:0];
    initial begin
        memory[0] = 32'h0;
        memory[1] = 32'h0;
        memory[2] = 32'h0;
        memory[3] = 32'h0;
        memory[4] = 32'h0;
        memory[5] = 32'h0;
        memory[6] = 32'h0;
        memory[7] = 32'h0;
        memory[8] = 32'h0;
        memory[9] = 32'h0;
        memory[10] = 32'h0;
        memory[11] = 32'h0;
        memory[12] = 32'h0;
        memory[13] = 32'h0;
        memory[14] = 32'h0;
        memory[15] = 32'h0;
        memory[16] = 32'h0;
        memory[17] = 32'h0;
        memory[18] = 32'h0;
        memory[19] = 32'h0;
        memory[20] = 32'h0;
        memory[20] = 32'h0;
        memory[21] = 32'h0;
        memory[22] = 32'h0;
        memory[23] = 32'h0;
        memory[24] = 32'h0;
        memory[25] = 32'h0;
        memory[26] = 32'h0;
        memory[27] = 32'h0;
        memory[28] = 32'h0;
        memory[29] = 32'h0;
        memory[30] = 32'h0;
        memory[31] = 32'h0;
    end
    
    assign instruction_out = memory[address_in / 4];
    
    always @ (posedge writeEnable_in) begin
        memory[addrToWrite_in] <= instrToWrite_in;
    end
    
endmodule
