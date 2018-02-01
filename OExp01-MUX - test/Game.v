`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:17:24 06/10/2017 
// Design Name: 
// Module Name:    Game 
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
module Game(
	input wire clk,
	input wire [9:0] pixel_x,
	input wire [9:0] pixel_y,
	input wire [8:0] Ax,
	input wire [8:0] Ay,
	input wire AWe,
	input wire vedio_on,
	output reg [11:0] OutColor,
	input wire [15:0] xkey,
	input wire clk100hz,
	
	input wire A_Xwe,
	input wire A_Ywe,
	input wire [8:0] datafromcpu,
	output reg [8:0] A_X,
	output reg [8:0] A_Y,
	
	output reg [8:0] B_X,
	output reg [8:0] B_Y,
	input B_Xwe
	
    );
	 
	 wire [15:0] apple_addr;
	 wire [15:0] apple_data;
	 
	 assign apple_addr = pixel_x - A_X + 100 * ( pixel_y - A_Y );
	 red P01(.clka(clk),.addra(apple_addr), .douta(apple_data));
	 
	 wire [15:0] backet_addr;
	 wire [15:0] backet_data;
	 
	 assign backet_addr = pixel_x - B_X + 150 * ( pixel_y - B_Y );
	 backet P02(.clka(clk),.addra(backet_addr), .douta(backet_data));
	 
	 wire [17:0] background_addr;
	 wire [15:0] background_data;
	 assign background_addr = pixel_x + 640 * pixel_y;
	 back P03(.clka(clk),.addra(background_addr), .douta(background_data));
	 
	
	initial begin
		A_X = 300;
		A_Y = 40;
		B_X = 20;
		B_Y = 370;
	end
	
	parameter xspeed = 1;
	parameter yspeed = 1;
	
	always @ ( posedge clk100hz )
	begin
				
		if(vedio_on == 0)
			begin
			   if(A_Xwe)
					A_X = datafromcpu;
				if(A_Ywe)
					A_Y = datafromcpu;
					
				if(B_Xwe)
					B_X = datafromcpu;
			end

	end
	
	wire apple_pos = pixel_x >= A_X && pixel_x <= A_X + 100 && pixel_y >= A_Y && pixel_y <= A_Y + 100 && apple_data[3:0] != 4'h0;
	wire backet_pos = pixel_x >= B_X && pixel_x <= B_X + 150 && pixel_y >= B_Y && pixel_y <= B_Y + 120 && backet_data[3:0] != 4'h0;
	wire background_pos = pixel_x >= 0 &&  pixel_x < 640 && pixel_y >= 0 && pixel_y <275 && background_data[3:0] != 4'h0;
	
	always@(posedge clk)
	begin
		if(vedio_on) begin
		
	   	if(  backet_pos )
			begin
				OutColor = backet_data[15:4];
			end  
			else if( apple_pos )
			begin
				OutColor = apple_data[15:4];
			end
			else if(background_pos)
			begin
				OutColor = background_data[15:4];
			end
			
			else
			begin
				OutColor[11:8] = 4'b1111;
				OutColor[7:4] = 4'b1111;
				OutColor[3:0] = 4'b1111;
			end
		end
	end


endmodule
