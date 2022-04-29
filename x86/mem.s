global _start

section .text
_start:
	mov rax, 0x0
	
	mov rdi, 0
	mov rsi, msg
	mov byte [rsi + 5] , 10
	mov rdx, 5
	syscall

	mov rax, 0x01
	mov rdi, 1
	mov rsi, msg
	mov rdx, 5
	syscall

	mov rax, 60
	mov rdi, 45
	syscall
	

section .data
	msg times 10 db 0
