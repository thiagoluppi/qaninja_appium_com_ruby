# encoding: utf-8

class ListaScreen
  def swipe_finger(coordenadas)    
    Appium::TouchAction.new.swipe(coordenadas).perform          
  end

  def excluir_avenger
    find_element(id: "io.qaninja.android.twp:id/btnRemove").click
  end

  def confirmacao_delete
    return find_element(id: "io.qaninja.android.twp:id/snackbar_text")
  end
end