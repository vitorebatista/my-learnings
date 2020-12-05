#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
    float temp;
    float *p2;

    temp = 26.5;
    p2 = &temp;
    *p2 = 29.0;
    printf("(b) %.1f \n", temp);
    return 0;
}

