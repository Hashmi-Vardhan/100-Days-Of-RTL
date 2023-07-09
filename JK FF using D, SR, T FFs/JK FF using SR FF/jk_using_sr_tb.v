module jk_using_sr_tb();
reg clk,rst,J,K;
wire Qs,Qs_bar;

jk_using_sr JKF(clk,rst,J,K,Qs,Qs_bar);

initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end
initial begin
  rst=1'b1;#5;
  rst = 1'b0;  
end
initial begin
  J = 1'b0; K = 1'b0; #10; //Initial memory
  
  J = 1'b0; K = 1'b1; #10; //Reset State
  J = 1'b0; K = 1'b0; #10; //Memory State
  
  J = 1'b1; K = 1'b0; #10; //Set State
  J = 1'b0; K = 1'b0; #10; //Memory State
  
  J = 1'b1; K = 1'b1; #10; //Toggle State
end

endmodule
