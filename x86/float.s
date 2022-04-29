global _start
section .text

_start:
	movsd xmm0, [num]


section .data
	num DQ 1.25

