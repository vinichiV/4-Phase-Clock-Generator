module fourP_clock_generator (
  input clk,
  output p0, p1, p2, p3
);
  reg Q1, Q0;
  reg D1, D0;
  wire a, b;
	
  assign a = ~ Q1;
  assign b = Q0;
	
  always_ff @(posedge clk) begin
    D1 <= b;
    Q1 <= D1;
  end
  always_ff @(posedge clk) begin
    D0 <= a;
    Q0 <= D0;
  end
	
  assign p0 = Q1;
  assign p1 = ~Q0;
  assign p2 = ~Q1;
  assign p3 = Q0;
	
endmodule
