function main()

   local nNota
   local nNota2
   local nNota3
   Local nNota4
   local nMedia 

   INPUT "Digite a primeira nota: " TO nNota
   INPUT "Digite a segunda nota: " TO nNota2
   INPUT "Digite a terceira nota: " TO nNota3
   INPUT "Digite a quarta nota: " TO nNota4
   
    nMedia:= (nNota * 1 + (nNota2+2) + (nNota3 * 3 )+(nNota4 * 4)) /(1+2+3+4) 

    Qout("Media ponderada " + alltrim(str(nMedia,10,2)))


return nil 