FUNCTION Main()

   LOCAL nMes
   LOCAL aMeses := { ;
      "Janeiro", "Fevereiro", "Marco", "Abril", ;
      "Maio", "Junho", "Julho", "Agosto", ;
      "Setembro", "Outubro", "Novembro", "Dezembro" }

   INPUT "Digite o numero do mes: " TO nMes

   IF nMes >= 1 .AND. nMes <= 12
      QOut(aMeses[nMes])
   ELSE
      QOut("Mes invalido")
   ENDIF

RETURN NIL