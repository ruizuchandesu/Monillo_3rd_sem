/*=====================================================
							HALF-ADDER
=======================================================
Description:
	This is half-adder module using behavioral modeling.
	
Designer:
	Sidney Louise G. Monillo
	
Date:
	7 May 2026
-----------------------------------------------------*/
module half_adder(sum,carry,A,B);
	// ports
	input A;
	input B;
	output reg sum;
	output reg carry;
	
	// half-adder
	always @(A,B) begin
		case({A,B})
			2'b00: {carry,sum} = 2'b00;
			2'b01: {carry,sum} = 2'b01;
			2'b10: {carry,sum} = 2'b01;
			2'b11: {carry,sum} = 2'b10;
			default: {carry,sum} = 2'b00;
		endcase
	end
endmodule