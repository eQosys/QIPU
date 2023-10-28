`timescale 1ns / 1ps

module Easy_IO(
        input             clk_i,
        input             rst_i,
        //input      [31:0] addr_i,
        input      [31:0] write_data_i,
        input             read_enable_i,
        input             write_enable_i,

        output reg [31:0] read_data_o,
        output            busy_o,

        input      [ 4:0] hw_dpad_btns_i,
        input      [15:0] hw_slide_switches_i,
        output reg [15:0] hw_slide_leds_o
    );

    assign busy_o = read_enable_i | write_enable_i;

    always @ (posedge clk_i) begin
        if (rst_i)
            hw_slide_leds_o <= 16'b0;
        else if (read_enable_i)
            read_data_o     <= { 11'b0, hw_dpad_btns_i, hw_slide_switches_i };
        else if (write_enable_i)
            hw_slide_leds_o <= { 16'b0, write_data_i[15:0] };
    end

endmodule
