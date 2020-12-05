#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
    char aux;
    char *nome = "Algoritmos";
    char *p3;

    p3 = &nome[0];
    aux = *p3;
    printf("%c", aux);
    p3 = &nome[4];
    aux = *p3;
    printf("%c", aux);
    p3 = nome;
    printf("%c", *p3);
    return 0;
}

