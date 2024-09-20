%include '../util.asm'

section     .text
global      _start
_start:
    mov     rdi, [num]
    call    printint
    call    endl
    call    exit0

section     .data
num:        dq  12345678