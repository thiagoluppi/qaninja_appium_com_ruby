# coding: utf-8
# language: pt

Dado('que acesso a tela clique simples') do
  @nav.tap_hamburguer

  @nav.tap_text("BOTÕES")
  @nav.tap_text("CLIQUE SIMPLES")
end

Quando('faço um clique simples') do
  @clique_simples.clique_simples  
end

Então('devo ver o texto: {string}') do |msg|
  expect(@toaster.toast.text).to eql msg
end

####
####

Dado('que acesso a tela Clique Longo') do
  @nav.tap_hamburguer

  @nav.tap_text("BOTÕES")
  @nav.tap_text("CLIQUE LONGO")
end

Quando('faço um clique longo') do
  @button = @clique_longo.clique_longo
end

Então('devo ver o botão com o texto: {string}') do |msg|
  expect(@button.text).to eql msg
end
