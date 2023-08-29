`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 14:56:48
// Design Name: 
// Module Name: lab_1
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


module lab_1(
    input SW0,
    input SW1,
    input SW2,
    input SW3,
    input SW4,
    input SW5,
    input SW6,
    input SW7,
    input SW8,
    input SW9,
    output LD0,
    output LD1,
    output LD2,
    output LD3,
    output LD4,
    output LD5,
    output LD6,
    output LD7,
    output LD8,
    output LD9,
    output LD15,
    output AN0,
    output AN1,
    output AN2,
    output AN3,
    output SEG0,
    output SEG1,
    output SEG2,
    output SEG3,
    output SEG4,
    output SEG5,
    output SEG6,
    output dp
    );
    
    //subtask A
    assign LD0 = SW0;
    assign LD1 = SW1;
    assign LD2 = SW2;
    assign LD3 = SW3;
    assign LD4 = SW4;
    assign LD5 = SW5;
    assign LD6 = SW6;
    assign LD7 = SW7;
    assign LD8 = SW8;
    assign LD9 = SW9;
    //subtask B (password turns on LED)
    assign LD15 = ~SW0 & ~SW1 & ~SW2 & ~SW3 & SW4 & SW5 & ~SW6 & ~SW7 & SW8 & ~SW9;
    //subtask C (correct and incorrect passwords turn on different analogs and segments)
    assign AN0 = 0;
    assign AN2 = 0;
    assign AN1 = LD15;
    assign SEG0 = 0;
    assign SEG5 = LD15;
    assign SEG2 = 0;
    assign SEG6 = LD15;
    assign SEG4 = ~LD15;
    
endmodule
