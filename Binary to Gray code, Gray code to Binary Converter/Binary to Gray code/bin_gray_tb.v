module bin_gray_tb();
  reg [7:0]B;
  wire [7:0]G;
  integer j;

  bin_gray BG(B,G);

  initial begin
   for(j=1;j<256;j=j+16)
    begin
     B=j; #10;
    end
  end
endmodule
