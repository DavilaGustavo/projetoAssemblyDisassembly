%include "io.inc"

section .data
    array db 3, 45, 21, 7, 11, 66, 24, 23, 32, 1, 58, 4, 75, 34, 20, 2, 89, 55, 13, 40  ; Array com 20 elementos
    tamArray db 20  ; Tamanho do array

section .text
    global main
main:
    mov ecx, [tamArray]  ; ecx = Tamanho do array
    xor ebx, ebx         ; ebx = Índice do vetor (iniciado em 0)
    mov al, [array]      ; al = Primeiro elemento do array (iniciado com o primeiro valor)

loop:
    ; Se o índice for igual ao tamanho do array, fim do loop
    cmp ebx, ecx
    je fim

    ; Carrega o valor atual do array em ah
    mov ah, [array + ebx]

    ; Compara o valor atual (ah) com o maior valor encontrado até agora (al)
    cmp ah, al
    jbe pular

    ; Se o valor atual for maior, atualiza o maior valor (al)
    mov al, ah

pular:
    inc ebx  ; Incrementa o índice do vetor
    jmp loop

fim:
    ; Imprime o maior valor encontrado no console
    PRINT_DEC 1, al

    ; return 0
    xor eax, eax
    ret
