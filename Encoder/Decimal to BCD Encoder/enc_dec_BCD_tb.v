module enc_dec_BCD_tb();
 reg [9:0]A;
 wire [3:0]Y;
 integer i;

 enc_dec_BCD ENC(A,Y);
 
 initial begin
    for(i=0;i<10;i=i+1)
     begin
      A = 10'b0000000001;
      A = A<<i; #10;
     end
 end
endmodule
