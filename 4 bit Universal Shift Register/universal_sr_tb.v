module universal_sr_tb;
reg [3:0]M;
reg clr,clk;
reg [0:1]sel;
wire [3:0]Q;
universal_sr dut(clr,clk,sel,M,Q);
initial  begin 
clk=0;
repeat(100)
#10 clk=~clk;
end

initial  begin

M=4'b1011;
sel=2'b01;
clr=1'b0;
#40;

M=4'b1011;
sel=2'b10;
clr=1'b0;
#40;

M=4'b1011;
sel=2'b11;
clr=1'b0;
#40;

M=4'b1011;
sel=2'b00;
clr=1'b0;
#40;

end
endmodule

