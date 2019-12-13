Feature:
Como Jugador
Quiero definir el tamaño del terreno  
Para limitar el tamaño del terreno

Scenario:
Given Estoy en la pagina de entrada
And Lleno los valores del terrenox en "5" con "tam_x"
And Lleno los valores del terrenoy en "5" con "tam_y"
And Llena la coordenadax  en "1" con "coordenax"
And Llena la coordenaday  en "1" con "0_coo_y"
And Llena el movimiento  en "L" con "0_input_moves"
When Presiono el boton publicar "Publicar"





