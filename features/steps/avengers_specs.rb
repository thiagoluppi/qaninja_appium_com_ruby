# coding: utf-8
# language: pt

Dado('que acesso a tela Avengers') do
  # @nav.tap_hamburguer

  # @nav.tap_text("AVENGERS")
  @nav.tap_text("LISTA")
end

Quando('apago o Capitão América') do
  # sleep 0.5 # Necessário porque senão a automação é muito rápida pro APP. Resolução do professor abaixo:
  find_element(id: "io.qaninja.android.twp:id/rvList") # Checkpoint para garantir que está na tela certa

  # start_x => posicao inicial na horizontal
  # start_y => posicao inicial na vertical
  # offset_x => posicao final na horizontal
  # offset_y => posicao final na vertical
  # duration => em milesegundos

  # Para pegar os números dessas coordenadas fazemos o seguinte:
  # A tela do Nexus 5X é 1080x1920(horizontal_x_vertical), então pegamos a posição que queremos fazer o swap e dividimos para pegar a % da tela
  # Vamos pegar o eixo X inicial: 1005/1080 = 0,9305 => isso nos dá 93% dos 1080 pixels (estamos posicionados bem à direita na tela, a 93% da horizontal)
  # Vamos pegar o eixo y inicial: 354/1920 = 0,1802 => isso nos dá 18% dos 1920 pixels (estamos posicionados bem acima na tela, a 18% da vertical)
  # Pronto, já temos nossa primeira coordenada {start_x: 0.93, start_y: 0.18}
  # Agora faremos o movimento de passar o dedo para a esquerda a partir dessa coordenada:
  # Isso significa que a coordenada do "y" não muda, mas a coordenada do "x" sim.
  # A coordenada do X onde vamos parar o dedo no swipe é mais ou menos em 520/1080 = 0,4814 dos 1080 pixels (estamos posicionados bem abaixo da palavra "Lista" no APP)
  
  coordenadas = { start_x: 0.93, start_y: 0.18, offset_x: 0.48, offset_y: 0.18, duration: 2000 }
  @lista_avengers.swipe_finger(coordenadas)
  @lista_avengers.excluir_avenger
  sleep 1
end

Então('devo ver a seguinte mensagem: {string}') do |msg|
  expect(@lista_avengers.confirmacao_delete.text).to eql msg
end
