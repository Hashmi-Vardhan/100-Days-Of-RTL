module sr_ff(clk,S,R, Q,Q_bar);
input clk,S,R;
output reg Q;
output Q_bar;

always@(posedge clk)
begin
  case({S,R})
    2'b00: Q <= Q;
	2'b01: Q <= 1'b0;
	2'b10: Q <= 1'b1;
	2'b11: Q <= 1'bx;
  endcase
end

assign Q_bar = ~Q;

endmodule