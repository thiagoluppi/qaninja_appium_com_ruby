# encoding: utf-8

class RadioScreen
  def tick_language(language_name)
    return find_element(xpath: "//android.widget.RadioButton[contains(@text, '#{language_name}')]")
  end
end
