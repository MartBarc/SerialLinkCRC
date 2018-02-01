//-----------------------------------------------------------------------------
//
// Title       : MB_CRC3_gen
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\compile\MB_CRC3_gen.v
// Generated   : Tue Nov 28 17:16:54 2017
// From        : C:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_CRC3_gen.bde
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

module MB_CRC3_gen (CLEAR_bar,GCLK,Select,Serial_In,Serial_Out) ;

// ------------ Port declarations --------- //
input CLEAR_bar;
wire CLEAR_bar;
input GCLK;
wire GCLK;
input Select;
wire Select;
input Serial_In;
wire Serial_In;
output Serial_Out;
wire Serial_Out;

// ----------- Signal declarations -------- //
supply0 GND;
wire NET30;
wire NET443;
wire NET52;
wire Q0;
wire Q1;
wire Q2;

// -------- Component instantiations -------//

MB_Dff U1
(
	.CLK(GCLK),
	.CLR(CLEAR_bar),
	.D(NET443),
	.Q(Q0)
);



MB_Dff U2
(
	.CLK(GCLK),
	.CLR(CLEAR_bar),
	.D(NET52),
	.Q(Q1)
);



MB_Dff U3
(
	.CLK(GCLK),
	.CLR(CLEAR_bar),
	.D(Q1),
	.Q(Q2)
);



assign NET30 = Serial_In ^ Q2;


assign NET52 = Q0 ^ NET443;


assign NET443 = Select ? NET30 : GND;


assign Serial_Out = Select ? Serial_In : Q2;


endmodule 
