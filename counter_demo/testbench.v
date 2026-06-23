// testbench

module testbench(); 
	// ports
	reg clk;	
	reg rst_n;
	wire [3:0] b;
    
    // dut instance
    counter_demo dut(
        .b(b),
        .clk(clk),
        .rst_n(rst_n)
        );

    // apply stimulus
    initial clk = 0;
    always #1 clk = ~clk;

    initial begin
        rst_n = 0;
        #10;    // 5 clock cycles
        rst_n = 1;
    end
endmodule