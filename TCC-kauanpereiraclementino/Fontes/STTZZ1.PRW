#include "protheus.ch"

USER FUNCTION STTZZ1()

LOCAL cFiltro := ""
LOCAL aColors

PRIVATE cCadastro := "Controle de Fornecimento"

PRIVATE aRotina := {;
    {"Pesquisar", "AxPesqui", 0, 1},;
    {"Visualizar", "AxVisual", 0, 2},;
    {"Incluir", "AxInclui", 0, 3},;
    {"Alterar", "AxAltera", 0, 4},;
    {"Excluir", "AxDeleta", 0, 5},;
    {"Ocorrências", "U_STTZZ2FLT", 0, 6};
}  


User Function QryZZ1()


Local oQuery := Nil

oQuery := FWTemporaryTable():New()

oQuery:AddField("ZZ1_CODIGO", "C", 20)
oQuery:AddField("ZZ1_NOMEFO", "C", 100)
oQuery:AddField("ZZ1_VALCER", "D", 8)


Return oQuery


User Function QrySB1()


Local oQuery := Nil

oQuery := FWTemporaryTable():New()

oQuery:AddField("B1_COD", "C", 15)
oQuery:AddField("B1_DESC", "C", 100)
oQuery:AddField("B1_UM", "C", 2)


Return oQuery


// ========================================
// Legenda
// ========================================

aColors := {;
    {"ZZ1->ZZ1_VALCER < dDataBase", "BR_VERMELHO"},;
    {"ZZ1->ZZ1_VALCER <= dDataBase + 30", "BR_AMARELO"},;
    {".T.", "BR_VERDE"};
}

dbSelectArea("ZZ1")
dbSetOrder(1)
dbSeek(xFilial("ZZ1"))

mBrowse( ;
    1, 1, 22, 75, ;
    "ZZ1", ;
    , , , , , ;
    aColors, ;
    , , , , ;
    .F., , , ;
    cFiltro ;
)
Programa principal responsável pelo controle de qualidade/controle de fornecedores e produtos.
Ele usa os campos da tabela ZZ1 e chama as funções auxiliares da STTZZLIB.PRW
