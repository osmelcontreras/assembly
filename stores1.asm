/********************************************************
* stores1  -- program to load and store 		         *
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
Array:  .space 8
	.text

	la $t0, Array 	#write address of array into register $t0
	li $t1, 4     	#load number 4 into register $t1
	sw $t1, 0($t0) 	#store first element into the array cell
	li $t1, 7       #load number 7 into register $t1
	sw $t1, 4($t0)	#store second element into the array cell
	li $t1, 1	#load number 1  into register $t1
	sw $t1, 8($t0)  #store third element into the array cell

	lw $t2, 0($t0) 	#get the first element
	move $a0, $t2  	#$a0 holds the adress of integer to print
	li $v0, 1       #load syscall into syscall register
	syscall

	lw $t3, 4($t0)	#get the second element
	move $a0, $t3 	#$a0 holds the adress of integer to print
	li $v0, 1	#load syscall into syscall register
	syscall

	lw $t4, 8($t0) 	#get the third element
	move $a0, $t4	#$a0 holds the adress of integer to print
	li $v0, 1	#load syscall into syscall register
	syscall

	add $t5, $t4, $t3	#add $t4, $t3 and store it in $t5
	nop
	nop
	sub $t6, $t5, $t2	#sub $t4, $t3 and store it in $t6
	nop
	nop

	sw $t6, 12($t0)	 #store $t6 into the array
	li $v0, 1
	nop
	lw $a0, 12($t0)
	syscall

	li $v0, 10  	 #close
	syscall
