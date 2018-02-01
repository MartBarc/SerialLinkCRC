//-----------------------------------------------------------------------------
//
// Title       : MB_Full_Comm
// Design      : MBLab11Design01
// Author      : MartinBarcelon
// Company     : StonybrookU
//
//-----------------------------------------------------------------------------
//
// File        : c:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\compile\MB_Full_Comm.v
// Generated   : Tue Nov 28 22:45:21 2017
// From        : c:\Users\martb\Google Drive\SBU\S8 Fall 2017\ESE_218\Labs\Lab11\Lab11_Workspace\MBLab11Design01\src\MB_Full_Comm.bde
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

module MB_Full_Comm (CLK,Enable,Init,Data_in,Jam,Data_Out,Error) ;

// ------------ Port declarations --------- //
input CLK;
wire CLK;
input Enable;
wire Enable;
input Init;
wire Init;
input [7:0] Data_in;
wire [7:0] Data_in;
input [3:0] Jam;
wire [3:0] Jam;
output Data_Out;
wire Data_Out;
output Error;
wire Error;

// ----------------- Constants ------------ //
parameter DANGLING_INPUT_CONSTANT = 1'bZ;

// ----------- Signal declarations -------- //
supply0 GND;
wire NET173;
wire NET189;
wire NET48;
wire [3:0] Qout;

// ---- Declaration for Dangling inputs ----//
wire Dangling_Input_Signal = DANGLING_INPUT_CONSTANT;

// -------- Component instantiations -------//

MB_Controller2 U1
(
	.CLK(CLK),
	.CLR(Init),
	.Cout(NET173),
	.Enable(Enable),
	.GCLK(Init),
	.Load(NET189),
	.Q1(Qout[1]),
	.Select(NET48)
);



MB_CRC3_che U2
(
	.CLEAR_bar(Init),
	.ERROR(Error),
	.GCLK(Init),
	.Select(NET48),
	.Serial_In(Dangling_Input_Signal),
	.Serial_Out(Data_Out)
);



MB_CRC3_gen U3
(
	.CLEAR_bar(Dangling_Input_Signal),
	.GCLK(Init),
	.Select(NET48),
	.Serial_In(Dangling_Input_Signal),
	.Serial_Out()
);



MB_CD4029B U4
(
	.CE(GND),
	.CLK(Init),
	.CarryOut(NET173),
	.J(Jam),
	.PE(NET189),
	.Q(Qout),
	.UpDown_bar(GND)
);



MB_CD4014B U5
(
	.CLK(Init),
	.D(Data_in),
	.ParLoad_Ctrl(NET189),
	.Q5(),
	.Q6(),
	.Q7(),
	.Ser_in(GND)
);



endmodule 
