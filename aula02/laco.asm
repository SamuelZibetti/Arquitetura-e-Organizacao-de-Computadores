%include	'../util.asm'

section		.text
global		_start

_start:
    xor     r12, r12
inicio:
    mov     rdi, r12
    call    printint
    call    endl
    inc     r12         ; r12++
    cmp     r12, 10     ; if(r12<=10) ir para o inicio
    jle     inicio
    call    exit0