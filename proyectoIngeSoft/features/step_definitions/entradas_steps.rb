
Given("Estoy en la pagina principal") do
  visit '/'
  
end

Given("Llleno los valores del terreno con {string} x {string}") do |string, string2|
  
end

When("Presiono el boton {string}") do
  visit '/entradas'
end

Then("Deberia ver {string}") do |string|
  last_response.body.should =~ /#{string}/m
end