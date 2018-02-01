`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:44 02/27/2017 
// Design Name: 
// Module Name:    MUX2T1_32 
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
module MUX2T1_32(input [31:0] I0,
					  input [31:0] I1,
					  input s,
					  output reg[31:0] o
    );
	 always@(s or I0 or I1)
			o <= s ? I1 : I0;
			
endmodule
