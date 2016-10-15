Given(/^que inicio el juego$/) do
  visit '/ingresar-palabra'
end

Then(/^debo ver "(.*?)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

Then(/^debo ver area para ingresar la palabra "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^ingreso la palabra "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^inicio una partida$/) do
  pending # express the regexp above with the code you wish you had
end
