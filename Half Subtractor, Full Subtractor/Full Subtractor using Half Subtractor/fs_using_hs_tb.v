module fs_using_hs_tb();
  reg a,b,b_in;
  wire diff, b_out;
  integer i;

  fs_using_hs FS1(a,b,b_in,diff,b_out);
  initial begin
    a = 1'b0;
    b = 1'b0;
    b_in = 1'b0;
  end
  initial begin
    for(i=0;i<8;i=i+1)
      begin
	{a,b,b_in}=i;
	#10;
      end
  end
endmodule
