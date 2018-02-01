`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:48 06/09/2017 
// Design Name: 
// Module Name:    MIO_BUS 
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
module MIO_BUS(
		input clk,
		input rst,
		input [3:0] BTN,	// 4 
		input [7:0] SW,	// 8 
		input mem_w,	//  CPU
		input [31:0] Cpu_data2bus,	//data from CPU
		input [31:0] addr_bus,	   //addr from CPU
		input [31:0] ram_data_out,	//  RAM 
		input [7:0] led_out,	//  LED 
		input [31:0] counter_out,	// 
		input counter0_out,	//  0 
		input counter1_out,	//  1 
		input counter2_out,	//  2 
		output reg [31:0] Cpu_data4bus,	// write to CPU
		output reg [31:0] ram_data_in,	// from CPU write to Memory
		output reg [9:0] ram_addr,	      // Memory Address signals
		output reg data_ram_we,				// RAM  RAM
		output reg GPIOf0000000_we,	   // GPIOffffff00_we
		output reg GPIOe0000000_we,	   // GPIOfffffe00_we
		output reg counter_we,	         //记数器
		output reg [31:0] Peripheral_in,	//送外部设备总线
		
		input [31:0] lg_out,
		output reg lg_we,
		output reg [6:0] lg_addr,
		
		
		input wire [15:0] xkey, // ps2
		
		output reg [8:0]bus4game,
		output reg axwe,
		output reg aywe,
		input wire [8:0] ax,
		input wire [8:0] ay,
		
		input wire [8:0] bx,
		output reg bxwe,
		input wire [31:0] score,
		output reg [31:0] score_reg,
		output reg score_reg_we
	);

	reg data_ram_rd;
	reg GPIOf0000000_rd;
	reg GPIOe0000000_rd;
	reg counter_rd;
	reg [7:0] led_in;

	reg lg_rd;
	
	initial begin
		score_reg = 4'hF;
	end

	always @(*) begin

		data_ram_we=0;			// 主存写信号
		data_ram_rd=0;			// 主存读信号
		counter_we=0;			// 计数器写信号
		counter_rd=0;			// 计数器读信号
		GPIOf0000000_we=0;	// 设备1：PIO写信号 
		GPIOe0000000_we=0;	// 计数器：Counter_x写信号 
		GPIOf0000000_rd=0;	// 设备3、4：SW等读信号 
		GPIOe0000000_rd=0;	// 设备2：七段显示器写信号 
		ram_addr=10'h0;		// 内存物理地址：RAM_B地址
		ram_data_in=32'h0;	// 内存读数据：RAM_B输出数据
		Peripheral_in=32'h0;	// 外设总线：CPU输出，外设写入数据 
		Cpu_data4bus =32'h0;	// 开始译码   // data_ram (00000000 - 00000ffc, actually lower 4KB RAM) 

		lg_we = 0;
		lg_rd = 0;
		lg_addr = 7'b0;
		
		case (addr_bus[31:28])
			4'h0: 
					
			if( addr_bus == 32'h00000600 )				// ps2 address
				begin
					axwe = 0;
					aywe = 0;
					Cpu_data4bus = {16'h0000,xkey};  // send ps2 to cpu
				end
			else if( addr_bus == 32'h00000500 )		// x address
				begin
					axwe = mem_w;
					aywe = 0;
					Cpu_data4bus = ax ;
					bus4game = Cpu_data2bus[8:0]; 	// busforgame is position   cpudata4bus : write to cpu
				end
			else if( addr_bus == 32'h00000700 )		// y address
				begin
					aywe = mem_w;
					axwe = 0;
					Cpu_data4bus = {23'h000000,ay};
					bus4game = Cpu_data2bus[8:0];   
				end
			
			else if ( addr_bus == 32'h00000800 )		// x address of backet
				begin
					bxwe = mem_w;
					Cpu_data4bus = {23'h000000,bx};
					bus4game = Cpu_data2bus[8:0];   
				end
				
			else if ( addr_bus == 32'h00000900 && axwe == 0 && bxwe == 0 )	
				begin
					if(mem_w)
						score_reg = Cpu_data2bus;
					else begin
						Cpu_data4bus = score_reg;
						score_reg_we = mem_w;
					end
				end
				
			else
				begin
				axwe = 0;
				aywe = 0;
				data_ram_we = mem_w;
				ram_addr = addr_bus[11:2];
				ram_data_in = Cpu_data2bus;
				Cpu_data4bus = ram_data_out;
				data_ram_rd = ~mem_w;
				end
			4'hd: begin	// Life game
				lg_we = mem_w;
				lg_addr = addr_bus[6:0];
				Peripheral_in = Cpu_data2bus;
				Cpu_data4bus = lg_out;
				lg_rd = ~mem_w;
			end
			4'he: begin					// 七段显示器 (e0000000 - efffffff, SSeg7_Dev)
				GPIOe0000000_we = mem_w;
				Peripheral_in = Cpu_data2bus;
				Cpu_data4bus = counter_out;
				GPIOe0000000_rd = ~mem_w;
			end
			4'hf: begin   				// PIO   (f0000000 - ffffffff0, 8 LEDs & counter, f000004-fffffff4) 
				if (addr_bus[2]) begin					//f0000004
					counter_we = mem_w;
					Peripheral_in = Cpu_data2bus;
					Cpu_data4bus = counter_out;		//write Counter Value
					counter_rd = ~mem_w;
					end 
					
				else begin
					GPIOf0000000_we = mem_w;
					Peripheral_in = Cpu_data2bus;
					Cpu_data4bus = {counter0_out, counter1_out, counter2_out, 9'h00, led_out, BTN, SW};
					GPIOf0000000_rd = ~mem_w;
				end
			end
		endcase

		casex ({data_ram_rd, lg_rd, GPIOe0000000_rd, counter_rd, GPIOf0000000_rd})
			5'b1xxxx: Cpu_data4bus = ram_data_out;	// read from RAM
			5'bx1xxx: Cpu_data4bus = lg_out;	// read from life game
			5'bxx1xx: Cpu_data4bus = counter_out;	// read from Counter
			5'bxxx1x: Cpu_data4bus = counter_out;	// read from Counter
			5'bxxxx1: Cpu_data4bus = {counter0_out, counter1_out,  counter2_out, 9'h00, led_out, BTN, SW};	//read from SW & BTN
		endcase
	end
endmodule