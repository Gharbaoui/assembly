.global _start
.section .text

_start:
	ldr r0, =list
	ldr r3, =endlist
	ldr r3, [r3]
	str r3, [r0, #40]
	ldr r2, [r0]
loop:
	ldr r1, [r0, #4]!
	cmp r1, r3
	beq exit
	add r2, r2, r1
	bal loop
exit:
	mov r7, #1
	mov r0, r2
	swi 0

.section .data
	endlist:
		.word 0xffffffff
	list:
		.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
