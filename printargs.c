#include <stdio.h>

void printargs(int argc, char** argv)
{
    int i;
    for (i = 0; i < argc; i++)
        printf("%s ", argv[i]);
    printf("\n");
}
