# Projeto de Assembly e Disassembly
![Novo Projeto (53)](https://github.com/DavilaGustavo/projetoAssemblyDisassembly/assets/106328212/d683576d-f0e2-45c3-8113-96df99ba0b8b)

Este repositório contém vários projetos escritos em Assembly, utilizando a plataforma SASM (Simple Assembly Language IDE), e uma aplicação de disassembly para a engenharia reversa de um arquivo `Grupo13.exe`, com o objetivo de encontrar a senha referente. Siga as instruções abaixo para reproduzir cada um dos projetos.

## Requisitos

- [SASM (Simple Assembly Language IDE)](https://dman95.github.io/SASM/)
- [x64dbg (x64/x32 debugger)](https://github.com/x64dbg/x64dbg)

## Assembly
![AssemblyCERTO](https://github.com/DavilaGustavo/projetoAssemblyDisassembly/assets/106328212/c2bfda3f-60a0-421e-8851-a756c46ce5c2)

### 0. Loop For
![loopForCERTO](https://github.com/DavilaGustavo/projetoAssemblyDisassembly/assets/106328212/b4bf584c-3ee9-4dec-a72b-bfaba4876915)

**Descrição:** 
Este programa implementa o loop for, imprimindo "i equals %d" cem vezes.

### 1. Ano Bissexto
![bissextoCertoo](https://github.com/DavilaGustavo/projetoAssemblyDisassembly/assets/106328212/74d27b58-daf3-4c70-8537-1e29820e5cce)

**Descrição:** 
Este programa lê um ano fornecido pelo usuário e determina se é um ano bissexto ou não.

### 2. Fibonacci
![FibonacciCERTO](https://github.com/DavilaGustavo/projetoAssemblyDisassembly/assets/106328212/743d24a4-eeaa-4126-9335-dc3cf2b31ac0)

**Descrição:** 
Este programa calcula e exibe os primeiros N números da sequência de Fibonacci.

### 3. Bubble Sort
![Bubble Sort CERTO](https://github.com/DavilaGustavo/projetoAssemblyDisassembly/assets/106328212/f6e3add1-42eb-46d2-86e9-04a450ef4928)

**Descrição:** 
Este programa implementa o algoritmo de ordenação Bubble Sort para organizar um array de números.

### 4. Maior Número
![maiornumCERTO](https://github.com/DavilaGustavo/projetoAssemblyDisassembly/assets/106328212/245a3543-69c8-4a61-8c47-e40d000896eb)

**Descrição:** 
Este programa encontra o maior elemento em um vetor de N posições.

## Como Compilar e Executar os Projetos no SASM

1. **Abra o SASM:** 
   - Baixe e instale o SASM, se ainda não o fez.
   - Abra o SASM no seu computador.

2. **Carregue o Arquivo:**
   - Vá até `File > Open` e navegue até a pasta `praticaAssembly` do repositório.
   - Selecione o arquivo do projeto que deseja executar (por exemplo, `bubbleSort.asm`).

3. **Compile o Programa:**
   - Clique no botão de `Compile`.

4. **Execute o Programa:**
   - Clique no botão de `Run`.
   - Siga as instruções no console para interagir com o programa.

## Estrutura do Repositório
Cada arquivo `.asm` na pasta `praticaAssembly` corresponde a um dos projetos descritos acima. Sinta-se à vontade para explorar e modificar os códigos para entender melhor o funcionamento de cada algoritmo em Assembly.

## Disassembly
![DisassemblyCERTO (1)](https://github.com/DavilaGustavo/projetoAssemblyDisassembly/assets/106328212/2a0ee2fb-ebb0-4980-a617-765f369e51cb)

### Projeto de Disassembly

**Descrição:** 
Esta seção contém um exemplo de disassembly, onde um arquivo executável (.exe) foi desmontado para análise e estudo. O objetivo foi encontrar uma senha para acessar o programa e criar um código em C com a mesma função.

### Estrutura do Repositório

- `Grupo13.exe`: O arquivo executável original que foi analisado.
- `Grupo13Cracked.exe`: A versão do executável que foi modificada para bypassar a proteção de senha.
- `senha.txt`: O arquivo contendo a senha encontrada durante a análise.
- `relatorioDisassembly`: Relatório contendo explicação de como o executável foi quebrado e a senha encontrada.
- `tentativasExe/`: Pasta contendo todas as tentativas realizadas durante o processo de disassembly.
- `CodigoC/`: Pasta contendo o código equivalente escrito na linguagem C.

Para mais detalhes e exemplos específicos de como o disassembly foi realizado, veja os arquivos na pasta `praticaDisassembly`.
