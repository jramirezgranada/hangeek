Feature:
	Como Ramon Chicharron
	Quiero poder ingresar a la pagina principal de HanGeek
	Para poder jugar

Scenario: Quiero ver el titulo del juego
	Given dado a que abri la pagina
	Then debo ver "HanGeek Game"

Scenario: Quiero ver el titulo del juego centrado
	Given dado a que abri la pagina
	When debo ver "HanGeek Game"
	Then debo ver el "titulo" "HanGeek Game" centrado

Scenario: Quiero iniciar una partida y ver el espacio para ingresar una palabra
	Given dado a que abri la pagina
	When que inicio el juego
	Then debo ver "Ingrese una Palabra"