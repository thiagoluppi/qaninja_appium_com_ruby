# encoding: utf-8

class CheckboxScreen
  def check_language(language_name)
    return find_element(xpath: "//android.widget.CheckBox[contains(@text, '#{language_name}')]")
  end
end