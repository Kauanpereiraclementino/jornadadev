#include "protheus.ch"

USER FUNCTION STTIP004(cCodigSZ1)

   LOCAL cFiltro := ""

   // Se não recebeu o código, pega o contato selecionado
   IF Empty(cCodigSZ1)
      cCodigSZ1 := SZ1->Z1_CODIGO
   ENDIF

   IF Empty(cCodigSZ1)
      MsgStop("Nenhum contato foi selecionado.", "Atenção")
      RETURN NIL
   ENDIF

   PRIVATE cCadastro := "Interações - Contato " + AllTrim(cCodigSZ1)

   PRIVATE aRotina := {;
      {"Pesquisar",  "AxPesqui", 0, 1},;
      {"Visualizar", "AxVisual", 0, 2},;
      {"Incluir",    "AxInclui", 0, 3},;
      {"Alterar",    "AxAltera", 0, 4},;
      {"Excluir",    "AxDeleta", 0, 5};
   }

   // Filtra as interações pelo contato selecionado
   cFiltro := "SZ2->Z2_CONTAT == '" + AllTrim(cCodigSZ1) + "'"

   dbSelectArea("SZ2")
   dbSetOrder(1)
   dbSeek(xFilial("SZ2") + cCodigSZ1)

   mBrowse(1, 1, 22, 75, "SZ2", , , , , , ;
           , , , , , .F., , , cFiltro)

RETURN NIL