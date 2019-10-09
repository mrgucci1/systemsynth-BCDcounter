module BCD_count_tb();

reg clock, reset;
wire [3:0] out;

BCD_count uut(
	.clock(clock),
	.reset(reset),
	.out(out)
	);
initial begin
clock = 0;
reset = 0;
forever #20 clock =~clock;
end
endmodule
