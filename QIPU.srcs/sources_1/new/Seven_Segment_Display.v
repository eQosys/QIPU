`timescale 1ns / 1ps

module Seven_Segment_Display(
        input             clk_i,
        input             rst_i,
        
        //input      [31:0] addr_i,
        input      [31:0] data_i,
        input             read_enable_i,
        input             write_enable_i,

        output reg [31:0] read_data_o,
        output            busy_o,

        output reg [ 3:0] hw_anodes_o,
        output reg [ 7:0] hw_cathodes_o
    );

    reg [31:0] data;
    reg [17:0] refresh_counter;

    // MEMORY BUS LOGIC
    assign busy_o = read_enable_i | write_enable_i;

    always @ (posedge clk_i) begin
        if (rst_i)
            data <= 0;
        else if (read_enable_i)
            read_data_o <= data;
        else if (write_enable_i)
            data <= data_i;
    end

    // SEVEN SEGMENT DISPLAY OUTPUT LOGIC
    always @ (posedge clk_i) begin
        if (rst_i)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end

    always @ (*) begin
        case (refresh_counter[17:16])
            2'b00: begin
                hw_anodes_o   <= 4'b0111;
                hw_cathodes_o <= ~data[31:24];
            end
            2'b01: begin
                hw_anodes_o   <= 4'b1011;
                hw_cathodes_o <= ~data[23:16];
            end
            2'b10: begin
                hw_anodes_o   <= 4'b1101;
                hw_cathodes_o <= ~data[15:8];
            end
            2'b11: begin
                hw_anodes_o   <= 4'b1110;
                hw_cathodes_o <= ~data[7:0];
            end
        endcase
    end

endmodule
