#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int *fF(char *p3){
    p3 = p3 + 5;
    printf("(f) %c \n", *p3);
}

int fG(char *p3){
    char *aux = NULL;
    p3--;
    aux = p3;
    p3++;
    printf("(g) %c \n", *aux);
    return 0;
}
int main(int argc, char **argv) {
    char *nome = "Algoritmos";
    char *p3 = NULL;
    p3 = fF(nome);
    fG(p3);
    return 0;
}

