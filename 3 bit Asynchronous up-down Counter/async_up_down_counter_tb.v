module async_up_down_counter_tb();
reg clk,M0,M1;
reg [2:0]J,K;
wire [2:0]Q0,Q0_bar,Q1,Q1_bar;

async_up_down_counter DNC0(clk,M0,J,K,Q0,Q0_bar);
async_up_down_counter DNC1(clk,M1,J,K,Q1,Q1_bar);
initial begin
clk = 1'b0;
forever #10 clk = ~clk;
end

initial begin
M0 = 1'b0; M1 = 1'b1;
end

initial begin
J = 3'b111;
K = 3'b111;
end

endmodule


