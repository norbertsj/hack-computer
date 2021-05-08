// function SimpleFunction.test 2
(SimpleFunction.test)
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@1
D=A
@LCL
A=D+M
D=M
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

// push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
0;JMP

