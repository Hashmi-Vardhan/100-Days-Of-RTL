module gray_bin_tb();
  reg [7:0]G;
  wire [7:0]B;
  integer j;

  gray_bin GB(G,B);

  initial begin
   for(j=1;j<256;j=j+16)
    begin
     G=j; #10;
    end
  end
endmodule
