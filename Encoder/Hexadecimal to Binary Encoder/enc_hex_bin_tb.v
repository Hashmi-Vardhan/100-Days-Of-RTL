module enc_hex_bin_tb();
 reg [15:0]A;
 wire [3:0]Y;
 integer i;

 enc_hex_bin ENC(A,Y);
 
 initial begin
    for(i=0;i<16;i=i+1)
     begin
      A = 16'b0000000000000001;
      A = A<<i; #10;
     end
 end
endmodule
