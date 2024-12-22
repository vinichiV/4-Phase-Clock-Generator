module test(input CLK, output p0, output p1, output p2, output p3);
	reg D0, D1, Q0, Q1;
	wire a, b;
  
	initial begin 
		D0 <= 1'b0; D1 <= 1'b0;
		Q0 <= 1'b0; Q1 <= 1'b0;
	end

	assign a = Q1;
	assign b = ~Q0;
	
	always @(posedge CLK) begin
		D0 <= a;
		Q0 <= D0;
	end
	always @(posedge CLK) begin
		D1 <= b;
		Q1 <= D1;
	end
	
	assign p0 = Q0;
	assign p1 = ~Q1;
	assign p2 = ~Q0;
	assign p3 = Q1;
	
endmodule
