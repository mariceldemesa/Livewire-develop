When('I click the search button') do
  find(:css, "button.search-livewire-button__Button-vw140v-0.bMuJkb").click
  sleep(5)
end

When('enter {string}') do |string|
  find('[type="search"]').set(string)
end

When('select in Why invest in emerging markets') do
  find(:xpath, "(//span[text()='Wire'])[1]").click
end

Then('I should be redirected to the search results for wire') do
expect(page).to have_content("Why invest in emerging markets?")
end

When('I select the organisation - livewire markets') do
  find(:css, "span.cross__CrossSymbol-oee76g-0.daHoWp").click
  find('[type="search"]').set("livewire markets")
  find(:xpath, "(//span[text()='Organisation'])[1]").click
end

Then('I should be redirected to the search results for organisation') do
  expect(page).to have_content("SEARCH RESULTS FOR ORGANISATION")
  sleep(5)
end

When('I select the contributor - albert kelley') do
  find(:css, "span.cross__CrossSymbol-oee76g-0.daHoWp").click
  find('[type="search"]').set("livewire markets")
  find(:xpath, "(//span[text()='Contributor'])[1]").click
end

Then('I should be redirected to the search results for contributor') do
  expect(page).to have_content("SEARCH RESULTS FOR CONTRIBUTOR")
end

When('I select the company - asx limited') do
  find(:css, "span.cross__CrossSymbol-oee76g-0.daHoWp").click
  find('[type="search"]').set("asx limited")
  find(:xpath, "(//span[text()='Company'])[1]").click
end

Then('I should be redirected to the search results for listed company') do
  expect(page).to have_content("SEARCH RESULTS FOR LISTED COMPANY")
end
