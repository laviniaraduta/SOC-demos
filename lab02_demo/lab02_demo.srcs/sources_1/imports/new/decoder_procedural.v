`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2024 11:38:14 PM
// Design Name: 
// Module Name: decoder_procedural
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


module decoder_procedural(
    input [1:0] in,
    output reg[3:0] out
    );
    
    // folosind if-uri imbricate
    always @(*) begin
        if (in == 2'b00) begin
            out = 4'b0001;
        end else if (in == 2'b01) begin
            out = 4'b0010;
        end else if (in == 2'b10) begin
            out = 4'b0100;
        end else if (in == 2'b11) begin
            out = 4'b1000;
        end
    end
    
    // sau folosind case:
    
//    always @(*) begin
//        case (in)
//            2'b00: out = 4'b0001;
//            2'b01: out = 4'b0010;
//            2'b10: out = 4'b0100;
//            default: out = 4'b1000;
//        endcase
//    end

endmodule
