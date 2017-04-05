/********************************************************
* loadstore1  -- program to load and store 		         *
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
		la $s0 , 0XFFFF0010
		li $t0, 123
		sw $t0, 0($s0)
		lw $t1, 0($s0)
		li $t2, 5
		add $t3, $t2, $t1

		li $v0, 10
		syscall
