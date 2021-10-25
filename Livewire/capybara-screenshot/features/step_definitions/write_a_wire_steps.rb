When('I open the write a wire page') do
  click_on 'Write a wire'
end

Then('I should be able to see the micro profile') do
  expect(page).to have_css('section.micro-profile__Profile-kbt5g3-0.gvGEhT.micro-profile')
end

Then('the select contributor section') do
  expect(page).to have_css('h2.header.--no-border', :text=>'SELECT CONTRIBUTOR')
  expect(page).to have_css('div.contributor__Container-sc-13zgi83-0.bgEccE')
end

When('I try to change the contributor') do
  click_on 'change'
  send_keys('test')
  first('div.contributor__Container-sc-13zgi83-0.bgEccE').click
  # binding.pry
end

Then('the contributor is changed successfully') do
end

When('I assign a category, enter a keyword, category, and other details') do
  find('.css-2b097c-container').click
  find('[id="react-select-3-option-0-1"]').click
  find('[placeholder="Enter Keyword (Max 5)"]').click
  send_keys('investment')
  sleep 2
  send_keys(:enter)
  find('[placeholder="type stock code"]').click
  send_keys('ASX:14D')
  send_keys(:enter)
  find('[for="series-yes"]').click
  find(:css, 'div.select__control.css-yk16xz-control',:text=>'SELECT A SERIES').click
  send_keys(:down)
  send_keys(:down)
  send_keys(:enter)
end

Then('the category, enter a keyword, category, and other details are shown') do
  expect(page).to have_css('.css-1uccc91-singleValue', :text=>'SHARES')
  expect(page).to have_css('.keyword-item',:text=>'INVESTMENT')
  expect(page).to have_css('.stock-code-item',:text=>'ASX:14D')
  expect(page).to have_css('.css-1uccc91-singleValue')
  expect(page).to have_css('.keyword-item',:text=>'INVESTMENT')
  expect(page).to have_css('[for="sponsored-no"]',:text=>'No')
end
