module sync_up_counter_tb();
reg clk,rst,T;
wire [2:0]Q;
sync_up_counter SUC(clk,rst,T,Q);
initial begin
clk = 1'b0; 
forever #10 clk = ~clk;
end
initial begin
rst = 1'b1;#15;
rst = 1'b0;
end
initial begin
T = 1'b1;
end
endmodule
