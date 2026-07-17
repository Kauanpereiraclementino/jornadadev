function main()
    
   local nA
   local nB
   local cOp
   local nResultado

    input "Digite o primeiro numero " to nA 
    accept "Digite uma operaçao(+,-,*,/,^,R):" to cOp

    do case 

    case cOp == "+"
        input "Digite o segundo numero: " to nB
        nResultado := nA + nB 
        Qout("o resultado é:" + str(nResultado))
    case cOp == "-"
        input "Digite o segundo numero:" to nB
        nResultado := nA - nB 
        Qout("o resultado é:" + str(nResultado))
    case cOp == "*"
        input "Digite o segundo numero:" to nB
        nResultado := nA * nB 
        Qout("o resultado é:" + str(nResultado))
    case cOp == "/"
        if nB == 0 
            Qout("Divisao por zero")
        else 
        input "Digite o segundo numero:" to nB
        nResultado := nA / nB 
        Qout("o resultado é:" + str(nResultado))
        endif
    case cOp == "^"
        input "Digite o segundo numero:" to nB
        nResultado := nA ^ nB 
        Qout("o resultado é:" + str(nResultado))
    case cOp == "R"
        nResultado := sqrt(nA) 
        Qout("o resultado é:" + str(nResultado))
    Otherwise
        Qout("Operaçao invalida")
    endcase
   

 
return nil