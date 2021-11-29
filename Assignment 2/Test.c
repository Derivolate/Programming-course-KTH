#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include "./func.h"

int main(int argc, char *argv[]){
    assert(argc>1);
    char *p;
    float x=strtod(argv[1],&p);
    if (argv[1]!=p){
        float y=func(x);
        printf("sqrt(%s): %g\n",argv[1],y);
    }
    return EXIT_SUCCESS;
}