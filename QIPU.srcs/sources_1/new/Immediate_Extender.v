`timescale 1ns / 1ps

module Immediate_Extender(
        input      [ 1:0] ex_mode_i,
        input      [31:0] data_i,
        input      [22:0] imm_i,
        
        output reg [31:0] data_o
    );
    
    localparam EX_MODE_UPPER  = 2'b00;
    localparam EX_MODE_LOWER  = 2'b01;
    localparam EX_MODE_FULL   = 2'b10;
    
    always @ (*) begin
        case (ex_mode_i)
            EX_MODE_UPPER: data_o <= { imm_i[22:7],    data_i[15:0] };
            EX_MODE_LOWER: data_o <= { data_i[31:16],  imm_i[22:7]  };
            EX_MODE_FULL:  data_o <= { {9{imm_i[22]}}, imm_i        };
            default:       data_o <= 32'bz;
        endcase
    end
    
endmodule
