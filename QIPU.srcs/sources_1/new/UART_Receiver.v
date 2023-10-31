`timescale 1ns / 1ps

module UART_Receiver(
        input             clk_i,
        input             clk_100_i,
        input             rst_i,

        input             read_enable_i,
        output reg [31:0] data_o,
        output wire       busy_o,

        input             hw_uart_rx_i,

        output fifo_empty_o
    );

    // ---------- FIFO ----------

    reg        fifo_write_enable;
    reg        fifo_read_enable;
    wire [7:0] fifo_read_data;
    wire       fifo_empty;
    wire       fifo_read_valid;

    assign fifo_empty_o = fifo_empty;

    FIFO_Generator fifo (
        .clk        (clk_100_i),
        .rst        (rst_i),
        .din        (uart_data_received),
        .wr_en      (fifo_write_enable),
        .rd_en      (fifo_read_enable),
        .dout       (fifo_read_data),
        .full       (),
        .wr_ack     (),
        .empty      (fifo_empty),
        .valid      (fifo_read_valid)
    );

    // ---------- MEMORY BUS ----------

    localparam MEM_BUS_STATE_IDLE = 2'b00;
    localparam MEM_BUS_STATE_READ = 2'b01;

    localparam FIFO_STATE_IDLE       = 2'b00;
    localparam FIFO_STATE_READ_WAIT  = 2'b01;
    localparam FIFO_STATE_READ_DONE  = 2'b10;

    reg  [1:0] mem_bus_state;
    reg  [1:0] fifo_state;
    reg        busy;
    assign     busy_o = busy | read_enable_i;


    always @ (posedge clk_i) begin
        if (rst_i) begin
            mem_bus_state <= MEM_BUS_STATE_IDLE;
            busy          <= 0;
        end
        else begin
            case (mem_bus_state)
                MEM_BUS_STATE_IDLE: begin
                    if (read_enable_i) begin
                        mem_bus_state <= MEM_BUS_STATE_READ;
                        busy          <= 1;
                    end
                end
                MEM_BUS_STATE_READ: begin
                    if (fifo_state == FIFO_STATE_READ_DONE) begin
                        mem_bus_state <= MEM_BUS_STATE_IDLE;
                        busy          <= 0;
                    end
                end
            endcase
        end
    end

    always @ (posedge clk_100_i) begin
        if (rst_i) begin
            fifo_state        <= FIFO_STATE_IDLE;
            fifo_read_enable  <= 0;
        end
        else begin
            case (fifo_state)
                FIFO_STATE_IDLE: begin
                    if (mem_bus_state == MEM_BUS_STATE_READ) begin
                        if (fifo_empty) begin
                            data_o           <= 32'hFFFFFFFF;
                            fifo_state       <= FIFO_STATE_READ_DONE;
                        end
                        else begin
                            fifo_read_enable <= 1;
                            fifo_state       <= FIFO_STATE_READ_WAIT;
                        end
                    end
                end
                FIFO_STATE_READ_WAIT: begin
                    fifo_read_enable <= 0;
                    if (fifo_read_valid) begin
                        data_o     <= { 24'b0, fifo_read_data};
                        fifo_state <= FIFO_STATE_READ_DONE;
                    end
                end
                FIFO_STATE_READ_DONE: begin
                    if (mem_bus_state == MEM_BUS_STATE_IDLE)
                        fifo_state <= FIFO_STATE_IDLE;
                end
            endcase
        end
    end

    // ---------- UART ----------

    localparam UART_STATE_IDLE   = 2'b00;
    localparam UART_STATE_START  = 2'b01;
    localparam UART_STATE_DATA   = 2'b10;
    localparam UART_STATE_STOP   = 2'b11;

    reg  [14:0] uart_clk_counter;
    reg  [ 1:0] uart_state;
    reg  [ 2:0] uart_bit_counter;
    reg  [ 7:0] uart_data_received;
    wire        uart_clk_posedge = (uart_clk_counter == `UART_CLOCK_MAX / 2);

    always @ (posedge clk_100_i) begin
        if (rst_i) begin
            fifo_write_enable  <= 0;
            uart_clk_counter   <= 0;
            uart_state         <= UART_STATE_IDLE;
            uart_bit_counter   <= 0;
            uart_data_received <= 0;
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
                    if (!hw_uart_rx_i)
                        uart_state <= UART_STATE_START;
                end
                UART_STATE_START: begin
                    if (uart_clk_posedge) begin
                        uart_state <= UART_STATE_DATA;
                    end
                end
                UART_STATE_DATA: begin
                    if (uart_clk_posedge) begin
                        uart_data_received[uart_bit_counter] <= hw_uart_rx_i;
                        uart_bit_counter <= uart_bit_counter + 1;

                        if (uart_bit_counter == 7) begin
                            fifo_write_enable <= 1;
                            uart_state <= UART_STATE_STOP;
                        end
                    end
                end
                UART_STATE_STOP: begin
                    fifo_write_enable <= 0;
                    if (uart_clk_posedge) begin
                        uart_bit_counter <= 0;
                        uart_state <= UART_STATE_IDLE;
                    end
                end
            endcase
        end
    end
    
endmodule
