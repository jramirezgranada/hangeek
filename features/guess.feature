Feature:
	Como Ramon Chicharron
	quiero seleccionar una letra que existe en la palabra
	para saber que la adivine.

Scenario: Debe haber un area para ingresar la letra
	Given dado a que abri la pagina
	And que inicio el juego 
	When Que puedo ver el "area-ingreso-letra" para ingresar la letra "A"
	Then debo poder ver la letra "A" sobre el area-ingreso-letra
