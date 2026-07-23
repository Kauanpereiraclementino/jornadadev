Function main()

    set procedure to matematica.prg

    Qout("O fatorial de 6 é: " + str(fatorial(6,6)))

    if EhPrimo(7)
        Qout("O numero 7 é primo")
    else
        Qout("O numero 7 não é primo")
    endif   

    Qout("O MMC de 13 e 49 é: " + str(MMC(13,49)))

    Qout("O MDC de 13 e 23 é: " + str(MDC(13,49))) 

return nil