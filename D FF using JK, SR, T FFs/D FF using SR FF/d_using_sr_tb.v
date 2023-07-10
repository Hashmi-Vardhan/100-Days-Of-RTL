module d_using_sr_tb();
reg clk,D;
wire Qs, Qs_bar;

d_using_sr DF(clk,D,Qs,Qs_bar);

initial begin
clk = 1'b0; 
forever #10 clk = ~clk;
end

initial begin
D = 1'b0;
 forever #20 D = ~D;
end
endmodule
