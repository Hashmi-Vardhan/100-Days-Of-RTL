module full_adder_tb();
    reg a,b,c_in;
    wire sum, c_out;
    integer i;

    //Instantiating the full adder
    full_adder FA1(a,b,c_in, sum, c_out);
    
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