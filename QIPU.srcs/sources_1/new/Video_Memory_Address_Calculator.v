`timescale 1ns / 1ps

module Video_Memory_Address_Calculator(
        input  [ 8:0] x_i,
        input  [ 8:0] y_i,

        output [17:0] addr_o
    );

    wire [17:0] x = { 9'b0, x_i };
    wire [17:0] y = { 9'b0, y_i };

    // 320x(240*2) -> 320x480
    assign addr_o = (y * 320) + x;

endmodule
