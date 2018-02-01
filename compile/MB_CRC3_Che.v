//-----------------------------------------------------------------------------
//
// Title       : MB_CRC3_che
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : c:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\compile\MB_CRC3_che.v
// Generated   : Tue Nov 28 20:16:48 2017
// From        : c:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_CRC3_che.bde
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

module MB_CRC3_che (CLEAR_bar,GCLK,Select,Serial_In,ERROR,Serial_Out) ;

// ------------ Port declarations --------- //
input CLEAR_bar;
wire CLEAR_bar;
input GCLK;
wire GCLK;
input Select;
wire Select;
input Serial_In;
wire Serial_In;
output ERROR;
wire ERROR;
output Serial_Out;
wire Serial_Out;

// ----------- Signal declarations -------- //
wire D0;
wire D1;
supply0 GND;
wire inv1;
wire inv2;
wire inv3;
wire Q0;
wire Q1;
wire Q2;

// -------- Component instantiations -------//

assign Serial_Out = Select ? Serial_In : GND;


MB_Dff U12
(
	.CLK(GCLK),
	.CLR(CLEAR_bar),
	.D(D0),
	.Q(Q0)
);



MB_Dff U13
(
	.CLK(GCLK),
	.CLR(CLEAR_bar),
	.D(D1),
	.Q(Q1)
);



MB_Dff U14
(
	.CLK(GCLK),
	.CLR(CLEAR_bar),
	.D(Q1),
	.Q(Q2)
);



assign D0 = Serial_In ^ Q2;


assign D1 = Q0 ^ D0;


assign inv3 = ~(Q2);


assign ERROR = ~(inv1 & inv2 & inv3);


assign inv2 = ~(Q1);


assign inv1 = ~(Q0);


endmodule 
