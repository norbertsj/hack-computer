// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// DISPLAY
// [(w1)(w2)(w3)(w4)..(w32)] --> row1
// [(w33)...]
// ...

// SCREEN
// w1
// w2
// ...

// KBD = SCREEN + SCREEN_SIZE + 1 (next address)

// *** Psuedo code **
//
// pixel = 0
//
// loop:
//     if (KBD > 0)
//         pixel = 1
//     else
//         pixel = 0
//     goto fill
//
// fill:
//    address = SCREEN
//    while (address < KBD)
//        *address = pixel
//        address++
//    goto loop
//
// *** Comment ***
// If button is pressed, screen memeory map is being written to over and over again,
// this could be prevented with some state variable (but lets keep it simple for now)

(LOOP)
    @SCREEN
    D=A
    @address
    M=D

    @KBD
    D=M
    @FILL
    D;JGT
    @BLANK
    D;JEQ

(BLANK)
    @address
    D=M
    @KBD
    D=D-A
    @LOOP
    D;JEQ

    @address
    A=M
    M=0
    @address
    M=M+1

    @BLANK
    0;JMP

(FILL)
    @address
    D=M
    @KBD
    D=D-A
    @LOOP
    D;JEQ

    @address
    A=M
    M=-1
    @address
    M=M+1

    @FILL
    0;JMP