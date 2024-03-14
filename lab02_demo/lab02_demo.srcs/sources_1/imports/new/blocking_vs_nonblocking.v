`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2024 10:44:14 PM
// Design Name: 
// Module Name: blocking_vs_nonblocking
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


module blocking_vs_nonblocking;

    reg[2:0] a1, b1, c1, a2, b2, c2;
    
    // atribuiri blocante
    // ce se intampla aici? - atribuirile se executa secvential
    initial begin
        a1 = #5 3'd2;   // dupa 5u a1 va lua valoarea 2
        b1 = #10 3'd5;  // dupa 5u + 10u = 15u b1 va lua valoarea 5
        c1 = #15 3'd7;  // dupa 5u + 10u + 15u = 30u c1 va lua valoarea 7
    end
    
    // atribuiri non-blocante
    // ce se intampla aici? - atribuirile se executa in paralel
    // se evalueaza intai partea dreapta, apoi se atribuie in stanga
    initial begin
        a2 <= #5 3'd2;  // dupa 5u a2 va lua valoarea 2
        b2 <= #10 3'd5; // dupa 10u b2 va lua valoarea 5
        c2 <= #15 3'd7; // dupa 15u c2 va lua valoarea 7
    end
    
endmodule
