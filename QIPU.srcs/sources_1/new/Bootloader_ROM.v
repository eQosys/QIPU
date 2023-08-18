`timescale 1ns / 1ps

module Bootloader_ROM (
        input [31:0] dataAddress_in,
        input [31:0] instrAddress_in,
        output [31:0] data_out,
        output [31:0] instruction_out
    );
    
    reg [31:0] memory[0:255];
    initial begin
        $readmemb("./bootloader.qsm.bin", memory);
    end
    
    assign data_out = memory[dataAddress_in / 4];
    assign instruction_out = memory[instrAddress_in / 4];
endmodule
