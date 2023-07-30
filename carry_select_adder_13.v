`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:28 07/29/2023 
// Design Name: 
// Module Name:    carry_select_adder_13 
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
//////////////////////////////////////////////////////////////////////////////////\
module fullA(input a,b,c,
output sum,cout);

assign sum=a^b^c;
assign cout=(a&b)|(b&c)|(c&a); 
endmodule

module mux2_1(input a, b,sel,
output y);
assign y=(sel)?b:a;
endmodule


module carry_select_adder_13(input[3:0]a,b,
input cin,
output[3:0]sum,
output cout);
wire [16:0]w;

fullA fA1(a[0],b[0],1'b0,w[1],w[2]);
fullA fA2(a[1],b[1],w[2],w[3],w[4]);
fullA fA3(a[2],b[2],w[4],w[5],w[6]);
fullA fA4(a[3],b[3],w[6],w[7],w[8]);


fullA fA5(a[0],b[0],1'b1,w[9],w[10]);
fullA fA6(a[1],b[1],w[9],w[11],w[12]);
fullA fA7(a[2],b[2],w[12],w[13],w[14]);
fullA fA8(a[3],b[3],w[14],w[15],w[16]);

mux2_1 mux1(w[1],w[9],cin,sum[0]);
mux2_1 mux2(w[3],w[11],cin,sum[1]);
mux2_1 mux3(w[5],w[13],cin,sum[2]);
mux2_1 mux4(w[7],w[15],cin,sum[3]);
mux2_1 mux5(w[8],w[16],cin,cout);
endmodule
