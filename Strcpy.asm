#Esse programa realiza a função da STRCPY
#Feito por: Leonardo Fonseca Pinheiro

.data
.align 0
string_original: .asciiz "String a ser copiada!"
string_destino: .asciiz  "aaaaaaaaaaaaaaaaaaaaa"

.text
.globl main

main:

la $t0 string_original
la $t1 string_destino
li $t2 21

loop:
lb $t6, 0($t0)
sb $t6, 0($t1)
addi $t0, $t0, 1
addi $t1, $t1, 1
addi $t2, $t2, -1
bgt $t2, $0, loop

li $v0, 4
la $a0, string_destino
syscall

li $v0, 10
syscall
