module pa_4bit_tb();
    reg [3:0]A;
    reg [3:0]B;
    reg C_in;
    wire [3:0]S;
    wire Cout;
    integer i;

    parallel_adder_4bit PA4(A,B, C_in,S,Cout);
    initial begin
	A = 4'b1010; 
	B = 4'b0100; 
	i = 0;
	for(i=0;i<2;i=i+1)
	 begin
	  C_in = 1'b0;
	  #50;
	  C_in = ~C_in;
	  #50;
	  A = A+1'b1;
	end
	$finish;
    end
endmodule