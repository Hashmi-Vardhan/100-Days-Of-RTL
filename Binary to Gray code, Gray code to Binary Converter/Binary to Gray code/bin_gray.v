module bin_gray(B,G);
  input [7:0]B;
  output reg [7:0]G;
  integer i;

  always@(*)
   begin
    G[7]=B[7];
    for(i=6;i>=0;i=i-1)
     begin
      G[i] = B[i+1]^B[i];
     end
   end
endmodule
