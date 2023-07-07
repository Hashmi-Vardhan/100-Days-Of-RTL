module t_ff_tb();
reg clk,rst,T;
wire Q, Q_bar;

t_ff TF(clk,rst,T,Q,Q_bar);

initial begin
clk = 1'b0; 
forever #10 clk = ~clk;
end

initial begin
rst = 1'b1;#15;
rst = 1'b0;
end
initial begin
T = 1'b0;
 forever #20 T = ~T;
end
endmodule