require 'sinatra'

get '/' do
    erb :index
end

post '/seleccionar-palabra' do
	erb :seleccionarPalabra
end

get '/ingresar-palabra' do
	"Ingrese la palabra para adivinar"
end

post '/juego' do
	erb :juego
end

post '/validarLetra' do
	erb :juego
end