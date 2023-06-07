module half_adder_tb();
  reg   a,b;
  wire  sum,carry;
  integer i;
  //Instantiating the half adder
  half_adder HA1(a,b, sum, carry);

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
