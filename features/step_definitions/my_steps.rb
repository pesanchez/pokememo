Given(/^que ingrese a la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |parametro|
  expect(page.body).to match /#{parametro}/m
end

Then(/^debo ver una tabla "([^"]*)"$/) do |tablaId|
  expect(page.body).to match /#{tablaId}/m
end
