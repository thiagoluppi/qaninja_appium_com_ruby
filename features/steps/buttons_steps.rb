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