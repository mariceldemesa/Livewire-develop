When('I navigate to my wires page') do
  find("button.callout-toggle-button.navbar-callout-toggle.--account").click
  find('a[href="/profiles/me/my_wires/published"]').click
end

Then('I should be redirected to my wires page') do
  expect(page).to have_content("My Wires")
end

Then('I can see the published tab') do
  expect(page).to have_content("PUBLISHED")
end

Then('drafts tab') do
  expect(page).to have_content("DRAFTS")
end

Then('comments tab') do
  expect(page).to have_content("COMMENTS")
end

When('I click on a menu button on the right side of the wire') do
  first('button.callout-toggle-button.editors-manage-wire-callout.--wire').click
end

Then('I should see the add to editors picks') do
  expect(page).to have_css('a.editors-picks')
end

When('I click on it') do
  find('a.editors-picks').click
end

Then('the editors pick modal should open') do
  expect(page).to have_css('div.manage-editors-picks-modal')
  sleep(2)
end

When('I click on save') do
  find('button.btn.btn-primary').click
  visit "https://develop.livewiremarkets.com/feeds/latest"
end

Then('the wire should show on the editors pick section on the latest page') do
  expect(page).to have_content("WIRE FOR NOTIFICATION TESTING", :minimum=>2)
end

When('I click on edit wire') do
  page.evaluate_script('window.history.back()')
  first('button.callout-toggle-button.editors-manage-wire-callout.--wire').click
  find('a.edit-wire').click
end

Then('the edit page of the wire should open') do
  expect(page).to have_css("form.wire-editor.--user-facing")
end

When('I go back to my wires and go to drafts page') do
  page.evaluate_script('window.history.back()')
  find('a[href="/profiles/me/my_wires/drafts"]').click
end

Then('my draft wires are shown') do
  expect(page).to have_content("Drafts", :maximum=>1)
end

When('I comment on a wire then I go back to my wires > comments') do
  first(:css, ".menu").click
  first('span.icon-lw.icon-lw-comment').click
  fill_in 'comment[body]', with: "this is a test comment"
  find(:css, '[type="submit"]').click
  find("button.callout-toggle-button.navbar-callout-toggle.--account").click
  find('a[href="/profiles/me/my_wires/published"]').click
  find('a[href="/profiles/me/my_wires/comments"]').click
end

Then('my comment should be shown') do
  expect(page).to have_content("this is a test comment")
  first('a.profile-comment__RemoveLink-sc-1djwot3-2.lkDjIx').click
end

When('I remove the wire from the editors picks') do
  first('a[href="/profiles/me/my_wires/published"]').click
  first('button.callout-toggle-button.editors-manage-wire-callout.--wire').click
  find('a.editors-picks').click
  first('button.fa.fa-trash').click
  page.accept_alert
  first('button.btn.btn-primary').click
  first('.menu').click
end

Then('the wire should not be shown in editors picks') do
  expect(page).to have_no_content("WIRE FOR NOTIFICATION TESTING", :minimum=>2)
end
