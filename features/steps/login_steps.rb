# coding: utf-8
# language: pt

Dado('que acesso a tela de login') do
  @nav.tap_hamburguer
  @nav.tap_text("FORMS")
  @nav.tap_text("LOGIN")
end

Quando('submeto minhas credenciais:') do |table|
#   table.rows_hash
#   Turn a two-columned table into a hash, where the first column is the keys and the second the values
  user = table.rows_hash
  @login.login(user[:email], user[:senha])
end

Então('devo ver a notificação: {string}') do |msg|
  # log(get_source)
  expect(@toaster.toast.text).to eql msg
end