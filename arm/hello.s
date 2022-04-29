@ display data using write syscall
.global _start
.section .text
_start:
	mov r7, #4
	mov r0, #1
	ldr r1, =message
	mov r2, #18
	swi 0

	mov r7, #1
	mov r0, #45
	swi 0

.section .data
	message:
	  .ascii "write system call\n"
