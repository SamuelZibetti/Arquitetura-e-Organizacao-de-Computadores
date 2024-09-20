%include '../util.asm'

section     .text
global      _start
_start:
    xor     rbx, rbx            ; i=0
loop:                           ; do{
    mov     rdi, [vet+rbx*8]    ; rdi=vet[i]
    call    printint            ; print(rdi)
    call    endl
    inc     rbx                 ; i++
    cmp     rbx, 5              ; }while(i<5);
    jl      loop
    call    exit0

section     .data
vet:        dq  10, 20, 30, 40, 50