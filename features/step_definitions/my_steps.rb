Given(/^dado a que abri la pagina$/) do
  	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |texto|
    last_response.body.should =~ /#{texto}/m
end

When(/^que inicio el juego$/) do
  click_button("iniciar")
end

Then(/^debo poder ingresar la palabra "(.*?)" en el campo "(.*?)"$/) do |palabra, campo|
  fill_in(campo, :with => palabra)
end

Then(/^debo empezar el juego$/) do
  click_button("empezar")
end




#Given(/^que inicio el juego$/) do
#  visit '/ingresar-palabra'
#end

#Then(/^debo ver area para ingresar la palabra "(.*?)"$/) do |arg1|
#  pending # express the regexp above with the code you wish you had
#end

#When(/^ingreso la palabra "(.*?)"$/) do |arg1|
#  pending # express the regexp above with the code you wish you had
#end

#When(/^inicio una partida$/) do
#  pending # express the regexp above with the code you wish you had
#end
