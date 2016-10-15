require 'sinatra'

get '/' do
    erb :index
end

post '/seleccionar-palabra' do
	erb :seleccionarPalabra
end
