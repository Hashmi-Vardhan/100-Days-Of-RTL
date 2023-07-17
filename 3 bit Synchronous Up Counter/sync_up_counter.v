module sync_up_counter(input clk,rst,T,output [2:0]Q);
wire T1,T2;

assign T1 = Q[0];
assign T2 = Q[0]&Q[1]; 
t_ff TF1(clk,rst,T,Q[0]);
t_ff TF2(clk,rst,T1,Q[1]);
t_ff TF3(clk,rst,T2,Q[2]);
endmodule 


module t_ff(input clk,reset,t,output q);
jk_ff dut(clk,reset,t,t,q);
endmodule


module jk_ff(input clk,reset,j,k, output reg q);    
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
endmodule  

