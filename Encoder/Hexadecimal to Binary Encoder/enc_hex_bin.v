module enc_hex_bin(A,Y);
input [15:0]A;
output [3:0]Y;
assign Y[0] = (A[1] | A[3] | A[5] | A[7] | A[9] | A[11] | A[13] | A[15]);
assign Y[1] = (A[2] | A[3] | A[6] | A[7] | A[10] | A[12] | A[14] | A[15]);
assign Y[2] = (A[4] | A[5] | A[6] | A[7] | A[12] | A[13] | A[14] | A[15]);
assign Y[3] = (A[8] | A[9] | A[10] | A[11] | A[12] | A[13] | A[14] | A[15]);
endmodule
