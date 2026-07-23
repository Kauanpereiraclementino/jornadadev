    function main()
    
        LOCAL aProdutos := { ;
   {"Arroz", 25.50}, ;
   {"Feijao", 10.00}, ;
   {"Macarrao", 8.50}, ;
   {"Leite", 6.75}, ;
   {"Cafe", 18.90} ;
}
        local aCarrinho := {}
        local nOpcao
        local nTotal :=0
        local nI 
        local cRespo:= "S"

        while upper(cRespo)=="S"

            for nI :=1  To len(aProdutos)
                Qout(Alltrim(str(nI)) + " - " + aProdutos[nI][1] + " - R$ " +;
                    alltrim(str(aProdutos[nI][2],10,2)))
            Next

            input "Escolha um produto :" to nOpcao
            IF nOpcao >= 1 .AND. nOpcao <= Len(aProdutos)
            AAdd(aCarrinho, aProdutos[nOpcao])
            nTotal := nTotal + aProdutos[nOpcao][2]
        ELSE
            QOut("Produto invalido!")
        ENDIF

        ACCEPT "Deseja adicionar outro produto? (S/N): " TO cRespo
        cRespo := Upper(AllTrim(cRespo))

    ENDDO

    QOut("===== CARRINHO =====")

    FOR nI := 1 TO Len(aCarrinho)
        QOut(aCarrinho[nI][1] + ;
            " - R$ " + ;
            AllTrim(Str(aCarrinho[nI][2],10,2)))
    NEXT

    QOut("------------------------")
    QOut("Total: R$ " + AllTrim(Str(nTotal,10,2)))

    RETURN NIL


   
