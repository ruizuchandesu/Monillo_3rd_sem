/*=================================================
							FULL ADDER
===================================================
Description:
    This is a full adder using gate level modeling

Design Engineer:
   Monillo, Sidney Louise G.

Date:
    16 April 2026
*/
module full_adder(sum,cout,cin,A,B);
    //ports  
    input A;
    input B;
	 input cin;
    output sum;
	 output cout;

    //nets
    wire w1,w2,w3;
	 
	 assign sum = A ^ B ^ cin;
	 assign cout = (A & B ) + (cin & (A ^ B));
	 
endmodule