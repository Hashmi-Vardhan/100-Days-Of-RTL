module dual_port_ram(input [7:0] data_a, data_b, input [5:0] addr_a,addr_b, input we_a,we_b,clk, output reg [7:0] q_a,q_b);

reg [7:0] ram [63:0];//64*8 bit ram

//Port - A operation
always @(posedge clk)begin
	if(we_a) ram[addr_a] <= data_a;
	else q_a <= ram[addr_a];
end

//Port - B operation
always @(posedge clk)begin
	if(we_b) ram[addr_b] <= data_b;
	else q_b <= ram[addr_b];
end
endmodule 
