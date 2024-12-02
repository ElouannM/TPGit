#include <stdio.h>
#include <stdarg.h>


float minf(int nombre,...){
    int i;
    va_list ap;
    float m;
    va_start(ap, nombre);
    m = va_arg(ap,double);
    float c;
    for (i = 1; i < nombre; i++)
    {
        c = va_arg(ap, double);
        if (m > c){
            m = c;
        }
    }
    va_end(ap);
    return m;
}

int main(){
    float m = minf(4,4.1, 2.5, 10.5, 3.7);
    printf("min = %f \n", m);
    return 0;
}