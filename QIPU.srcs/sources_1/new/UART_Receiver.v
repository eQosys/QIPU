`timescale 1ns / 1ps

module UART_Receiver(
        input             clk_i,
        input             clk_100_i,
        input             rst_i,

        input             read_enable_i,
        output reg [31:0] data_o,

        input             hw_uart_rx_i
    );

    localparam STATE_IDLE   = 2'b00;
    localparam STATE_DATA   = 2'b01;
    localparam STATE_STOP   = 2'b10;

    reg [1:0] state;
    reg [2:0] bit_counter;

    always @ (posedge clk_100_i) begin
        if (rst_i) begin
            data_o       <= 0;
            data_valid_o <= 0;
            state        <= STATE_IDLE;
            bit_counter  <= 0;
        end
        else begin
            case (state)
                STATE_IDLE: begin
                    bit_counter <= 0;
                    if (hw_uart_rx_i == 0)
                        state <= STATE_DATA;
                end
                STATE_DATA: begin
                    data_o[bit_counter] <= hw_uart_rx_i;

                    if (bit_counter == 7) begin
                        state        <= STATE_STOP;
                        data_valid_o <= 1;
                    end
                    else begin
                        bit_counter <= bit_counter + 1;
                    end
                end
                STATE_STOP: begin
                    state        <= STATE_IDLE;
                    data_valid_o <= 0;
                end
            endcase
        end
    end
    
endmodule
