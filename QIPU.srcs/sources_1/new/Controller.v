`timescale 1ns / 1ps

module Controller(
        input [4:0] opcode_in,
        input [3:0] jmpCond_in,
        input offsetSelect_in,
        input isZero_in,
        input isNeg_in,
        output reg [2:0] aluControl_out,
        output reg doJump_out,
        output reg regWriteEnable_out,
        output reg memWriteEnable_out,
        output reg offsetEnableA_out,
        output reg offsetEnableB_out,
        output reg aluSrcASelect_out,
        output reg [1:0] offsetLayout_out,
        output reg [1:0] resultSelect_out,
        output reg [1:0] immExtendMode_out
    );
    
    localparam opcode_add = 5'b00000;
    localparam opcode_sub = 5'b00001;
    localparam opcode_and = 5'b00010;
    localparam opcode_or  = 5'b00011;
    localparam opcode_xor = 5'b00100;
    localparam opcode_jxx = 5'b00101;
    localparam opcode_st  = 5'b00110;
    localparam opcode_ld  = 5'b00111;
    localparam opcode_lui = 5'b01000;
    localparam opcode_lli = 5'b01001;
    localparam opcode_li  = 5'b01010;
    localparam opcode_int = 5'b01011;
    
    localparam aluControl_unused = 3'bzzz;
    localparam aluControl_add = 3'b000;
    localparam aluControl_sub = 3'b001;
    localparam aluControl_and = 3'b010;
    localparam aluControl_or  = 3'b011;
    localparam aluControl_xor = 3'b100;
    
    localparam offsetLayout_unused = 2'bzz;
    localparam offsetLayout_normal = 2'b00;
    localparam offsetLayout_short = 2'b01;
    localparam offsetLayout_longContinuous = 2'b10;
    localparam offsetLayout_longSplit = 2'b11;
    
    localparam immExtendMode_unused = 2'b00;
    localparam immExtendMode_upper = 2'b01;
    localparam immExtendMode_lower = 2'b10;
    localparam immExtendMode_full = 2'b11;
    
    localparam resultSelect_unused = 2'bzz;
    localparam resultSelect_alu = 2'b00;
    localparam resultSelect_mem = 2'b01;
    localparam resultSelect_imm = 2'b10;
    
    localparam aluSrcASelect_unused = 1'bz;
    localparam aluSrcASelect_reg = 1'b0;
    localparam aluSrcASelect_zero = 1'b1;
    
    always @ (*) begin
        case (opcode_in)
            opcode_add: begin // add
                aluControl_out <= aluControl_add;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                end
            opcode_sub: begin // sub
                aluControl_out <= aluControl_sub;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                end
            opcode_and: begin // and
                aluControl_out <= aluControl_and;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                end
            opcode_or: begin // or
                aluControl_out <= aluControl_or;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                end
            opcode_xor: begin // xor
                aluControl_out <= aluControl_xor;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_reg;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                end
            opcode_jxx: begin // jxx
                aluControl_out <= aluControl_add;
                case (jmpCond_in)
                    4'b0000: doJump_out <= isZero_in; // zero
                    4'b0001: doJump_out <= ~isZero_in; // not zero
                    4'b0010: doJump_out <= ~isNeg_in & ~isZero_in; // greater than zero
                    4'b0011: doJump_out <= isNeg_in; // less than zero
                    4'b0100: doJump_out <= ~isNeg_in; // greater than or equal to zero
                    4'b0101: doJump_out <= isNeg_in | isZero_in; // less than or equal to zero
                    default: doJump_out <= 0;
                endcase
                regWriteEnable_out <= 0;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_zero;
                offsetLayout_out <= offsetLayout_short;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                end
            opcode_st: begin // st
                aluControl_out <= aluControl_unused;
                doJump_out <= 0;
                regWriteEnable_out <= 0;
                memWriteEnable_out <= 1;
                aluSrcASelect_out <= aluSrcASelect_unused;
                offsetLayout_out <= offsetLayout_longSplit;
                resultSelect_out <= resultSelect_alu;
                immExtendMode_out <= immExtendMode_unused;
                end
            opcode_ld: begin // ld
                aluControl_out <= aluControl_unused;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_unused;
                offsetLayout_out <= offsetLayout_longContinuous;
                resultSelect_out <= resultSelect_mem;
                immExtendMode_out <= immExtendMode_unused;
                end
            opcode_lui: begin // lui
                aluControl_out <= aluControl_unused;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_unused;
                offsetLayout_out <= offsetLayout_unused;
                resultSelect_out <= resultSelect_imm;
                immExtendMode_out <= immExtendMode_upper;
                end
            opcode_lli: begin // lli
                aluControl_out <= aluControl_unused;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_unused;
                offsetLayout_out <= offsetLayout_unused;
                resultSelect_out <= resultSelect_imm;
                immExtendMode_out <= immExtendMode_lower;
                end
            opcode_li: begin // li
                aluControl_out <= aluControl_unused;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= aluSrcASelect_unused;
                offsetLayout_out <= offsetLayout_unused;
                resultSelect_out <= resultSelect_imm;
                immExtendMode_out <= immExtendMode_full;
                end
            opcode_int: begin // int
                aluControl_out <= aluControl_unused;
                doJump_out <= 0;
                regWriteEnable_out <= 1'bz;
                memWriteEnable_out <= 1'bz;
                aluSrcASelect_out <= aluSrcASelect_unused;
                offsetLayout_out <= offsetLayout_unused;
                resultSelect_out <= resultSelect_unused;
                immExtendMode_out <= immExtendMode_unused;
                end
            default: begin
                aluControl_out <= aluControl_unused;
                doJump_out <= 1'bz;
                regWriteEnable_out <= 1'bz;
                memWriteEnable_out <= 1'bz;
                aluSrcASelect_out <= aluSrcASelect_unused;
                offsetLayout_out <= offsetLayout_unused;
                resultSelect_out <= resultSelect_unused;
                immExtendMode_out <= immExtendMode_unused;
                end
        endcase
        
       offsetEnableA_out <= offsetSelect_in == 0;
       offsetEnableB_out <= offsetSelect_in == 1;
    end
    
endmodule
