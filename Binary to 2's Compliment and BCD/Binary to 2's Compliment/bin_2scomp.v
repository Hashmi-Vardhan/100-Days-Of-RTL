module bin_2scomp(input [7:0]a,b,c, output[8:0] x,y,z);
assign x = ~(a)+1'b1;
assign y = ~(b)+1'b1;
assign z = ~(c)+1'b1;
endmodule