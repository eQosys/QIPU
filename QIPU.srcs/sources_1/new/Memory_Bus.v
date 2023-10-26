`timescale 1ns / 1ps

module Memory_Bus(
        input             read_enable_i,
        input             write_enable_i,
        input      [31:0] addr_i,
        
        output reg [31:0] read_data_o,
        output reg        busy_o,
        
        output            ram_read_enable_o,
        output            ram_write_enable_o,
        input      [31:0] ram_read_data_i,
        input             ram_busy_i,

        output            ssd_read_enable_o,
        output            ssd_write_enable_o,
        input      [31:0] ssd_read_data_i,
        input             ssd_busy_i,

        output            eio_read_enable_o,
        output            eio_write_enable_o,
        input      [31:0] eio_read_data_i,
        input             eio_busy_i
    );
    
    localparam ENABLE_ID_UNUSED = 4'bzzzz;
    localparam ENABLE_ID_RAM    = 4'b0000;
    localparam ENABLE_ID_SSD    = 4'b0001;
    localparam ENABLE_ID_EIO    = 4'b0010;
    
    //                         32'b................................;
    localparam ADDR_MASK_RAM = 32'b00000000zzzzzzzzzzzzzzzzzzzzzzzz;
    localparam ADDR_MASK_SSD = 32'b11111111111111111111111111111111;
    localparam ADDR_MASK_EIO = 32'b11111111111111111111111111111110;

    reg  [3:0] enable_id;
    wire       ram_select = (enable_id == ENABLE_ID_RAM);
    wire       ssd_select = (enable_id == ENABLE_ID_SSD);
    wire       eio_select = (enable_id == ENABLE_ID_EIO);
    
    assign ram_read_enable_o = ram_select & read_enable_i;
    assign ram_write_enable_o = ram_select & write_enable_i;

    assign ssd_read_enable_o = ssd_select & read_enable_i;
    assign ssd_write_enable_o = ssd_select & write_enable_i;

    assign eio_read_enable_o = eio_select & read_enable_i;
    assign eio_write_enable_o = eio_select & write_enable_i;

    always @ (*) begin
        casez (addr_i)
            ADDR_MASK_RAM: begin
                enable_id    <= ENABLE_ID_RAM;
                read_data_o  <= ram_read_data_i;
                busy_o       <= ram_busy_i;
            end
            ADDR_MASK_SSD: begin
                enable_id    <= ENABLE_ID_SSD;
                read_data_o  <= ssd_read_data_i;
                busy_o       <= ssd_busy_i;
            end
            ADDR_MASK_EIO: begin
                enable_id    <= ENABLE_ID_EIO;
                read_data_o  <= eio_read_data_i;
                busy_o       <= eio_busy_i;
            end
            default: begin
                enable_id    <= ENABLE_ID_UNUSED;
                read_data_o  <= 32'bz;
                busy_o       <= 0;
            end
        endcase
    end
    
endmodule
