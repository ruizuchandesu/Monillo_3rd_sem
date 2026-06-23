/*==================================================================
						COUNTER DEMO
====================================================================
Description: 
	This is counter demo that counts from 0-15 with active-LOW reset
	
Design Engineer:
	Sidney Louise G. Monillo

Date:
	June 4, 2026
-------------------------------------------------------------------*/


module counter_demo(b,clk,rst_n);
	// ports
	input clk;	
	input rst_n;
	output [3:0] b;

	//// counter
	reg [3:0] cnt;

	always @(posedge clk or negedge rst_n) begin
		if(!rst_n) cnt <= 4'b0;
		else begin
			if (cnt == 4'd15) cnt <= 4'b0;
		    else  			  cnt  <= cnt + 4'b1;
		end
	end

	assign b = cnt;
endmodule