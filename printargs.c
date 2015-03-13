#include <stdio.h>

void printargs(int argc, char** argv)
{
    int i;
    printf("C:    ");
    for (i = 0; i < argc; i++)
        printf("%s ", argv[i]);
    printf("\n");
}
