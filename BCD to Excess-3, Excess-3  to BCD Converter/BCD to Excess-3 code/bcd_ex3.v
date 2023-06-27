module bcd_ex3(BCD, EX3);
input [3:0] BCD;
output reg [3:0]EX3;


always@(*)
 begin
   if(BCD<=9)
     begin
	 EX3[3] = (BCD[3]) | (BCD[2] & BCD[1]) | (BCD[2] & BCD[0]);
     EX3[2] = (~BCD[2] & BCD[1]) | (~BCD[2] & BCD[0]) | (BCD[2] & ~BCD[1] & ~BCD[0]);
     EX3[1] = (BCD[1] & BCD[0]) | (~BCD[1] & ~BCD[0]);
     EX3[0] = ~BCD[0];
	 end
   else
	EX3 = 4'bxxxx;
 end
endmodule