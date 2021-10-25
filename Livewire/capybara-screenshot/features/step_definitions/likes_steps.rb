When('I go the latest page') do
  visit "https://develop.livewiremarkets.com/feeds/latest"
end

When('click the like button of a wire') do
  first(:css, "span.icon-lw.icon-lw-wire-like").click
end

Then('the like button should turn into grey') do
  expect(page).to have_css("span.icon-lw.icon-lw-wire-liked")
end

When('I click on the like icon on the navbar') do
  find(:css, "div.application-navbar-secondary-navigation").click
end

Then('I should be redirected to the likes page') do
  expect(page).to have_content("LIKED CONTENT")
end

Then('the wire that I liked is shown') do
  expect(page).to have_content("Insider’s guide to investing $5k")
end

When('I unlike the wire') do
  first(:css, "span.icon-lw.icon-lw-wire-liked").click
end

Then('the grey button turns white') do
  expect(page).to have_css("span.icon-lw.icon-lw-wire-like")
end

Then('when I click the like icon again') do
  find(:css, "div.application-navbar-secondary-navigation").click
end

Then('the wire I unliked is no longer shown') do
  expect(page).to have_no_content("Insider’s guide to investing $5k")
end

Then('trending on livewire is on the right pane') do
  expect(page).to have_css("div.sidebar-item.sidebar-trending")
end
