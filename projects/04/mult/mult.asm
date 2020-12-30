// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// PSEUDO __start__
// a = R0
// b = R1
// R2 = 0
// i = 0

// if (a === 0 || b === 0) {
//     return 0;
// }

// while (i < b) {
//     R2 = R2 + a;
//     i++:
// }

// return R2;
// PSEUDO __end__

// a = R0
@R0
D=M
@a
M=D

// b = R1
@R1
D=M
@b
M=D

// R2 = 0
@R2
M=0

// i = 0
@i
M=0

// if a === 0; return 0
@a
D=M
@END
D;JEQ

// if b === 0; return 0
@b
D=M
@END
D;JEQ

(LOOP)
    @i
    D=M
    @b
    D=D-M // while(i < b) ==> i - b >= 0
    @END
    D;JGE

    @a
    D=M
    @R2
    M=M+D // R2 = R2 + a

    @i
    M=M+1 // i = i + 1

    @LOOP
    0;JMP

(END)
    @END
    0; JMP