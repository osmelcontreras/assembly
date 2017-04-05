
/********************************************************
* division  -- program to divide.  									     *
*                                                      *
* Author:  Osmel, Contreras                            *
*                                                      *
* Purpose:  Demonstration of a simple program.         *
*                                                      *
* Usage:                                               *
*      Run the program and the message appears.        *
********************************************************/


	.globl main
	.text

main:
	li	 $t0, 26
	li 	$t1, 8
	div	$t0, $t1
	mflo	$t3
	mfhi	$t4

	li 	$v0, 10
	syscall
