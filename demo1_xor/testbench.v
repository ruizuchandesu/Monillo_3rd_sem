//testbench for xor module
module testbench;
	//tb signals
	reg A;
	reg B;
	wire Y;
	
	//instantiate xor module
	xor_gate dut(
				.Y(Y),
				.A(A),
				.B(B)
	);
	//apply stimuli
	initial begin
				A=0; B=0; #10;
				A=0; B=1; #10;
				A=1; B=0; #10;
				A=1; B=1; #10;
	end
	
endmodule