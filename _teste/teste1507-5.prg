FUNCTION Main()

   LOCAL nA
   LOCAL nB
   local cA
   local cB 
   ACCEPT"Digite um numero: " TO cA
   ACCEPT"Digite outro numero: " TO cB

   nA=val(cA)
   nB=val(cB)
   QOut("O valor da soma �: " + AllTrim(Str(nA + nB)))a
   QOut("o valor da sua subtracao �:" + AllTrim(Str(nA - nB)))
   QOut("o valor da sua multiplica�ao :" + AllTrim(Str(nA * nB)))
       IF nB <> 0
       QOut( "Divisao: " + Str(nA / nB, 10, 2))
   ELSE
      QOut ("Divisao: Nao e possivel dividir por zero.")
   ENDIF



return nil   