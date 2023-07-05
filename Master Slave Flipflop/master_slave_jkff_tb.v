module master_slave_jkff_tb();
reg j,k,clk,rst;
wire q,qbar;
master_slave_jkff dut(clk,rst,j,k,q,qbar);
initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end 
initial begin
  rst = 1'b1; #10;
  rst = 1'b0; #100;
end
initial begin
  j = 1'b0; k = 1'b1; #20; //Reset State
  j = 1'b0; k = 1'b0; #10; //Memory State
  j = 1'b1; k = 1'b0; #10; //Set State
  j = 1'b0; k = 1'b0; #10; //Memory State
  j = 1'b1; k = 1'b1; #10; //Toggle State
end
endmodule

