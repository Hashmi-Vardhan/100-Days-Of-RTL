module fa(a,b,c,sum,carry);
  input  a,b,c;
  output sum,carry;

  assign sum = a^b^c;
  assign carry = (a&b)|(b&c)|(a&c);
endmodule

module mux(input s,i0,i1, output reg y);
  always@(*)
    begin
    if(s == 1)
      y = i1;
    else
      y = i0;
    end
endmodule

module process_unit(a,b,cin,sum,sel,cout,muxout);
  input a,b,cin,sel;
  output cout,muxout;
  output sum;

  fa FA1(.a(a),.b(~b),.c(cin),.sum(sum),.carry(cout));
  mux MX(.s(sel),.i0(sum),.i1(a),.y(muxout));

endmodule

module bit4_divider(A,B,Q,R);
  input [3:0]A,B;
  output [3:0]Q,R;
  wire w1,w2,w3,w4;
  wire d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12;
  wire y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16;
  wire [11:0]op;


  process_unit PU0(A[3],B[0],1'b1,d1,w1,y1,op[0]);
  process_unit PU1(1'b0,B[1],y1,d2,w1,y2,op[1]);
  process_unit PU2(1'b0,B[2],y2,d3,w1,y3,op[2]);
  process_unit PU3(1'b0,B[3],y3,w1,w1,y4,op[3]);

  assign Q[3]=~w1;


  process_unit PU4(A[2],B[0],1'b1,d4,w2,y5,op[4]);
  process_unit PU5(op[0],B[1],y5,d5,w2,y6,op[5]);
  process_unit PU6(op[1],B[2],y6,d6,w2,y7,op[6]);
  process_unit PU7(op[2],B[3],y7,w2,w2,y8,op[7]);

  assign Q[2]=~w2;


  process_unit PU8(A[1],B[0],1'b1,d7,w3,y9,op[8]);
  process_unit PU9(op[4],B[1],y9,d8,w3,y10,op[9]);
  process_unit PU10(op[5],B[2],y10,d9,w3,y11,op[10]);
  process_unit P11(op[6],B[3],y11,w3,w3,y12,op[11]);

  assign Q[1]=~w3;


  process_unit PU12(A[0],B[0],1'b1,d10,w4,y13,R[0]);
  process_unit PU13(op[8],B[1],y13,d11,w4,y14,R[1]);
  process_unit PU14(op[9],B[2],y14,d12,w4,y15,R[2]);
  process_unit PU15(op[10],B[3],y15,w4,w4,y16,R[3]);

  assign Q[0]=~w4;


endmodule

