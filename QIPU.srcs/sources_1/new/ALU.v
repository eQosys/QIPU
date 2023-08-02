`timescale 1ns / 1ps

module ALU(
    input [31:0] a_in,
    input [31:0] b_in,
    input [2:0] alu_control_in,
    output reg [31:0] res_out,
    output is_zero_out,
    output is_neg_out
    );
    
    reg is_sub;
    
    wire [31:0] res_adder;
    
    always @ (*) begin
        case (alu_control_in)
            // ADDITION
            3'b000: begin
                res_out <= res_adder;
                is_sub <= 0;
            end
            // SUBTRACTION
            3'b001: begin
                res_out <= res_adder;
                is_sub <= 1;
            end
            // BITWISE AND
            3'b010: begin
                res_out <= a_in & b_in;
                is_sub <= 0;
            end
            // BITWISE OR
            3'b011: begin
                res_out <= a_in | b_in;
                is_sub <= 0;
            end
            // BITWISE XOR
            3'b100: begin
                res_out <= a_in ^ b_in;
                is_sub <= 0;
            end
            // BITWISE NOT
            // LOGICAL AND
            // LOGICAL OR
            // LOGICAL NOT
            default: begin
                res_out <= {32{1'bz}};
                is_sub <= 0;
            end
        endcase
    end
    
    Thirtytwo_Bit_Adder adder(
        .a_in (a_in),
        .b_in (is_sub ? ~b_in : b_in),
        .carry_in (is_sub),
        .carry_out (),
        .sum_out (res_adder)
    );
    
    assign is_zero_out = res_out == 0;
    assign is_neg_out = res_out[31];
    
endmodule
