`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:29 08/15/2023 
// Design Name: 
// Module Name:    encoder_29 
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
module encoder_29(input[7:0]d,output reg[2:0]y);

always@(*)begin
if(d[7]==1)
  y<=3'b111;
  else if(d[6]==1)
   y<=3'b110;
	else if(d[5]==1)
	y<=3'b101;
	else if(d[4]==1)
	y<=3'b100;
	else if(d[3]==1)
	y<=3'b011;
	else if(d[2]==1)
	y<=3'b010;
	else if(d[1]==1)
	y<=3'b001;
	else
	y<=3'b000;
end



endmodule
