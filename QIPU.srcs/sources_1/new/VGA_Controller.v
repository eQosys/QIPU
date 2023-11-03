`timescale 1ns / 1ps

module VGA_Controller(
        input             clk_cpu_i,
        input             clk_vga_i,
        input             rst_i,
        //input      [31:0] addr_i,
        input      [31:0] write_data_i,
        input             read_enable_i,
        input             write_enable_i,

        output reg [31:0] read_data_o,
        output            busy_o,

        output reg [ 8:0] vram_x_o,
        output reg [ 8:0] vram_y_o,
        input      [ 7:0] vram_data_i,
        
        output     [ 3:0] hw_red_o,
        output     [ 3:0] hw_green_o,
        output     [ 3:0] hw_blue_o,
        output            hw_hsync_o,
        output            hw_vsync_o
    );

    // 1280x960 real
    //  -> x real -- 11 bits
    //  -> y real -- 10 bits
    // 320x480 vram
    //  -> x vram --  9 bits
    //  -> y vram --  9 bits

    localparam HORZ_PIXEL_COUNT = 1280;
    localparam HORZ_FRONT_PORCH = 96;
    localparam HORZ_PULSE_WIDTH = 112;
    localparam HORZ_BACK_PORCH  = 312;
    
    localparam VERT_PIXEL_COUNT = 960;
    localparam VERT_FRONT_PORCH = 1;
    localparam VERT_PULSE_WIDTH = 3;
    localparam VERT_BACK_PORCH  = 36;
    
    localparam HORZ_SYNC_BEGIN = HORZ_PIXEL_COUNT + HORZ_FRONT_PORCH;
    localparam HORZ_SYNC_END   = HORZ_SYNC_BEGIN  + HORZ_PULSE_WIDTH;
    localparam HORZ_SYNC_TOTAL = HORZ_SYNC_END    + HORZ_BACK_PORCH;
    
    localparam VERT_SYNC_BEGIN = VERT_PIXEL_COUNT + VERT_FRONT_PORCH;
    localparam VERT_SYNC_END   = VERT_SYNC_BEGIN  + VERT_PULSE_WIDTH;
    localparam VERT_SYNC_TOTAL = VERT_SYNC_END    + VERT_BACK_PORCH;
    

    reg  [ 1:0] output_mode;
    reg  [10:0] h_counter;
    reg  [10:0] v_counter;
    wire        display_enable;
    reg  [11:0] color_int;
    wire [11:0] color_final;
    reg  [ 7:0] h_sync_delay;
    reg  [ 7:0] v_sync_delay;

    wire [11:0] color_text_renderer;
    wire [ 8:0] vram_x_text_renderer;
    wire [ 8:0] vram_y_text_renderer;

    wire [11:0] color_low_res_renderer;
    wire [ 8:0] vram_x_low_res_renderer;
    wire [ 8:0] vram_y_low_res_renderer;

    // MEMORY BUS LOGIC
    assign busy_o = read_enable_i | write_enable_i;

    always @ (posedge clk_cpu_i) begin
        if (rst_i)
            output_mode <= `VGA_OUTPUT_MODE_TEXT;
        else if (read_enable_i)
            read_data_o <= { 30'b0, output_mode };
        else if (write_enable_i)
            output_mode <= write_data_i[1:0];
    end


    // VGA CONTROLLER LOGIC

    // vga output mode selection logic
    always @ (*) begin
        case (output_mode)
            `VGA_OUTPUT_MODE_TEXT: begin
                color_int = color_text_renderer;
                vram_x_o  = vram_x_text_renderer;
                vram_y_o  = vram_y_text_renderer;
            end
            `VGA_OUTPUT_MODE_LOW_RES: begin
                color_int = color_low_res_renderer;
                vram_x_o  = vram_x_text_renderer;
                vram_y_o  = vram_y_text_renderer;
            end
            `VGA_OUTPUT_MODE_MID_RES: begin
                color_int = 'h0000FF;
            end
            `VGA_OUTPUT_MODE_HIGH_RES: begin
                color_int = 'hFF0000;
            end
            default: begin
                color_int = 'hFF00FF;
            end
        endcase
    end

    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    VGA_Text_Renderer vga_text_renderer (
        .h_counter_i     (h_counter),
        .v_counter_i     (v_counter),
        .color_o         (color_text_renderer),
        .vram_x_o        (vram_x_text_renderer),
        .vram_y_o        (vram_y_text_renderer),
        .vram_data_i     (vram_data_i)
    );

    (* keep_hierarchy = `KEEP_HIERARCHY_TOGGLE *)
    VGA_Low_Res_Renderer vga_low_res_renderer (
        .h_counter_i     (h_counter),
        .v_counter_i     (v_counter),
        .color_o         (color_low_res_renderer),
        .vram_x_o        (vram_x_low_res_renderer),
        .vram_y_o        (vram_y_low_res_renderer),
        .vram_data_i     (vram_data_i)
    );


    
    // Color output logic
    assign display_enable = ( h_counter < HORZ_PIXEL_COUNT) && (v_counter < VERT_PIXEL_COUNT );
    assign color_final    = display_enable ? color_int : 12'b0;
    assign hw_red_o       = color_final[11:8];
    assign hw_green_o     = color_final[ 7:4];
    assign hw_blue_o      = color_final[ 3:0];

    // Horizontal and vertical sync signals
    assign h_sync = ~((HORZ_SYNC_BEGIN <= h_counter) && (h_counter < HORZ_SYNC_END));
    assign v_sync = ~((VERT_SYNC_BEGIN <= v_counter) && (v_counter < VERT_SYNC_END));
    assign hw_hsync_o = h_sync_delay[7];
    assign hw_vsync_o = v_sync_delay[7];

    always @ (posedge clk_vga_i) begin
        h_sync_delay <= { h_sync_delay[6:0], h_sync };
        v_sync_delay <= { v_sync_delay[6:0], v_sync };
    end
    
    // VGA timing logic
    always @ (posedge clk_vga_i) begin
        if (h_counter == HORZ_SYNC_TOTAL - 1) begin
            h_counter <= 0;
            
            if (v_counter == VERT_SYNC_TOTAL - 1) begin
                v_counter <= 0;
            end
            else begin
                v_counter <= v_counter + 1;
            end
        end
        else begin
            h_counter <= h_counter + 1;
        end
    end
    
endmodule
