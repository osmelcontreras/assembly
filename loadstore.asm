
/********************************************************
* loadstore  -- program to load and store 		         *
*																										   *
*                                                      *
* Author:  Osmel, Contreras                            *
*                                                      *
* Purpose:  Demonstration of a simple program.         *
*                                                      *
* Usage:                                               *
*      Run the program and the message appears.        *
********************************************************/

	.text
	.globl main
main:
	lw $t0, x
	addi $t0, $t0, 3
	sw $t0, x    		#t0= 12 goes to x
	lw $t1, x		#x=12 goes to t1
	addi $t2, $t1, 3   #3 is added to t1 which is 12
	li $v0, 10
	syscall

	.data
x:	.word 9       #t0 =12, t1-12, t2 =15
