# coding: utf-8
# language: pt

Quando('acesso o Menu') do
  HomePage.new.click_hamburguer
end

Então('vejo a lista de opções de navegação') do
  expect(MenuLateralPage.new.menu_displayed?).to be_truthy  
end