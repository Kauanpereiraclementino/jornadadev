##      TCC -Projeto de Desenvolvimento - Sistema de Controle de Não Conformidades de Fornecedores (ISO 9001), no Protheus.

 A proposta consiste em desenvolver uma solução capaz de registrar os fornecedores, controlar seus certificados de qualidade, definir níveis de tolerância para não conformidades e registrar ocorrências identificadas durante o recebimento de produtos.
Para isso, foram utilizadas tabelas próprias do projeto, denominadas ZZ1 — Controle de Fornecimento e relacionadas respectivamente à tabela padrão SA2 — Fornecedores.

Além da criação das tabela e tela de manutenção, o projeto contempla validações de dados, gatilhos, consultas, tratamento de erros e mecanismos de segurança para evitar que informações sejam gravadas parcialmente em caso de falhas.


Tabela ZZ1 — Controle de Fornecimento
Campo	Tipo	Tamanho	Dec.	Descrição	Contexto
ZZ1_FILIAL	C	2	0	Filial	Real
ZZ1_CODIGO	C	6	0	Código do controle	Real
ZZ1_FORNEC	C	6	0	Código do fornecedor	Real
ZZ1_LOJAFO	C	2	0	Loja do fornecedor	Real
ZZ1_NOMEFO	C	40	0	Nome do fornecedor	Virtual
ZZ1_CERTIF	C	256	0	Dados do certificado	Real
ZZ1_VALCER	D	8	0	Validade do certificado	Real
ZZ1_TOLERA	N	5	2	Tolerância (%)	Real
ZZ1_TOTOK	N	12	2	Quantidade conforme	Real
ZZ1_TOTNOK	N	12	2	Quantidade não conforme	Real
Índices da ZZ1
Ordem	Expressão	Finalidade

1	ZZ1_FILIAL + ZZ1_CODIGO	Chave principal do controle
2	ZZ1_FILIAL + ZZ1_FORNEC + ZZ1_LOJAFO	Localização por fornecedor
3	ZZ1_FILIAL + DTOS(ZZ1_VALCER)	Localização por validade do certificado

Com validaçao na ZZ1_Fornec para ele so passar caso exista fornecedor na tabela fornecedor 

ExistCpo("SA2", Filial("SA2") + M->ZZ1_FORNEC + M->ZZ1_LOJAFO,1)

Z1_VALCER Data de validade do certificado.

A validação na inclusão é:

M->ZZ1_VALCER >= dDataBase

Ou seja, a data informada não pode ser anterior à data atual.

ZZ1_TOLERA Percentual de tolerância permitido.

A validação é:

M->ZZ1_TOLERA >= 0 .AND. M->ZZ1_TOLERA <= 100

## O arquivo STTZZ1.PRW é responsável pela manutenção e visualização dos registros da tabela ZZ1.

A rotina utiliza um mBrowse para apresentar os controles cadastrados.

Através da rotina, o usuário pode trabalhar com operações como:

pesquisa,visualização,inclusão,alteração,exclusão.
Também é previsto um botão denominado:

Ocorrências

Esse botão permite acessar as ocorrências relacionadas ao controle selecionado.

com um sistema de cores que é baseado no prazo da data do certificado sendo 

Vermelho:certificado vencido 
Amarelo:certificado proximo do vencimento 
Verde:certificado dentro do prazo 

# E a biblioteca da sttzilib.pwr 

A biblioteca STTZZLIB.PRW foi criada para centralizar funções utilizadas pelas rotinas.

Entre as funções previstas estão:

NomeFornecedor()

Busca o nome do fornecedor na SA2.

NomeProduto()

Busca a descrição do produto na SB1.

PercNaoConforme()

Calcula a porcentagem de produtos não conformes.

CertificadoVencendo()

Verifica se o certificado está próximo do vencimento.

GravarLogTCC()

Registra informações técnicas sobre erros ocorridos no sistema.

A utilização de uma biblioteca evita duplicação de código e facilita a manutenção do projeto.

uma das partes principais é o begin sequence o objetivo é impedir que uma falha durante a gravação deixe o banco de dados em um estado incompleto.

Quando ocorre um problema, o usuário não deve receber somente uma mensagem técnica difícil de interpretar.
O sistema deve apresentar algo semelhante a:

Não foi possível cadastrar o controle de fornecimento.
Verifique os dados informados e tente novamente.


## ALUNO: KAUAN PEREIRA CLEMENTINO



