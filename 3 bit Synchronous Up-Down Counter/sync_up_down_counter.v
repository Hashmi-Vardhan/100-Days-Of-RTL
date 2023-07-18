module sync_up_down_counter(input clk,rst,M,T,output [2:0]Q,Q_bar);
wire T1,T2;

assign T1 = (~M & Q[0]) | (M & Q_bar[0]);
assign T2 = (~M & Q[0] & Q[1]) | (M & Q_bar[0] & Q_bar[1]); 

t_ff TF1(clk,rst,T,Q[0],Q_bar[0]);
t_ff TF2(clk,rst,T1,Q[1],Q_bar[1]);
t_ff TF3(clk,rst,T2,Q[2],Q_bar[2]);

endmodule 


module t_ff(input clk,reset,t,output q,q_bar);
jk_ff dut(clk,reset,t,t,q,q_bar);
endmodule


module jk_ff(input clk,reset,j,k, output reg q,output q_bar);    
   always @(negedge clk) begin
     if(!reset) begin
       case ({j,k})  
         2'b00 :  q <= q;  
         2'b01 :  q <= 1'b0;  
         2'b10 :  q <= 1'b1;  
         2'b11 :  q <= ~q;  
      endcase  
     end  
     else begin
       q = 1'b0;
     end
   end
   assign q_bar = ~q;
endmodule  


