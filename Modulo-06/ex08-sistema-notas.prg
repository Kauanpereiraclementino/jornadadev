function main()

    local nNota 
    local aAluno
    local aAlunos := {}
    local cNome 
    local nN
    local nI
    local nNota1,nNota2,nNota3,nNota4
    local nMedia

    input "Quantos alunos pretende cadastrar? " to nN

    for nI := 1 to nN

        accept "Digite o nome do aluno: " to cNome
         
        input "Digite a nota 1: " to nNota1
        input "Digite a nota 2: " to nNota2
        input "Digite a nota 3: " to nNota3
        input "Digite a nota 4: " to nNota4

        nMedia := (nNota1 + nNota2 + nNota3 + nNota4) / 4

        aadd(aAlunos, {cNome, nMedia})

NEXt

 FOR nI := 1 TO Len(aAlunos)

      nMedia := aAlunos[nI][2]

      IF nMedia >= 7
         QOut("Aluno: " + aAlunos[nI][1] + ;
              " Media: " + AllTrim(Str(nMedia,10,2)) + ;
              " APROVADO!")
      ELSE
         QOut("Aluno: " + aAlunos[nI][1] + ;
              " Media: " + AllTrim(Str(nMedia,10,2)) +;
                " REPROVADO!")
      ENDIF

   NEXT

RETURN NIL
