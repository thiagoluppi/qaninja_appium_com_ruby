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

######
######

Dado('que acesso a tela Checkbox') do
  @nav.tap_hamburguer

  @nav.tap_text("INPUTS")
  @nav.tap_text("CHECKBOX")
end

Quando('eu marco a opção Ruby') do
  @check_locator = @checkbox.check_language("Ruby")
  @check_locator.click
end

Então('esta opção deve estar marcada') do
  @check_result = @checkbox.check_language("Ruby")
  expect(@check_result.checked).to eql "true"
end

######
######

Quando('marco as seguintes techs:') do |table|
  # table.hashes
  # Convert the table to an array of hashes, where the keys are the table headers from the first row
  @techs = table.hashes

  @techs.each do |item|
    check_locator = @checkbox.check_language(item["tech"])
    check_locator.click
  end
end

Então('todas as opções devem estar marcadas') do
  @techs.each do |item|
    check_result = @checkbox.check_language(item["tech"])    
    expect(check_result.checked).to eql "true"
  end  
end