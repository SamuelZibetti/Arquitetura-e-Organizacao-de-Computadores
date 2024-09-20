section     .text
global      _start

_start:
    pop     rbx
    cmp     rbx, 3
    jne     argc_erro
    pop     rbx             ; Descarta da pilha o nome do programa
    pop     rdi             ; oldname
    pop     rsi             ; newname
    mov     rax, 82         ; sys_rename
    syscall
    ; TODO: Mostrar erro se falhou
    ; text    rax, rax
    ; jne     rename_erro
    xor     rdi, rdi        ; 0
    mov     rax, 60         ; sys_exit
    syscall
argc_erro:
    lea     rsi, [msg]      ; buf
    mov     rdi, 1          ; stdout
    mov     rdx, 29         ; count
    mov     rax, 1          ; sys_write
    syscall
    mov     rdi, 1
    mov     rax, 60         ; sys_exit
    syscall

section     .data
msg:        db 'Verifique a linha de comando', 10