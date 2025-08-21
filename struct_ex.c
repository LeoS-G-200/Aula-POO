/*Declare uma estrutura capaz de armazenar o numero de 3 notas para um dado do aluno*/

#include <stdio.h>
#define TAMANHO_NOME 256
#define NUM_NOTAS 2
//estrutura cad notas
typedef struct {
    char nome[TAMANHO_NOME];//nome
    double notas[NUM_NOTAS];//array com notas

}CadNotas;

int main(void){
     CadNotas aluno[25];// variavel tipo CadNotas (struct)
     for(int k=0; )
     printf("Cadastro de notas\n");
     printf("Nome de aluno: ");
     scanf("%255[^\n]s",aluno.nome);
     for(int i =0;i< NUM_NOTAS;i++){
        printf("informe a nota %d :",i+1);
        scanf("%lf",&aluno.notas[i]);
     }
     printf(" Dados do Aluno\n");
     printf(" Aluno %s\n",aluno.nome);
     for(int j=0;j<NUM_NOTAS;j++){
        printf(" Nota %d : %lf\n",j+1,aluno.notas[j]);
     }
    return 0;
}