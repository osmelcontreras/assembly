
/********************************************************
* Expression  -- program to Print-out the result of the*
*	following expression in the command line					   *
* Expression: ($s0-$s1-$s2)+$s3 = 6                    *
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
	li $s0, 8   #assign numbers
	li $s1, 3
	li $s2, 1
	li $s3, 2

	li $v0, 4         #assign the result
	la $a0, answer    #to "answer" to display
	syscall

	sub $a0, $s0, $s1   #subtract and add
	sub $a0, $a0, $s2
	add $a0, $a0, $s3
	li $v0, 1
	syscall

	#done
    	li $v0, 10       #close
   	 syscall

 	.data
answer: .asciiz "The result is: "
