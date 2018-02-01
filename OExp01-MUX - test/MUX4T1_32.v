`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:50 03/01/2017 
// Design Name: 
// Module Name:    MUX4T1_32 
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
module MUX4T1_32(input [1:0] s,
					 input [31:0] I0,
					 input [31:0] I1,
					 input [31:0] I2,
					 input [31:0] I3,
					 output reg[31:0] o
    );

		always @(s or I0 or I1 or I2 or I3)
			o <= {!s[1] && !s[0]}?I0:  {!s[1]&& s[0]}?I1: { s[1]&& !s[0]}?I2: I3;

endmodule
