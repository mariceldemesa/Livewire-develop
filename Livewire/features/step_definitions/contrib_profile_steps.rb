When('I visit a contributors profile page') do
visit "https://develop.livewiremarkets.com/contributors/qa-contrib-contrib"
end

Then('I should be able to see the featured wires') do
expect(page).to have_content("FEATURED WIRES")
end

Then('the latest wires') do
expect(page).to have_content("LATEST WIRES")
end

Then('mentions section') do
expect(page).to have_content("MENTIONS")
end

Then('invest with sandbox technology section') do
  expect(page).to have_content("INVEST WITH SANDBOX")
end

Then('about section') do
  expect(page).to have_content("ABOUT")
end

Then('enquiries section') do
  expect(page).to have_content("ENQUIRIES")
end
