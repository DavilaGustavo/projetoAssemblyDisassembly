#include <stdio.h>
#define SIZE 8

// Confere se a senha está correta
int checkPW(char* input, char* pw){
    int j;
    for(j = 0; j < SIZE-1; j++){
        // Conferir se o input é equivalente ao char - 3 da senha
        if((pw[j] - 3) != input[j]){
            return 0;
        }
    }
    return 1;
}

int main(){
    // Armazena a "senha" como wlrulyhvw
    char senha[SIZE+1] = "wlrulyhvw";
    char tentativa[SIZE] = {};

    printf("Organizacao e Arquitetura de Computadores\n");
    printf("Trabalho Pratico parte 2 - Disassembly\n");
    printf("Analizar e Escrever o algoritmo/fluxograma correspondente ao algoritmo central; Descobrir a senha.\n");
    printf("Formato do Executavel: PE (Windows)\n");
    printf("Informe a Senha:\n");
    fgets(tentativa, 8, stdin);

    // Checa se o palpite está correto
    int temp = checkPW(tentativa, senha);

    // Verificação final da senha
    if(temp){
        printf("CERTA RESPOSTA!!!!! PARABENS!\n");
    } else {
        printf("Resposta Errada! Tente novamente...\n");
    }
    
    //scanf("%d"); // Facilitar a visualização no arquivo .exe
    return 0;
}