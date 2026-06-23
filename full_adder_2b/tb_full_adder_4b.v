module tb_full_adder_4b;
    // tb signals
    reg  [3:0] A;
    reg  [3:0] B;
    wire [4:0] S;
    
    // full adder 4b instance
    full_adder_4b dut(
        .S(S),
        .A(A),
        .B(B)
    );
    
    // apply stimuli
    initial begin
        A = 4'd0; B = 4'd0; #1;
        repeat(15) begin        
            B = 4'd0;
				A = A+4'd1;
				#1;
            repeat(15) begin   
                B = B+4'd1;
					  #1;
            end
        end
    end

endmodule