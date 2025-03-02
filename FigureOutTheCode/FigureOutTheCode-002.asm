; Figure out what this piece of code does
unknownFunc:
	push ebp
	mov ebp, esp
	lea eax, [ebp + 0x08]
	mov eax, [eax]
fun:
	cmp byte [eax], 0x61
	jl noFun
	sub byte [eax], 0x20
noFun:
	inc eax
	cmp byte [eax], 0x00
	jnz fun

	pop ebp
	ret