`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:28 01/30/2018 
// Design Name: 	
// Module Name:    Activity7 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Activity7(input clk, input load, input lr, input[3:0] d, output reg[3:0] q);

	always@(posedge clk)
		if(load)
			q <= d;
		else if (lr)
			q <= { q[2:0], 1'b0};
		else
			q <= q >> 1;

endmodule
