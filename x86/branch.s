msg_len: equ $- msg


section .text

global _start

_start:
	push rbp
	mov rbp, rsp
	call _prompt

	call _take_input



_take_input:
	push rbp
	mov rsp, rbp
	sub rsp, 0x8

	mov rax, 0
	mov rdi, 0
	mov rsi, rsp
	mov rdx, 8
	syscall

	mov r10, [rsp]
	cmp r10, 3
	je exit

	jmp _start
	leave
	ret
_prompt:
	push rbp
	mov rbp, rsp

	mov rax, 0x1
	mov rdi, 1
	mov rsi, msg
	mov rdx, msg_len
	syscall

	leave
	ret

exit:
	mov rax, 60
	syscall
