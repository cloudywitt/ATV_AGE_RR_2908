.data
msg1: .asciiz "Digite um número inteiro: "
msg2: .asciiz  "Digite um número de ponto flutuante: "
outmsg: .asciiz "Resultado: "
breakline: .asciiz "\n"

.text
.globl main

main:
	# v1 = $s0
	# v2 = $f1
	
	
	# Pega o inteiro
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	
	# Salva em v1 ($s0)
	move $s0, $v0
	
	# Pega o float
	la $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 6
	syscall
	
	# Salva o float em v2 ($f1)
	mov.s $f1, $f0 
	
	# Printa o resultado
	li $v0, 4
	la $a0, outmsg
	syscall
	
	la $a0, breakline
	syscall
	
	# O inteiro
	move $a0, $s0
	li $v0, 1
	syscall
	
	## Quebra a linha
	li $v0, 4
	la $a0, breakline
	syscall
	
	# O float
	mov.s $f12, $f1
	li $v0, 2
	syscall
	
	# Sai do programa
	li $v0, 10
	syscall
