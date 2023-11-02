`timescale 1ns / 1ps

module UART_Transmitter(
        input             clk_i,
        input             clk_100_i,
        input             rst_i,

        input             write_enable_i,
        input      [31:0] data_i,
        output            busy_o,

        output reg        hw_uart_tx_o
    );

    localparam MEM_BUS_STATE_IDLE  = 2'b00;
    localparam MEM_BUS_STATE_WRITE = 2'b01;

    localparam FIFO_STATE_IDLE       = 2'b00;
    localparam FIFO_STATE_WRITE_WAIT = 2'b01;
    localparam FIFO_STATE_WRITE_DONE = 2'b10;
    
    localparam UART_STATE_IDLE = 2'b00;
    localparam UART_STATE_START = 2'b01;
    localparam UART_STATE_DATA = 2'b10;
    localparam UART_STATE_STOP = 2'b11;

    reg         fifo_write_enable;
    reg         fifo_read_enable;
    reg  [ 7:0] fifo_write_data;
    wire [ 7:0] fifo_read_data;
    wire        fifo_full;
    wire        fifo_write_ack;
    wire        fifo_empty;
    wire        fifo_read_valid;
    reg  [ 1:0] mem_bus_state;
    reg  [ 1:0] fifo_state;
    reg         busy;
    reg  [14:0] uart_clk_counter;
    reg  [ 1:0] uart_state;
    reg  [ 2:0] uart_bit_counter;
    reg  [ 7:0] uart_data_to_send;
    wire        uart_clk_posedge = (uart_clk_counter == `UART_CLOCK_MAX / 2);

    assign      busy_o = busy | write_enable_i;


    // ---------- FIFO ----------

    FIFO_Generator fifo (
        .clk        (clk_100_i),
        .rst        (rst_i),
        .din        (fifo_write_data),
        .wr_en      (fifo_write_enable),
        .rd_en      (fifo_read_enable),
        .dout       (fifo_read_data),
        .full       (fifo_full),
        .wr_ack     (fifo_write_ack),
        .empty      (fifo_empty),
        .valid      (fifo_read_valid)
    );

    // ---------- MEMORY BUS ----------

    always @ (posedge clk_i) begin
        if (rst_i) begin
            mem_bus_state <= MEM_BUS_STATE_IDLE;
            busy          <= 0;
        end
        else begin
            case (mem_bus_state)
                MEM_BUS_STATE_IDLE: begin
                    if (write_enable_i) begin
                        mem_bus_state   <= MEM_BUS_STATE_WRITE;
                        busy            <= 1;
                        fifo_write_data <= data_i;
                    end
                end
                MEM_BUS_STATE_WRITE: begin
                    if (fifo_state == FIFO_STATE_WRITE_DONE) begin
                        mem_bus_state <= MEM_BUS_STATE_IDLE;
                        busy          <= 0;
                    end
                end
            endcase
        end
    end

    always @ (posedge clk_100_i) begin
        if (rst_i) begin
            fifo_state         <= FIFO_STATE_IDLE;
            fifo_write_enable  <= 0;
        end
        else begin
            case (fifo_state)
                FIFO_STATE_IDLE: begin
                    if (mem_bus_state == MEM_BUS_STATE_WRITE &&
                        !fifo_full) begin
                        fifo_state        <= FIFO_STATE_WRITE_WAIT;
                        fifo_write_enable <= 1;
                    end

                end
                FIFO_STATE_WRITE_WAIT: begin
                    fifo_write_enable <= 0;
                    if (fifo_write_ack) begin
                        fifo_state        <= FIFO_STATE_WRITE_DONE;
                    end
                end
                FIFO_STATE_WRITE_DONE: begin
                    if (mem_bus_state == MEM_BUS_STATE_IDLE)
                        fifo_state <= FIFO_STATE_IDLE;
                end
            endcase
        end
    end

    // ---------- UART ----------

    always @ (posedge clk_100_i) begin
        if (rst_i) begin
            fifo_read_enable   <= 0;
            uart_clk_counter   <= 0;
            uart_state         <= UART_STATE_IDLE;
            uart_bit_counter   <= 0;
            uart_data_to_send  <= 0;
            hw_uart_tx_o       <= 1;
        end
        else begin
            if (uart_state == UART_STATE_IDLE)
                uart_clk_counter <= 0;
            else if (uart_clk_counter == `UART_CLOCK_MAX)
                uart_clk_counter <= 0;
            else
                uart_clk_counter <= uart_clk_counter + 1;

            case (uart_state)
                UART_STATE_IDLE: begin
                    if (!fifo_empty) begin
                        fifo_read_enable <= 1;
                        uart_state <= UART_STATE_START;
                    end
                end
                UART_STATE_START: begin
                    fifo_read_enable <= 0;
                    if (fifo_read_valid) begin
                        uart_data_to_send <= fifo_read_data;
                    end

                    if (uart_clk_posedge) begin
                        hw_uart_tx_o <= 0;
                        uart_state <= UART_STATE_DATA;
                    end
                end
                UART_STATE_DATA: begin
                    if (uart_clk_posedge) begin
                        hw_uart_tx_o <= uart_data_to_send[uart_bit_counter];
                        uart_bit_counter <= uart_bit_counter + 1;

                        if (uart_bit_counter == 7) begin
                            uart_state <= UART_STATE_STOP;
                        end
                    end
                end
                UART_STATE_STOP: begin
                    if (uart_clk_posedge) begin
                        hw_uart_tx_o <= 1;
                        uart_bit_counter <= 0;
                        uart_state <= UART_STATE_IDLE;
                    end
                end
            endcase
        end
    end

endmodule
