`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:19:33 03/27/2017 
// Design Name: 
// Module Name:    slt32 
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
module slt32(input [31:0]A,
				 input [31:0]B,
				 output [31:0]res_slt
    );
parameter one = 32'h00000001, zero_0 = 32'h00000000;
	assign res_slt=(A<B)? one:zero_0;

endmodule
