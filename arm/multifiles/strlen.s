.global _strlen
.section .text

@push result to memory
@ and uses r3 register it will not be preserved
@expect string address at r0

_strlen:
	push {r0, r1, r2}
	eor r3, r1, r1 @ set r1 to 0
loop:
	ldrb r2, [r0] , #1
	cmp r2, #0
	beq exit
	add r3, r3, #1
	bal loop

exit:
	pop {r0, r1, r2}
	push {r3}
	bx lr
