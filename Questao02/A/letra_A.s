li $s1, 12
li $s2, 5

add $t0, $s1, $s1
add $t1, $s1, $s2
sub $s3, $t0, t1

sw $t4, t

li $v0, 1
li $a0, t
sycall
