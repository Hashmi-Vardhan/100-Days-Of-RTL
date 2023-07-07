module t_ff(clk, rst,T, Q, Q_bar);
input clk,rst, T;
output Q,Q_bar;

jk_ff JKF(clk, rst, T, T, Q, Q_bar);

endmodule

module jk_ff(clk,rst, J,K, Q,Q_bar);  
   input clk,rst,J,K;
   output reg Q;
   output Q_bar;   
  
   always @(posedge clk)  
   begin
   if(!rst) begin
      case ({J,K})  
         2'b00 :  Q <= Q;  
         2'b01 :  Q <= 1'b0;  
         2'b10 :  Q <= 1'b1;  
         2'b11 :  Q <= ~Q;  
      endcase  
   end
   
   else
   Q = 1'b0;
   end
   assign Q_bar = ~Q;
endmodule

