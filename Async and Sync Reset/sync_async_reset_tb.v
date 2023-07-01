module sync_async_reset_tb();
reg clk, rst, A;
wire async,sync;

sync_async_reset ASR(clk, rst, A, async, sync);

initial begin
clk= 0; rst= 0; A= 1;
end
initial forever #50 clk<= ~clk;
initial forever #200 rst<= ~rst;


endmodule
