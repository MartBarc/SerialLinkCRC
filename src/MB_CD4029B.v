//-----------------------------------------------------------------------------
//
// Title       : MB_CD4029B
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_CD4029B.v
// Generated   : Tue Nov 28 15:23:38 2017
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
//{module {MB_CD4029B}}
module MB_CD4029B ( J ,CLK ,PE ,UpDown_bar ,CE ,Q ,CarryOut );

output [3:0] Q ;
reg [3:0] Q, Qtmp ;
output CarryOut ;
wire CarryOut ;

input [3:0] J ;
wire [3:0] J ;
input CLK ;
wire CLK ;
input PE ;
wire PE ;
input UpDown_bar ;
wire UpDown_bar ;
input CE ;
wire CE ;

//}} End of automatically maintained section
assign Q = Qtmp;
assign #120 CarryOut = ~( & Qtmp | ~UpDown_bar & ~CE & (~|Qtmp)) ;
always @ (posedge CLK or posedge PE) begin
	if (PE)
		Qtmp <= #285 J;
	else if (!CE)
		begin 
			if(UpDown_bar)
		#200 Qtmp <= Qtmp + 1;
		else 
		#200 Qtmp <= Qtmp - 1;
		end
			end
// -- Enter your statements here -- //
specify 
$setup (UpDown_bar, posedge CLK, 180);
endspecify
endmodule
