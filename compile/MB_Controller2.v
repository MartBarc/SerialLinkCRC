//-----------------------------------------------------------------------------
//
// Title       : MB_Controller2
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : D:\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\compile\MB_Controller2.v
// Generated   : Wed Dec  6 02:32:50 2017
// From        : D:\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_Controller2.bde
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

module MB_Controller2 (CLK,CLR,Cout,Enable,Q1,GCLK,Load,Select) ;

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
wire Coutbar;
wire Jb;
wire Ka;
wire Kb;
wire Q0;
wire Q0bar;
wire Q1bar;
wire Q1ORQ0;
wire Q1out;

// -------- Component instantiations -------//

MB_JKff U1
(
	.CLK(CLK),
	.CLR(CLR),
	.J(Q1),
	.K(Ka),
	.Q(Q0)
);



assign Q1ORQ0 = Q0 | Q1out;


assign GCLK = Q1ORQ0 & CLK;


MB_JKff U2
(
	.CLK(CLK),
	.CLR(CLR),
	.J(Jb),
	.K(Kb),
	.Q(Q1out)
);



assign Ka = Q1 & Q1bar;


assign Q0bar = ~(Q0);


assign Q1bar = ~(Q1out);


assign Jb = ~(Q0 | Enable);


assign Coutbar = ~(Cout);


assign Kb = Q0 & Coutbar;


// ----------- Terminals assignment --------//
//		   ---- Output terminals ---        //
assign Load = Q0bar;
assign Select = Q1out;

endmodule 
