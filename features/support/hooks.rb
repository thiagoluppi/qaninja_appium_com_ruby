Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10
  
  # Evento de click no botão começar
  find_element(xpath: "//android.widget.Button[@text='COMEÇAR']").click

  @nav = Navigator.new
  @toaster = Toaster.new
  @login = LoginScreen.new
  @radio = RadioScreen.new
  @checkbox = CheckboxScreen.new
  @clique_simples = CliqueSimplesScreen.new
  @clique_longo = CliqueLongoScreen.new
  @lista_avengers = ListaScreen.new
end

After do |scenario|
  binary_shot = driver.screenshot_as(:base64)

  temp_shot = "logs/temp_shot.png"

  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
  driver.quit_driver
end
