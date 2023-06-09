module half_adder(a,b,sum,carry);
  input  a,b;
  output sum,carry;

  assign sum = a ^ b;
  assign carry = a & b;
endmodule

module fa_using_ha(a,b,c_in,sum,c_out);
    input a,b,c_in;
    output sum,c_out;
    wire w1,w2,w3;

    half_adder HA1(.a(a),.b(b),.sum(w1),.carry(w2));
    half_adder HA2(.a(w1),.b(c_in),.sum(sum),.carry(w3));
    or OR1(c_out, w2,w3);
endmodule

module bit4_adder_sub(A,B, C_in,S,Cout);
input [3:0]A;
input [3:0]B;
input C_in;
output [3:0]S;
output Cout;
wire c1,c2,c3;
wire w0,w1,w2,w3;

assign w0 = C_in^B[0];
assign w1 = C_in^B[1];
assign w2 = C_in^B[2];
assign w3 = C_in^B[3];

fa_using_ha FA1(.a(A[0]),.b(w0),.c_in(C_in),.sum(S[0]),.c_out(c1));
fa_using_ha FA2(.a(A[1]),.b(w1),.c_in(c1),.sum(S[1]),.c_out(c2));
fa_using_ha FA3(.a(A[2]),.b(w2),.c_in(c2),.sum(S[2]),.c_out(c3));
fa_using_ha FA4(.a(A[3]),.b(w3),.c_in(c3),.sum(S[3]),.c_out(Cout));

endmodule
