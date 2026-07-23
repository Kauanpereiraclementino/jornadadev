function main()
    
   local nA
   local nB
   local cOp
   local nResultado

   nA := lerNumero("Digite o primeiro numero:")
    accept "Digite uma operaçao(+,-,*,/,^,R):" to cOp
   nB := lerNumero("Digite o segundo numero:")
   
  if Calcular(nA, nB, cOp,@nResultado)
     mostrarResultado(nResultado)
   else 
     qout("Divisao por zero")
   endif
return nil  

    
    function lerNumero(cMensagem)
        local nValor
        input cMensagem to nValor
    return  nValor
    
    function Calcular(nA, nB, cOp, nResultado)

    do case  

    case cOp == "+"
        nResultado := nA + nB 
        Qout("o resultado é:" + str(nResultado))
    case cOp == "-"
        nResultado := nA - nB 
        Qout("o resultado é:" + str(nResultado))
    case cOp == "*"
        nResultado := nA * nB 
        Qout("o resultado é:" + str(nResultado))
    case cOp == "/"
        if nB == 0 
        return .F.
        else
        nResultado := nA / nB 
        Qout("o resultado é:" + str(nResultado))
        endif
    case cOp == "^"
        
        nResultado := nA ^ nB 
        Qout("o resultado é:" + str(nResultado))
    case cOp == "R"
        nResultado := sqrt(nA) 
        Qout("o resultado é:" + str(nResultado))
    Otherwise
    Return .F.
endcase

Return .F.

  function mostrarResultado(nResultado)

    Qout("o resultado é:" + str(nResultado))
   

 
return nil