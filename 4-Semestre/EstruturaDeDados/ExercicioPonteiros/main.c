#include <stdio.h>

int main()
{
    int vetorInt[5];
    double vetorDouble[5];
    int i;

    printf("Digite 5 valores inteiros para o vetorInt:\n");
    for (i = 0; i < 5; ++i)
    {
        scanf("%d", &vetorInt[i]);
    }

    printf("Digite 5 valores de ponto flutuante para o vetorDouble:\n");
    for (i = 0; i < 5; ++i)
    {
        scanf("%lf", &vetorDouble[i]);
    }

    printf("Valores e endereços de memória para vetorInt:\n");
    for (i = 0; i < 5; ++i)
    {
        printf("Valor: %d | Endereço de memória: %p\n", vetorInt[i], (void *)&vetorInt[i]);
    }

    int *ptrVetorInt = vetorInt;
    printf("Ponteiro para vetorInt: %p | Endereço de memória do ponteiro: %p\n", (void *)ptrVetorInt, (void *)&ptrVetorInt);

    int *ptrPrimeiroElemento = &vetorInt[0];
    printf("Ponteiro para o primeiro elemento: %p | Endereço de memória do ponteiro: %p\n", (void *)ptrPrimeiroElemento, (void *)&ptrPrimeiroElemento);

    printf("Valores e endereços de memória para vetorDouble:\n");
    for (i = 0; i < 5; ++i)
    {
        printf("Valor: %.1lf | Endereço de memória: %p\n", vetorDouble[i], (void *)&vetorDouble[i]);
    }

    double *ptrVetorDouble = vetorDouble;
    printf("Ponteiro para vetorDouble: %p | Endereço de memória do ponteiro: %p\n", (void *)ptrVetorDouble, (void *)&ptrVetorDouble);

    double *ptrPrimeiroElementoDouble = &vetorDouble[0];
    printf("Ponteiro para o primeiro elemento: %p | Endereço de memória do ponteiro: %p\n", (void *)ptrPrimeiroElementoDouble, (void *)&ptrPrimeiroElementoDouble);

    return 0;
}
