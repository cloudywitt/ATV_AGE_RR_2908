### $s1 = i
### $s2 = j

li $s2, 12

li  $v0, 5
syscall
move $s1, $v0

slt $s2, $s1, $s2
