Feature:
	Como jugador debo tener un area donde poder
	ingresar la palabra para iniciar el juego

Scenario: Quiero un titlo para saber que puedo ingresar una palabra
	Given que inicio el juego
	Then debo ver "Ingrese la palabra para adivinar"

Scenario: Quiero ver donde ingresar la palabra
	Given que inicio el juego
	Then debo ver area para ingresar la palabra "Palabra Aqui"

Scenario: Quiero ingresar la palabra 
	Given que inicio el juego
	When ingreso la palabra "adivina"
	And inicio una partida
	Then debo ver "palabra ingresada correctamente"


