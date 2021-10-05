When('I visit a wire') do
  visit "https://develop.livewiremarkets.com/wires/5-features-buyers-want-in-their-next-home"
end

Then('I should be redirected to the individual wire that I navigated') do
  expect(page).to have_content("5 features buyers want in their next home")
end

When('I click the comment icon') do
find('[title="Comment on this wire"]').click
end

Then('I should be redirected to the comment section of the wire') do
  expect(page).to have_content("COMMENTS")
  sleep(5)
  visit "https://develop.livewiremarkets.com/feeds/latest"
end
