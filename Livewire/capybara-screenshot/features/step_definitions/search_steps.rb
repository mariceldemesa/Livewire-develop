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
expect(page).to have_content('OTHER WIRES PUBLISHED BY')
expect(page).to have_css('span.icon-lw.icon-lw-logo')
end

When ('I click the see all results button and scroll down 6x') do
  find('[type="button"]', :text=>'SEE ALL RESULTS').click
  page.execute_script 'window.scrollBy(0,1000)'
  sleep 3
  page.execute_script 'window.scrollBy(0,1500)'
  sleep 3
  page.execute_script 'window.scrollBy(0,1000)'
  sleep 2
  page.execute_script 'window.scrollBy(0,3000)'
  sleep 2
  page.execute_script 'window.scrollBy(0,3500)'
  sleep 2
  page.execute_script 'window.scrollBy(0,3500)'
  sleep 2
  page.execute_script 'window.scrollBy(0,3500)'
  sleep 2
  page.execute_script 'window.scrollBy(0,3500)'
  sleep 2
  page.execute_script 'window.scrollBy(0,3500)'
  sleep 2
  page.execute_script 'window.scrollBy(0,2000)'
  sleep 2

end

When('I select the organisation - livewire markets') do
  find(:css, "span.cross__CrossSymbol-oee76g-0.daHoWp").click
  find('[type="search"]').set("livewire markets")
  find(:xpath, "(//span[text()='Organisation'])[1]").click
end

Then('I should be redirected to the search results for organisation') do
  expect(page).to have_content('SEARCH RESULTS FOR ORGANISATION')
  expect(page).to have_content('WIRES PUBLISHED BY')
  expect(page).to have_css('[type="button"]', :text=>'SEE ALL RESULTS')
  expect(page).to have_content('WIRES WHICH MENTION')
  expect(page).to have_content('CONTRIBUTORS FROM')
  expect(page).to have_content('COMPANIES MENTIONED BY')
  expect(page).to have_content('KEYWORDS ASSIGNED BY')
  expect(page).to have_content('EXPERTISE WITHIN')
end

When('I select the contributor - albert kelley') do
  find(:css, "span.cross__CrossSymbol-oee76g-0.daHoWp").click
  find('[type="search"]').set("livewire markets")
  find(:xpath, "(//span[text()='Contributor'])[1]").click
end

Then('I should be redirected to the search results for contributor') do
  expect(page).to have_content('SEARCH RESULTS FOR CONTRIBUTOR')
  expect(page).to have_content('OTHER CONTRIBUTORS FROM')
  expect(page).to have_content('CONTRIBUTORS SIMILAR TO')
  expect(page).to have_css('.gzpNtE', :text=>"ALL\nLATEST\nMENTIONS")
  expect(page).to have_css('span.icon-lw.icon-lw-logo')
end

When('I select the company - asx limited') do
  find(:css, "span.cross__CrossSymbol-oee76g-0.daHoWp").click
  find('[type="search"]').set("1414")
  find(:xpath, "(//span[text()='Company'])[1]").click
end

Then('I should be redirected to the search results for listed company') do
  expect(page).to have_content("SEARCH RESULTS FOR LISTED COMPANY")
  expect(page).to have_content("CONTRIBUTORS\nPUBLISHING\nABOUT\n")
  expect(page).to have_content('KEYWORDS RELATED TO')
  expect(page).to have_content('WIRES MENTIONING')
  expect(page).to have_css('span.icon-lw.icon-lw-logo')
end

When ('I click the follow button') do
  find('[type="button"]', :text=>'FOLLOW').click
  sleep 2
end

Then ('it will show following') do
  expect(page).to have_css('[type="button"]',:text=>'FOLLOWING')
end

When ('I click the following button') do
  find('[type="button"]', :text=>'FOLLOWING').click
end

Then ('it will show follow') do
  expect(page).to have_css('[type="button"]',:text=>'FOLLOW')
end

When ('I click the see all results button and scroll down up to the bottom') do
  find('[type="button"]', :text=>'SEE ALL RESULTS').click
  page.execute_script 'window.scrollBy(0,3000)'
  sleep 3
  page.execute_script 'window.scrollBy(0,3500)'
  sleep 3
  page.execute_script 'window.scrollBy(0,3500)'
  sleep 2
  page.execute_script 'window.scrollBy(0,2500)'
  sleep 2
end

Then ('I can see the you have seen all the results text') do
  expect(page).to have_content('YOU HAVE SEEN ALL THE RESULTS')
end

When ('I search for keyword') do
  find(:css, "span.cross__CrossSymbol-oee76g-0.daHoWp").click
  find('[type="search"]').set("stocks")
end

And ('I select the keyword from the dropdown') do
  find(:xpath, "(//span[text()='Keyword'])[1]").click
end

Then ('it should redirect me to the search results for keyword') do
  expect(page).to have_content('SEARCH RESULTS FOR KEYWORD')
  expect(page).to have_content("CONTRIBUTORS\nPUBLISHING\nABOUT\n")
  expect(page).to have_content('KEYWORDS RELATED TO')
end
