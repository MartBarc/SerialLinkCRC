//-----------------------------------------------------------------------------
//
// Title       : MB_CRCche_TEST
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\compile\MB_CRCche_TEST.v
// Generated   : Tue Nov 28 17:08:48 2017
// From        : C:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_CRCche_TEST.bde
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

module MB_CRCche_TEST (CLEAR_BAR,GCLK,Par_in,Select,Din,ERROR,Serial_Out) ;

// ------------ Port declarations --------- //
input CLEAR_BAR;
wire CLEAR_BAR;
input GCLK;
wire GCLK;
input Par_in;
wire Par_in;
input Select;
wire Select;
input [7:0] Din;
wire [7:0] Din;
output ERROR;
wire ERROR;
output Serial_Out;
wire Serial_Out;

// ----------- Signal declarations -------- //
wire Data_iff;
supply0 GND;
wire Serial_ifff;

// -------- Component instantiations -------//

MB_CRC3_che U1
(
	.CLEAR_bar(CLEAR_BAR),
	.ERROR(ERROR),
	.GCLK(GCLK),
	.Select(Select),
	.Serial_In(Serial_ifff),
	.Serial_Out(Serial_Out)
);



MB_CD4014B U2
(
	.CLK(GCLK),
	.D(Din),
	.ParLoad_Ctrl(Par_in),
	.Q5(),
	.Q6(),
	.Q7(Data_iff),
	.Ser_in(GND)
);



MB_CRC3_gen U3
(
	.CLEAR_bar(CLEAR_BAR),
	.GCLK(GCLK),
	.Select(Select),
	.Serial_In(Data_iff),
	.Serial_Out(Serial_ifff)
);



endmodule 
