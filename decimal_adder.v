`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:14 08/17/2015 
// Design Name: 
// Module Name:    decimal_adder 
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
module decimal_adder(
    input [3:0]A,
	 input [3:0]B,
	 //input Cin,
	 output [3:0]S,
	 output Cout	 
	 );
	 
reg [4:0]Sum;
reg [4:0]s1;	 
assign Cout = s1[4];
assign S = s1[3:0];

always@(*)
begin
	s1 <= Sum;
	Sum <= A + B;
	if(Sum > 4'd9)
	begin
		s1 <= Sum + 4'd6;
	end
end

endmodule
