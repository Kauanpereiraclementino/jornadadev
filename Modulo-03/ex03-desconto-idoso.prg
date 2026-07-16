function main()
 

    local dNascimento
    local nIdade
    local cNome
    local cData
    local nPreco
    local nDesconto:=0
    local nTotal

   set date format to "dd/mm/yyyy"

    accept "Digite seu nome " to cNome 
    accept "Digite sua data de nascimento(dd/mm/yyyy) " to cData
    dNascimento:=ctod(cData)
    input "digite o preço do produto " to nPreco 

   nIdade := Int((Date() - dNascimento) / 365)

   if  nIdade >=60
      nDesconto:=nPreco  * 0.125
 
   ENDIF

   nTotal := nPreco - nDesconto

   QOut("Nome: " + alltrim(cNome))
   QOut("Idade: " + alltrim(Str(nIdade)))
   QOut("Preco.: " + alltrim(Str(nPreco,10,2)))
   QOut("Desconto.: " + alltrim(Str(nDesconto,10,2)) )
   QOut("Total: " + alltrim(Str(nTotal,10,2)))

      
return nil
