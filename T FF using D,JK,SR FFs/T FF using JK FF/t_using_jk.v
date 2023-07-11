module t_using_jk(clk,rst,T,Q,Q_bar);
input clk,rst,T;
output Q,Q_bar;

jk_ff JKF(clk,rst,T,T,Q,Q_bar);

endmodule

module jk_ff(clk,rst,J,K, q,q_bar);
input clk,rst,J,K;
output reg q;
output q_bar;

always@(posedge clk)
begin
if(!rst) begin
  case({J,K})
    2'b00: q <= q;
  2'b01: q <= 1'b0;
  2'b10: q <= 1'b1;
  2'b11: q <= ~q;
  endcase
end
else
q <= 1'b0;
end

assign q_bar = ~q;
endmodule
