section .data
msg: db 'other string'
msglen: equ $-msg 
section .text
global _start
_start:
	push rbp
	mov rbp, rsp
	sub rsp, 0x8
	call func
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, msglen
	syscall
	mov rax, 60
	syscall

func:
	push rbp
	mov rbp, rsp
	mov rax, 0x45
	pop rbp
	ret
