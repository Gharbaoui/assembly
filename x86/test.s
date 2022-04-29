	.text
	.intel_syntax noprefix
	.file	"test.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI0_0:
	.long	1069547520              # float 1.5
.LCPI0_1:
	.long	1067030938              # float 1.20000005
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	movss	xmm0, dword ptr [rip + .LCPI0_0] # xmm0 = mem[0],zero,zero,zero
	movss	xmm1, dword ptr [rip + .LCPI0_1] # xmm1 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm1
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 4] # xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 8]
	movss	dword ptr [rbp - 12], xmm0
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
