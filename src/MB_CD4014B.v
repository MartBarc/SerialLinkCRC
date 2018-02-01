//-----------------------------------------------------------------------------
//
// Title       : MB_CD4014B
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : C:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_CD4014B.v
// Generated   : Tue Nov 28 15:09:31 2017
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
//{module {MB_CD4014B}}
module MB_CD4014B ( CLK ,ParLoad_Ctrl ,D ,Q5 ,Q6 ,Q7 ,Ser_in );

output Q5 ;
wire Q5 ;
output Q6 ;
wire Q6 ;
output Q7 ;
wire Q7 ;

input CLK ;
wire CLK ;
input ParLoad_Ctrl ;
wire ParLoad_Ctrl ;
input [7:0] D ;
wire [7:0] D ; 

input Ser_in ;
wire Ser_in ;

//}} End of automatically maintained section

reg[7:0] Qtmp;
assign Q7 = Qtmp [7];
assign Q6 = Qtmp [6];
assign Q5 = Qtmp [5];

always @ (posedge CLK)
begin 
	if (ParLoad_Ctrl)
		Qtmp <= #200 D;
	else
		Qtmp <= #200 {Qtmp [6:0],Ser_in} ;
end
	specify
$setup (Ser_in, posedge CLK, 60);
$setup (D, posedge CLK, 80);
$setup (ParLoad_Ctrl, posedge CLK, 100);
	endspecify
endmodule
// -- Enter your statements here -- //

