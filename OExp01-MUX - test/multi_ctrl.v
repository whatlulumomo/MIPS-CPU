`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:12:44 05/17/2017 
// Design Name: 
// Module Name:    multi_ctrl 
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
module   MCtrl(input  clk,
					input  reset,
					input  [31:0] Inst_in,
					input  zero,
					input  overflow,
					input  MIO_ready,
					output reg MemRead,
					output reg MemWrite,
					output reg[2:0]ALU_operation,
					output [4:0]state_out,
					
					output reg CPU_MIO,
					output reg IorD,
					output reg IRWrite,
					output reg [1:0]RegDst,
					output reg RegWrite,
					output reg [1:0]MemtoReg,
					output reg ALUSrcA,
					output reg [1:0]ALUSrcB,
					output reg [1:0]PCSource,
					output reg PCWrite,
					output reg PCWriteCond,
					output reg Branch
					);
					
		parameter IF = 5'b00000, ID=5'b00001, EX_R= 5'b00010, EX_Mem=5'b00011, EX_I= 5'b00100;
		parameter Lui_WB=5'b00101, EX_beq=5'b00110, EX_bne= 5'b00111, EX_jr= 5'b01000, EX_JAL=5'b01001;
		parameter Exe_J = 5'b01010, MEM_RD=5'b01011, MEM_WD= 5'b01100;
		parameter WB_R= 5'b01101, WB_I=5'b01110, WB_LW=5'b01111, Error=5'b11111;
					 
		parameter  AND=3'b000, OR=3'b001, ADD=3'b010, SUB=3'b110, NOR=3'b100, SLT=3'b111, XOR=3'b011, SRL=3'b101;
		`define CPU_ctrl_signals {PCWrite, PCWriteCond, IorD, MemRead, MemWrite, IRWrite, MemtoReg, PCSource,ALUSrcB, ALUSrcA, RegWrite, RegDst, CPU_MIO}  // No Branch
				  		
		reg [4:0] state;
		
		assign state_out[4:0] = state[4:0];
		
		initial begin
			state <= IF; 
		end
		
		always @ (posedge clk or posedge reset)
			if  (reset==1) state <= IF; 
			else 
				case (state)
					IF:  if (MIO_ready) state <= ID; 
						  else  state <= IF;
					ID:  case (Inst_in[31:26])
					6'b000000: state <= EX_R;//R-type OP
					6'b100011: state <= EX_Mem; //Lw
					6'b101011: state <= EX_Mem;//sw,same as LW
					6'b000100: state <= EX_beq; //Beq
					6'b000101: state <= EX_bne; //Bne
					6'b001000: state <= EX_I; // addi
					6'b001100: state <= EX_I; // andi
					6'b001101: state <= EX_I; // ori
					6'b001110: state <= EX_I; // xori
					6'b001111: state <= EX_I; // lui
					6'b001010: state <= EX_I; // slti
					6'b000010: state <= Exe_J; //Jump 
					6'b000011: state <= EX_JAL; // jal
				default: state <= Error;
			   endcase
					EX_Mem://2
					begin
						case(Inst_in[31:26])
							6'b100011: state <= MEM_RD; //Lw
							6'b101011: state <= MEM_WD;//sw,same as LW
						endcase
					end
					MEM_RD://3
							state <= WB_LW;  // 可能还有个等待状态机
					WB_LW:
							state <= IF;
					EX_R://6
							state <= WB_R;
					EX_I:
							state <= WB_I;	
					WB_LW://4
							state <= IF;
					MEM_WD://5
							state <= IF;
					WB_R://7
							state <= IF;
					WB_I:
							state <= IF;
					EX_beq://8
							state <= IF;
					EX_bne://8
							state <= IF;
					Exe_J://9 
							state <= IF;
					EX_jr:
							state <= IF;
					EX_JAL:
							state <= IF;
					WB_I://7
							state <= IF;
					Error:  state <= Error;
					default : state <= Error;
				endcase
		
					 
		always @ * begin
			case(state) //state
			IF:       begin `CPU_ctrl_signals <= 17'h12821; ALU_operation <= ADD; end
			ID:       begin `CPU_ctrl_signals <= 17'h00060; ALU_operation <= ADD; end
			EX_Mem:   begin `CPU_ctrl_signals <= 17'h00050; ALU_operation <= ADD; end
			EX_R:     begin `CPU_ctrl_signals <= 17'h00010;
							case( Inst_in[5:0] )
							6'b100000: ALU_operation <= ADD; // add
							6'b100010: ALU_operation <= SUB; // sub
							6'b100100: ALU_operation <= AND; // and
							6'b100101: ALU_operation <= OR;  // or
							6'b100111: ALU_operation <= NOR; // nor
							6'b101010: ALU_operation <= SLT; // slt
							6'b000010: ALU_operation <= SRL; // srl
							6'b100110: ALU_operation <= XOR; // xor
							6'b001000: begin
											`CPU_ctrl_signals <= 17'h100101;
											ALU_operation <= ADD;
										  end
						   default: ALU_operation <= ADD;
							endcase
						 end
			EX_I:		 begin `CPU_ctrl_signals <= 17'h00050; 
							case( Inst_in[31:26] )
							   6'b001000: ALU_operation <= ADD; // addi
								6'b001100: ALU_operation <= AND; // andi
								6'b001101: ALU_operation <= OR;  // ori
								6'b001110: ALU_operation <= XOR; // xori
								6'b001111: ALU_operation <= ADD; // lui //////
								6'b100011: ALU_operation <= ADD; // lw
								6'b101011: ALU_operation <= ADD; // sw
								6'b001010: ALU_operation <= SLT; // slti
							endcase
						 end
			Lui_WB: begin `CPU_ctrl_signals <= 17'h00468; ALU_operation <= ADD; end
			EX_beq: begin `CPU_ctrl_signals <= 17'h08090; ALU_operation <= SUB; Branch = 1; end
			EX_bne: begin `CPU_ctrl_signals <= 17'h08090; ALU_operation <= SUB; Branch = 0; end
			EX_jr:  begin `CPU_ctrl_signals <= 17'h10010; ALU_operation <= ADD; end
			EX_JAL: begin `CPU_ctrl_signals <= 17'h1076c; ALU_operation <= ADD; end
			Exe_J:  begin `CPU_ctrl_signals <= 17'h10160; ALU_operation <= ADD; end
			MEM_RD: begin `CPU_ctrl_signals <= 17'h06001; ALU_operation <= ADD; end
			MEM_WD: begin `CPU_ctrl_signals <= 17'h05001; ALU_operation <= ADD; end
			WB_R:   begin `CPU_ctrl_signals <= 17'h0001a; ALU_operation <= ADD; end
			WB_I:   begin `CPU_ctrl_signals <= 17'h00058; ALU_operation <= ADD; end
			WB_LW:  begin `CPU_ctrl_signals <= 17'h00208; ALU_operation <= ADD; end
			
			default:  begin `CPU_ctrl_signals <= 17'h12821; ALU_operation <= ADD; end
			endcase
		end
		
				
endmodule
