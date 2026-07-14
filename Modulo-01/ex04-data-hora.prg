function main()

     //variaveis 
    local cNome:="Kauan Pereira "
    local cCidade:= "Sao Paulo "
    local cCurso:="harbor/ADVPL" 
    local dData:=Dtoc(date())
    local dHora:=time()
    
   Set date format to "dd/mm/yyyy" //seta da data em dia,mes e ano  

   dData:=Dtoc(date())  //processa o comando 


     //uso das variaveis

   Qout("====================================")
   Qout("=======Ficha de Apresentaçao========")
   Qout("====================================")    
   Qout("Nome:" + cNOme) 
   Qout("Cidade:" + cCidade) 
   Qout("Curso:" + cCurso)
   Qout("Data:" + dData)
   Qout("Hora:" + dHora)


return nil
