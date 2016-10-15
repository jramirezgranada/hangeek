Feature:
	Como Ramon Chicharron
	quiero seleccionar una letra que existe en la palabra
	para saber que la adivine.

Scenario: Debe haber un area para ingresar la letra
	Given dado a que abri la pagina
	And que inicio el juego 
	And debo poder ingresar la palabra "adivina" en el campo "palabra"
	And debo empezar el juego
	When puedo ingresar la letra "A" en el "area-ingreso-letra"
	And envio la letra 
	Then puedo ver la letra "A" en el "parrafo" sobre el area-ingreso-letra
