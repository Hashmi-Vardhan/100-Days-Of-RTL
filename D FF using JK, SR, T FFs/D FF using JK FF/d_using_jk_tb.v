module d_using_jk_tb();
reg clk,D;
wire Qj, Qj_bar;

d_using_jk DF(clk,D,Qj,Qj_bar);

initial begin
clk = 1'b0; 
forever #10 clk = ~clk;
end

initial begin
D = 1'b0;
 forever #20 D = ~D;
end
endmodule

