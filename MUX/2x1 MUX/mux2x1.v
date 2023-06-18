module mux2x1(input s,i0,i1, output y);
	assign y = (~s&i0)|(s&i1);
endmodule

/*module mux2x1(input s,i0,i1, output y); 
	assign y = s?i1:i0;  
endmodule

module mux2x1(input s,i0,i1, output y); 
	always @(*) begin
		case(s)
		0 : y = i0;
		1 : y = i1;
	end
endmodule

module mux2x1(input s,i0,i1, output y);
	always @(*) begin
	if(s)
		y = i1;
	else
		y = i0;
	end
endmodule*/