%include "io.inc"

section .data
    msg1 db 'Ano bissexto', 0
    msg2 db 'Ano nao bissexto', 0

section .bss
    ano resd 1 ; Reserva espaço para o ano (32 bits)

section .text
    global main

main:
    ; Leitura do ano pelo usuário
    GET_DEC 4, [ano]

    ; Carregar o ano no registrador eax
    mov eax, [ano]

    ; Verificar se é divisível por 4
    mov ebx, 4
    cdq
    div ebx
    test edx, edx
    jnz naoBissexto

    ; Verificar se é divisível por 100
    mov eax, [ano]
    mov ebx, 100
    cdq
    div ebx
    test edx, edx
    jnz bissexto

    ; Verificar se é divisível por 400
    mov eax, [ano]
    mov ebx, 400
    cdq
    div ebx
    test edx, edx
    jnz naoBissexto

bissexto:
    PRINT_STRING msg1
    jmp fim

naoBissexto:
    PRINT_STRING msg2

fim:
    ; return 0
    xor eax, eax
    ret
