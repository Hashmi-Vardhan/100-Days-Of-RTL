module async_3bit_up_counter_tb();
reg clk;
reg [2:0]J,K;
wire [2:0]Q;

async_3bit_up_counter UPC(clk,J,K,Q);

initial begin
clk = 1'b0;
forever #10 clk = ~clk;
end

initial begin
J = 3'b111;
K = 3'b111;
end

endmodule
