`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2024 10:56:07 PM
// Design Name: 
// Module Name: test_sequential_logic
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


module test_sequential_logic;
    
    reg clk;
    wire [3:0] out;
    
    sequential_logic my_design(.clk(clk), .out(out));
    
    
    initial begin
       clk = 0;
    end
    
    always begin
        #5 clk = ~clk;
    end
    
    initial begin
        #100;
    end
    
    
    
    
endmodule
