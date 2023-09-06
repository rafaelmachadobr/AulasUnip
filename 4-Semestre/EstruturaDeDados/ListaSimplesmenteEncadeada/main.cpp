#include <stdlib.h>
#include <stdio.h>

struct No
{
    int info;
    struct No *prox;
};

void inserirLista(int valor);
void exibirLista(void);
void contaLista(void);
bool encontraLista(int valor);
void removeLista(int valor);

struct No *cabeca = NULL;
struct No *ult = NULL;

main()
{
    inserirLista(10);
    inserirLista(20);
    inserirLista(30);
    exibirLista();

    contaLista();

    if (encontraLista(10))
    {

        removeLista(10);
    }
    else
    {
        printf("Valor nao encontrado");
    }

    exibirLista();

    return 0;
}

void inserirLista(int valor)
{
    struct No *novo = (struct No *)malloc(sizeof(struct No));
    novo->info = valor;
    novo->prox = NULL;
    if (cabeca == NULL)
    {
        cabeca = novo;
    }
    else
    {
        ult->prox = novo;
    }
    ult = novo;
}

void exibirLista()
{
    struct No *aux = cabeca;

    if (aux != NULL)
    {
        while (aux->prox != NULL)
        {
            printf("%x %i->%x\n", aux, aux->info, aux->prox);
            aux = aux->prox;
        }
        printf("%x %i->%x\n", aux, aux->info, aux->prox);
    }
    else
    {
        printf("Lista Vazia");
    }
}

void contaLista()
{
    struct No *aux = cabeca;
    int cont = 0;

    if (aux != NULL)
    {
        while (aux->prox != NULL)
        {
            cont++;
            aux = aux->prox;
        }
        cont++;
    }
    else
    {
        printf("Lista Vazia");
    }
}

bool encontraLista(int valor)
{
    struct No *aux = cabeca;
    int encontrado = 0;

    while (aux != NULL)
    {
        if (aux->info == valor)
        {
            encontrado = 1;
            break;
        }
        aux = aux->prox;
    }

    return encontrado;
}

void removeLista(int valor)
{
    struct No *atual = cabeca;
    struct No *anterior = NULL;

    while (atual != NULL)
    {
        if (atual->info == valor)
        {
            if (anterior != NULL)
            {
                anterior->prox = atual->prox;
            }
            else
            {
                cabeca = atual->prox;
            }
            free(atual);
            return;
        }
        anterior = atual;
        atual = atual->prox;
    }
}