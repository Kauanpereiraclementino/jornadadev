## Exercício 5 — A1_FILIAL e xFilial()

# a. Por que existe o campo A1_FILIAL na tabela SA1 (e por que toda tabela do Protheus,incluindo a ZA1 que criamos, precisa de um campo de filial)?
O campo A1_FILIAL identifica a filial à qual o registro pertence. Ele é necessário porque o Protheus trabalha com múltiplas empresas e filiais, permitindo separar os dados de cada uma.


# b. O que a função xFilial() tem a ver com isso? O que aconteceria se um programa“escrevesse a filial na mão” em vez de usar xFilial() ?
A função xFilial() retorna automaticamente a filial atual do ambiente. Ela evita que o programador informe a filial manualmente. Se a filial fosse escrita "na mão", os dados poderiam ser gravados na filial errada, causando inconsistências e problemas em ambientes com várias filiais.