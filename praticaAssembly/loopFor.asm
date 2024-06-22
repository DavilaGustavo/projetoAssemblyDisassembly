; int i;
; 
; for(i=0; i<100; i++)
; {
;   printf("i equals %d\n", i);
; }

%include "io.inc"

section .bss
    i resd 1 ; int i

section .text
global main
main:
    ; i = 0
    mov dword [i], 0

loop_start:
    ; eax = i
    mov eax, [i]

    ; Imprime a mensagem "i equals %d\n"
    PRINT_STRING "i equals "
    PRINT_DEC 4, eax
    PRINT_CHAR 10  ; \n

    ; i++
    inc dword [i]

    ; Verifica se i < 100
    mov eax, [i]
    cmp eax, 100
    jl loop_start

    ; return 0
    xor eax, eax
    ret