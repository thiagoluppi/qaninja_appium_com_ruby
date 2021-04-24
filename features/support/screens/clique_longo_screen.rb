# coding: utf-8
# language: pt

class CliqueLongoScreen
  def clique_longo
    button = find_element(id: "io.qaninja.android.twp:id/long_click")
    # Acessa o press do appium, passa o elemento button e espera 2s:
    Appium::TouchAction.new.press(element: button).wait(2000).release.perform
    return button    
  end 
end