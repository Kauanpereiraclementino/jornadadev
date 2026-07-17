function main()

   local nSalario

   input "Digite seu salario " to nSalario 

   if nSalario <1000
     nSalario = nSalario+(nSalario*0.15)

   elseif nSalario > 1000 .and. nSalario <2000
     nSalario = nSalario+(nSalario*0.12)

   elseif nSalario>2000 .and. nSalario < 4000 
     nSalario = nSalario+(nSalario*0.08)

   else 
     nSalario = nSalario+(nSalario*0.05)
 
   endif 

   qout("Seu novo salario é: " + alltrim(str(nSalario,10,2)))

return nil