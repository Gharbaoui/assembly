.global _start
.section .text
_start:
	mov r0, #10 @ this is 00...001010
	lsl r0, #1 @this will be 00...0010100
	lsr r0, #1 @ lsl stands from logical shift right
	@ let's say you do not want to change r0 we could do 
	mov r1, r0
	lsr r1, #1
	@ or we could move and shift at the same time
	mov r1, r0, lsr #1

	mov r1, #1 @ r1 = 00...001
	ror r1, #1 @ r1 = 100..00 @ right rotate


	mov r7, #1
	swi 0


