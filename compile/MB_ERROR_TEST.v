//-----------------------------------------------------------------------------
//
// Title       : MB_ERROR_TEST
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : c:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\compile\MB_ERROR_TEST.v
// Generated   : Tue Nov 28 23:01:00 2017
// From        : c:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_ERROR_TEST.bde
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

module MB_ERROR_TEST (Clear_bar,ErrorIn,GCLK,Par_in,Select,Din,Data_Out,ErrorOut) ;

// ------------ Port declarations --------- //
input Clear_bar;
wire Clear_bar;
input ErrorIn;
wire ErrorIn;
input GCLK;
wire GCLK;
input Par_in;
wire Par_in;
input Select;
wire Select;
input [7:0] Din;
wire [7:0] Din;
output Data_Out;
wire Data_Out;
output ErrorOut;
wire ErrorOut;

// ----------- Signal declarations -------- //
wire Data_in2;
wire Data_in3;
supply0 GND;
wire Serial_ifff;

// -------- Component instantiations -------//

MB_CRC3_che U1
(
	.CLEAR_bar(Clear_bar),
	.ERROR(ErrorOut),
	.GCLK(GCLK),
	.Select(Select),
	.Serial_In(Data_in3),
	.Serial_Out(Data_Out)
);



MB_CD4014B U2
(
	.CLK(GCLK),
	.D(Din),
	.ParLoad_Ctrl(Par_in),
	.Q5(),
	.Q6(),
	.Q7(Data_in2),
	.Ser_in(GND)
);



MB_CRC3_gen U3
(
	.CLEAR_bar(Clear_bar),
	.GCLK(GCLK),
	.Select(Select),
	.Serial_In(Data_in2),
	.Serial_Out(Serial_ifff)
);



assign Data_in3 = ErrorIn ^ Serial_ifff;


endmodule 
