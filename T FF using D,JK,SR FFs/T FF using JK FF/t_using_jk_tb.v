module t_using_jk_tb();
reg clk,rst,T;
wire Qj, Qj_bar;

t_using_jk TF(clk,rst,T,Qj,Qj_bar);

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
