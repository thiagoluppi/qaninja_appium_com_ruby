# encoding: utf-8

class HomePage
  def click_hamburguer
    el_hamburguer = "//android.widget.ImageButton[@content-desc='Open navigation drawer']"
    find_element(xpath: el_hamburguer).click
  end
end