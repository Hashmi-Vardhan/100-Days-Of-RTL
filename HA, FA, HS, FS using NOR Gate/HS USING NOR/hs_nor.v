module hs_nor(a,b,diff,borrow);
  input a,b;
  output diff,borrow;
  wire w1,w2,w3;

	
  assign w1  = ~(b|a);  
  assign borrow  = ~(w1|a);
  assign w2  = ~(b&w1);
  assign w3 = ~(w2|borrow);
  assign diff = ~(w3|w3);
endmodule 