# coding: utf-8
# language: pt

Quando('acesso o Menu') do
  @nav.tap_hamburguer
end

Então('vejo a lista de opções de navegação') do
  expect(@nav.list.displayed?).to be_truthy  
end