`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:48 06/12/2017
// Design Name:   MIO_BUS
// Module Name:   C:/cssystem/Final/Final/OExp01-MUX/bustest.v
// Project Name:  OExp01-MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIO_BUS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bustest;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] BTN;
	reg [7:0] SW;
	reg mem_w;
	reg [31:0] Cpu_data2bus;
	reg [31:0] addr_bus;
	reg [31:0] ram_data_out;
	reg [7:0] led_out;
	reg [31:0] counter_out;
	reg counter0_out;
	reg counter1_out;
	reg counter2_out;
	reg [31:0] lg_out;
	reg [15:0] xkey;
	reg [8:0] ax;
	reg [8:0] ay;

	// Outputs
	wire [31:0] Cpu_data4bus;
	wire [31:0] ram_data_in;
	wire [9:0] ram_addr;
	wire data_ram_we;
	wire GPIOf0000000_we;
	wire GPIOe0000000_we;
	wire counter_we;
	wire [31:0] Peripheral_in;
	wire lg_we;
	wire [6:0] lg_addr;
	wire [8:0] bus4game;
	wire axwe;
	wire aywe;

	// Instantiate the Unit Under Test (UUT)
	MIO_BUS uut (
		.clk(clk), 
		.rst(rst), 
		.BTN(BTN), 
		.SW(SW), 
		.mem_w(mem_w), 
		.Cpu_data2bus(Cpu_data2bus), 
		.addr_bus(addr_bus), 
		.ram_data_out(ram_data_out), 
		.led_out(led_out), 
		.counter_out(counter_out), 
		.counter0_out(counter0_out), 
		.counter1_out(counter1_out), 
		.counter2_out(counter2_out), 
		.Cpu_data4bus(Cpu_data4bus), 
		.ram_data_in(ram_data_in), 
		.ram_addr(ram_addr), 
		.data_ram_we(data_ram_we), 
		.GPIOf0000000_we(GPIOf0000000_we), 
		.GPIOe0000000_we(GPIOe0000000_we), 
		.counter_we(counter_we), 
		.Peripheral_in(Peripheral_in), 
		.lg_out(lg_out), 
		.lg_we(lg_we), 
		.lg_addr(lg_addr), 
		.xkey(xkey), 
		.bus4game(bus4game), 
		.axwe(axwe), 
		.aywe(aywe), 
		.ax(ax), 
		.ay(ay)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		BTN = 0;
		SW = 0;
		mem_w = 0;
		Cpu_data2bus = 0;
		addr_bus = 0;
		ram_data_out = 0;
		led_out = 0;
		counter_out = 0;
		counter0_out = 0;
		counter1_out = 0;
		counter2_out = 0;
		lg_out = 0;
		xkey = 0;
		ax = 0;
		ay = 0;

		// Wait 100 ns for global reset to finish
		#100;
		addr_bus = 32'h00000500;
		mem_w = 1;
		ax = 15;
		#100;
        
		// Add stimulus here

	end
      
endmodule

