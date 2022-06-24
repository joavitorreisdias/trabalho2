#include <string.h>
#include <locale.h>
#include <stdio.h>
#include <stdlib.h>
    struct resposta{
        char gabarito[5];
    }pergunta[6];

void main()
{
char matriz[7][5];
for(int i =0; i < 7;i++){
        for( int j =0; j < 5; j++){
           matriz[i][j] = ' ';
        }
    }
pergunta[0].gabarito[5] = "ouro";
pergunta[1].gabarito[5] = "barba";
pergunta[2].gabarito[5] = "imã";
pergunta[3].gabarito[5] = "horta";
pergunta[4].gabarito[5] = "roubo";
pergunta[5].gabarito[5] = "maçã";

setlocale(LC_ALL,"");
    printf("iniciando o jogo...\n");
    printf("PALAVRAS NA HORIZONTAL: \n");
    printf("1) metal precioso de 4 letras \n");
    printf("2) pelo na face (5 letras) \n");
    printf("3) item magnético (3 letras) \n \n");
    printf("PALAVRAS NA VERTICAL: \n");
    printf("4) plantação de legumes \n");
    printf("5) sinomimo de assalto \n");
    printf("6) fruta \n");

    printf("     | %c |", matriz[0][1]);
    printf("\n------------\n");
    printf("     | %c | %c | %c | %c |", matriz[1][1], matriz[1][2], matriz[1][3], matriz[1][4]);
    printf("\n------------\n");
    printf("| * | %c | * | %c | * |" ,matriz[2][0], matriz[2][1], matriz[2][2], matriz[2][3], matriz[2][4]);
    printf("\n------------\n");
    printf("| * | %c | * | %c | %c |" ,matriz[3][0], matriz[3][1], matriz[3][2], matriz[3][3], matriz[3][4]);
    printf("\n------------\n");
    printf("| %c | %c | %c | %c | %c |",matriz[4][0], matriz[4][1], matriz[4][2], matriz[4][3], matriz[4][4]);
    printf("\n------------\n");
    printf("| * | * | * | %c | %c |" ,matriz[5][0], matriz[5][1], matriz[5][2], matriz[5][3], matriz[5][4]);
    printf("\n------------\n");
    printf("| * | * | %c | %c | %c |" ,matriz[6][0], matriz[6][1], matriz[6][2], matriz[6][3], matriz[6][4]);

    int questao;
    char palavra[5];
    for( int i = 0; i < 6; i++){
        printf("\nEAI, JÁ ADVINHOU ALGUMA PALAVRA? QUAL ? \n"); scanf("%i", &questao);
        printf("digite a palavra %i: \n" , questao); fgets(palavra,5,stdin);
        getchar();
        if(strcmp(palavra,pergunta[questao-1].gabarito) != 0){
            do{
                printf("resposta incorreta, tente novamente \n");
                printf("qual palavra voce acha que descobriu? \n"); scanf("%i", &questao);
                printf("digite a palavra %i:  \n" , questao); fgets(palavra,5,stdin);
                getchar();
             }while(strcmp(palavra,pergunta[questao-1].gabarito) != 0);

        }
        if( questao == 1){
            for(int i = 0 ;i < 4; i++){
                matriz[1][i+ 1] = palavra [i];
            }
        }
        if( questao == 2){
            for(int i = 0 ;i < 5; i++){
                matriz[4][i] = palavra [i];
            }
        }
        if( questao == 3){
            for(int i = 0 ;i < 3; i++){
                matriz[6][i+ 2] = palavra [i];
            }
        }
        if( questao == 4){
            for(int i = 0 ;i < 5; i++){
                matriz[i][1] = palavra [i];
            }
        }
        if( questao == 5){
            for(int i = 0 ;i < 3; i++){
                matriz[i + 1][3] = palavra [i];
            }
        }
        if( questao == 6){
            for(int i = 0 ;i < 4; i++){
                matriz[i+3][4] = palavra [i];
            }
        }

    printf("| * | %c | * | * | * |",matriz[0][0], matriz[0][1], matriz[0][2], matriz[0][3], matriz[0][4]);
    printf("\n------------\n");
    printf("| * | %c | %c | %c | %c |",matriz[1][0], matriz[1][1], matriz[1][2], matriz[1][3], matriz[1][4]);
    printf("\n------------\n");
    printf("| * | %c | * | %c | * |" ,matriz[2][0], matriz[2][1], matriz[2][2], matriz[2][3], matriz[2][4]);
    printf("\n------------\n");
    printf("| * | %c | * | %c | %c |" ,matriz[3][0], matriz[3][1], matriz[3][2], matriz[3][3], matriz[3][4]);
    printf("\n------------\n");
    printf("| %c | %c | %c | %c | %c |",matriz[4][0], matriz[4][1], matriz[4][2], matriz[4][3], matriz[4][4]);
    printf("\n------------\n");
    printf("| * | * | * | %c | %c |" ,matriz[5][0], matriz[5][1], matriz[5][2], matriz[5][3], matriz[5][4]);
    printf("\n------------\n");
    printf("| * | * | %c | %c | %c |" ,matriz[6][0], matriz[6][1], matriz[6][2], matriz[6][3], matriz[6][4]);
    }

    printf("\n \n VOCE COMPLETOU AS PALAVRAS CRUZADAS !!!!!");

}


