#include <iostream>

using namespace std;

int main()
{
    int vetorInt[5];
    double vetorDouble[5];

    cout << "Digite 5 valores inteiros para o vetorInt:" << endl;
    for (int i = 0; i < 5; ++i)
    {
        cin >> vetorInt[i];
    }

    cout << "Digite 5 valores de ponto flutuante para o vetorDouble:" << endl;
    for (int i = 0; i < 5; ++i)
    {
        cin >> vetorDouble[i];
    }

    cout << "Valores e endereços de memória para vetorInt:" << endl;
    for (int i = 0; i < 5; ++i)
    {
        cout << "Valor: " << vetorInt[i] << " | Endereço de memória: " << &vetorInt[i] << endl;
    }

    int *ptrVetorInt = vetorInt;
    cout << "Ponteiro para vetorInt: " << ptrVetorInt << " | Endereço de memória do ponteiro: " << &ptrVetorInt << endl;

    int *ptrPrimeiroElemento = &vetorInt[0];
    cout << "Ponteiro para o primeiro elemento: " << ptrPrimeiroElemento << " | Endereço de memória do ponteiro: " << &ptrPrimeiroElemento << endl;

    cout << "Valores e endereços de memória para vetorDouble:" << endl;
    for (int i = 0; i < 5; ++i)
    {
        cout << "Valor: " << vetorDouble[i] << " | Endereço de memória: " << &vetorDouble[i] << endl;
    }

    double *ptrVetorDouble = vetorDouble;
    cout << "Ponteiro para vetorDouble: " << ptrVetorDouble << " | Endereço de memória do ponteiro: " << &ptrVetorDouble << endl;

    double *ptrPrimeiroElementoDouble = &vetorDouble[0];
    cout << "Ponteiro para o primeiro elemento: " << ptrPrimeiroElementoDouble << " | Endereço de memória do ponteiro: " << &ptrPrimeiroElementoDouble << endl;

    return 0;
}
