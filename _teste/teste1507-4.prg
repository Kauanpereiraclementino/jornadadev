FUNCTION Main()

   LOCAL nNumero
   LOCAL nNumero2

   // ACCEPT lê uma string
   ACCEPT "Digite numero: " TO nNumero

   // INPUT lê um valor (número, string, data, lógico)
   INPUT "Digite numero: " TO nNumero

   QOut("total da soma" + AllTrim(Str(nNumero + nNumero2)))

RETURN NIL