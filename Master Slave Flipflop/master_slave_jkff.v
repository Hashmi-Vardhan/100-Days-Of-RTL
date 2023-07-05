module master_slave_jkff(input clk,rst,j,k, output q,qbar);
   wire qm,qbarm;  // The master's q & qbar output.
   wire clks;  // The clock input to the slave 
   wire j1,j2,k1,k2;
   
   assign j2 = rst ? 0 : j1;
   assign k2 = rst ? 1 : k1;
   assign clks = ~clk;
   and(j1, j, qbar);
   and(k1, k, q);   
   jk_ff master(clk,j2,k2,qm,qbarm);
   jk_ff slave(clks, qm, qbarm,q, qbar);
endmodule

module jk_ff(clk,J,K, Q,Q_bar);
   input clk,J,K;
   output Q;
   output Q_bar;
  
   wire A,B;
   
   and(A, clk, J);
   and(B, clk, K);
   nor(Q_bar, B, Q);
   nor(Q, A, Q_bar);
endmodule
