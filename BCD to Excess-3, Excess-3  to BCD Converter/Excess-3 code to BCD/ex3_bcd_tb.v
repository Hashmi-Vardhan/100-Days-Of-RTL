module ex3_bcd_tb();
reg [3:0]EX3;
wire [3:0]BCD;
integer i;

ex3_bcd EB(EX3,BCD);

initial begin
 for(i=0;i<16;i=i+1)
  begin
    EX3 = i; #10;
  end
  end
 endmodule
