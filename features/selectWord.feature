Feature:
	Como jugador debo tener un area donde poder ingresar la palabra para iniciar el juego

Scenario: Quiero ver donde ingresar la palabra
	Given dado a que abri la pagina
	When que inicio el juego
	Then debo poder ingresar la palabra "adivina" en el campo "palabra"

Scenario: Quiero poder empezar el juego
	Given dado a que abri la pagina
	And que inicio el juego 
	When debo poder ingresar la palabra "adivina" en el campo "palabra"
	Then debo empezar el juego
	And debo ver "El Juego ha Empezado"