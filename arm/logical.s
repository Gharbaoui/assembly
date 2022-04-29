.global _start
.section .text

_start:
	mov r0, #0x000000ff
	mov r1, #0x0000ffff
	and r2, r1, r0 @ result should be 0x000000ff
	orr r3, r1, r0 @ result should be 0x0000ffff 
	eor r3, r1, r0 @ (exclusive or) result should be 0x0000ff00

	mvn r4, r1 @ move and negate result  0xffff0000

	mov r7, #0x1
	swi 0
