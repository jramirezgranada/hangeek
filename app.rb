require 'sinatra'
require './lib/Hangeek'
enable :sessions
set :session_secret, 'thisIsAKleerSecret'

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
	session['letra'] = params["area-ingreso-letra"]
	hangeek = Hangeek.new
	session['resultado'] = hangeek.existeLetra session['letra']
	erb :juego
end