function main()
  
local nTotal:= 0  //acumulador -fora do loop 
local ni:=1,nNum,nQtd


accept "quantos numeros ?" to nQtd
nQtd:=val(nQtd)

 while ni <= nQtd
    accept "Numero: " to nNum   
    nTotal += val(nNum)   //acumula 
    ni++ // conta
    
 end do
  
 Qout("soma: " + str(nTotal))

return  nil 