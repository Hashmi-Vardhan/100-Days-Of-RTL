module ex3_bcd(EX3, BCD);
input [3:0] EX3;
output reg [3:0]BCD;


always@(*)
 begin
   if(EX3>=3 && EX3<=12)
     begin
	 BCD[3] = (EX3[3] & EX3[2]) | (EX3[3] & EX3[1] & EX3[0]);
	 BCD[2] = (~EX3[2] & ~EX3[1]) | (~EX3[2] & ~EX3[0]) | (EX3[2] & EX3[1] & EX3[0]);
	 BCD[1] = (~EX3[1] & EX3[0]) | (EX3[1] & ~EX3[0]);
	 BCD[0] = ~EX3[0];
	 end
   else
	BCD = 4'bxxxx;
 end
endmodule