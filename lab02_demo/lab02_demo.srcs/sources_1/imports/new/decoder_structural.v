`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2024 11:38:14 PM
// Design Name: 
// Module Name: decoder_structural
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


module decoder_structural(
    input [1:0] in,
    output [3:0] out
    );
    
    wire [1:0] not_in;
    
    not(not_in[0], in[0]);
    not(not_in[1], in[1]);

    and(out[0], not_in[1], not_in[0]);
    and(out[1], not_in[1], in[0]);
    and(out[2], in[1], not_in[0]);
    and(out[3], in[1], in[0]);

endmodule
