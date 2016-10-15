Given(/^dado a que abri la pagina$/) do
  	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |texto|
    last_response.body.should =~ /#{texto}/m
end

When(/^que inicio el juego$/) do
  click_button("iniciar")
end
