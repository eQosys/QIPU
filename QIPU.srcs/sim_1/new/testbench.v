`timescale 1ns / 1ps

module testbench;

    reg         hw_clk;
    wire [15:0] slide_leds;
    
    initial begin
        hw_clk = 1'b0;
        forever hw_clk = #2 ~hw_clk;
    end

    QIPU_Processor qipu (
        .hw_clk_i              (hw_clk),
        .hw_dpad_btns_i        (),
        .hw_slide_switches_i   (),
        .hw_slide_leds_o       (slide_leds),
        .hw_svn_seg_anodes_o   (),
        .hw_svn_seg_cathodes_o (),
        .hw_vga_red_o          (),
        .hw_vga_green_o        (),
        .hw_vga_blue_o         (),
        .hw_vga_hsync_o        (),
        .hw_vga_vsync_o        ()
    );

endmodule
