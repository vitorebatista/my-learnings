#include <stdio.h>
#include <stdlib.h>
#define N 10

int main(int argc, char **argv) {
    int *vet_i;
    vet_i = malloc(sizeof(int)*10);
    for (int fi = 0; fi <= N; fi++){
        vet_i[fi] = fi * N;
        printf("(for) vet_i[%d]%d\n", fi, vet_i[fi]);
    }
    return 0;
}