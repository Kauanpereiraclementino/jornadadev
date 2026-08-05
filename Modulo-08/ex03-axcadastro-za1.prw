# Exercício 3 — CRUD com AxCadastro

A tabela ZA1 foi criada para armazenar os dados dos Pets.

Campo	Função
ZA1_COD	Código do Pet
ZA1_NOME	Nome do Pet
ZA1_CLIENT	Código do cliente
ZA1_LOJA	Loja do cliente
ZA1_NOMCLI	Nome do cliente

coloquei esse codigo no ZA1_NOMCLI
POSICIONE("SA1",1,xFilial("SA1")+M->ZA1_CLIENT+M->ZA1_LOJA,"A1_NOME")

coloquei a funçao STTIP001 depois o arquivo.prw e executei o comando dado na apostila 
#include "protheus.ch"

User Function STTIP001()

    Private cCadastro := "Pets"

    DbSelectArea("ZA1")
    DbSetOrder(1)

    AxCadastro("ZA1", "Pets", .F.)

Return Nil

compilei e executei o codigo ,ajustei muitos erros ,nao tava reconhecendo o ZA1_CLIENT,dando errado o tipo de dados

mas foi fim consegui cadastrar os pets 


