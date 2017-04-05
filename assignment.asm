/********************************************************
* assign  -- program to place the result of the 		   *
*following equation ($t0 = $s0/8 – 2*$s1 +$s2) into $t0*
* where $s0 = 2400, $s1 = 50, $s2= 600                 *
* Answer: $t0 = 800                                    *
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
	#given assignments
	li $s0, 2400
	li $s1, 50
	li $s2, 600

	#given values
	li $a1, 8
	li $a2, 2

	#calculations

	#Div and mult
	div  $s0, $a1
	mflo $t1
	mfhi  $t2

	mult $s1, $a2
	mflo $t3

	#load syscall print_int into $v0
	#move the number to print into $t2
	li  $v0, 1
	move $a0, $t3
	syscall


	#sub and add
	sub $v0, $t1, $a0
	add $t0, $v0, $s2
	li $v0, 1
	syscall

	#close
    	li $v0, 10
   	 syscall
