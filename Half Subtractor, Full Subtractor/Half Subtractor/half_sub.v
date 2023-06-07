module half_sub(a,b,diff, borrow);
  input  a,b;
  output diff, borrow;

  assign diff = a ^ b;
  assign borrow = ~a & b;
endmodule

