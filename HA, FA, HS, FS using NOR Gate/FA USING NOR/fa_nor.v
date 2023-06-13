module fa_nor(a,b,c_in,sum,carry);
  input a,b,c_in;
  output sum,carry;
  wire w1,w2,w3,w4,w5,w6,w7;

	
  assign w1  = ~(b|a);  
  assign w2  = ~(w1|a);
  assign w3  = ~(b|w1);
  assign w4 = ~(w2|w3);
  assign w5  = ~(w4|c_in);
  assign w6  = ~(w4|w5);
  assign w7  = ~(w5|c_in);
  assign sum  = ~(w6|w7);
  assign carry = ~(w1|w5);
endmodule 
