function fatorial(nA,nN )

    local nI
    local nFat:=1 

    for nI := 1 to nN
        nFat := nFat * nI 
    next 

return nFat 

function EhPrimo(nN)

    local nI 
    if nN <2
    return .F. 
endif 

     for nI := 2 to nN - 1 
        if nN % nI == 0
            return .F.
        endif
    next
    return .T.

    function MMC(nA,nB)
    return (nA * nB) / MDC(nA,nB) 

    function MDC(nA,nB)

        local nR
        do while nB <> 0
            nR := nA % nB 
            nA := nB 
            nB := nR

        enddo

    return nA      