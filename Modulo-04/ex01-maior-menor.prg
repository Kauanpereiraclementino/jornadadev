function main()

    local nNumero
    local nNumero2

    input "Digite primeiro numero" to nNumero
    input "Digite o segundo numero " to nNumero2

    if nNumero==nNumero2
        Qout("os numeros sao iguals")

    else
        if nNumero>nNumero2
        Qout("o numero 1 é maior" +str(nNumero))
        Qout("o numero 2 é menor" +str(nNumero2))
    else 
        Qout("o Numero 2 é maior" + str(nNumero2))
        Qout("o numero 1 é menor" +str(nNumero))

    endif 
endif  



return nil