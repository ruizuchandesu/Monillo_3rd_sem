/*=====================================================
							FULL-ADDER-4B
=======================================================
Description:
	This is full-adder-4b module using behavioral modeling.
	
Designer:
	Sidney Louise G. Monillo
	
Date:
	9 May 2026
-----------------------------------------------------*/
module full_adder_4b(S, A, B);
    // ports
    input  [3:0] A;
    input  [3:0] B;
    output [4:0] S;
    
    wire w0, w1, w2;
    
    // bit 0 - half adder
    half_adder ha(
        .sum   (S[0]),
        .carry (w0),
        .A     (A[0]),
        .B     (B[0])
    );
    
    // bit 1 - full adder
    full_adder fa1(
        .sum  (S[1]),
        .cout (w1),
        .A    (A[1]),
        .B    (B[1]),
        .cin  (w0)
    );
    
    // bit 2 - full adder
    full_adder fa2(
        .sum  (S[2]),
        .cout (w2),
        .A    (A[2]),
        .B    (B[2]),
        .cin  (w1)
    );
    
    // bit 3 - full adder
    full_adder fa3(
        .sum  (S[3]),
        .cout (S[4]),
        .A    (A[3]),
        .B    (B[3]),
        .cin  (w2)
    );

endmodule