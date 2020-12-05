#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
    int valor;
    int *p1;

    valor = 10;
    p1 = &valor;
    *p1 = 20;
    printf("(a) %d \n",valor);
    return 0;
}

