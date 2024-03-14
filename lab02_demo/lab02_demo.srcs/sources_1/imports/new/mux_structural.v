`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 12:10:22 AM
// Design Name: 
// Module Name: mux_structural
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


module mux_structural(
    output out,
    input in1,
    input in2,
    input s1,
    input s2
    );
    wire or_res, and_res, xor_res, nand_res;
    wire not_s1, not_s2;
    wire a, b, c, d;
    
    // partea de mux
    and(a, not_s1, not_s2, nand_res);
    and(b, not_s1, s2, and_res);
    and(c, s1, not_s2, or_res);
    and(d, s1, s2, xor_res);    
    
    or(out, a, b, c, d);
    
    // partea care calculeaza "intrarile" in mux
    or(or_res, in1, in2);
    and(and_res, in1, in2);
    nand(nand_res, in1, in2);
    xor(xor_res, in1, in2);
    
    // calculul auxiliarelor
    not(not_s1, s1);
    not(not_s2, s2);
    
endmodule