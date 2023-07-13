module async_4bit_down_counter_tb();
reg clk;
reg [3:0]J,K;
wire [3:0]Q,Q_bar;

async_4bit_down_counter DNC(clk,J,K,Q,Q_bar);

initial begin
clk = 1'b0;
forever #10 clk = ~clk;
end

initial begin
J = 4'b1111;
K = 4'b1111;
end

endmodule


