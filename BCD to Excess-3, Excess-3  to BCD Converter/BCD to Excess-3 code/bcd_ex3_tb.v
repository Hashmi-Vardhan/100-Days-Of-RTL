module bcd_ex3_tb();
reg [3:0]BCD;
wire [3:0]EX3;
integer i;

bcd_ex3 BE(BCD,EX3);

initial begin
 for(i=0;i<16;i=i+1)
  begin
    BCD = i; #10;
  end
  end
 endmodule
