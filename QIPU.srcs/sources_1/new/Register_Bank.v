`timescale 1ns / 1ps

module Register_Bank(
        input clk_in,
        input [3:0] regA_in,
        input [3:0] regB_in,
        input [3:0] regW_in,
        input [31:0] writeData_in,
        input writeEnable_in,
        output [31:0] dataA_out,
        output [31:0] dataB_out,
        input debugRegSelect_in,
        input [3:0] debugReg_in,
        output [31:0] debugData_out
    );
    
    reg [31:0] bank[15:0];
    
    initial bank[0] = 0;

    assign dataA_out = bank[regA_in];
    assign dataB_out = bank[regB_in];
    
    always @ (posedge clk_in) begin
        if (writeEnable_in == 1 && regW_in != 0)
            bank[regW_in] <= writeData_in;
    end
    
    reg [3:0] selectedDebugReg;
    
    always @ (posedge debugRegSelect_in) begin
        selectedDebugReg <= debugReg_in;
    end
    
    assign debugData_out = bank[selectedDebugReg];
    
endmodule
