.global _start
.section .text
@ bgt blt bge ble beq bne
_start:
	mov r7, #1
	mov r1, #10
	eor r2, r2, r2

	cmp r1, r2 @ doing r1 - r2 and sets flags
	blt greater
	
	bal else_label @ branch always
greater:
	mov r0, #90
	swi 0

else_label:
	mov r0, #0
	swi 0


