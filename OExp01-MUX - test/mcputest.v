// Verilog test fixture created from schematic C:\cssystem\MultiCPU\OExp12 -EXTENTED\OExp01-MUX\MCPU.sch - Sat May 20 17:25:37 2017

`timescale 1ns / 1ps

module MCPU_MCPU_sch_tb();

// Inputs
   reg MIO_ready;
   reg clk;
   reg reset;
   reg [31:0] Data_in;
   reg INT;

// Output
   wire CPU_MIO;
   wire [31:0] PC_out;
   wire [31:0] inst_out;
   wire [31:0] Data_out;
   wire [31:0] Addr_out;
   wire [4:0] state;
   wire mem_w;

// Bidirs

// Instantiate the UUT
   MCPU UUT (
		.CPU_MIO(CPU_MIO), 
		.PC_out(PC_out), 
		.inst_out(inst_out), 
		.Data_out(Data_out), 
		.Addr_out(Addr_out), 
		.MIO_ready(MIO_ready), 
		.clk(clk), 
		.reset(reset), 
		.Data_in(Data_in), 
		.state(state), 
		.mem_w(mem_w), 
		.INT(INT)
   );
// Initialize Inputs
 initial begin
		MIO_ready = 1;
		clk = 0;
		reset = 1;
		Data_in = 0;
		INT = 0;
		
		#40;
		
		reset = 0;
		
		//add r1,r0,r0; R-format
		Data_in = 32'b000000_00000_00000_00001_00000_100000;
		#80;
		
		//lw r2,0(r1);
		Data_in = 32'b100011_00001_00010_00000_00000_000000;
		#60;
		Data_in = 32'd1;//r1
		#40;
		
		//sw r2,0(r1);
		Data_in = 32'b101011_00001_00010_00000_00000_000000;
		#80;
		//beq r1,r2,2;
		Data_in = 32'b000100_00010_00001_00000_00000_000010;
		#60;
		//j 32;
		Data_in = 32'b000010_00000_00000_00000_00000_001000;
		#60;
		
		end
    always begin
		clk = 0;#20;
		clk = 1;#20;
	end

endmodule
