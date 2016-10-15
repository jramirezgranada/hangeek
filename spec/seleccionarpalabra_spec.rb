require "./lib/Hangeek"
describe Hangeek do
	it "Ingreso una palabra deberia ver El Juego ha Empezado" do
		hangeek = Hangeek.new
		expect(hangeek.ingresarPalabra).to eq "El Juego ha Empezado"
	end

	it "Ingreso la letra A deberia de ver La letra A existe" do
		hangeek = Hangeek.new "ADIVINA"
		hangeek.existeLetra "A"
		expect(hangeek.existeLetra).to eq "La letra A existe"
	end	
end