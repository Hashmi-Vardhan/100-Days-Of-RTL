module vending_machine(clk, rst, coin, product, change);
  input clk, rst;
  input [1:0] coin; // x = 00->Rs0/-, x = 01->Rs5/-,x = 10->Rs10/-
  output product;
  output reg change;
  parameter A = 2'b00;
  parameter B = 2'b01;
  parameter C = 2'b10;
  
  reg [1:0] ps, ns;
  always @(posedge clk or negedge rst) begin
    if(!rst) begin 
      ps <= A;
    end
    else ps <= ns;
  end
  
  always @(*) begin
    case(ps)
	  A: begin
	    if(coin==00) begin
		change = 0;
		ns = A;
		end
		else if (coin == 01) begin
		change = 0;
		ns = B;
		end
		else begin
		change = 0;
		ns = C;
		end
	  end
	  B: begin
	    if(coin==00)begin
		change = 0;
		ns = B;
		end
		else if(coin == 01) begin
		change = 0;
		ns = C;
		end
		else begin
		change = 0;
		ns = A;
		end
	  end
	  C: begin
	    if(coin==00) begin
		change = 0;
		ns = C;
		end
		else if(coin==01) begin
		change = 0;
		ns = A;
		end
		else begin 
		ns = A;
		change = 1;
		end
	  end
	  default: begin 
	  ns = A;
	  change = 0;
	  end
	endcase
	end
	
  assign product = ((ps==B | ps == C) & ns==A)?1:0;
endmodule
	
