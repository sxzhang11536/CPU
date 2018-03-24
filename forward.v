`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:18 04/24/2017 
// Design Name: 
// Module Name:    forward 
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
module forward(rs, rt, rdmem,rdwb,RegWriteMem, RegWriteWb,memwrite,forwarda, forwardb, forwards );
output reg [1:0] forwarda, forwardb,forwards;
input [4:0] rs, rt, rdmem,rdwb;
input RegWriteMem,RegWriteWb,memwrite;

always @(*)begin

if (RegWriteWb &&(rs==rdwb)&&rdwb!=0)
forwarda=2'b10;
else if (RegWriteMem && (rs==rdmem)&&rdmem!=0)
forwarda=2'b01;
else
forwarda=2'b00;

if(RegWriteMem && (rt==rdmem)&&rdmem!=0)
forwardb=2'b01;
else if (RegWriteWb && (rt==rdwb)&&rdwb!=0)
forwardb=2'b10;

else
forwardb=2'b00;

if(memwrite && (rt==rdmem) && rdmem!=0)
forwards=2'b01;
else 
forwards=2'b00;



end

endmodule
