function main()
  
local nMes

  input "Digite um numero do mes 1 a 12:" to nMes

  do case
  
  case nMes ==1;Qout("O mes é janeiro:")
  case nMes ==2;Qout("O mes é fevereiro:")
  case nMes ==3;Qout("O mes é março:")
  case nMes ==4;Qout("O mes é abril:")
  case nMes ==5;Qout("O mes é maio:")
  case nMes ==6;Qout("O mes é junho:")
  case nMes ==7;Qout("O mes é julho:")
  case nMes ==8;Qout("O mes é agosto:")
  case nMes ==9;Qout("O mes é setembro:")
  case nMes ==10;Qout("O mes é outubro:")
  case nMes ==11;Qout("O mes é novembro:")
  case nMes ==12;Qout("O mes é dezembro:")

    otherwise 
        qout("Numero invalido")
endcase


return nil 