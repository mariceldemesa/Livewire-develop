
When('I click Join Free') do
    find_button("Join Free").click
end

When('I click Join Free button') do
  find('[type="button"]').click
  sleep(5)
end

Then('I should be redirected to the sign up page') do
  expect(page).to have_content("Complete the registration form below to get unlimited access to Livewire’s investment insights and analysis.")
end

Then('I should see the investor modal onboarding step one') do
  expect(page).to have_content("What type of investor are you?")
end
