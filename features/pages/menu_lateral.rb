# encoding: utf-8

class MenuLateralPage
  def menu_displayed?
    el_menu_lateral = find_element(id: "io.qaninja.android.twp:id/rvNavigation")
    return el_menu_lateral.displayed?
  end
end