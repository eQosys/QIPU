`timescale 1ns / 1ps

module Memory_Controller(
        input clk_in,
        input [31:0] addr_in,
        
        output reg ramSelect_out,
        output reg sdSelect_out,
        output reg videoSelect_out
    );
    
    localparam [31:0]
        MASK_RAM =   32'b00000000zzzzzzzzzzzzzzzzzzzzzzzz,
        MASK_SD =    32'b1zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz,
        MASK_VIDEO = 32'b01zzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
    
    initial ramSelect_out = 0;
    initial sdSelect_out = 0;
    initial videoSelect_out = 0;
    
    always @ (clk_in) begin
        case (addr_in)
            MASK_RAM: begin
                ramSelect_out <= 1;
                sdSelect_out <= 0;
                videoSelect_out <= 0;
            end
            MASK_SD: begin
                ramSelect_out <= 0;
                sdSelect_out <= 1;
                videoSelect_out <= 0;
            end
            MASK_VIDEO: begin
                ramSelect_out <= 0;
                sdSelect_out <= 0;
                videoSelect_out <= 1;
            end
        endcase
    end
    
endmodule
