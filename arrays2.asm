
/********************************************************
* arrays2  -- program to use arrays with words         *
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
nums: .word 1, 2, 3   #array
	.text
	la $t0, nums      #load address of array
	lw $t1, 0($t0)    #load 3 nums
	lw $t2, 4($t0)
	lw $t3, 8($t0)
	add $t4, $t1, $t2
	nop
	nop
	add $t5, $t4, $t3
	nop
	nop
	sw  $t5, 12($t0)
	li $v0, 1
	nop
	lw $a0, 12($t0)
	syscall
	li $v0, 10
	syscall
