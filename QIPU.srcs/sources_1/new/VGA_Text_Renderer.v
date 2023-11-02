`timescale 1ns / 1ps

module VGA_Text_Renderer(
        input  [10:0] h_counter_i,
        input  [10:0] v_counter_i,

        output [11:0] color_o,

        output [ 8:0] vram_x_o,
        output [ 8:0] vram_y_o,
        input  [ 7:0] vram_data_i
    );

    reg [8:0] char_map[0:256*12-1];

    initial begin
        $readmemb("./default_char_map.bin", char_map);
    end

    assign vram_x_o        = h_counter_i / 8;
    assign vram_y_o        = v_counter_i / 12;
    wire [ 3:0] px_col     = h_counter_i % 8;
    wire [ 3:0] px_row     = v_counter_i % 12;
    wire [11:0] char_idx   = { 4'b0, vram_data_i } * 12 + { 8'b0, px_row };
    wire [ 7:0] char_data  = char_map[char_idx];

    assign color_o         = {12{char_data[px_col]}};


endmodule
