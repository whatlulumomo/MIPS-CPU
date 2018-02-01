`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:08:37 03/01/2017
// Design Name:   Multi_8CH32
// Module Name:   C:/.Xilinx/jizu/OExp01-MUX/testmulti.v
// Project Name:  OExp01-MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multi_8CH32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testmulti;

	// Inputs
	reg clk;
	reg rst;
	reg EN;
	reg [2:0] Test;
	reg [63:0] point_in;
	reg [63:0] LES;
	reg [31:0] Data0;
	reg [31:0] data1;
	reg [31:0] data2;
	reg [31:0] data3;
	reg [31:0] data4;
	reg [31:0] data5;
	reg [31:0] data6;
	reg [31:0] data7;

	// Outputs
	wire [7:0] point_out;
	wire [7:0] LE_out;
	wire [31:0] Disp_num;

	// Instantiate the Unit Under Test (UUT)
	Multi_8CH32 uut (
		.clk(clk), 
		.rst(rst), 
		.EN(EN), 
		.Test(Test), 
		.point_in(point_in), 
		.LES(LES), 
		.Data0(Data0), 
		.data1(data1), 
		.data2(data2), 
		.data3(data3), 
		.data4(data4), 
		.data5(data5), 
		.data6(data6), 
		.data7(data7), 
		.point_out(point_out), 
		.LE_out(LE_out), 
		.Disp_num(Disp_num)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		EN = 0;
		Test = 0;
		point_in = 0;
		LES = 0;
		Data0 = 0;
		data1 = 32'h11111111;
		data2 = 32'h22222222;
		data3 = 32'h33333333;
		data4 = 32'h44444444;
		data5 = 32'h55555555;
		data6 = 32'h66666666;
		data7 = 32'h77777777;

		// Wait 100 ns for global reset to finish
		#100;
      Test = 1;
		#100;
      Test =2;
		#100;
      Test =3;
		#100;
      Test =4;
		#100;
      Test =5;
		#100;
      Test =6;
		#100;
      Test =7;
		#100;
      Test =0;
		EN=0;
		// Add stimulus here
	forever begin
	#50;
	clk = ~clk;  
end	
	end
   
endmodule

