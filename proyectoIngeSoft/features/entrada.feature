Feature:
Como Jugador
Quiero definir el tamaño del terreno  
Para limitar el tamaño del terreno

Scenario:
Given Estoy en la pagina principal
And Llleno los valores del terreno con "5" x "5"  
When Presiono el boton "Publicar"
Then Deberia ver "[5 x 5]"



