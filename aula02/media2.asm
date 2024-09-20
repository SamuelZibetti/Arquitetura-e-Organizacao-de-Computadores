%include	'../util.asm'

section		.text
global		_start

_start:
    call    readint
    mov     rbx, rax
    call    readint
    add     rbx, rax
    call    readint
    add     rbx, rax
    call    readint
    add     rbx, rax
    shr     rbx, 2
    mov     rdi, rbx
    call    printint
    call    endl
    call    exit0