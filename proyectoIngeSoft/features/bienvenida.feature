Feature:
Como Jugador
Quiero definir la cantidad de autos
Para limitar la cantidad de autos

Scenario:
Given visito la pagina principal
Then deberia ver "Bienvenido al simulador"
And Lleno la cantidad de autos con "1" en "quantity"
When Presiono el boton "Siguiente"