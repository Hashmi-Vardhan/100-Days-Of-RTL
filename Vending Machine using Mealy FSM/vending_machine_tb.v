module vending_machine_tb();
  reg clk, rst;
  reg [1:0] coin;
  wire product, change;
  
  vending_machine dut(clk, rst, coin, product, change);
  initial clk = 1;   
  always #2 clk = ~clk;
  
  initial begin
  rst = 0;#1;
  rst = 1;
  end
    
  initial begin
	 coin = 00;
	 #4 coin = 01;
	 #4 coin = 01;
	 #4 coin = 01;
	 #4 coin = 00;
	 #4 coin = 01;
	 #4 coin = 10;
	 #4 coin = 00;
	 #4 coin = 10;
	 #4 coin = 01;
	 #4 coin = 00;
	 #4 coin = 10;
	 #4 coin = 10;
	 #4 coin = 00;
	 #4 coin = 00;
  end
endmodule
