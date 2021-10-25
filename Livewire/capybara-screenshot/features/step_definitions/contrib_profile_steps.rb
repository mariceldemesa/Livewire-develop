When('I visit a contributors profile page') do
visit "https://develop.livewiremarkets.com/contributors/qa-contrib-contrib"
end

Then('I should be able to see the featured wires') do
expect(page).to have_content("FEATURED WIRES")
expect(page).to have_css('a.image-wrapper', :maximum=>3)
end

Then('the latest wires') do
expect(page).to have_content("LATEST WIRES")
expect(page).to have_css('section.wire__Container-sc-1nnjcdc-1.dXqBKI', :maximum=>3)
end

When('I click the view more button') do
  first('.view-more').click
end

Then('seven more wires should show') do
  expect(page).to have_css('section.wire__Container-sc-1nnjcdc-1.dXqBKI', :maximum=>10)
end

Then('it should redirect me to the search results for contributor page') do
  expect(page).to have_content('SEARCH RESULTS FOR CONTRIBUTOR')
end

Then('mentions section') do
  page.execute_script ('window.history.back()')
  expect(page).to have_content('MENTIONS')
  expect(page).to have_content('Recent wires which mention QA Contrib Contrib')
  expect(page).to have_css('li.mention__Wire-r5cz48-1.hKdhCY', :maximum=>3)
end

When ('I click on view all on mentions section') do
  within('[name="mentions"]') do
    click_on('view more')
  end
end

Then ('more wires will be shown') do
  expect(page).to have_css('li.mention__Wire-r5cz48-1.hKdhCY', :minimum=>4)
end

Then('invest with sandbox technology section') do
  expect(page).to have_content("INVEST WITH SANDBOX")
  expect(page).to have_css('div.card__Container-inkqsv-0.iCHJsH', :maximum=>4)
end

Then('about section') do
  expect(page).to have_content("ABOUT")
  expect(page).to have_css('.fdMCbT', :text=>'EXPERTISE')
  expect(page).to have_css('div.career__CareerSection-sc-13gs5fd-1.ldHlbc')
  expect(page).to have_css('div.career__ExperienceSection-sc-13gs5fd-2.tdCkr')
end

Then('enquiries section') do
  expect(page).to have_content("ENQUIRIES")
end

When ('I click the contact button in the enquiries section') do
  click_on "contact"
end

Then ('the enquiry form should open') do
  expect(page).to have_css('form.form__Container-sc-6m74x0-0.jTOBaC')
end
