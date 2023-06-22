module enc_dec_BCD(A, Y);
input [9:0]A;
output [3:0]Y;
assign Y[0] = (A[1] | A[3] | A[5] | A[7] | A[9]);
assign Y[1] = (A[2] | A[3] | A[6] | A[7]);
assign Y[2] = (A[4] | A[5] | A[6] | A[7]);
assign Y[3] = (A[8] | A[9]);
endmodule
