////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : TOP.vf
// /___/   /\     Timestamp : 05/20/2017 13:44:34
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -sympath "C:/cssystem/MultiCPU/OExp12 -EXTENTED" -sympath "C:/cssystem/MultiCPU/OExp12 -EXTENTED/OExp01-MUX/ipcore_dir" -intstyle ise -family kintex7 -verilog "C:/cssystem/MultiCPU/OExp12 -EXTENTED/OExp01-MUX/TOP.vf" -w "C:/cssystem/MultiCPU/OExp12 -EXTENTED/OExp01-MUX/TOP.sch"
//Design Name: TOP
//Device: kintex7
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps



module TOP(clk_100mhz, 
           K_COL, 
           RSTN, 
           SW, 
           Buzzer, 
           CR, 
           K_ROW, 
           LEDCLK, 
           LEDCLR, 
           LEDDT, 
           LEDEN, 
           RDY, 
           readn, 
           SEGCLK, 
           SEGCLR, 
           SEGDT, 
           SEGEN,
			  red,
			  blue,
			  green,
			  h_sync,
			  v_sync,
			  ps2c,
			  ps2d
			  );

    input clk_100mhz;
    input [3:0] K_COL;
    input RSTN;
    input [15:0] SW;
   output Buzzer;
   output CR;
   output [4:0] K_ROW;
   output LEDCLK;
   output LEDCLR;
   output LEDDT;
   output LEDEN;
   output RDY;
   output readn;
   output SEGCLK;
   output SEGCLR;
   output SEGDT;
   output SEGEN;
	
	input wire ps2c, ps2d;
	output [3:0] red;
	output [3:0] green;
	output [3:0] blue;
	output h_sync;
	output v_sync;
   
   wire [31:0] Addr_out;
   wire [31:0] Ai;
   wire [31:0] Bi;
   wire [7:0] blink;
   wire [3:0] BTN_OK;
   wire Clk_CPU;
   wire [31:0] Counter_out;
   wire [31:0] CPU2IO;
   wire [31:0] Data_in;
   wire [31:0] Data_out;
   wire [31:0] Disp_num;
   wire [31:0] Div;
   wire GPIOF0;
   wire [31:0] inst;
   wire [7:0] LE_out;
   wire N0;
   wire [31:0] PC;
   wire [7:0] point_out;
   wire [3:0] Pulse;
   wire rst;
   wire [4:0] State;
   wire [15:0] SW_OK;
   wire V5;
   wire [4:0] XLXN_4;
   wire XLXN_60;
   wire [1:0] XLXN_66;
   wire XLXN_68;
   wire XLXN_82;
   wire XLXN_83;
   wire [15:0] XLXN_84;
   wire [31:0] XLXN_86;
   wire [9:0] XLXN_88;
   wire [31:0] XLXN_90;
   wire XLXN_91;
   wire XLXN_97;
   wire XLXN_107;
   wire [0:0] XLXN_108;
   wire RDY_DUMMY;
   wire readn_DUMMY;
   
   assign RDY = RDY_DUMMY;
   assign readn = readn_DUMMY;
	
	
	wire clock_25mhz;
	wire [9:0] x_position;
	wire [9:0] y_position;
	wire inside_video;
	wire [11:0] color;
	
	
	
	assign clock_25mhz = Div[1];

	assign red = inside_video ? color[11:8] : 4'b0000;
	assign green = inside_video ? color[7:4] : 4'b0000;
	assign blue = inside_video ? color[3:0]: 4'b0000;
	
	wire [8:0] bus4game;
	wire [8:0] Applex;
	wire [8:0] Appley;
	wire AppleWe;
	assign AppleWe = 1'b0;
	
	wire A_Xweline;
	wire A_Yweline;
	
	wire [8:0] Backetx;
	wire B_Xweline;
	
	Game U04(
		.clk(clock_25mhz),
		.clk100hz(Div[6]),
		.xkey(xkey[15:0]),
		.pixel_x(x_position[9:0]),
		.pixel_y(y_position[9:0]),
		.vedio_on(inside_video),
		.OutColor(color[11:0]),
		
		.datafromcpu(bus4game[8:0]),
		.A_X(Applex),		// output reg
		.A_Y(Appley),
		.A_Xwe(A_Xweline),	// input wire
		.A_Ywe(A_Yweline),

		.B_Xwe(B_Xweline),
		.B_X(Backetx)
		
		);

	
	vga_controller U00 (
		.clk(clock_25mhz),
		.clr(rst),
		.hsync(h_sync),
		.vsync(v_sync),
		.video_on(inside_video),
		.pixel_x(x_position[9:0]),
		.pixel_y(y_position[9:0])
	);
	
	wire [15:0] xkey;
	
	ps2_receiver keyboard (.clk(clock_25mhz), .clr(rst), .ps2c(ps2c), .ps2d(ps2d), .regkey(xkey));
	
	wire [31:0] ScoreReg;
	
	MIO_BUS  XLXI_24 (
						  .ax(Applex),
						  .ay(Appley),
						  .axwe(A_Xweline),
						  .aywe(A_Yweline),
						  .xkey(xkey),
						  .bus4game(bus4game[8:0]),
						  
						  .bx(Backetx),
						  .bxwe(B_Xweline),
						  
						  .score_reg(ScoreReg),
						  
						  
						  .addr_bus(Addr_out[31:0]), 
                    .BTN(BTN_OK[3:0]), 
                    .clk(clk_100mhz), 
                    .counter_out(Counter_out[31:0]), 
                    .counter0_out(XLXN_97), 
                    .counter1_out(XLXN_82), 
                    .counter2_out(XLXN_83), 
                    .Cpu_data2bus(Data_out[31:0]), 
                    .led_out(XLXN_84[15:0]), 
                    .mem_w(XLXN_91), 
                    .ram_data_out(XLXN_86[31:0]), 
                    .rst(rst), 
                    .SW(SW_OK[15:0]), 
                    .counter_we(XLXN_68), 
                    .Cpu_data4bus(Data_in[31:0]), 
                    .data_ram_we(XLXN_108[0]), 
                    .GPIOe0000000_we(XLXN_60), 
                    .GPIOf0000000_we(GPIOF0), 
                    .Peripheral_in(CPU2IO[31:0]), 
                    .ram_addr(XLXN_88[9:0]), 
                    .ram_data_in(XLXN_90[31:0]));
						  
						  Multi_8CH32  XLXI_23 (.clk(XLXN_107), 
                        .Data0(CPU2IO[31:0]), 
                        .data1(Applex), 
                        .data2(ScoreReg), 
                        .data3({xkey,xkey}), 
                        .data4(Addr_out[31:0]), 
                        .data5(Data_out[31:0]), 
                        .data6(Data_in[31:0]), 
                        .data7(Backetx ), 
                        .EN(XLXN_60), 
                        .LES({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0}), 
                        .point_in({Div[31:0], Div[31:0]}), 
                        .rst(rst), 
                        .Test(SW_OK[7:5]), 
                        .Disp_num(Disp_num[31:0]), 
                        .LE_out(LE_out[7:0]), 
                        .point_out(point_out[7:0]));
						  
						  
   SAnti_jitter  XLXI_2 (.clk(clk_100mhz), 
                        .Key_y(K_COL[3:0]), 
                        .readn(readn_DUMMY), 
                        .RSTN(RSTN), 
                        .SW(SW[15:0]), 
                        .BTN_OK(BTN_OK[3:0]), 
                        .CR(CR), 
                        .Key_out(XLXN_4[4:0]), 
                        .Key_ready(RDY_DUMMY), 
                        .Key_x(K_ROW[4:0]), 
                        .pulse_out(Pulse[3:0]), 
                        .rst(rst), 
                        .SW_OK(SW_OK[15:0]));
   SEnter_2_32  XLXI_4 (.BTN(BTN_OK[2:0]), 
                       .clk(clk_100mhz), 
                       .Ctrl({SW_OK[7:5], SW_OK[15], SW_OK[0]}), 
                       .Din(XLXN_4[4:0]), 
                       .D_ready(RDY_DUMMY), 
                       .Ai(Ai[31:0]), 
                       .Bi(Bi[31:0]), 
                       .blink(blink[7:0]), 
                       .readn(readn_DUMMY));
   clk_div  XLXI_5 (.clk(clk_100mhz), 
                   .rst(rst), 
                   .SW2(SW_OK[2]), 
                   .clkdiv(Div[31:0]), 
                   .Clk_CPU(Clk_CPU));
   RAM_B  XLXI_10 (.addra(XLXN_88[9:0]), 
                  .clka(clk_100mhz), 
                  .dina(XLXN_90[31:0]), 
                  .wea(XLXN_108[0]), 
                  .douta(XLXN_86[31:0]));
   VCC  XLXI_13 (.P(V5));
   GND  XLXI_14 (.G(N0));
   BUF  XLXI_16 (.I(V5), 
                .O(Buzzer));
   GPIO  XLXI_17 (.clk(XLXN_107), 
                 .EN(GPIOF0), 
                 .P_Data(CPU2IO[31:0]), 
                 .rst(rst), 
                 .Start(Div[20]), 
                 .counter_set(XLXN_66[1:0]), 
                 .GPIOf0(), 
                 .ledclk(LEDCLK), 
                 .ledclrn(LEDCLR), 
                 .LED_out(XLXN_84[15:0]), 
                 .LEDEN(LEDEN), 
                 .ledsout(LEDDT));
   Display  XLXI_22 (.clk(clk_100mhz), 
                    .flash(Div[25]), 
                    .Hexs(Disp_num[31:0]), 
                    .LES(LE_out[7:0]), 
                    .point(point_out[7:0]), 
                    .rst(rst), 
                    .Start(Div[20]), 
                    .Text(SW_OK[0]), 
                    .segclk(SEGCLK), 
                    .segclrn(SEGCLR), 
                    .SEGEN(SEGEN), 
                    .segsout(SEGDT));
						  
						  /*.data1({N0, N0, PC[31:2]}),*/
						  /*data2(inst[31:0]),*/
	wire [31:0] temp;
	assign temp = 32'h12345678;
   
							
   
   Counter  XLXI_26 (.clk(XLXN_107), 
                    .clk0(Div[6]), 
                    .clk1(Div[9]), 
                    .clk2(Div[11]), 
                    .counter_ch(XLXN_66[1:0]), 
                    .counter_val(CPU2IO[31:0]), 
                    .counter_we(XLXN_68), 
                    .rst(rst), 
                    .counter_out(Counter_out[31:0]), 
                    .counter0_OUT(XLXN_97), 
                    .counter1_OUT(XLXN_82), 
                    .counter2_OUT(XLXN_83));
   INV  XLXI_27 (.I(Clk_CPU), 
                .O(XLXN_107));
   MCPU  XLXI_29 (.clk(Clk_CPU), 
                           .Data_in(Data_in[31:0]), 
                           .INT(XLXN_97), 
                           .MIO_ready(V5), 
                           .reset(rst), 
                           .Addr_out(Addr_out[31:0]), 
                           .CPU_MIO(), 
                           .Data_out(Data_out[31:0]), 
                           .inst_out(inst[31:0]), 
                           .mem_w(XLXN_91), 
                           .PC_out(PC[31:0]), 
                           .state(State[4:0]));
endmodule
