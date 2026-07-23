function main()

    local aDias:= {"segunda","Terca","Quarta","Quinta","Sexta","Sabado","Domingo"}
    local nDias

     input "Digite um numero de 1 a 7: " to nDias
      


     IF ValidarDia(nDias)
      QOut("Dia da semana: " + aDias[nDias])
   ELSE
      QOut("Numero invalido!")
   ENDIF

   return nil
   function ValidarDia(nDias)
    if nDias <1 .OR. nDias >7
        return .F.
    else 
       return .T.
    endif
 
return ""

   


  