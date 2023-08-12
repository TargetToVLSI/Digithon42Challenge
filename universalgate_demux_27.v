`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:26:36 08/12/2023 
// Design Name: 
// Module Name:    universalgate_demux_27 
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
//put
//////////////////////////////////////////////////////////////////////////////////
module dmux(input i,sel,output y1,y0);
assign{y1,y0}=sel?{i,1'b0}:{1'b0,i};
endmodule
module universalgate_demux_27(input a,b,output ynand,ynor);
wire[3:0]w;
dmux d1(b,a,w1,w0);
dmux d2(w1,1'b1,w2,ynand);

dmux d3(b,~a,w3,ynor);

endmodule
