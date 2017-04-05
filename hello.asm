		/********************************************************           
    * hello  -- program to print out "Hello World!".       *   
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
	
main: la 	$a0, msg
	li 	$v0, 4
	syscall 
	li 	$v0, 10
	syscall 
	
	.data
msg: 	.asciiz "Hello World! "
	
