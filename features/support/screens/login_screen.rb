# encoding: utf-8

class LoginScreen
  def login(email, senha)
    find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(email)
    find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(senha)
    find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
  end

  def get_toast
    find_element(xpath: "//android.widget.Toast")
  end
end
