soma: 0.0
msg: "soma:"

li $t1, 0
li $t1, 30

bge $t0, $t1, exit
li $t0, 1.0
li $t2, 3.0
div $t0, $t0, $t2
li $t2, soma2

add $t2, $t2, $t0
s $t2, soma2

addi $t0, $t0,1
j loop

li $t5, soma2
li $v0, 2
syscall
