function main()

   local cHora
   local nI 

   For nI := 1 to 30
     cHora:= ObterHora()
     cHora:= FormatarHora(cHora)
     ExibirHora(cHora)

     Inkey(1)

   next 
return nil 



  function ObterHora()
     
return time()

function FormatarHora(cHora)

return cHora 


 function Exibirhora(cHora)

    CLS

  Qout("a hora atual é: " + cHora)


return nil