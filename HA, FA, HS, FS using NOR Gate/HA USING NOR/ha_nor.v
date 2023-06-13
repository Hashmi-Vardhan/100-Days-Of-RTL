module ha_nor(a,b,sum,carry);
  input a,b;
  output sum,carry;
  wire w1,w2,w3;

	
  assign w1  = ~(b|a);  
  assign w2  = ~(a|a);
  assign w3  = ~(b|b);
  assign sum = ~(w1|carry);
  assign carry = ~(w2|w3);
endmodule 