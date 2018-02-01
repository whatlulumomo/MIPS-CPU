`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:24:59 03/01/2017
// Design Name:   MUX8T1_32
// Module Name:   C:/.Xilinx/jizu/OExp01-MUX/MUX8T1_32_TEST.v
// Project Name:  OExp01-MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX8T1_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX8T1_32_TEST;

	// Inputs
	reg [31:0] I0;
	reg [31:0] I1;
	reg [31:0] I2;
	reg [31:0] I3;
	reg [31:0] I4;
	reg [31:0] I5;
	reg [31:0] I6;
	reg [31:0] I7;
	reg [2:0] s;

	// Outputs
	wire [31:0] O;

	// Instantiate the Unit Under Test (UUT)
	MUX8T1_32 uut (
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.I4(I4), 
		.I5(I5), 
		.I6(I6), 
		.I7(I7), 
		.s(s), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		I0 = 0;
		I1 = 1;
		I2 = 2;
		I3 = 3;
		I4 = 4;
		I5 = 5;
		I6 = 6;
		I7 = 7;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
      s=1;
		#50;
		s=2;
		#50;
		s=3;
		#50;
		s=4;
		#50;
		s=5;
		#50;
		s=6;
		#50;
		s=7;
		#50;
		s=0;
		I0 = 32'h5;
		I1 = 32'hA;
		I2 = 32'h5;
		I3 = 32'hA;
		I4 = 32'h5;
		I5 = 32'hA;
		I6 = 32'h5;
		I7 = 32'hA;
		#50;
		s=1;
		#50;
		s=2;
		#50;
		s=3;
		#50;
		s=4;
		#50;
		s=5;
		#50;
		s=6;
		#50;
		s=7;
		#50;
		// Add stimulus here

	end
      
endmodule

