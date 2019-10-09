module BCD_count (clock, reset, out);

	output reg [3:0] out;
	
	input clock, reset;
	wire clock, reset;

	initial out = 5;

	always@(posedge(clock))begin
	if(reset)
	out <= 0;
	else if (out<9)
	begin
	out <= out + 1;
	end 
	else if(out==9)
	begin
	out<=0;
	end
end
endmodule
