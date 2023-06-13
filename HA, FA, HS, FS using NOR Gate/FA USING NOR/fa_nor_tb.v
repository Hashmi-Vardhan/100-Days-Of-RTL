module fa_nor_tb();
    reg a,b,c_in;
    wire sum, carry;
    integer i;

    //Instantiating the full adder
    fa_nor FA1(a,b,c_in, sum, carry);
    
    initial begin
	a = 1'b0; 
	b = 1'b0; 
	c_in = 1'b0;
    end

    initial begin
	for(i=0;i<8;i=i+1)
	  begin
	    {a,b,c_in} = i;
	    #10;
	  end
    end
endmodule
