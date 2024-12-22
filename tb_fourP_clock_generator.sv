`timescale 1ns/1ps

module tb_fourP_clock_generator;

  reg clk;
  wire p0, p1, p2, p3;

  fourP_clock_generator dut (
    .clk(clk),
    .p0(p0),
    .p1(p1),
    .p2(p2),
    .p3(p3)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    dut.D1 = 1'b0;
    dut.D0 = 1'b0;
    dut.Q1 = 1'b0;
    dut.Q0 = 1'b0;

    #500
    $finish;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
endmodule
