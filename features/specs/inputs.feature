#language: pt

Funcionalidade: Inputs

  Cenario: Radio Button
    Dado que acesso a tela Botões de Radio
    Quando escolho a opção Ruby
    Então esta opção deve ser marcada

  
  Cenario: Checkbox
    Dado que acesso a tela Checkbox
    Quando eu marco a opção Ruby
    Então esta opção deve estar marcada
  
  
  Cenario: Marcar todas as techs que usam Appium
    Dado que acesso a tela Checkbox
    Quando marco as seguintes techs:
      | tech            |
      | Ruby            |
      | Java            |
      | Python          |
      | Javascript      |
      | C#              |
      | Robot Framework |
    Então todas as opções devem estar marcadas
