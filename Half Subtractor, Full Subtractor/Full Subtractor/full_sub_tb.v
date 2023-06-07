module full_sub_tb();
  reg a,b,c;
  wire diff, borrow;
  integer i;

  full_sub FS1(a,b,c,diff,borrow);
  initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
  end
  initial begin
    for(i=0;i<8;i=i+1)
      begin
	{a,b,c}=i;
	#10;
      end
  end
endmodule
