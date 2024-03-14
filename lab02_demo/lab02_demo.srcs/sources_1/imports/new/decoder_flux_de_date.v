`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2024 11:38:14 PM
// Design Name: 
// Module Name: decoder_flux_de_date
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder_flux_de_date(
    input [1:0] in,
    output [3:0] out
    );
    
    assign out[0] = ~in[1] & ~in[0];
    assign out[1] = ~in[1] & in[0];
    assign out[2] = in[1] & ~in[0];
    assign out[3] = in[1] & in[0];
endmodule
