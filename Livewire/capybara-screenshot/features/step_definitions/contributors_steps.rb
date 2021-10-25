
When('I click on contributors tab') do
  find_link("Contributors").click
end

Then('I should be redirected to the Contributors page') do
  expect(page).to have_content("Livewire Contributors")
end

When('I click on contributors link') do
find(:xpath, "(//a[text()='View Profile'])[3]").click
end

Then('I should be redirected to the Contributor profile page') do
expect(page).to have_link("Follow")
expect(page).to have_link("Contact")
sleep(2)
page.evaluate_script('window.history.back()')
end

When('I click on the view all link') do
click_link(href: '/alerts/contributors')
end

Then('I should be redirected to the who you are following page') do
  expect(page).to have_content("Who you're following")
  sleep(2)
  page.evaluate_script('window.history.back()')
end

When('I click on equities') do
  find(:xpath, "(//a[text()='Equities'])[1]").click
  sleep(2)
end

Then('I should be redirected to the experts in equities page') do
  expect(page).to have_content("EXPERTS IN EQUITIES")
  sleep(2)
  page.evaluate_script('window.history.back()')
end

When('I click on australian equities') do
  find(:xpath, "(//a[text()='Australian Equities'])[1]").click
  sleep(2)
end

Then('I should be redirected to the experts in australian equities page') do
  expect(page).to have_content("EXPERTS IN AUSTRALIAN EQUITIES")
  sleep(2)
  page.evaluate_script('window.history.back()')
end

When('I click on global equities') do
  find(:xpath, "(//a[text()='Global Equities'])[1]").click
  sleep(2)
end

Then('I should be redirected to the experts in global equities page') do
  expect(page).to have_content("EXPERTS IN GLOBAL EQUITIES")
  sleep(2)
  page.evaluate_script('window.history.back()')
  sleep(2)
end
