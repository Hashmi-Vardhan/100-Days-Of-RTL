module bin_BCD_tb();
reg [7:0]in;
wire [3:0] b0, b1, b2;
wire [11:0] BCD;

bin_BCD BB(in, b0, b1, b2, BCD);
	always begin
		in=$random;
			#10;
	end
	initial
    begin $monitor("data: %d  BCD: %b",in,BCD);
    #80 $finish;
    end
endmodule
