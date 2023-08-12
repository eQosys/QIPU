`timescale 1ns / 1ps

module Program_Counter(
        input clk_in,
        input jmpEnable_in,
        input [31:0] pc_next_in,
        input [31:0] pc_jmp_in,
        output reg [31:0] pc_out
    );
    
    initial pc_out = 0;
    
    always @ (posedge clk_in) begin
        pc_out <= jmpEnable_in ? pc_jmp_in : pc_next_in;
    end

endmodule
