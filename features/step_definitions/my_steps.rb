Given(/^dado a que abri la pagina$/) do
  	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |texto|
    last_response.body.should =~ /#{texto}/m
end

When(/^que inicio el juego$/) do
  click_button("iniciar")
end


Then(/^debo ver el "(.*?)" "(.*?)" centrado$/) do |elemento, titulo|
  
  last_response.should have_xpath( "//div[@id=\"#{elemento}\"]") do |div|
    div.should contain( titulo )
  end
end

Then(/^debo poder ingresar la palabra "(.*?)" en el campo "(.*?)"$/) do |palabra, campo|
  fill_in(campo, :with => palabra)
end

Then(/^debo empezar el juego$/) do
  click_button("empezar")
end

When(/^Que puedo ver el "(.*?)" para ingresar la letra "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^debo poder ver la letra "(.*?)" sobre el area\-ingreso\-letra$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
