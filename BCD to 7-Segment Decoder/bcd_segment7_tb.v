module bcd_segment7_tb();
reg [3:0]BCD;
reg en;
wire [6:0]seg7;
integer i;

bcd_segment7 B7S(BCD[3],BCD[2],BCD[1],BCD[0], seg7);

initial begin
   en = 1'b0; BCD = 3; #10;
   en = 1'b0; BCD = 7; #10;
   for(i=0;i<16;i=i+1)
   begin
    en = 1'b1;
	BCD = i;
	#10;
   end
end
endmodule
