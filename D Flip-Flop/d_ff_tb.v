module d_ff_tb();
reg clk,D;
wire Q, Q_bar;

d_ff DF(clk,D,Q,Q_bar);

initial begin
clk = 1'b0; 
forever #10 clk = ~clk;
end

initial begin
D = 1'b0;
 forever #20 D = ~D;
end
endmodule
