module gray_bin(G,B);
  input [7:0]G;
  output reg [7:0]B;
  integer i;

  always@(*)
   begin
    B[7]=G[7];
    for(i=6;i>=0;i=i-1)
     begin
      B[i] = B[i+1]^G[i];
     end
   end
endmodule

