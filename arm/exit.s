@ after excute use echo $? to see the effect
.global _start
.section .text
_start:
	mov r0, #4
	mov r7, #1
	swi 0

