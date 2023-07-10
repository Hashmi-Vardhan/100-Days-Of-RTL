module d_using_t_tb();
reg clk,rst,D;
wire Qt, Qt_bar;

d_using_t DF(clk,rst,D,Qt,Qt_bar);

initial begin
clk = 1'b1; 
forever #5 clk = ~clk;
end

initial begin
rst = 1'b1; #5;
rst = 1'b0;
end

initial begin
D = 1'b0;
 forever #10 D = ~D;
end
endmodule

