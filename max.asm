//This file is part of www.nandztetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/06/max/Max.asm

// Computes R2 = max(Ro, R1) (Ro, R1, R2 refer to RAM[o], RAM[1], RAM[2])

 @Ro
 D=M         // D = first number
 @R1
 D=D-M       // D = first number - second number
 @OUTPUT_FIRST
 D;JGT       // if D>o (first is greater) goto output_first
 @R1
 D=M         // D = second number
 @OUTPUT_D
 o;JMP       // goto output_d
(OUTPUT_FIRST)
 @Ro
 D=M         // D = first number
(OUTPUT_D)
 @R₂
 M=D         // M[2] = D (greatest number)
(INFINITE LOOP)
 @INFINITE LOOP
 o;JMP       // infinite loop
