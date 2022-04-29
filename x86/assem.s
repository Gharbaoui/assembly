section .data
msg: db 'in assembly: '
msglen: equ $-msg

section .text
global display
extern	display

display:
	push rbp
	mov rbp, rsp
	sub rsp, 0xa
	mov [rbp - 1], dil
	mov [rbp - 9], rsi
	mov [rbp - 10], dl
	mov rdi, 1
	mov rsi, msg
	mov rdx, msglen
	call __print
	xor rdi, rdi
	mov dil, [rbp - 1]
	mov rsi, [rbp - 9]
	xor rdx, rdx
	mov dl, [rbp - 10]
	call __print
	add rsp, 0xa
	pop rbp
	ret
__print:
	push rbp
	mov rbp, rsp
	mov rax, 1
	syscall
	pop rbp
	ret
	
