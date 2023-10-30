`timescale 1ns / 1ps

module UART_Transmitter(
        input             clk_i,
        input             clk_100_i,
        input             rst_i,

        input             write_enable_i,
        input      [31:0] data_i,

        output reg        data_acknowledge_o,

        output reg        hw_uart_tx_o
    );

    localparam STATE_IDLE   = 2'b00;
    localparam STATE_START  = 2'b01;
    localparam STATE_DATA   = 2'b10;
    localparam STATE_STOP   = 2'b11;

    reg [1:0] state;
    reg [2:0] bit_counter;
    reg [7:0] data;

    always @ (posedge clk_i) begin
        if (rst_i) begin
            data_acknowledge_o <= 0;
            hw_uart_tx_o <= 1;
            state <= STATE_IDLE;
            bit_counter <= 0;
        end
        else begin
            case (state)
                STATE_IDLE: begin
                    if (data_valid_i) begin
                        data               <= data_i;
                        data_acknowledge_o <= 1;
                        state              <= STATE_START;
                        bit_counter        <= 0;
                    end
                end
                STATE_START: begin
                    data_acknowledge_o <= 0;
                    hw_uart_tx_o       <= 0;
                    state              <= STATE_DATA;
                end
                STATE_DATA: begin
                    hw_uart_tx_o <= data_i[bit_counter];
                    if (bit_counter == 7) begin
                        state <= STATE_STOP;
                    end
                    else begin
                        bit_counter <= bit_counter + 1;
                    end
                end
                STATE_STOP: begin
                    hw_uart_tx_o <= 1;
                    state        <= STATE_IDLE;
                end
            endcase
        end
    end

endmodule
