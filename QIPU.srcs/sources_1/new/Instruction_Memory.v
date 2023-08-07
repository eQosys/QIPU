`timescale 1ns / 1ps

module Instruction_Memory(
        input [31:0] address_in,
        output [31:0] instruction_out,
        input writeEnable_in,
        input [4:0] addrToWrite_in,
        input [31:0] instrToWrite_in
    );
    
    reg [31:0] memory[0:255];
    initial begin
        $readmemb("./bootloader.qsm.bin", memory);
    end
    
    assign instruction_out = memory[address_in / 4];
    
    always @ (posedge writeEnable_in) begin
        memory[addrToWrite_in] <= instrToWrite_in;
    end
    
endmodule
