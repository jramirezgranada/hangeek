class Hangeek

	attr_reader :intentos, :palabraAdivinada

	def initialize palabra="ADIVINA"
		@palabraArray = ["A", "D", "I", "V", "I", "N", "A"]
		@palabraAdivinada = ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "]
		@palabra = palabra

		@intentos = 0;
	end

	def ingresarPalabra
		"El Juego ha Empezado"
	end

	def existeLetra letra="A", intentos
		counter = @palabra.scan(/(?=#{letra})/).count
		
		if counter > 0
			@intentos = intentos
		    
			banderita = true

			while banderita
				if @palabraArray.index(letra) != nil
			    	pos = @palabraArray.index(letra)
			    	@palabraArray[pos] = "_ "
			    	@palabraAdivinada[pos] = letra
			    else
			    	banderita = false
		    	end
			end
		    

			"La letra #{letra} existe"
		else
			@intentos = intentos+1
			"La letra #{letra} no existe"
		end
		
	end

	def armarPalabra letra, palabraAdivinada 
		    @palabra.length.times {
		    	@palabraAdivinada+="_ "
		    }

	end 

end