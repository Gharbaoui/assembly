.global _exit
.section .data

_exit:
	mov r7, #1
	swi 0
