Feature:
	Como Ramon Chicharron
	Quiero poder ingresar a la pagina principal de HanGeek
	Para poder jugar

Scenario: Quiero ver el titulo del juego
	Given dado a que abri la pagina
	Then debo ver "HanGeek Game"

Scenario: Quiero iniciar una partida y ver el espacio para ingresar una palabra
	Given dado a que abri la pagina
	When que inicio el juego
	Then debo ver "Ingrese una Palabra"