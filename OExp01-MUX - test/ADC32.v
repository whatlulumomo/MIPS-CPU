`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:53:46 02/27/2017 
// Design Name: 
// Module Name:    ADC32 
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
module ADC32(input [31:0] A, 			//带进位的32位加减器，考虑无符号数兼容。在设计ALU的slt指令上有区别
				 input [31:0] B, 
				 input C0,		//最低进位输入
				 output [31:0] s,
				 output Co	//修改逻辑符号，将进位分开

				  );
				  

	wire B_Notation = C0 ^ 1'b0;	  
	
	assign s = C0 == 0 ? A+B : A-B;
	assign Co = s>32'hffffffff ? 1:0;

endmodule
