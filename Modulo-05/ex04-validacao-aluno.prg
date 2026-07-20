function main()

    local cName
    local cDisc
    local nNota1,nNota2
    local nMedia
    
   while .T.
    accept "Digite o nome do aluno: " to cName 

    if len(alltrim(cName)) > 0 
        Exit 
    else
        Qout("o nome nao pode ficar vazio :" + cName)
    endif
enddo  

while .T.
    accept "Digite a disciplina(3 letras maisculas): " to cDisc 

    if len(cDisc ) == 3  .and. cDisc== upper(cDisc)
        Exit 
    else
        Qout("Digite 3 letras maiusculas :" + cDisc)
    endif
enddo  

while .T.
 
    input"Digite a primeira nota:" to nNota1 

    if nNota1 >= 0 .and. nNota1 <= 10 
        exit
    else 
        qout("insira uma nota valida:" + nNota1)
    endif
enddo

while .T.
 
    input"Digite a primeira nota:" to nNota2 

    if nNota1 >= 0 .and. nNota1 <= 10 
        exit
    else 
        qout("insira uma nota valida:" + nNota2)
    endif
enddo


    nMedia:=(nNota1+nNOta2)/2

qout("o nome é " + alltrim(cName))
Qout("a disciplina é:" + alltrim(cDisc))
Qout("a nota 1 é:" + alltrim(str(nNota1)))
Qout("a nota 2 é:" + alltrim(str(nNota2)))
Qout("a media é: " + alltrim(str(nMedia)))


    

    
return nil    