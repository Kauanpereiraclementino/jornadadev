FUNCTION Menu()

   LOCAL nOpcao

   QOut("")
   QOut("1 - Cadastrar")
   QOut("2 - Listar")
   QOut("3 - Entrada")
   QOut("4 - Saida")
   QOut("5 - Buscar")
   QOut("6 - Relatorio")
   QOut("0 - Sair")

   INPUT "Opcao: " TO nOpcao

RETURN nOpcao

FUNCTION CadastrarProduto(aProdutos)

   LOCAL nCodigo
   LOCAL cNome
   LOCAL nQtd
   LOCAL nPreco

   INPUT "Codigo: " TO nCodigo
   ACCEPT "Nome: " TO cNome
   INPUT "Quantidade: " TO nQtd
   INPUT "Preco: " TO nPreco

   AAdd(aProdutos,{nCodigo,cNome,nQtd,nPreco})

RETURN NIL
FUNCTION ListarProdutos(aProdutos)

   LOCAL nI

   FOR nI:=1 TO Len(aProdutos)

      QOut("Codigo: " + AllTrim(Str(aProdutos[nI][1])))
      QOut("Nome: " + aProdutos[nI][2])
      QOut("Qtd: " + AllTrim(Str(aProdutos[nI][3])))
      QOut("Preco: " + AllTrim(Str(aProdutos[nI][4],10,2)))
      QOut("--------------------")

   NEXT

RETURN NIL

FUNCTION BuscarPosicao(aProdutos,nCodigo)

   LOCAL nI

   FOR nI:=1 TO Len(aProdutos)

      IF aProdutos[nI][1] == nCodigo
         RETURN nI
      ENDIF

   NEXT

RETURN 0

FUNCTION EntradaEstoque(aProdutos)

   LOCAL nCodigo
   LOCAL nQtd
   LOCAL nPos

   INPUT "Codigo: " TO nCodigo

   nPos := BuscarPosicao(aProdutos,nCodigo)

   IF nPos > 0

      INPUT "Quantidade: " TO nQtd

      aProdutos[nPos][3] += nQtd

   ELSE

      QOut("Produto nao encontrado!")

   ENDIF

RETURN NIL

FUNCTION SaidaEstoque(aProdutos)

   LOCAL nCodigo
   LOCAL nQtd
   LOCAL nPos

   INPUT "Codigo: " TO nCodigo

   nPos := BuscarPosicao(aProdutos,nCodigo)

   IF nPos == 0

      QOut("Produto nao encontrado!")

   ELSE

      INPUT "Quantidade: " TO nQtd

      IF nQtd <= aProdutos[nPos][3]

         aProdutos[nPos][3] -= nQtd

      ELSE

         QOut("Estoque insuficiente!")

      ENDIF

   ENDIF

RETURN NIL

FUNCTION BuscarProduto(aProdutos)

   LOCAL nCodigo
   LOCAL nPos

   INPUT "Codigo: " TO nCodigo

   nPos := BuscarPosicao(aProdutos,nCodigo)

   IF nPos > 0

      QOut("Nome: " + aProdutos[nPos][2])
      QOut("Quantidade: " + AllTrim(Str(aProdutos[nPos][3])))

   ELSE

      QOut("Nao encontrado!")

   ENDIF

RETURN NIL

FUNCTION Relatorio(aProdutos)

   LOCAL nI
   LOCAL nValor
   LOCAL nTotal := 0

   FOR nI:=1 TO Len(aProdutos)

      nValor := aProdutos[nI][3] * aProdutos[nI][4]

      QOut(aProdutos[nI][2] + ;
      " -> R$ " + AllTrim(Str(nValor,10,2)))

      nTotal += nValor

   NEXT

   QOut("-------------------------")
   QOut("TOTAL: R$ " + AllTrim(Str(nTotal,10,2)))

RETURN NIL