// Verilog test fixture created from schematic C:\cssystem\MultiCPU\OExp10-MCPU2SOC\OExp01-MUX\MDPath.sch - Tue May 16 23:19:07 2017

`timescale 1ns / 1ps

module MDPath_MDPath_sch_tb();

// Inputs
   reg IRWrite;

// Output

// Bidirs

// Instantiate the UUT
   MDPath UUT (
		.IRWrite(IRWrite)
   );
// Initialize Inputs
   `ifdef auto_init
       initial begin
		IRWrite = 0;
   `endif
endmodule
