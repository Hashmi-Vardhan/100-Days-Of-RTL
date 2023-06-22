module encoder8x3(A,Y);
 input [7:0]A;
 output [2:0]Y;

assign Y[0] = (A[1] | A[3] | A[5] | A[7]);
assign Y[1] = (A[2] | A[3] | A[6] | A[7]);
assign Y[2] = (A[4] | A[5] | A[6] | A[7]);
endmodule