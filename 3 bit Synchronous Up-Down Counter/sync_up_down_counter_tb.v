module sync_up_down_counter_tb();
reg clk,rst,M,T;
wire [2:0]Q,Q_bar;
sync_up_down_counter SUDC(clk,rst,M,T,Q,Q_bar);
initial begin
clk = 1'b0; 
forever #10 clk = ~clk;
end
initial begin
rst = 1'b1;#15;
rst = 1'b0;
end
initial begin
M = 1'b0;
forever #160 M = ~M;
end
initial begin
T = 1'b1;
end
endmodule

