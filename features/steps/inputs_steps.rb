# coding: utf-8
# language: pt

Dado('que acesso a tela Botões de Radio') do
  @nav.tap_hamburguer

  @nav.tap_text("INPUTS")
  @nav.tap_text("BOTÕES DE RADIO")
end

Quando('escolho a opção Ruby') do
  @radio_locator = @radio.tick_language("Ruby")
  @radio_locator.click
end

Então('esta opção deve ser marcada') do
  @radio_result = @radio.tick_language("Ruby")
  expect(@radio_result.checked).to eql "true"
end
