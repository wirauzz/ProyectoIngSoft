
Given("Estoy en la pagina de entrada") do
  visit '/num_autos'
end

Given("Lleno los valores del terrenox en {string} con {string}") do |valor, campo|
  fill_in(campo, :with => valor)
end

Given("Lleno los valores del terrenoy en {string} con {string}") do |valor, campo|
  fill_in(campo, :with => valor)
end 

Given("Llena la coordenadax  en {string} con {string}") do |valor, campo|
  fill_in(campo, :with => valor)
end

Given("Llena la coordenaday  en {string} con {string}") do |valor, campo|
  fill_in(campo, :with => valor)
end

Given("Llena la orientacion  en {string} con {string}") do |valor, campo|
  fill_in(campo, :with => valor)
end

Given("Llena el movimiento  en {string} con {string}") do |valor, campo|
  fill_in(campo, :with => valor)
end
When "Presiono el boton publicar {string}" do|boton|
  click_button(boton)
end

