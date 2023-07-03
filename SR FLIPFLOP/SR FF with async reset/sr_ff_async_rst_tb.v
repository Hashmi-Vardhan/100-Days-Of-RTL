module sr_ff_async_rst_tb();
reg clk,rst, S,R;
wire Q,Q_bar;

sr_ff_async_rst SRF(clk,rst,S,R,Q,Q_bar);

initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end 

initial begin
  rst = 1'b0; 
  #70; rst = 1'b1; 
  #15; rst = 1'b0; 
  #20; rst = 1'b1; 
  #15; rst = 1'b0;
  end
initial begin
  S = 1'b0; R = 1'b0; #20; //Initial memory
  
  S = 1'b0; R = 1'b1; #20; //Reset State
  S = 1'b0; R = 1'b0; #20; //Memory State
  
  S = 1'b1; R = 1'b0; #20; //Set State
  S = 1'b0; R = 1'b0; #20; //Memory State
  
  S = 1'b1; R = 1'b1; #20; //Forbidden State
  S = 1'b0; R = 1'b0; #20; //Memory State
end

endmodule
