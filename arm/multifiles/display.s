.global _start
.extern _strlen
.extern _write
.extern _exit
.section .text

_start:
	ldr r0, =msg
	bl _strlen
	mov r1, r0
	mov r0, #1
	pop {r2} @length of msg
	bl _write
	mov r0, r2 @ exit with length of string
	bal _exit

.section .data
	msg:
		.asciz "hello, world\n"
