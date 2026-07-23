function main()

   local aVetor:={}
   local nI 
   local nNumero 

    for nI := 1 to 10
        input "Digite o " + alltrim(str(nI)) + " numero: " to nNumero
        aadd(aVetor,nNumero)
    next 
    
    bubbleSort(aVetor)
    QOut("Vetor ordenado: ")
    for nI := 1 to len(aVetor)
        QOut(AllTrim(Str(aVetor[nI])))
    next 
return nil 

function bubbleSort(aVetor)
    local nI, nJ, nTemp
    local nTamanho := len(aVetor)

    for nI := 1 to nTamanho - 1
        for nJ := 1 to nTamanho - nI
            if aVetor[nJ] > aVetor[nJ + 1]
                nTemp := aVetor[nJ]
                aVetor[nJ] := aVetor[nJ + 1]
                aVetor[nJ + 1] := nTemp
            endif
        next
    next




 return nil   