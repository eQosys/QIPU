`timescale 1ns / 1ps

module Program_Counter(
        input clk_in,
        input jmpEnable_in,
        input relJmp_in,
        input [31:0] pc_jmp_in,
        output reg [31:0] pc_out
    );
    
    initial pc_out = 0;
    
    wire [31:0] pc_result_wire;
    
    Thirtytwo_Bit_Adder adder (
        .a_in ({jmpEnable_in, relJmp_in} == 2'b10 ? 0 : pc_out),
        .b_in (jmpEnable_in ? pc_jmp_in : 32'b100),
        .carry_in (0),
        .carry_out (),
        .sum_out (pc_result_wire)
    );
    
    always @ (posedge clk_in) begin
        pc_out <= pc_result_wire;
    end

endmodule
