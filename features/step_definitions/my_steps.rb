Given(/^que ingrese a la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |parametro|
  expect(page.body).to match /#{parametro}/m
end
