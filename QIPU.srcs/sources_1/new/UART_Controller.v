`timescale 1ns / 1ps

module UART_Controller(
        input         clk_i,
        input         clk_100_i,
        input         rst_i,

        //input [31:0]  addr_i,
        input [31:0]  write_data_i,
        input         read_enable_i,
        input         write_enable_i,

        output [31:0] read_data_o,
        output        busy_o,

        input         hw_uart_rx_i,
        output        hw_uart_tx_o,

        output fifo_empty_o
    );

    wire receiver_busy;
    wire transmitter_busy;

    assign busy_o = receiver_busy | transmitter_busy;

    UART_Receiver uart_receiver (
        .clk_i         (clk_i),
        .clk_100_i     (clk_100_i),
        .rst_i         (rst_i),

        .read_enable_i (read_enable_i),
        .data_o        (read_data_o),
        .busy_o        (receiver_busy),

        .hw_uart_rx_i  (hw_uart_rx_i),

        .fifo_empty_o  (fifo_empty_o)
    );

    UART_Transmitter uart_transmitter (
        .clk_i          (clk_i),
        .clk_100_i      (clk_100_i),
        .rst_i          (rst_i),

        .write_enable_i (write_enable_i),
        .data_i         (write_data_i),
        .busy_o         (transmitter_busy),

        .hw_uart_tx_o   (hw_uart_tx_o)
    );

endmodule
