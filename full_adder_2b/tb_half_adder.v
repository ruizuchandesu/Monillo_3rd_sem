// testbench for half-adder
module tb_half_adder;
	// tb signals
	reg A;
	reg B;
	wire sum;
	wire carry;
	// half-adder instance
	half_adder dut(
		.sum  (sum),
		.carry(carry),
		.A    (A),
		.B    (B)
	);

	// appy stimuli
	initial begin
	{A,B} = 2'b00; #10;
	{A,B} = 2'b01; #10;
	{A,B} = 2'b10; #10;
	{A,B} = 2'b11; #10;
	end
	
endmodule