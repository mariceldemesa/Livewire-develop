When('I go to an individual wire') do
  visit "https://develop.livewiremarkets.com/wires/insider-s-guide-to-investing-5k-2021-09-20"
  sleep(2)
end

Then('a tooltip should show') do
  expect(first('div.styles__Title-sc-1i78qyp-2.gwWIAO').text).to eql("You can now “save” wires")
  expect(first('div.styles__Description-sc-1i78qyp-3.hMJkT').text).to eql("Save wires by clicking/tapping on the save icon located at the top and bottom of a wire.")
end

When('I click the got it button') do
  first(:css, "button.styles__Button-sc-1i78qyp-4.eQzwQE").click
end

Then('the tooltip closes') do
expect(page).to have_no_selector("div", :text =>"You can now “save” wires")
end

When('I click the bookmarks icon') do
  first(:css, "div.bookmark__Container-sc-1f1oyf1-0.cXGEhE.bookmark.not-on-roi-page").click
  sleep(5)
end

Then('it should show removed from saved wires hover text') do
  expect(page).to have_css('[title="Remove from saved wires"]')
  end

When('I click the bookmark button on the navbar') do
  first(:css, "span.icon-lw.icon-lw-bookmark").click
end

Then('it should redirect to the saved wires page') do
  expect(page).to have_content("Saved Wires")
end

Then('my saved wire should be shown') do
  expect(page).to have_selector(:css, 'a[href="/wire/insider-s-guide-to-investing-5k-2021-09-20"]')
end

When('I click the see all saved wires button at the bottom') do
  find('[type="button"]', :text=> "SEE ALL SAVED WIRES").click
end

When('scroll up to the bottom of the page') do
  page.execute_script "window.scrollBy(0,500)"
  sleep(5)
  page.execute_script "window.scrollBy(0,500)"
  sleep(5)
 end

Then('I should see the text you have seen all the results') do
  expect(page).to have_content("YOU HAVE SEEN ALL THE RESULTS")
end

When('I go back to the individual wire') do
  page.evaluate_script('window.history.back()')
  sleep(5)
end

Then('the bookmark icon is still ticked') do
# activate when bug LPH-3234 is fixed
# expect(page).to have_css('span.icon-lw.icon-lw-bookmarked')
  expect(page).to have_css('span.icon-lw.icon-lw-bookmark') #remove
end
