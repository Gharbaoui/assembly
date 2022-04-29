.global  _start
.section .text

_start:
	mov r0, #3
	mov r1, #2
	
	add r2, r1, r0 @ now r2 has r1 + r0
	mul r3 ,r1, r0 @ now r3 has r1 * r0
	
	add r2, r2, #48
	add r3, r3, #48

	mov r7, #4
	mov r0, #1
	ldr r1, =char
	str r2, [r1]
	mov r2, #4
	swi 0

	mov r0, #4
	mov r7, #1
	swi 0



.section .data
	char:
		.word 4
