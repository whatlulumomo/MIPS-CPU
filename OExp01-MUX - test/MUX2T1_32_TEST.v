`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:01:44 02/28/2017
// Design Name:   MUX2T1_32
// Module Name:   C:/.Xilinx/jizu/OExp01-MUX/MUX2T1_32_TEST.v
// Project Name:  OExp01-MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX2T1_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX2T1_32_TEST;

	// Inputs
	reg [31:0] I0;
	reg [31:0] I1;
	reg sel;

	// Outputs
	wire [31:0] o;

	// Instantiate the Unit Under Test (UUT)
	MUX2T1_32 uut (
		.I0(I0), 
		.I1(I1), 
		.sel(sel), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		I0 = 0;
		I1 = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
      I0 = 1;
		I1 = 16;
		#100;
		sel = 1;
		// Add stimulus here

	end
      
endmodule

