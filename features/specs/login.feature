#language: pt

Funcionalidade: Login

  Cenario: Login com sucesso
    Dado que acesso a tela de login
    Quando submeto minhas credenciais:
      | email | eu@papito.io  |
      | senha | qaninja       |
    Então devo ver a notificação: "Show! Suas credenciais são validas."