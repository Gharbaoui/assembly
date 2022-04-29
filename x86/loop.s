section .text
global print_arr ; takes pointer to array and it's size one character 1 fine 12 bad
extern print_arr
print_arr:
	push rbp
	mov rbp, rsp
	call _print
	mov rax, 60
	mov rdi, 12
	syscall

_print:
	push rbp
	mov rsp, rbp
	xor r10, r10
	mov r8, rdi
	mov r9, rsi
	mov rdi, 1
	mov rdx, 1
	mov rax, 1
	l1:
		cmp r10, r9
		jnc l2
		xor rsi, rsi
		mov rsi, [r8+(r10*4)]
		add rsi, 48
		syscall
		inc r10
		jmp l1
	l2:
	pop rbp
	ret
