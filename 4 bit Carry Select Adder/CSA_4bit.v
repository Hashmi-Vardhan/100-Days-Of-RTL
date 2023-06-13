module fa(input a,b,cin, output sum,carry);
  assign sum = a^b^cin;
  assign carry = (a&b)|(b&cin)|(cin&a);
endmodule

module mux(input s,i0,i1, output reg y);
  always@(*)
    begin
    if(s == 0)
      y = i0;
    else
      y = i1;
    end
endmodule

module CSA_4bit(A,B,C_in,S,C_out);
  input [3:0] A,B;
  input C_in;
  output [3:0] S;
  output C_out;

  wire [3:0] w0,w1,w2,w3;

  fa FA1(A[0],B[0],1'b0,w0[0],w2[0]);
  fa FA2(A[1],B[1],w2[0],w0[1],w2[1]);
  fa FA3(A[2],B[2],w2[1],w0[2],w2[2]);
  fa FA4(A[3],B[3],w2[2],w0[3],w2[3]);

  fa FA5(A[0],B[0],1'b1,w1[0],w3[0]);
  fa FA6(A[1],B[1],w3[0],w1[1],w3[1]);
  fa FA7(A[2],B[2],w3[1],w1[2],w3[2]);
  fa FA8(A[3],B[3],w3[2],w1[3],w3[3]);


  mux mux_Cout(w2[3],w3[3],C_in,C_out);

  mux mux_S0(C_in,w0[0],w1[0],S[0]);
  mux mux_S1(C_in,w0[1],w1[1],S[1]);
  mux mux_S2(C_in,w0[2],w1[2],S[2]);
  mux mux_S3(C_in,w0[3],w1[3],S[3]);

endmodule 