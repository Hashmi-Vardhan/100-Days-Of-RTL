module jk_ff_tb();
reg clk,J,K;
wire Q,Q_bar;

jk_ff JKF(clk,J,K,Q,Q_bar);

initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
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
