#include <stdlib.h>
#include <stdio.h>

void printargs(int argc, char** argv)
{
    for (int i = 0; i < argc; i++)
        printf("%s ", argv[i]);
    printf("\n");
}
