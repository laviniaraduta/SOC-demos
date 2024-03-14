`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 12:20:38 AM
// Design Name: 
// Module Name: test_mux_structural
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


module test_mux_structural;
    reg a, b;
    reg sel0, sel1;
    wire out;
    
    mux_structural my_mux(.out(out), .in1(a), .in2(b), .s1(sel0), .s2(sel1));
    
    initial begin
        a = 1;
        b = 0;
        
        sel0 = 0;
        sel1 = 0;
        
        #100;
        
        a = 0;
        b = 1;
        
        sel0 = 1;
        sel1 = 0;
        
        #100;
        
        a = 1;
        b = 0;
        
        sel0 = 0;
        sel1 = 1;
        
        #100;
        
        a = 0;
        b = 1;
        
        sel0 = 1;
        sel1 = 1;
        
    end
endmodule
