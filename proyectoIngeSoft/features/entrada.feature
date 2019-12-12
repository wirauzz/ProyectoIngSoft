Feature:
Como Jugador
Quiero definir el tamaño del terreno  
Para limitar el tamaño del terreno

Scenario:
Given Estoy en la pagina de entrada
And Lleno los valores del terrenox en "5" con "tam_x"
And Lleno los valores del terrenoy en "5" con "tam_y"

When Presiono el boton "Publicar"
Then Devuelve "5"



