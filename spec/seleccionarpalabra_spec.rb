require "./lib/Hangeek"
describe Hangeek do
	it "Ingreso una palabra deberia ver El Juego ha Empezado" do
		hangeek = Hangeek.new
		expect(hangeek.ingresarPalabra).to eq "El Juego ha Empezado"
	end

	it "Ingreso la letra A deberia de ver 2 veces la letra A" do
		hangeek = Hangeek.new "ADIVINA"
		hangeek.existeLetra "A"
		expect(hangeek.existeLetra).to eq "AA"
	end	
end