`timescale 1ns / 1ps

module Initial_Reset(
        input      clk_i,
        
        output reg rst_o
    );

    initial rst_o = 1;
    always @ (posedge clk_i) begin
        rst_o <= 0;
    end
    
endmodule
