function main()

  local nSecreto
  local nPalpite
  local nI

    nSecreto:= HB_RandomINT(1,100)

    for nI  := 1 to 7

     input "Tentativa"  + alltrim(str(nI)) + ": Digite um numero"  to nPalpite 

     if nPalpite==nSecreto
        qout("parabens voce acertou o numero " )
     exit

     elseif nPalpite < nSecreto 
      Qout("o numero secreto é maior")
     else 
        Qout(" o numero secreto é menor ")
     endif

next 
    
    IF nPalpite <> nSecreto
      QOut("Suas tentativas acabaram!")
   ENDIF

   QOut("O numero secreto era: " + AllTrim(Str(nSecreto)))
 

    

return nil