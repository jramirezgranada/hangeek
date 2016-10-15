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


When(/^puedo ingresar la letra "(.*?)" en el "(.*?)"$/) do |arg1, arg2|
	fill_in(arg2, :with => arg1)
end


Then(/^puedo ver la letra "(.*?)" en el "(.*?)" sobre el area\-ingreso\-letra$/) do |letter, paragraph|
	last_response.should have_xpath( "//p[@id=\"#{paragraph}\"]") do |p|
    	p.should contain( letter )
	end
end

When(/^envio la letra$/) do
	 click_button("enviar")
end
