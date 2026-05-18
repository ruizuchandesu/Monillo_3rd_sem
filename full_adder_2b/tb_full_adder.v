// testbench for full-adder
module tb_full_adder;
	// tb signals
	reg A;
	reg B;
	reg cin;
	wire sum;
	wire cout;
	
	// full-adder instance
	full_adder dut(
		.sum  (sum),
		.cout(cout),
		.A    (A),
		.B    (B),
		.cin  (cin)
	);

	// appy stimuli
	initial begin
	{A,B,cin} = 3'd0; #10;
	{A,B,cin} = 3'd1; #10;
	{A,B,cin} = 3'd2; #10;
	{A,B,cin} = 3'd3; #10;
	{A,B,cin} = 3'd4; #10;
	{A,B,cin} = 3'd5; #10;
	{A,B,cin} = 3'd6; #10;
	{A,B,cin} = 3'd7; #10;
	end
	
endmodule