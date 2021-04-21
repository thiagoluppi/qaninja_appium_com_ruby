# coding: utf-8
# language: pt

Dado('que acesso a tela de login') do
  @nav.tap_hamburguer
  @nav.tap_text("FORMS")
  @nav.tap_text("LOGIN")
end

Quando('submeto minhas credenciais:') do |table|
  user = table.rows_hash
  @login.login(user[:email], user[:senha])
end

Então('devo ver a notificação: {string}') do |msg|
  # log(get_source)
  expect(@login.get_toast.text).to eql msg
end