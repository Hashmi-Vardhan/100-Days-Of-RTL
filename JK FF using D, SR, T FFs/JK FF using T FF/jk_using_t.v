module jk_using_t(clk,rst,J,K,Q,Q_bar);
  input clk, rst,J,K;
  output Q,Q_bar;
  wire w1,w2;
  
  assign w1 = (K & Q) | (J & ~Q);
  
  t_ff TF(clk,rst, w1,Q,Q_bar);
  
endmodule

module t_ff(
    input clk,rst,T,
    output reg Q, output Q_bar
    );
    always@(posedge clk)
          begin
            if(rst)
               Q <= 1'b0;
            else
                begin
                   if(T)
                    Q<= ~Q;
                   else
                    Q<= Q;                     
                end
          end
		  assign Q_bar = ~Q;
endmodule