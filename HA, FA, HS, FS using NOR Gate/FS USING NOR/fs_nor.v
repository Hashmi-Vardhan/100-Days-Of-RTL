module fs_nor(a,b,b_in,diff, borrow);
  input a,b,b_in;
  output diff, borrow;
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;

	
  assign w1  = ~(b|a);  
  assign w2  = ~(w1|a);
  assign w3  = ~(b|w1);
  assign w4 = ~(w2|w3);
  assign w5  = ~(w4|w4);
  assign w6  = ~(b_in|w5);
  assign w7  = ~(w5|w6);
  assign w8  = ~(b_in|w6);
  assign w9  = ~(w8|w7);
  assign w10  = ~(w7|w2);
  assign diff  = ~(w9|w9);
  assign borrow = ~(w10|w10);
endmodule 
