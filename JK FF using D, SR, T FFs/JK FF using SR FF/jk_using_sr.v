module jk_using_sr(clk,rst,J,K,Q,Q_bar);
  input clk, rst,J,K;
  output Q,Q_bar;
  wire w1,w2;
  
  assign w1 = J & ~Q;
  assign w2 = K & Q;
  
  sr_ff SRF(clk,rst, w1,w2,Q,Q_bar);
  
endmodule

module sr_ff(clk,rst,S,R, Q,Q_bar);
input clk,rst,S,R;
output reg Q;
output Q_bar;

always@(posedge clk)
begin
if(!rst) begin
  case({S,R})
    2'b00: Q <= Q;
	2'b01: Q <= 1'b0;
	2'b10: Q <= 1'b1;
	2'b11: Q <= 1'bx;
  endcase
  end
else
  Q = 1'b0;
end

assign Q_bar = ~Q;

endmodule