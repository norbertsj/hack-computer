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

// PSEUDO
// ...

// PSUEDO __start__

// declare SCREEN, KBD;
// const ROW_SIZE = 32; // 1 row = 32 words (16-bit)
// const ROW_COUNT = 256;
// let filled = false;

// function writeScreen(value) {
//     for (let row = 0; row < ROW_COUNT; row++) {
//         for (let word = 0; word < ROW_SIZE; word++) {
//             const addr = SCREEN + ROW_SIZE*row + word;
//             *addr = value;
//         }
//     }
// }

// function fillScreen() {
//     writeScreen(1);
//     filled = true;
// }

// function blankScreen() {
//     writeScreen(0);
//     filled = false;
// }

// while(true) {
//     if (KBD > 0 && !filled) {
//         fillScreen();
//         continue;
//     }

//     if (KBD === 0 && filled) {
//         blankScreen();
//         continue;
//     }
// }

// PSEUDO __end__

@ROW_SIZE
M=32
@ROW_COUNT
M=256

@FILLED
M=0
@FILL
M=0

@ROW_ADDR
M=0
@WORD_ADDR
M=0

@TMP1
M=0
@TMP2
M=0
@TMP3
M=0

(MAIN_LOOP)
    // zero WRITE_SCREEN loop counters
    @ROW
    M=0
    @WORD
    M=0

    // simple version
    @KBD
    D=M
    @FILL_SCREEN
    D;JGT
    @BLANK_SCREEN
    D;JEQ

(FILL_SCREEN)
    @FILL
    M=1
    @WRITE_SCREEN
    0;JMP

(BLANK_SCREEN)
    @FILL
    M=0
    @WRITE_SCREEN
    0;JMP

(WRITE_SCREEN)

(WRITE_ROW)

(WRITE_WORD)
    @WORD
    D=M
    @ROW_SIZE
    D=D-M
    @WRITE_ROW
    D;JGE

    @TMP1
    M=// ROW_SIZE*row ==> daaamn, I could use MULT here, but how?

// damn, this looks a bit too complicated (as I do not know how to use MULT here) will have to simplify