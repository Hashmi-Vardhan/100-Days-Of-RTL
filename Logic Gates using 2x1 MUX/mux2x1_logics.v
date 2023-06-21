module mux2x1(input sel, i0,i1,output reg y);

always@(*)
 begin
  if(sel)
    y = i1;
  else
    y = i0;
 end
endmodule

module mux2x1_logics(A,B,Y);
  input A,B;
  output [6:0]Y;
  
  mux2x1 AND(B, 1'b0, A, Y[0]);
  mux2x1 OR(B, A, 1'b1, Y[1]);
  mux2x1 NOT(A, 1'b1, 1'b0, Y[2]);
  mux2x1 NAND(A, 1'b1, ~B, Y[3]);
  mux2x1 NOR(A, ~B, 1'b0, Y[4]);
  mux2x1 EXOR(A, B, ~B, Y[5]);
  mux2x1 EXNOR(A, ~B, B, Y[6]);

endmodule