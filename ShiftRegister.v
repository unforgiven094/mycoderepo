
module Activity7(input clk, input load, input lr, input[3:0] d, output reg[3:0] q);

	always@(posedge clk)
		if(load)
			q <= d;
		else if (lr)
			q <= { q[2:0], 1'b0};
		else
			q <= q >> 1;

endmodule
