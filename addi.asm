    /********************************************************           
    * addition -- program to print out the addition.       *   
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
	li	$t0, 2
	addi 	$t5, $t0, 3
	li 	$v0, 10
	syscall 
