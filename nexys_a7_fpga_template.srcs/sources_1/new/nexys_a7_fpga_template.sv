`timescale 1ns / 1ps
module nexys_a7_fpga_template (
    input logic clk100mhz,
    input logic cpu_resetn,
    input logic [15:0] sw,
    output logic [15:0] led
);
    always_ff @(posedge clk100mhz or negedge cpu_resetn) begin
        if (!cpu_resetn) begin
            led <= 16'b0;
        end else begin
            led <= sw;
        end
    end
endmodule
