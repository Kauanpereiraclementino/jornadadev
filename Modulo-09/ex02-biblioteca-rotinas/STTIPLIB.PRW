#include "protheus.ch"

// -----------------------------------------------
// NomeCliente
// -----------------------------------------------
STATIC FUNCTION NomeCliente(cCodigo, cLoja)                 

LOCAL cFilial := xFilial("SA1")
LOCAL cNome

IF Empty(cCodigo)
    RETURN ""
ENDIF

cNome := POSICIONE("SA1", 1, cFilial + cCodigo + cLoja, "A1_NOME")

RETURN AllTrim(cNome)


// -----------------------------------------------
// ProxCodigoSZ1
// -----------------------------------------------
STATIC FUNCTION ProxCodigoSZ1()

RETURN GetSXENum("SZ1", "Z1_CODIGO")


// -----------------------------------------------
// ProxSequenSZ2
// -----------------------------------------------
STATIC FUNCTION ProxSequenSZ2(cContat)

LOCAL nMax := 0

dbSelectArea("SZ2")
dbSetOrder(1)
dbSeek(xFilial("SZ2") + cContat)

WHILE !Eof() .AND. ;
      SZ2->Z2_FILIAL == xFilial("SZ2") .AND. ;
      SZ2->Z2_CONTAT == cContat

    nMax := Max(nMax, Val(SZ2->Z2_SEQUEN))

    dbSkip()

ENDDO

RETURN StrZero(nMax + 1, 3)


// -----------------------------------------------
// DescTipoInteracao
// -----------------------------------------------
STATIC FUNCTION DescTipoInteracao(cTipo)

LOCAL cDesc := ""

DO CASE

CASE cTipo == "E"
    cDesc := "E-mail"

CASE cTipo == "L"
    cDesc := "Ligação"

CASE cTipo == "R"
    cDesc := "Reunião"

CASE cTipo == "V"
    cDesc := "Visita"

CASE cTipo == "W"
    cDesc := "WhatsApp"

ENDCASE

RETURN cDesc


// -----------------------------------------------
// GRAVARLOG
// Registra erros do módulo TIP
// -----------------------------------------------
USER FUNCTION GRAVARLOG(cFuncao, oErro)

LOCAL cArqLog := "\logs\advpl_" + DToS(Date()) + ".log"
LOCAL nHandle
LOCAL cLinha

cLinha := DToS(Date()) + " " + Time() + " | "
cLinha += cFuncao + " | "
cLinha += cNomUsr + " | "
cLinha += "Empresa: " + cEmpAnt + ;
          " Filial: " + cFilAnt + " | "

IF ValType(oErro) == "O"

    cLinha += "ERRO: " + oErro:Description + " | "
    cLinha += "Func: " + oErro:ProcName + ":" + ;
              cValToChar(oErro:ProcLine) + " | "
    cLinha += "SubSist: " + oErro:SubSystem + " | "
    cLinha += "Oper: " + oErro:Operation

ELSE

    cLinha += "ERRO: " + cValToChar(oErro)

ENDIF

nHandle := FOpen(cArqLog, FO_READWRITE + FO_SHARED)

IF nHandle < 0
    nHandle := FCreate(cArqLog)
ENDIF

IF nHandle >= 0

    FSeek(nHandle, 0, FS_END)
    FWrite(nHandle, cLinha + CRLF)
    FClose(nHandle)

ENDIF

RETURN NIL