When('an author publish a wire and then comment') do
  click_on('Write a wire')
  send_keys('Wire for notification testing')
  send_keys(:tab)
  send_keys(:tab)
  send_keys(:tab)
  send_keys('test')
  find('div.select__indicator.select__dropdown-indicator.css-tlfecz-indicatorContainer').click
  send_keys(:enter)
  click_on('publish wire')
  click_on('thanks, take me to my wire')
  first('span.icon-lw.icon-lw-wire-like').click
  first('[title="Add to saved wires"]').click
  first('span.icon-lw.icon-lw-comment').click
  find('[id="comment_body"]').click
  send_keys('test notification')
  click_on('submit')
  first('span.icon-lw.icon-lw-ellipsis').click
  click_on('Sign Out')
  find_link("Sign In").click
  send_keys('reader@gmail.com')
  send_keys(:tab)
  send_keys('test1234')
  find('[type="submit"]').click
  visit('https://develop.livewiremarkets.com/home')
  find('[aria-label="View notification"]').click
end

Then('I should be able to receive notifications that the author published and commented on a wire') do
  expect(page).to have_css("div.notifications-callout")
end
