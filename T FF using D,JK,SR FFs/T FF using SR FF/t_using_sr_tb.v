module t_using_sr_tb();
reg clk,rst,T;
wire Qs, Qs_bar;

t_using_sr TF(clk,rst,T,Qs,Qs_bar);

initial begin
clk = 1'b1; 
forever #5 clk = ~clk;
end

initial begin
rst = 1'b1;#5;
rst = 1'b0;
end
initial begin
T = 1'b0;
 forever #20 T = ~T;
end
endmodule
