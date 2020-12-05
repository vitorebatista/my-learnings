#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int funcA (int **par1){
    (*par1)[0]=100;
    (*par1)[1]=200;
    (*par1)[2]=300;
    printf("(funcA) %d %p\n", *(*par1), *(*par1));
    return 0;
}

int funB(int par1){
    par1=55;
    printf("funb %d %p\n", par1, &par1);
    return 0;
}

int main(int argc, char **argv) {
    int *ptr_valor =NULL;
    int valor[3] = {10,20, 30};
    ptr_valor = &valor[0];
    printf("(main-(a)) %d, %p %p\n\n", *ptr_valor, &valor[0], &valor[1]);
    funcA(&ptr_valor);
    printf("(main-(a)) %d, %p %p\n\n", *ptr_valor, &valor[0], &valor[1]);

    valor[0] - 10;
    printf("(main-(b)) %d, %p %p\n\n", *ptr_valor, &valor[0], &valor[1]);
    funB(valor[0]);

    printf("(main-(b))  %d, %p %p\n\n", *ptr_valor, &valor[0], &valor[1]);

    return 0;
}

