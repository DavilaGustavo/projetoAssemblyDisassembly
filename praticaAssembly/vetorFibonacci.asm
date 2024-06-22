; Recebe um valor N e exibe os N primeiros termos de Fibonacci

%include "io.inc"

section .data
    N db 24  ; Número de termos a serem gerados (exemplo: 20 primeiros termos)

section .bss
    fibonacci resd 24  ; Reserva espaço para armazenar até 20 números de Fibonacci (cada número com 4 bytes)

section .text
    global main
main:
    movzx ecx, byte [N]  ; ecx = Número de termos a serem gerados
    cmp ecx, 1
    jle fim       ; Se N <= 1, termina o programa

    ; Inicializa os dois primeiros termos da sequência
    mov dword [fibonacci], 0   ; Primeiro termo = 0
    mov dword [fibonacci+4], 1 ; Segundo termo = 1

    ; Configura os registradores para o cálculo da sequência
    xor ebx, ebx     ; ebx = Índice do vetor (iniciado em 0)
    mov esi, 2       ; esi = Índice do próximo termo a calcular

calcula_fibonacci:
    ; Se já calculou N termos, termina
    cmp esi, ecx
    jge imprime_fibonacci

    ; Calcula o próximo termo (fib(n) = fib(n-1) + fib(n-2))
    mov eax, [fibonacci + esi*4 - 4] ; eax = fib(n-1)
    add eax, [fibonacci + esi*4 - 8] ; eax = fib(n-1) + fib(n-2)
    mov [fibonacci + esi*4], eax     ; Armazena o próximo termo

    ; Incrementa o índice
    inc esi
    jmp calcula_fibonacci

imprime_fibonacci:
    ; Configura os registradores para a impressão
    xor ebx, ebx     ; ebx = Índice do vetor (iniciado em 0)

loop_imprime:
    ; Se já imprimiu N termos, termina
    cmp ebx, ecx
    jge fim

    ; Imprime o termo atual
    mov eax, [fibonacci + ebx*4]
    PRINT_DEC 1, eax
    PRINT_CHAR ' '

    ; Incrementa o índice
    inc ebx
    jmp loop_imprime

fim:
    ; return 0
    xor eax, eax
    ret
