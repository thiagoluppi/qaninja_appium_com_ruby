# encoding: utf-8

class Navigator
  def tap_hamburguer
    el_hamburguer = "//android.widget.ImageButton[@content-desc='Open navigation drawer']"
    find_element(xpath: el_hamburguer).click
  end

  def list
    el_menu_lateral = find_element(id: "io.qaninja.android.twp:id/rvNavigation")
    return el_menu_lateral
  end
end