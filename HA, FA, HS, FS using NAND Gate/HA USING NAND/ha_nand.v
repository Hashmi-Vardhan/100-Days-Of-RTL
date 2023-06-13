module ha_nand(a,b,sum,carry);
  input a,b;
  output sum,carry;
  wire w1,w2,w3;

	
  assign w1  = ~(b&a);  
  assign w2  = ~(w1&a);
  assign w3  = ~(b&w1);
  assign sum = ~(w2&w3);
  assign carry = ~(w1&w1);
endmodule 