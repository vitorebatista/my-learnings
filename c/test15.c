#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int fI(int *p5, int *p4){
    int idade;
    p5=p4+2;
    idade = *p5;
    printf("(i) %d \n", idade);
    return 0;
}

int fJ(int *p5, int idade){
    int *p4;
    p4 =p5 - 1;
    idade = *p4;
    printf("(j) %d \n", idade);
    return 0;
}

int main(int argc, char **argv) {
    int idade=10;
    int vetor[3] = {0,1,2};
    int *p4 = NULL;
    int *p5 = NULL;
    p4 = p5 = &vetor[1];
    fI(p5, vetor);
    fJ(p4,idade);
    return 0;
}

