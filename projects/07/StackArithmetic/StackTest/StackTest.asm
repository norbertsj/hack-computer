@START
0;JMP

(TRUE)
    @SP
    A=M
    M=-1
    @SP
    M=M+1
    @R13
    A=M
    0;JMP

(FALSE)
    @SP
    A=M
    M=0
    @SP
    M=M+1
    @R13
    A=M
    0;JMP

(EQ)
    @SP
    M=M-1
    A=M
    D=M
    @R15
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R15
    D=D-M
    @TRUE
    D;JEQ
    @FALSE
    0;JMP

(LT)
    @SP
    M=M-1
    A=M
    D=M
    @R15
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R15
    D=D-M
    @TRUE
    D;JLT
    @FALSE
    0;JMP

(GT)
    @SP
    M=M-1
    A=M
    D=M
    @R15
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R15
    D=D-M
    @TRUE
    D;JGT
    @FALSE
    0;JMP

(START)

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@EQ.0.END
D=A
@R13
M=D
@EQ
0;JMP
(EQ.0.END)

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@EQ.1.END
D=A
@R13
M=D
@EQ
0;JMP
(EQ.1.END)

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@EQ.2.END
D=A
@R13
M=D
@EQ
0;JMP
(EQ.2.END)

// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@LT.0.END
D=A
@R13
M=D
@LT
0;JMP
(LT.0.END)

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@LT.1.END
D=A
@R13
M=D
@LT
0;JMP
(LT.1.END)

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@LT.2.END
D=A
@R13
M=D
@LT
0;JMP
(LT.2.END)

// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@GT.0.END
D=A
@R13
M=D
@GT
0;JMP
(GT.0.END)

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@GT.1.END
D=A
@R13
M=D
@GT
0;JMP
(GT.1.END)

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@GT.2.END
D=A
@R13
M=D
@GT
0;JMP
(GT.2.END)

// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
M=M-1
A=M
D=M
@R15
M=D
@SP
M=M-1
A=M
D=M
@R15
D=D+M
@SP
A=M
M=D
@SP
M=M+1

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
M=M-1
A=M
D=M
@R15
M=D
@SP
M=M-1
A=M
D=M
@R15
D=D-M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
M=M-1
A=M
D=-M
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@R15
M=D
@SP
M=M-1
A=M
D=M
@R15
D=D&M
@SP
A=M
M=D
@SP
M=M+1

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@R15
M=D
@SP
M=M-1
A=M
D=M
@R15
D=D|M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
M=M-1
A=M
D=!M
@SP
A=M
M=D
@SP
M=M+1

