`timescale 1ns / 1ps

module Offset_Applicator(
        input  [ 1:0] layout_i,
        input  [13:0] off_normal_i,
        input  [12:0] off_short_i,
        input  [17:0] off_long_cont_i,
        input  [17:0] off_long_split_i,
        input         off_sel_i,
        input  [31:0] src1_i,
        input  [31:0] src2_i,
        
        output [31:0] src1_o,
        output [31:0] src2_o
    );
    
    localparam LAYOUT_NORMAL     = 2'b00;
    localparam LAYOUT_SHORT      = 2'b01;
    localparam LAYOUT_LONG_CONT  = 2'b10;
    localparam LAYOUT_LONG_SPLIT = 2'b11;
    
    reg [31:0] offset;
    
    assign src1_o = (off_sel_i) == 0 ? (src1_i + offset) : src1_i;
    assign src2_o = (off_sel_i) == 1 ? (src2_i + offset) : src2_i;
    
    always @ (*) begin
        case (layout_i)
            LAYOUT_NORMAL:     offset <= { {18{off_normal_i[13]}},     off_normal_i     };
            LAYOUT_SHORT:      offset <= { {19{off_short_i[12]}},      off_short_i      };
            LAYOUT_LONG_CONT:  offset <= { {14{off_long_cont_i[17]}},  off_long_cont_i  };
            LAYOUT_LONG_SPLIT: offset <= { {14{off_long_split_i[17]}}, off_long_split_i };
            default:           offset <= 32'bz;
        endcase
    end
endmodule
