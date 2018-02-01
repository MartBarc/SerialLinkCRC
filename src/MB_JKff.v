//-----------------------------------------------------------------------------
//
// Title       : MB_JKff
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_JKff.v
// Generated   : Tue Nov 28 13:26:22 2017
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {MB_JKff}}
module MB_JKff ( J ,K ,CLK ,CLR ,Q );

output Q ;
reg Q ;

input J ;
wire J ;
input K ;
wire K ;
input CLK ;
wire CLK ;
input CLR ;
wire CLR ;

//}} End of automatically maintained section
		always @ (posedge CLK or negedge CLR)
	begin 
		if (!CLR)
			#18 Q<= 0'b0;
		else 
			Q <= #7 (J & ~Q | ~K & Q);
		end		
// -- Enter your statements here -- //
endmodule
