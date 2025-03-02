; What's this? What OS does it run on?

segment .data
x:
  db    193
txt:
  db    "Hpu!ju@",0x0a, 0

segment .text
global _start
_start:
  mov al, [x]
  xor al, 0x41
  shr al, 7
  mov [x], al

  mov eax, txt
  mov ecx, eax
  add ecx, 7
work:
  mov bl, [eax]
  sub bl, [x]
  mov [eax], bl
  inc eax
  cmp eax, ecx
  jnz work

  mov ebx, 0
  mov ecx, txt
  mov edx, 8
  mov eax, 4
  int 0x80