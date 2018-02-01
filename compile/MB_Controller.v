//-----------------------------------------------------------------------------
//
// Title       : MB_Controller
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : c:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\compile\MB_Controller.v
// Generated   : Tue Nov 28 20:55:57 2017
// From        : c:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_Controller.bde
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

module MB_Controller (CLK,CLR,Cout,Enable,Q1,GCLK,Load,Select) ;

// ------------ Port declarations --------- //
input CLK;
wire CLK;
input CLR;
wire CLR;
input Cout;
wire Cout;
input Enable;
wire Enable;
input Q1;
wire Q1;
output GCLK;
wire GCLK;
output Load;
wire Load;
output Select;
wire Select;

// ----------- Signal declarations -------- //
wire NET100;
wire NET138;
wire NET42;
wire NET50;
wire NET71;
wire NET75;
supply1 VCC;

// -------- Component instantiations -------//

MB_JKff U1
(
	.CLK(NET138),
	.CLR(CLR),
	.J(Enable),
	.K(NET75),
	.Q(NET100)
);



MB_JKff U2
(
	.CLK(NET138),
	.CLR(CLR),
	.J(Enable),
	.K(NET42),
	.Q(Select)
);



assign NET71 = ~(VCC & Q1 & NET50);


assign NET50 = ~(Select);


assign NET42 = ~(Cout);


assign NET75 = ~(NET71);


assign Load = ~(NET100);


// ----------- Terminals assignment --------//
//	       ---- Input terminals ---         //
assign NET138 = CLK;

//		   ---- Output terminals ---        //
assign GCLK = NET138;

endmodule 
