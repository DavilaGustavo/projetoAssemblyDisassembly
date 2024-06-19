%include "io.inc" 

section .data
    array db 7,1,3,6             ; Array para organizar
    tamArray db 4                ; Tamanho do array

section .text
    global main
main:
    mov ecx, [tamArray]          ; ecx = Tamanho do array
    dec ecx                      ; Ajuste do índice
    mov esi, ecx                 ; esi = Limite externo

loopExterno:
    xor edi, edi                 ; Índice de troca = 0
    xor ebx, ebx                 ; Flag de troca = 0

loopInterno:
    ; Caso edi seja maior ou igual ao limite, fim do loop interno
    cmp edi, esi
    jge fimLoopInterno 

    mov al, [array + edi]        ; al = Elemento atual
    mov ah, [array + edi + 1]    ; ah = Próximo Elemento

    ; Compara ambos e se ja estiverem em ordem, pula
    cmp al, ah
    jbe pularTroca

    ; Caso não estejam em ordem, troca ambos de lugar
    mov [array + edi], ah
    mov [array + edi + 1], al
    mov ebx, 1                   ; Sinalizar que ocorreu uma troca

pularTroca:
    inc edi
    jmp loopInterno

fimLoopInterno:
    ; Pula para o final se não houver troca
    cmp ebx, 0
    je fim
    
    ; Caso esi seja diferente de negativo, repete o loop externo
    dec esi
    jns loopExterno

fim:
    ; Loop para printar o resultado no console
    PRINT_DEC 1, [array + ebx]
    inc ebx
    dec ecx
    jns fim
    
    ; return 0
    xor eax, eax
    ret
