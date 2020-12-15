#language: pt

Funcionalidade:  CRUD de Processos

 Contexto:
    Dado que o usuario gostaria de salvar um processo
    E o o usuário informar o "vara" com o valor igual a "5"
    E o o usuário informar o "numero_processo" com o valor igual a "1985851"
    E o o usuário informar o "natureza" com o valor igual a "Criminal"
    E o o usuário informar o "partes" com o valor igual a "Renax X Thiago"
    E o o usuário informar o "urgente" com o valor igual a "S"
    E o o usuário informar o "arbitramento" com o valor igual a "S"
    E o o usuário informar o "assistente_social" com o valor igual a "Agapito"
    E o o usuário informar o "data_entrada" com o valor igual a "14/12/2020"
    E o o usuário informar o "data_saida" com o valor igual a ""
    E o o usuário informar o "data_agendamento" com o valor igual a ""
    E o o usuário informar o "status" com o valor igual a "Aguardando"
    E o o usuário informar o "observacao" com o valor igual a "Teste Observacao"

  @processos
  Cenário: Criação de novo processo - POST
    Quando o usuário clicar no botão salvar
    Então o usuário deveria ver a mensagem "salvo com sucesso"

  @processos
  Cenário: Selecao de um processo - GET
    Quando o usuário clicar no botão salvar
    Quando o usuário clicar no botão mostrar
    Então o usuário deveria ver a mensagem "sucesso"
    E o usuário visualiza o campo "numero_processo" com o valor "1985851"

  @processos
  Cenário: Alteração de um processo - PUT
    Quando o usuário clicar no botão salvar
    E alterar o campo "numero_processo" para o valor "3333"
    E o usuario clicar em editar
    Entao o usuário deveria ver a mensagem "sucesso"


  @processos
  Cenário: Delete de um processo - DELETE
    Quando o usuário clicar no botão salvar
    E o usuario clicar em Excluir
    E o usuário deveria ver a mensagem "no content"
    E o usuário clicar no botão mostrar
    Entao o usuário deveria ver a mensagem "not found"


  @ignore
  Cenário: Delete de um processo - DELETE TAG IGNORE
    Quando o usuário clicar no botão salvar
    E o usuario clicar em Excluir
    E o usuário deveria ver a mensagem "no content"
    E o usuário clicar no botão mostrar
    Entao o usuário deveria ver a mensagem "not found"


   Esquema do Cenario: Validação do Post com esquema de cenário Login = <numero_processo>
     Dado que o usuario gostaria de salvar um processo
     E o o usuário informar o "numero_processo" com o valor igual a "<numero_processo>"
     E o o usuário informar o "vara" com o valor igual a "<vara>"
     E o o usuário informar o "natureza" com o valor igual a "<natureza>"
     E o o usuário informar o "partes" com o valor igual a "<partes>"
     E o o usuário informar o "urgente" com o valor igual a "<urgente>"
     E o o usuário informar o "arbitramento" com o valor igual a "<arbitramento>"
     E o o usuário informar o "assistente_social" com o valor igual a "<assistente_social>"
     E o o usuário informar o "data_entrada" com o valor igual a "<data_entrada>"
     E o o usuário informar o "data_saida" com o valor igual a "<data_saida>"
     E o o usuário informar o "data_agendamento" com o valor igual a "<data_agendamento>"
     E o o usuário informar o "status" com o valor igual a "<status>"
     E o o usuário informar o "observacao" com o valor igual a "<observacao>"
     Quando o usuário clicar no botão salvar
     Então o usuário deveria ver a mensagem "<mensagem>"

     Exemplos:
     | numero_processo | natureza | partes | urgente | arbitramento | assistente_social | data_entrada | data_saida | data_agendamento | status | observacao | mensagem | vara |
     | 123 | Criminal | RenanxThiago       | S       | N            |Agapito            | 14/12/2020   |          |                |Aguardando|              |salvo com sucesso | 3|
     | 124 | Criminal | RenanxThiago       | S       | N            |Agapito            | 15/12/2020   |          |                |Aguardando|              |salvo com sucesso | 3 |
     | 125 | Criminal | RenanxThiago       | S       | N            |Agapito            | 16/12/2020   |          |                |Aguardando|              |salvo com sucesso | 3 |
     | 126 | Criminal | RenanxThiago       | S       | N            |Agapito            | 17/12/2020   |          |                |Aguardando|              |salvo com sucesso | 3 |
