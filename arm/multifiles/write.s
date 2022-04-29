.global _write
.section .text
_write:
	push {r7}
	mov r7, #4
	swi 0
	pop {r7}
	bx lr
