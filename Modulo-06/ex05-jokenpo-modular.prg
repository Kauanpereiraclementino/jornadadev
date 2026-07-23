FUNCTION Main()

   LOCAL cJogador
   LOCAL cCpu
   LOCAL cResultado


   WHILE .T.

      ACCEPT "Escolha sua jogada (1-Pedra, 2-Papel, 3-Tesoura): " TO cJogador
      cJogador := AllTrim(cJogador)

      IF ValidarJogada(cJogador)
         EXIT
      ELSE
         QOut("Jogada invalida. Tente novamente.")
      ENDIF

   ENDDO

   
   DO CASE
   CASE cJogador == "1"
      cJogador := "Pedra"
   CASE cJogador == "2"
      cJogador := "Papel"
   CASE cJogador == "3"
      cJogador := "Tesoura"
   ENDCASE

   
   cCpu := SortearJogadaCpu()

   
   cResultado := DefinirVencedor(cJogador, cCpu)

  
   MostrarResultado(cResultado, cJogador, cCpu)

RETURN NIL


FUNCTION SortearJogadaCpu()

   LOCAL nSorteio

   nSorteio := HB_RandomInt(1,3)

   DO CASE
   CASE nSorteio == 1
      RETURN "Pedra"

   CASE nSorteio == 2
      RETURN "Papel"

   OTHERWISE
      RETURN "Tesoura"
   ENDCASE

RETURN ""


FUNCTION ValidarJogada(cJogada)

RETURN cJogada == "1" .OR. ;
       cJogada == "2" .OR. ;
       cJogada == "3"


FUNCTION DefinirVencedor(cJogador, cCpu)

   IF cJogador == cCpu
      RETURN "Empate"

   ELSEIF (cJogador == "Pedra" .AND. cCpu == "Tesoura") .OR. ;
          (cJogador == "Papel" .AND. cCpu == "Pedra") .OR. ;
          (cJogador == "Tesoura" .AND. cCpu == "Papel")

      RETURN "Jogador"

   ELSE

      RETURN "CPU"

   ENDIF

RETURN ""


FUNCTION MostrarResultado(cResultado, cJogador, cCpu)

   
   QOut("Jogador : " + cJogador)
   QOut("CPU     : " + cCpu)
   QOut("Resultado: " + cResultado)


RETURN NIL