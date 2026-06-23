// Clock-Divider

module clk_div(clk_out,clk_in);
    // ports
    input clk_in;
    output reg clk_out;

    // clock divider
    parameter TICKS = 25_000_000;
    reg [24:0] cnt = 25'b0;

    always @(posedge clk_in) begin
        if (cnt == TICKS) begin
             cnt     <= 25'b0;
             clk_out <= ~clk_out;
        end
        else cnt = cnt + 25'b1;
    end
endmodule