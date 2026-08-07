#include "protheus.ch"


User Function NomeFornecedor(cFornec, cLoja)

Local cNome := ""
Local oErro := Nil

BEGIN SEQUENCE

    cFornec := AllTrim(cFornec)
    cLoja   := AllTrim(cLoja)

    If !Empty(cFornec)

        cNome := POSICIONE( ;
            "SA2", ;
            1, ;
            XFILIAL("SA2") + cFornec + cLoja, ;
            "A2_NOME" ;
        )

    EndIf

RECOVER USING oErro

    GravarLogTCC("NomeFornecedor", oErro)

    MsgInfo( ;
        "Não foi possível localizar o fornecedor." + CRLF + ;
        "Verifique o código e a loja informados.", ;
        "Atenção" ;
    )

    cNome := ""

END SEQUENCE


Return cNome


User Function NomeProduto(cCodPro)

```
Local cDesc := ""
Local oErro := Nil

BEGIN SEQUENCE

    cCodPro := AllTrim(cCodPro)

    If !Empty(cCodPro)

        cDesc := POSICIONE( ;
            "SB1", ;
            1, ;
            XFILIAL("SB1") + cCodPro, ;
            "B1_DESC" ;
        )

    EndIf

RECOVER USING oErro

    GravarLogTCC("NomeProduto", oErro)

    MsgInfo( ;
        "Não foi possível localizar o produto." + CRLF + ;
        "Verifique o código informado.", ;
        "Atenção" ;
    )

    cDesc := ""

END SEQUENCE


Return cDesc



User Function PercNaoConforme(nOk, nNok)

Local nTotal := 0
Local nPerc  := 0

nTotal := nOk + nNok

If nTotal > 0
    nPerc := (nNok / nTotal) * 100
EndIf


Return nPerc



User Function CertificadoVencendo(dValCer)

Local lRet := .F.

If !Empty(dValCer)

    If dValCer >= Date() .And. ;
       dValCer <= Date() + 30

        lRet := .T.

    EndIf

EndIf


Return lRet


User Function GravarLogTCC(cFuncao, oErro)

Local cArquivo  := "TCC_ERROS.LOG"
Local cMensagem := ""
Local cLinha    := ""

If oErro != Nil

    If ValType(oErro) == "O"

        cMensagem := oErro:Description

    Else

        cMensagem := ValToChar(oErro)

    EndIf

Else

    cMensagem := "Erro não especificado."

EndIf

cLinha := ;
    DToC(Date()) + " " + ;
    Time() + " - " + ;
    cFuncao + " - " + ;
    cMensagem + CRLF

MemoWrite(cArquivo, cLinha)


Return Nil

biblioteca de funções comuns do sistema,consulta de fornecedor e produto,calculo de percentual
verificação de vencimento de certificados e registro de erros.Deixando a STTZZ1 mais organizada e limpa 
