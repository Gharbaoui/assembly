.global _start
.section .text
_start:
	mov r0, #3
	mov r1, #6
	sub r2, r0, r1 @ r2 = 0xfffffffd in this case r2 means -3 negative number

	mov r3, #0xffffffff
	mov r4, #0x2
	sub r5, r3, r4 @ r5 = 0xfffffffd in this case r2 means 4294967293 some big positive number

@ as you can see until now there's no way you can diffrentiate r2 r5
@solution is using some sub instruction that uses  flags (subs) (adds this is also sets  cpsr)

	mov r0, #3
	mov r1, #6
	subs r2, r0, r1 @ r2 = 0xfffffffd in this case r2 means -3 negative number

	mov r3, #0xffffffff
	mov r4, #0x2
	subs r5, r3, r4 @ r5 = 0xfffffffd in this case r2 means 4294967293 some big positive number



	mov r7, #1
	mov r0, #4
	swi 0
