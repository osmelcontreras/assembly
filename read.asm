
/********************************************************
* read  -- program to read three numbers, add them 		 *
*	and print them in the command line								   *
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
	li $v0, 4
	la $a0, prompt1   #first number
	syscall
	li $v0, 5
	syscall
	move $t0, $v0   
	
	li $v0, 4
	la $a0, prompt2  #second number
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, prompt3  #thrid number
	syscall
	li $v0, 5
	syscall
	move $t2, $v0
	
  #print out sum of $a0
    li $v0, 4
    la $a0, answer
    syscall
#compute the sum

    add $v1, $t1, $t0,   #add the three 
    add $a0, $v1, $t2    
    li $v0, 1
    syscall
    
#done
    li $v0, 10
    syscall
.data 
prompt1: .asciiz "Enter the first number:  " 
prompt2: .asciiz "Enter the second number: " 
prompt3: .asciiz "Enter the third number: " 
answer: .asciiz "The result is: "
	

