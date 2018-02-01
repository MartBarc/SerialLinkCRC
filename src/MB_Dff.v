//-----------------------------------------------------------------------------
//
// Title       : MB_Dff
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_Dff.v
// Generated   : Tue Nov 28 13:22:58 2017
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
//{module {MB_Dff}}
module MB_Dff ( CLK ,CLR ,D ,Q );

output Q ;
reg Q ;

input CLK ;
wire CLK ;
input CLR ;
wire CLR ;
input D ;
wire D ;

//}} End of automatically maintained section
		always @ (posedge CLK or negedge CLR)
	begin 
	if (!CLR)
		#18 Q<= 1'b0;
	else 
		Q<= #7 D;
	end
specify
	$setup (D, posedge CLK, 16);
	$hold (posedge CLK, D, 5);
endspecify
// -- Enter your statements here -- //
endmodule
