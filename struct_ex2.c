#include <stdio.h>
#include <string.h>
#define NUM_ALUNOS 2
//estrutura cad notas
typedef struct {
char Rua[50];
int Numero;
int CEP[30];
char Estado[3];
}Endereco;
typedef struct {
char Nome[50];
int Matricula;
Endereco endereco;
}Aluno;

int main(void){
Aluno alunos[NUM_ALUNOS];// variavel tipo aluno array de nomes(struct)


return 0;
}
