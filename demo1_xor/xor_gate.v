/*==============================================
	               XOR-GATE
================================================
Description:
   This is an xor gate using gate-level modeling

Design Engineer:
   Monillo, Sidney Louise G.
Date:
   10 Apr 2026
*/
	module xor_gate(Y,A,B);
		//ports
		input A;
		input B;
		output Y;

	// nets
		wire w1,w2,w3,w4;

	// xor gate
		assign Y = (~A & B) + (A & ~B);
/*
		or u5(Y,w3,w4);
		and u2(w3,w1,B);
		not u1(w1,A);
		not u3(w2,B);
		and u4(w4,A,w2);
*/
endmodule