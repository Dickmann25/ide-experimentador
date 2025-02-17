# language: pt
Funcionalidade: Visualizar os dados de bateria do robô
Eu como Engenheiro de Sistemas Robóticos
Quero visualizar o status da bateria do robô em um dado momento
A fim de monitorar e otimizar o consumo de energia durante o funcionamento contínuo do robô

@javascript
Cenário: Consulta de dados de bateria após o término do teste (triste)
  Quando o usuario estiver na tela de visualizar nivel de bateria
  Dado que o usuario clique no formulario de busca e escreva um valor fora do escopo, como "-1"
  Então o usuario deveria ver uma mensagem dizendo "Não existem dados de bateria"

@javascript
Cenário: Busca feita com dados incorretos (triste)
  Quando o usuario estiver na tela de visualizar nivel de bateria
  Dado que o usuario clique no formulario de busca e escreva um valor usando caracteres não numéricos, como "teste"
  Então o usuario deveria ver uma mensagem dizendo "Não existem dados de bateria"

@javascript
Cenário: A pesquisa de status é concluida com sucesso (feliz)
  Quando o usuario estiver na tela de visualizar nivel de bateria
  Dado que eu solicite o status da bateria de um trial valido, como "1"
  Então eu deveria ver a grafico da bateria correspondente
