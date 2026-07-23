function main()
   
   local aValores := {}
   local ni
   local nNumero
   local nSoma:=0
   local nMedia 

   for ni:= 1 to 10 

   input "Digite o " + alltrim(str(ni))+ " numero: " to nNumero


   aadd(aValores,nNumero)
   nSoma := nSoma + nNumero

   next 

   asort(aValores)

   nMedia := nSoma / len(aValores)

   QOut("os numeros em ordem decrescente sao: ")

    FOR nI := 1 TO Len(aValores)
      QOut(AllTrim(Str(aValores[nI])))
   NEXT

  
   QOut("Soma: " + AllTrim(Str(nSoma)))
   QOut("Media: " + ALLtrim(Str(nMedia,10,2)))
   QOut("Menor numero: " + AllTrim(Str(aValores[1])))
   QOut("Maior numero: " + AllTrim(Str(aValores[Len(aValores)])))

RETURN NIL



return nil
