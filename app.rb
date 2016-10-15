require 'sinatra'
require './lib/Hangeek'
enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
	session.clear
	hangeek = Hangeek.new
	session['hangeek'] = hangeek
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
	intentos = session['hangeek'].intentos ||= 0
	session['resultado'] = session['hangeek'].existeLetra session['letra'], intentos
	session['intentos'] = session['hangeek'].intentos
	session['letradivinada'] = session['hangeek'].palabraAdivinada
	erb :juego
end