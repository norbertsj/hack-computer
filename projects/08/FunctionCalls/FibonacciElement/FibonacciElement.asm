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

// booting up
@261
D=A
@SP
M=D
@Sys.init
0;JMP

// function Main.fibonacci 0
(Main.fibonacci)

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
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

// if-goto IF_TRUE
@SP
M=M-1
A=M
D=M
@Main.fibonacci$IF_TRUE
D;JNE

// goto IF_FALSE
@Main.fibonacci$IF_FALSE
0;JMP

// label IF_TRUE
(Main.fibonacci$IF_TRUE)

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@ENDFRAME
M=D
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
A=D
D=M
@RETADDR
M=D
@0
D=A
@ARG
A=D+M
D=A
@SP
M=M-1
@R15
M=D
@SP
A=M
D=M
@R15
A=M
M=D
@ARG
D=M
@SP
M=D+1
@ENDFRAME
A=M-1
D=M
@THAT
M=D
@ENDFRAME
A=M-1
A=A-1
D=M
@THIS
M=D
@ENDFRAME
A=M-1
A=A-1
A=A-1
D=M
@ARG
M=D
@ENDFRAME
A=M-1
A=A-1
A=A-1
A=A-1
D=M
@LCL
M=D
@RETADDR
A=M
0;JMP

// label IF_FALSE
(Main.fibonacci$IF_FALSE)

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
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

// call Main.fibonacci 1
@Main.fibonacci$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M-1
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci$ret.1)

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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

// call Main.fibonacci 1
@Main.fibonacci$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M-1
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci$ret.2)

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

// return
@LCL
D=M
@ENDFRAME
M=D
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
A=D
D=M
@RETADDR
M=D
@0
D=A
@ARG
A=D+M
D=A
@SP
M=M-1
@R15
M=D
@SP
A=M
D=M
@R15
A=M
M=D
@ARG
D=M
@SP
M=D+1
@ENDFRAME
A=M-1
D=M
@THAT
M=D
@ENDFRAME
A=M-1
A=A-1
D=M
@THIS
M=D
@ENDFRAME
A=M-1
A=A-1
A=A-1
D=M
@ARG
M=D
@ENDFRAME
A=M-1
A=A-1
A=A-1
A=A-1
D=M
@LCL
M=D
@RETADDR
A=M
0;JMP

// function Sys.init 0
(Sys.init)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Main.fibonacci 1
@Sys.init$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M-1
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Sys.init$ret.1)

// label WHILE
(Sys.init$WHILE)

// goto WHILE
@Sys.init$WHILE
0;JMP

