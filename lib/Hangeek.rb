class Hangeek


	def initialize palabra="ADIVINA"
		@palabra = palabra
		@intentos = 0;
	end

	def ingresarPalabra
		"El Juego ha Empezado"
	end

	def existeLetra letra="A"
		counter = @palabra.scan(/(?=#{letra})/).count
		
		if counter > 0
			"La letra #{letra} existe"
		else
			@intentos += 1
			"La letra #{letra} no existe"
		end
		
	end

end