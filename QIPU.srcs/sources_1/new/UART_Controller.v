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
        output        hw_uart_tx_o
    );

    assign busy_o = read_enable_i | write_enable_i;

    UART_Receiver uart_receiver (
        .clk_i         (clk_i),
        .clk_100_i     (clk_100_i),
        .rst_i         (rst_i),

        .read_enable_i (read_enable_i),
        .data_o        (read_data_o),

        .hw_uart_rx_i  (hw_uart_rx_i)
    );

    UART_Transmitter uart_transmitter (
        .clk_i          (clk_i),
        .clk_i          (clk_100_i),
        .rst_i          (rst_i),

        .write_enable_i (write_enable_i),
        .data_i         (write_data_i),

        .hw_uart_tx_o   (hw_uart_tx_o)
    );

endmodule
