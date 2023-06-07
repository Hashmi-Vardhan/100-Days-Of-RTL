module fs_using_hs(a,b,b_in,diff, b_out);
  input  a,b,b_in;
  output diff, b_out;
  wire w1,w2,w3;

  half_sub HS1(.a(a), .b(b), .diff(w1), .borrow(w2));
  half_sub HS2(.a(w1), .b(b_in), .diff(diff), .borrow(w3));
  or OR1(b_out, w2,w3);
endmodule
