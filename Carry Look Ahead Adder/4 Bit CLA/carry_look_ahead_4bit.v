module carry_look_ahead_4bit(a,b,c_in,sum,c_out);
  input [3:0]a,b;
  input c_in;
  output [3:0] sum;
  output c_out;
  wire [3:0] P,G,C;

  assign P = a^b; 
  assign G = a&b;

  //C[i+1] = G[i] + P[i].C[i]

  assign C[0]=c_in;
  assign C[1]= G[0]|(P[0]&C[0]);
  assign C[2]= G[1] | (P[1]&G[0]) | (P[1]&P[0]&C[0]);
  assign C[3]= G[2] | (P[2]&G[1]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&C[0]);
  assign c_out= G[3] | (P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&C[0]);
  assign sum=P^C;
endmodule