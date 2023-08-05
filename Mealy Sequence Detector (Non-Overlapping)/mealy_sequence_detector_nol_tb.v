module mealy_sequence_detector_nol_tb;
  reg clk, rst, x;
  wire y;
  
  mealy_sequence_detector_nol dut(clk, rst, x, y);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    $monitor("%0t: x = %0b, z = %0b", $time, x, y);
    x = 0;
    rst = 0;#1;
    rst = 1;#2;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
	#4 x = 0;
	#4 x = 1;
    #4 x = 0;
    #4 x = 0;
	#4 x = 1;
	#4 x = 1;
	#4 x = 1;
    #4 x = 0;
	#4 x = 1;
	#4 x = 1;
    #10;
  end

endmodule
