class Hangeek


	def initialize palabra="ADIVINA"
		@palabra = palabra
	end

	def ingresarPalabra
		"El Juego ha Empezado"
	end

	def existeLetra letra="A"
		counter = @palabra.scan(/(?=#{letra})/).count
		letra * counter
	end

end