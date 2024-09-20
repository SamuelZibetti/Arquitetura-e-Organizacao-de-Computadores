%include    '../util.asm'

section     .text
global      _start

_start:
    pop     rdi         ; argc
    mov     r12, rdi    ; Cópia preservada
    call    printint
    call    endl
laco:
    pop     rdi         ; Para cada argumento
    call    printstr
    call    endl
    dec     r12         ; r12--
    test    r12, r12    ; Compara com 0
    jg      laco        ; Se > 0 repete
    call    exit0