`timescale 1ns / 1ps

module Initial_Reset(
        input clk_i,
        
        output rst_o
    );
    
    reg [3:0] counter;
    initial counter = 4'b1111;
    
    assign rst_o = counter != 0;
    
    always @ (posedge clk_i) begin
        if (counter != 0)
            counter <= counter - 1;
    end
    
endmodule
