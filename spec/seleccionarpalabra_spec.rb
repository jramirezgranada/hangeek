require "./lib/Hangeek"
describe Hangeek do
	it "Ingreso una palabra deberia ver El Juego ha Empezado" do
		hangeek = Hangeek.new
		expect(hangeek.ingresarPalabra).to eq "El Juego ha Empezado"
	end

		
end