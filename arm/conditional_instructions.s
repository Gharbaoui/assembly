.global _start
.section .text
@ (addlt add if less than movge move if greater or equale)

_start:
	mov r0, #0
	mov r2, #2
	mov r1, #4
	cmp r2, r1

	movge r0, #4
	mov r7, #1
	swi 0
