module t_using_d_tb();
reg clk,rst,T;
wire Qd, Qd_bar;

t_using_d TF(clk,rst,T,Qd,Qd_bar);

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
