module fs_nor_tb();
    reg a,b,b_in;
    wire diff, borrow;
    integer i;

    //Instantiating the full adder
    fs_nor FS1(a,b,b_in, diff, borrow);
    
    initial begin
	a = 1'b0; 
	b = 1'b0; 
	b_in = 1'b0;
    end

    initial begin
	for(i=0;i<8;i=i+1)
	  begin
	    {a,b,b_in} = i;
	    #10;
	  end
    end
endmodule
