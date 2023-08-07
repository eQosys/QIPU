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
    
    localparam offsetLayout_normal = 2'b00;
    localparam offsetLayout_short = 2'b01;
    localparam offsetLayout_longContinuous = 2'b10;
    localparam offsetLayout_longSplit = 2'b11;
    
    always @ (*) begin
        case (opcode_in)
            5'b00000: begin // add
                aluControl_out <= 3'b000;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= 0;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= 0;
                immExtendMode_out <= 0;
                end
            5'b00001: begin // sub
                aluControl_out <= 3'b001;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= 0;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= 0;
                immExtendMode_out <= 0;
                end
            5'b00010: begin // and
                aluControl_out <= 3'b010;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= 0;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= 0;
                immExtendMode_out <= 0;
                end
            5'b00011: begin // or
                aluControl_out <= 3'b011;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= 0;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= 0;
                immExtendMode_out <= 0;
                end
            5'b00100: begin // xor
                aluControl_out <= 3'b100;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= 0;
                offsetLayout_out <= offsetLayout_normal;
                resultSelect_out <= 0;
                immExtendMode_out <= 0;
                end
            5'b00101: begin // jxx
                aluControl_out <= 3'b000;
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
                aluSrcASelect_out <= 1;
                offsetLayout_out <= offsetLayout_short;
                resultSelect_out <= 0;
                immExtendMode_out <= 0;
                end
            5'b00110: begin // st
                aluControl_out <= 3'bzzz;
                doJump_out <= 0;
                regWriteEnable_out <= 0;
                memWriteEnable_out <= 1;
                aluSrcASelect_out <= 1'bz;
                offsetLayout_out <= offsetLayout_longSplit;
                resultSelect_out <= 0;
                immExtendMode_out <= 0;
                end
            5'b00111: begin // ld
                aluControl_out <= 3'bzzz;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= 1'bz;
                offsetLayout_out <= offsetLayout_longContinuous;
                resultSelect_out <= 2'b01;
                immExtendMode_out <= 0;
                end
            5'b01000: begin // lui
                aluControl_out <= 3'bzzz;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= 1'bz;
                offsetLayout_out <= 2'bzz;
                resultSelect_out <= 2'b10;
                immExtendMode_out <= 2'b01;
                end
            5'b01001: begin // lli
                aluControl_out <= 3'bzzz;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= 1'bz;
                offsetLayout_out <= 2'bzz;
                resultSelect_out <= 2'b10;
                immExtendMode_out <= 2'b10;
                end
            5'b01010: begin // li
                aluControl_out <= 3'bzzz;
                doJump_out <= 0;
                regWriteEnable_out <= 1;
                memWriteEnable_out <= 0;
                aluSrcASelect_out <= 1'bz;
                offsetLayout_out <= 2'bzz;
                resultSelect_out <= 2'b10;
                immExtendMode_out <= 2'b11;
                end
            5'b01011: begin // int
                aluControl_out <= 3'bzzz;
                doJump_out <= 0;
                regWriteEnable_out <= 1'bz;
                memWriteEnable_out <= 1'bz;
                aluSrcASelect_out <= 1'bz;
                offsetLayout_out <= 2'bzz;
                resultSelect_out <= 1'bz;
                immExtendMode_out <= 2'bzz;
                end
            default: begin
                aluControl_out <= 3'bzzz;
                doJump_out <= 1'bz;
                regWriteEnable_out <= 1'bz;
                memWriteEnable_out <= 1'bz;
                aluSrcASelect_out <= 1'bz;
                offsetLayout_out <= 2'bzz;
                resultSelect_out <= 1'bz;
                immExtendMode_out <= 2'bzz;
                end
        endcase
        
       offsetEnableA_out <= offsetSelect_in == 0;
       offsetEnableB_out <= offsetSelect_in == 1;
    end
    
endmodule
