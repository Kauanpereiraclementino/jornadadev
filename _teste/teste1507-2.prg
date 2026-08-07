FUNCTION Main ()
    LOCAL nNumero := 50
    LOCAL cTexto  := ""
    //LOCAL dData   := DATE()
    LOCAL dData   := DATE()  

    SET DATE FORMAT TO "DD/MM/YYYY"

    Qout("Texto: " + cTexto)
    Qout("Numero: " + Alltrim(str(nNumero)))
    Qout("Data: " + DtoC(dData))
    

RETURN NIL