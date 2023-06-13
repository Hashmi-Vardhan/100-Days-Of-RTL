module hs_nand(a,b,diff,borrow);
  input a,b;
  output diff,borrow;
  wire w1,w2,w3;

	
  assign w1  = ~(b&a);  
  assign w2  = ~(w1&a);
  assign w3  = ~(b&w1);
  assign diff = ~(w2&w3);
  assign borrow = ~(w3&w3);
endmodule 