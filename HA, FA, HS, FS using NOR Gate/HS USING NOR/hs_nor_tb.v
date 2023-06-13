module hs_nor_tb();
  reg   a,b;
  wire  diff,borrow;
  integer i;
  //Instantiating the half adder
  hs_nor HS1(a,b, diff,borrow);

  initial begin
    a = 1'b0;
    b = 1'b0;
  end
  initial begin
    for(i=0;i<4;i=i+1)
      begin
	{a,b}=i;
	#10;
      end
  end
endmodule
