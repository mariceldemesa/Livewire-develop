When('I click on my name on the navbar') do
  find('[id="navbar-profile-name"]').click
end

Then('I should be redirected to my profile page') do
  expect(page).to have_css("div.primary-content__DescriptionContainer-sc-39tw9a-4.eqngKd")
end

Then('I can see the manage my wires button') do
  expect(page).to have_css("button.iconed-button__IconedButton-sc-1lhlgcl-0.actions__Button-sc-1w6kgop-1.actions__ManageMyWiresButton-sc-1w6kgop-2.byabtS.dxIbMD.eKPZJW.btn.btn-primary")
end

Then('edit my profile button') do
  expect(page).to have_css("button.iconed-button__IconedButton-sc-1lhlgcl-0.actions__Button-sc-1w6kgop-1.actions__DarkButton-sc-1w6kgop-3.byabtS.dxIbMD.dobuB.btn")
end

Then('followers count') do
  expect(page).to have_content("FOLLOWERS\n")
end

Then('wires count') do
  expect(page).to have_content("WIRES\n")
end

Then('views count') do
  expect(page).to have_content("VIEWS\n")
end

Then('contributor since date') do
  expect(page).to have_content("Contributor Since")
end

Then('featured wires section') do
  expect(page).to have_content("FEATURED WIRES")
end

Then('the latest wires section') do
  expect(page).to have_content("LATEST WIRES")
end

Then ('the mentions section') do
  expect(page).to have_content("MENTIONS")
end

Then('about editor section') do
  expect(page).to have_css('div.styles__SectionContainer-mwvbty-1.about__AboutContainer-sc-1mdh6rp-0.csNTsX.eHcARZ')
end

When('I click on manage my wires') do
  find("button.iconed-button__IconedButton-sc-1lhlgcl-0.actions__Button-sc-1w6kgop-1.actions__ManageMyWiresButton-sc-1w6kgop-2.byabtS.dxIbMD.eKPZJW.btn.btn-primary").click
end

Then('I should be redirected to the my wires page') do
  expect(page).to have_content("My Wires")
end

When('I click on my profiles button') do
  page.evaluate_script("window.history.back()")
  find("button.iconed-button__IconedButton-sc-1lhlgcl-0.actions__Button-sc-1w6kgop-1.actions__DarkButton-sc-1w6kgop-3.byabtS.dxIbMD.dobuB.btn").click
end

Then('I should be redirected to the personal details page') do
  expect(page).to have_content("PERSONAL DETAILS")
end

When('I click the view more link on the latest wires section') do
  page.evaluate_script("window.history.back()")
  sleep 2
  first(:css, "button.view-more").click
end

Then('more wires will show and I should be able to see the view all wires button') do
  expect(page).to have_css("button.view-all", :text=>"VIEW ALL WIRES")
end

When('I click the view all wires button') do
  find(:css, "button.view-all", :text=>"VIEW ALL WIRES").click
end

Then('it redirects me to the search result for contributors page') do
  expect(page).to have_content("SEARCH RESULTS FOR CONTRIBUTOR")
end

When('I go back to my profile page and click the view all on mentions section') do
  page.evaluate_script("window.history.back()")
  sleep(2)
  page.all('button.view-more')[1].click
end

Then('one to three more wires should display') do
  expect(page).to have_css("ul.mention__WiresContainer-r5cz48-0.bKIBKN", :minimum=>2)
end
