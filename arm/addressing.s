.global _start

.section .text


_start:
	mov r7, #4
	mov r0, #1
	ldr r1, =list @ direct addressing
	ldr r2, [r1] @ register indirect addressing
	ldr r3, [r1, #4] @ register indirect addressing with offset
	
	@preincrement
	ldr r3, [r1, #4]!
	@postincrement
	ldr r3, [r1], #4

	mov r2, #4
	swi 0

	mov r0, #1
	mov r2, #4
	add r1, r1, #4
	swi 0

	mov r7, #1
	swi 0



@preincrement
@ldr r3, [r1, #4]!
@it is like 
@add r1, r1, #4
@ldr r3, [r1]

@postincrement
@ldr r3, [r1] #4
@it is like 
@ldr r3, [r1]
@add r1, r1, #4


.section .data
list:
	.word 65, 66, 0, 89
