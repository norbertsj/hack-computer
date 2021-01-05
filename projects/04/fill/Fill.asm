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

// PSUEDO __start__

// const SCREEN = 16384;
// const ROW_SIZE = 32; // 1 row = 32 words (16-bit)
// const ROW_COUNT = 256;

// const KBD = 24576; // 1 word
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

// function unfillScreen() {
//     writeScreen(0);
//     filled = false;
// }

// while(true) {
//     if (KBD > 0 && !filled) {
//         fillScreen();
//         continue;
//     }
    
//     if (KBD === 0 && filled) {
//         unfillScreen();
//         continue;
//     }
// }

// PSEUDO __end__