//-----------------------------------------------------------------------------
//
// Title       : MB_CRC_TEST1
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\compile\MB_CRC_TEST1.v
// Generated   : Tue Nov 28 16:14:27 2017
// From        : C:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_CRC_TEST1.bde
// By          : Bde2Verilog ver. 2.01
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`ifdef _VCP
`else
`define library(a,b)
`endif


// ---------- Design Unit Header ---------- //
`timescale 1ps / 1ps

module MB_CRC_TEST1 (CLK,CLR,Select,Data_in,Data_out,ERROR) ;

// ------------ Port declarations --------- //
input CLK;
wire CLK;
input CLR;
wire CLR;
input Select;
wire Select;
input [7:0] Data_in;
wire [7:0] Data_in;
output Data_out;
wire Data_out;
output ERROR;
wire ERROR;

// ----------- Signal declarations -------- //
supply0 GND;
wire NET25;
supply1 VCC;

// -------- Component instantiations -------//

MB_CRC3_che U1
(
	.CLEAR_bar(CLR),
	.ERROR(ERROR),
	.GCLK(CLK),
	.Select(Select),
	.Serial_In(NET25),
	.Serial_Out(Data_out)
);



MB_CD4014B U2
(
	.CLK(CLK),
	.D(Data_in),
	.ParLoad_Ctrl(VCC),
	.Q5(),
	.Q6(),
	.Q7(NET25),
	.Ser_in(GND)
);



endmodule 
