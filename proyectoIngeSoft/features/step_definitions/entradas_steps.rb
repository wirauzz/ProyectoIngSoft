
Given("Estoy en la pagina de entrada") do
  visit '/num_autos'
end

Given("Lleno los valores del terrenox en {string} con {string}") do |valor, campo|
  fill_in(campo, :with => valor)
end

Given("Lleno los valores del terrenoy en {string} con {string}") do |valor, campo|
  fill_in(campo, :with => valor)
end 

When "Presiono el boton {string}" do |boton|
  click_button(boton)
end

Then("Devuelve {string}") do |string|
  last_response.body.should =~ /#{string}/m
end