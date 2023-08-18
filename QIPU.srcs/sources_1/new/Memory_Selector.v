`timescale 1ns / 1ps

module Memory_Selector(
        input clk_in,
        input switchToRAM_in,
        input [31:0] dataBROM_in,
        input [31:0] instrBROM_in,
        input [31:0] dataRAM_in,
        input [31:0] instrRAM_in,
        output [31:0] data_out,
        output [31:0] instruction_out
    );
    
    reg memSelect;
    initial memSelect = 0;
    
    always @ (posedge clk_in) begin
        if (switchToRAM_in)
            memSelect = 1;
    end
    
    assign data_out = memSelect ? dataRAM_in : dataBROM_in;
    assign instruction_out = memSelect ? instrRAM_in : instrBROM_in;

endmodule