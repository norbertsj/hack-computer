// booting up
@261
D=A
@SP
M=D
@Sys.init
0;JMP

// function Class1.set 0
(Class1.set)

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

// pop static 0
@Class1.vm.0
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

// pop static 1
@Class1.vm.1
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

// push constant 0
@0
D=A
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

// function Class1.get 0
(Class1.get)

// push static 0
@Class1.vm.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Class1.vm.1
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
A=M
0;JMP

// function Class2.set 0
(Class2.set)

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

// pop static 0
@Class2.vm.0
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

// pop static 1
@Class2.vm.1
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

// push constant 0
@0
D=A
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

// function Class2.get 0
(Class2.get)

// push static 0
@Class2.vm.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Class2.vm.1
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
A=M
0;JMP

// function Sys.init 0
(Sys.init)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Class1.set 2
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
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.set
0;JMP
(Sys.init$ret.1)

// pop temp 0
@0
D=A
@5
A=D+A
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

// push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Class2.set 2
@Sys.init$ret.2
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
D=D-1
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.set
0;JMP
(Sys.init$ret.2)

// pop temp 0
@0
D=A
@5
A=D+A
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

// call Class1.get 0
@Sys.init$ret.3
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
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.get
0;JMP
(Sys.init$ret.3)

// call Class2.get 0
@Sys.init$ret.4
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
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.get
0;JMP
(Sys.init$ret.4)

// label WHILE
(Sys.init$WHILE)

// goto WHILE
@Sys.init$WHILE
0;JMP

