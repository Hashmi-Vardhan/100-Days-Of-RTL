module fs_nand(a,b,b_in,diff, borrow);
  input a,b,b_in;
  output diff, borrow;
  wire w1,w2,w3,w4,w5,w6,w7;

	
  assign w1  = ~(b&a);  
  assign w2  = ~(w1&a);
  assign w3  = ~(b&w1);
  assign w4 = ~(w2&w3);
  assign w5  = ~(w4&b_in);
  assign w6  = ~(w4&w5);
  assign w7  = ~(w5&b_in);
  assign diff  = ~(w6&w7);
  assign borrow = ~(w3&w7);
endmodule 
