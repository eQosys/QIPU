`timescale 1ns / 1ps

module Instruction_Memory(
        input [31:0] address_in,
        output [31:0] instruction_out
    );
    
    reg [31:0] memory[0:255];
    initial begin
        $readmemb("./bootloader.qsm.bin", memory);
    end
    
    assign instruction_out = memory[address_in / 4];
    
endmodule
