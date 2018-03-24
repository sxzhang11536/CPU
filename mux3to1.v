`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:48 04/27/2017 
// Design Name: 
// Module Name:    mux3to1 
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
module mux3to1(out, in0, in1, in2, sel);

output [31:0] out;
reg [31:0] out;
input [31:0] in0, in1,in2;
input [1:0]sel;

always @(in0, in1, in2, sel)begin
	case(sel)
		0: out = in0;
		1: out = in1;
		2: out = in2;
		3: out = 32'b0;
	endcase
end 
endmodule
