`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:27 08/15/2023 
// Design Name: 
// Module Name:    Priorityenc_30 
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
module Priorityenc_30(input[7:0]in,output reg[2:0]y);
always@(*)begin
casez(in)
 8'b00000001:y<=3'b000;
 8'b0000001z:y<=3'b001;
 8'b000001zz:y<=3'b010;
8'b00001zzz:y<=3'b011;
8'b0001zzzz:y<=3'b100;
8'b001zzzzz:y<=3'b101;
8'b01zzzzzz:y<=3'b110;
8'b1zzzzzzz:y<=3'b111;
default:y<=3'b000;
endcase
end
    


endmodule
