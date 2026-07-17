function main()
  
   local nIdade 
   local nDependentes 
   local nMensal 

input "Digite sua idade " to nIdade 
input "Digite a quantidade de dependendes " to nDependentes 

do case 
 case nIdade <=25
    nMensal=180
 case nIdade >=26 .and. nIdade <=40
    nMensal=260
 case nIdade >=41 .and. nIdade <=60
    nMensal=380
 case nIdade >=61 
    nMensal=520
          
 endcase 

 nMensal:= nMensal+(nDependentes * 90)
 
  qout("O valor do plano é R$:" + str(nMensal,10,2))

return nil
