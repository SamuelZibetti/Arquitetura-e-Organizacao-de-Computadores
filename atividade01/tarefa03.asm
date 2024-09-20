%include	'../util.asm'

section		.text
global		_start

_start:
    lea     rdi, [msg1]
    call    printstr
    call    endl
    call    readint
    mov     r12, rax
    call    readint
    mov     r13, rax
    lea     rdi, [msg2]
    call    printstr
    mov     rdi, r13
    cmp     r12, r13
    cmovg   rdi, r12
    call    printint
    call    endl
    call    exit0
    
section		.data
msg1:		db	'Informe dois valores: ', 0
msg2:		db	'Maior: ', 0