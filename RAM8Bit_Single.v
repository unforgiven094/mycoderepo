module RAM8bit_SinglePort(clk, addr, data, rw, cs, oe
    );
	 //parameters
	 parameter DATA_WIDTH = 8;
	 parameter ADDR_WIDTH = 8;
	 parameter RAM_DEPTH = 1 << ADDR_WIDTH;
	 
	 //input pins
	 input clk;
	 input [ADDR_WIDTH-1:0] addr;
	 input rw;
	 input cs;
	 input oe;
	 input [DATA_WIDTH-1:0] data;
	
	//registers
	reg [DATA_WIDTH-1:0] data_out;
	reg [DATA_WIDTH-1:0] mem[0:RAM_DEPTH-1];
	reg oe_r;
	
	//tristate buffer_control
	assign data = (cs && oe && !rw) ? data_out:8'bz;
	
	//write mem block
	always @(posedge clk)
	begin : MEM_WRITE
		if (cs && rw) 
		begin
			mem[addr] = data;
		end
	end
	
	//read mem block
	always@(posedge clk)
	begin: MEM_READ
		if (cs && oe && !rw)
			begin
				data_out = mem[addr];
				oe_r = 1;
			end
		else
			begin
				oe_r = 0;
			end
	end

endmodule
