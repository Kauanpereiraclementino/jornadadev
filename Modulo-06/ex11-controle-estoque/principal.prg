FUNCTION Main()

   set procedure to estoque_lib.prg 


   LOCAL aProdutos := {}
   LOCAL nOpcao

   DO WHILE .T.

      nOpcao := Menu()

      DO CASE
      CASE nOpcao == 1
         CadastrarProduto(@aProdutos)

      CASE nOpcao == 2
         ListarProdutos(aProdutos)

      CASE nOpcao == 3
         EntradaEstoque(@aProdutos)

      CASE nOpcao == 4
         SaidaEstoque(@aProdutos)

      CASE nOpcao == 5
         BuscarProduto(aProdutos)

      CASE nOpcao == 6
         Relatorio(aProdutos)

      CASE nOpcao == 0
         EXIT

      OTHERWISE
         QOut("Opcao invalida!")

      ENDCASE

   ENDDO

RETURN NIL