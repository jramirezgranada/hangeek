Feature:
	Como jugador debo tener un area donde poder ingresar la palabra para iniciar el juego

Scenario: Quiero ver donde ingresar la palabra
	Given dado a que abri la pagina
	When que inicio el juego
	Then debo poder ingresar la palabra "adivina" en el campo "palabra"

