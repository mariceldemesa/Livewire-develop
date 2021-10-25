When('I click on notifications icon on the navbar') do
  find(:css, "button.callout-toggle-button.navbar-callout-toggle.--notifications").click
end

Then('I should be able to see the notifications modal') do
  expect(page).to have_css("div.notifications-callout")
end

When('I click the see all link') do
  find_link("See all").click
end

Then('I should be redirected to the notifications page') do
  expect(page).to have_content("NOTIFICATIONS")
end
