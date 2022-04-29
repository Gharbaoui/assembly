.global _start
.section .text

_start:
	mov r0, #2
	mov r1, #4
	bl add_func1
	bl add_func2
	mov r7, #1
	swi 0

add_func1:
	push {lr}
	add r0, r1, r2
	pop {pc}


add_func2:
	add r0, r1, r2
	bx lr
