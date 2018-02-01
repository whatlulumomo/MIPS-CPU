`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:58:35 02/28/2017
// Design Name:   MUX4T1_5
// Module Name:   C:/.Xilinx/jizu/OExp01-MUX/MUX4T1_5_TEST.v
// Project Name:  OExp01-MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX4T1_5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX4T1_5_TEST;

	// Inputs
	reg [1:0] s;
	reg [4:0] I0;
	reg [4:0] I1;
	reg [4:0] I2;
	reg [4:0] I3;

	// Outputs
	wire [4:0] o;

	// Instantiate the Unit Under Test (UUT)
	MUX4T1_5 uut (
		.s(s), 
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		I0 = 0;
		I1 = 0;
		I2 = 0;
		I3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      I0 = 1;
		I1 = 2;
		I2 = 3;
		I3 = 4;
		#100;
		s = 1;
		#100;
		s = 2;
		#100;
		s = 3;
	
		// Add stimulus here

	end
      
endmodule

