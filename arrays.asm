/********************************************************
* arrays  -- program to use arrays							         *
*																										   *
*                                                      *
* Author:  Osmel, Contreras                            *
*                                                      *
* Purpose:  Demonstration of a simple program.         *
*                                                      *
* Usage:                                               *
*      Run the program and the message appears.        *
********************************************************/


.data
Array: .space 4    #4 words
	.text

	la $t0, Array
	li $t1, 5

	sw $t1, 0($t0)
	lw $t2, 0($t0)
	move $a0, $t2

	li $v0, 10
	syscall
