/********************************************************
    * StringInt -- program to print integer and string      *
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
	la 	$a0, output
	li 	$v0,4
	syscall
	
	li 	$v0, 5
	move	$a0,$0
	li	$v0,1
	syscall
	li	$v0,10
	syscall

	.data
	.asciiz
output: "The number is: "
