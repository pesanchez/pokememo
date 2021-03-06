Given(/^que ingrese a la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |parametro|
  expect(page.body).to match /#{parametro}/m
end

Then(/^debo ver una tabla "([^"]*)"$/) do |tablaId|
  expect(page.body).to match /#{tablaId}/m
end

Given(/^muestro a pikachu$/) do
  expect(page).to have_xpath("//*[@id='imgpikachu1']")
end

Given(/^hago clic en la imagen de pikachu$/) do
  page.find(:xpath, "//*[@id='imgpikachu1']").click
end

Then(/^debo ver la imagen togepi$/) do
  expect(page).to have_xpath("//*[@id='togepi']")
end

Given(/^muestro a pikachu en "([^"]*)"$/) do |posicion|
  expect(page).to have_xpath("//*[@id='#{posicion}']")
end

Given(/^hago clic en la imagen de pikachu "([^"]*)"$/) do |posicion|
  page.find(:xpath, "//*[@id='#{posicion}']").click
end

Then(/^debo ver la imagen togepi "([^"]*)"$/) do |posicion|
  expect(page).to have_xpath("//*[@id='#{posicion}']")
end