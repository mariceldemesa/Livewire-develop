When("I click on edit my profiles button from the contributor's profile") do
  find('[id="navbar-profile-name"]').click
  click_on('Edit My Profile')
end

Then("I should be redirected to the contributor's personal details page") do
    expect(page).to have_content('PERSONAL DETAILS', :minimum=>2)
end

When('I click on the contributor profile and scroll down to the featured wires') do
  click_on('Contributor Profile')
  page.execute_script "window.scrollBy(0,1000)"
  page.execute_script "window.scrollBy(0,1000)"
  page.execute_script "window.scrollBy(0,300)"
end

When('I click the kebab menu button') do
  first('button.icon-lw.icon-lw-ellipsis.dropdown-toggle.btn.btn-primary').click
end

Then('I can see the view wire, change and remove options') do
  expect(page).to have_content('VIEW WIRE')
  expect(page).to have_content('CHANGE')
  expect(page).to have_content('REMOVE')
end

When('I try to change the featured wire') do
  click_on('change')
  send_keys('5')
  sleep 1
  send_keys('k')
  send_keys(:enter)
end

Then('the featured wire is changed') do
  expect(page).to have_content("Insider’s guide to investing $5k")
end

When('I remove the featured wire') do
  first('button.icon-lw.icon-lw-ellipsis.dropdown-toggle.btn.btn-primary').click
  click_on('remove')
end

Then('the featured wire should be removed') do
  expect(page).to have_no_content("Insider’s guide to investing $5k")
end

When('I click on the featured wire one empty textfield') do
  first('div.sel__placeholder.css-nkwu5v-placeholder').click
end

When('select another wire') do
  send_keys('b')
  sleep 1
  send_keys('uy hold')
  send_keys(:enter)
end

Then('another first featured wire is set') do
  expect(page).to have_content('Buy Hold Sell: 5 stocks in an upgrade cycle')
end

When('I update my expertise, experience and investment philosophy') do
  click_on('Equities')
  sleep 1
  click_on('Fixed Income')
  sleep 1
  click_on('Commodities')
  sleep 1
  click_on('Alternative')
  sleep 1
  click_on('Property')
  sleep 1
  find('div.scountry-container.css-oav4hf-container').click
  send_keys('australia')
  send_keys(:enter)
  find('div.scity-container.css-oav4hf-container').click
  send_keys('sydney')
  send_keys(:enter)
  find('[value="PREVIOUS COMPANY, INC."]').click
  send_keys(:command, 'a')
  send_keys('ARMY NAVY, INC.')
  find('[value="TESTER"]').click
  sleep 2
  send_keys(:command, 'a')
  send_keys('DATA ANALYST')
  sleep 2
  find('.bLUoZZ', :text=>"Accreditation and awards. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.").click
  send_keys(:command, 'a')
  send_keys('This is my accreditation and awards. Horay!')
  find('.bLUoZZ', :text=>"Point 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.").click
  send_keys(:command, 'a')
  send_keys('This is my point 1. Horay!')
  find('.bLUoZZ', :text=>"Point 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.").click
  send_keys(:command, 'a')
  send_keys('This is my point 2. Horay!')
  find('.bLUoZZ', :text=>"Point 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.").click
  send_keys(:command, 'a')
  send_keys('This is my point 3. Horay!')
  click_on("View Profile")
end

Then('the expertise, experience and investment philosophy should be updated in my profile page') do
  expect(page).to have_content('Equities')
  expect(page).to have_content('Fixed Income')
  expect(page).to have_content('Commodities')
  expect(page).to have_content('Alternative')
  expect(page).to have_content('Property')
  expect(page).to have_content('Australia')
  expect(page).to have_content('Sydney')
  expect(page).to have_content('ARMY NAVY, INC.')
  expect(page).to have_content('DATA ANALYST')
  expect(page).to have_content('This is my accreditation and awards. Horay!')
  expect(page).to have_content('This is my point 1. Horay!')
  expect(page).to have_content('This is my point 2. Horay!')
  expect(page).to have_content('This is my point 3. Horay!')
end

When ('I update other details to the old one')do
  page.evaluate_script('window.history.back()')
  click_on('Contributor Profile')
  click_on('Equities')
  sleep 1
  click_on('Fixed Income')
  sleep 1
  click_on('Commodities')
  sleep 1
  click_on('Alternative')
  sleep 2
  click_on('Property')
  sleep 2
  find('div.scountry-container.css-oav4hf-container').click
  send_keys('christmas')
  send_keys(:enter)
  find('[value="ARMY NAVY, INC."]').click
  send_keys(:command, 'a')
  send_keys('PREVIOUS COMPANY, INC.')
  find('[value="DATA ANALYST"]').click
  send_keys(:command, 'a')
  send_keys('TEST')
  sleep 2
  send_keys('ER')

  sleep 5
  find('.bLUoZZ', :text=>"This is my accreditation and awards. Horay!").click
  send_keys(:command, 'a')
  send_keys('Accreditation and awards. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.')
  find('.bLUoZZ', :text=>"This is my point 1. Horay!").click
  send_keys(:command, 'a')
  send_keys('Point 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.')
  find('.bLUoZZ', :text=>"This is my point 2. Horay!").click
  send_keys(:command, 'a')
  send_keys('Point 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.')
  find('.bLUoZZ', :text=>"This is my point 3. Horay!").click
  send_keys(:command, 'a')
  send_keys('Point 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.')
  click_on("View Profile")
  visit('https://develop.livewiremarkets.com/contributors/qa-editor-editor')
end

Then('the details are updated to the old one') do
  expect(page).to have_no_content('Equities')
  expect(page).to have_no_content('Fixed Income')
  expect(page).to have_no_content('Commodities')
  expect(page).to have_no_content('Alternative')
  expect(page).to have_no_content('Property')
  expect(page).to have_content('Christmas Island')
  expect(page).to have_content('PREVIOUS COMPANY, INC.')
  expect(page).to have_content('TESTER')
  expect(page).to have_content('Accreditation and awards. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.')
  expect(page).to have_content('Point 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.')
  expect(page).to have_content('Point 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.')
  expect(page).to have_content('Point 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus.')
end


When('I update the profile links and disclaimer') do
  click_on('Edit My Profile')
  click_on('Contributor Profile')
  find('.bLUoZZ', :text=>"I am updating my disclaimer -- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus. Nullam dictum magna non ex errtre").click
  send_keys(:command, 'a')
  send_keys('This is a test disclaimer')
  sleep 2
  click_on('Write a wire')
end

Then('the profile links and disclaimer should be updated in my wires page') do
  expect(page).to have_css('.egXJdX', :text=>'This is a test disclaimer')
  find('[id="navbar-profile-name"]').click
  click_on('Edit My Profile')
  click_on('Contributor Profile')
  find('.bLUoZZ', :text=>"This is a test disclaimer").click
  send_keys("I am updating my disclaimer -- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ipsum diam, ornare vitae massa in, convallis interdum mi. Nulla facilisi. Nam efficitur nunc nibh, et convallis purus imperdiet vel. Morbi bibendum luctus urna, non consectetur metus. Nullam dictum magna non ex errtre")
end
