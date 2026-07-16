#define pi 3.14159

function main()

    local nR
    local nA
    local nB 
    local nPeso 
    local nAltura 

    input "Digite a area:" to nR
    input "Digite um lado do triangulo:" to nA 
    input "Digite o outro lado:" to nB 
    input "Digite seu peso: " to nPeso
    input "Digite sua altura " to nAltura 
   
    Qout("o area do circulo é:" + Str(pi * (nR ^ 2 ),10,2))
    Qout("A hipotesuna do quadrado é: "+ str(sqrt((nA^2)+(nB^2)),10,2))
    Qout("seu imc é: " + str(nPeso/(nAltura ^ 2)))
    
return nil