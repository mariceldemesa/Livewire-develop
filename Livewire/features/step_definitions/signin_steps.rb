Given('I am on a homepage') do
visit "https://develop.livewiremarkets.com/"
end

When(/^I click Sign In$/) do
find_link("Sign In").click
end

Then('I should be redirected to the sign in page') do
expect(page).to have_content("Sign in to your account to read unlimited wires across the Livewire website.")
end

When('I fill in {string} with {string}') do |string, string2|
fill_in string, with: string2
end

When('I click the Sign in button') do
  find('[type="submit"]').click
    sleep(2)
end

Then('I should see latest wires page displaying all published wires') do
  expect(page).to have_content("LATEST WIRES")
  # binding.pry
end
