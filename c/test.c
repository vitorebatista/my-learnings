#include <stdio.h>
#include <stdlib.h>


int pass_valor(int par1, float par2){
    par1 = 10;
    par2 = 10.10;
    return 0;
}

int pass_valor2(int *par1, float *par2){
    *par1 = 10;
    *par2 = 10.10;
    return 0;
}

int main(int argc, char **argv) {
    int valor[3] = {10,20,30};
    int *ptr_valor = NULL;

    ptr_valor = &valor[0];
    if (*(++ptr_valor) == valor[1])
        printf("OK (1)\n");
    ptr_valor = &valor[0];
    printf("%d\n", *ptr_valor);
    if (*(ptr_valor++) == valor[1])
        printf("OK (2)\n");

    int int_p1 = 5;
    float float_p2 = 5.1;
    pass_valor(int_p1, float_p2);
    printf("%d\n", int_p1);
    printf("%f\n", float_p2);
    pass_valor2(&int_p1, &float_p2);
    printf("%d\n", int_p1);
    printf("%f\n", float_p2);
    return 0;
}

