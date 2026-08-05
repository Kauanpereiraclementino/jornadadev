#include "protheus.ch"

USER FUNCTION STTIP005SALVAR()   


    LOCAL lOk := .T.
    LOCAL oErro                      
    
   
    

    BeginTran()

    BEGIN SEQUENCE

        IF Empty(M->Z1_CLIENTE)
            Break("Cliente é obrigatório!")
        ENDIF

        IF Empty(M->Z1_ASSUNTO)
            Break("Assunto é obrigatório!")
        ENDIF

        dbSelectArea("SZ1")

        IF !RecLock("SZ1", .T.)
            Break("Não foi possível bloquear o registro!")
        ENDIF

        SZ1->Z1_CODIGO  := M->Z1_CODIGO
        SZ1->Z1_CLIENTE := M->Z1_CLIENTE
        SZ1->Z1_ASSUNTO := M->Z1_ASSUNTO

        MsUnLock()

    RECOVER USING oErro

        lOk := .F.

        RollBackTran()

        MsgStop( ;
            "Não foi possível cadastrar o contato!" + CRLF + ;
            cValToChar(oErro), ;
            "Erro" ;
        )

        U_GRAVARLOG("STTIP005SALVAR", oErro)

    END SEQUENCE

    IF lOk

        CommitTran()

        MsgInfo( ;
            "Contato cadastrado com sucesso!", ;
            "Sucesso" ;
        )

    ENDIF

RETURN lOk