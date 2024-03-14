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


module sequential_logic(
    input clk,
    output reg[3:0] out
    );
    
    reg [3:0] a, b;
    
    initial begin
        a <= 0;
        b <= 1;
    end
    
    always @(posedge clk) begin
        out <= a + b;
        b <= a + 1;
        a <= b + 1;
    end
    
    
endmodule
