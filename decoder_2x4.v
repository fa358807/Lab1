`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:07 07/26/2015 
// Design Name: 
// Module Name:    decoder_2x4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module decoder_2x4(
	in1,in0,
	d0,d1,d2,d3
	,en
    );
	input in1,in0;
	input en;	//enable
	output d0,d1,d2,d3;
	
	assign d0=en&(~in1)&(~in0);
	assign d1=en&(~in1)&in0;
	assign d2=en&in1&(~in0);
	assign d3=en&in1&in0;
	
endmodule
