.data
	output_msg: .asciiz "s = "
.text
.globl main

main:
	# int i;
	li $t0, 0
	
	# int j = 5;
	li $s0, 5
	
	# int s = 1;
	li $t1, 1
	
WHILE:	
	beq $t0, $s0, ENDWHILE # while (i < j)
	add $t1, $t1, $t0 # s = s + i
	addi $t0, $t0, 1 # i++
	j WHILE	
ENDWHILE:
    # Print "s = "
	li $v0, 4
	la $a0, output_msg
	syscall
	
    # Print s value
	li $v0, 1
	move $a0, $t1
	syscall
	
	# exit
	li $v0, 10
	syscall

