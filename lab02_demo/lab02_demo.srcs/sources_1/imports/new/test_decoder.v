`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2024 11:44:08 PM
// Design Name: 
// Module Name: test_decoder
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


module test_decoder;
    reg [1:0] in;
    wire [3:0] out;
    
    decoder_flux_de_date my_decoder1(.in(in), .out(out));
    decoder_structural my_decoder2(.in(in), .out(out));
    decoder_procedural my_decoder3(.in(in), .out(out));
    
    initial begin
        in = 2'b00;
        
        #100;
        
        in = 2'b01;
        
        #100;
                
        in = 2'b10;
        
        #100;
                
        in = 2'b11;
    end
    
endmodule
