When('I hover on series from the navbar') do
  find('.menu', :text => 'SERIES').hover
end

Then('I should be able to see the series navbar expansion') do
  expect(page).to have_css("div.application-navbar-sub-navigation")
end

Then('the buy hold sell series') do
  expect(page).to have_link("buy hold sell", :href=>"/series/buy-hold-sell")
end

Then('the cio profiles series') do
  expect(page).to have_link("cio profiles", :href=>"/series/cio")
end

Then('the fund in focus series') do
  expect(page).to have_link("fund in focus", :href=>"/series/fund-in-focus")
end

Then('the podcasts series') do
  expect(page).to have_link("podcasts", :href=>"/series/podcasts")
end

Then('the top rated series funds series') do
  expect(page).to have_link("100 top rated funds series", :href=>"https://topratedfundsseries.livewiremarkets.com/?utm_campaign=Top+Rated+Fund+Series&utm_medium=livewire+website&utm_source=engagement+campaign&utm_content=series+mega+menu")
end

Then('the rules of investing series') do
  expect(page).to have_link("the rules of investing", :href=>"/series/the_rules_of_investing")
end

Then('the income series') do
  expect(page).to have_link("income series", :href=>"https://incomeseries.livewiremarkets.com")
end

When('I click on buy hold sell link') do
  first("a[href='/series/buy-hold-sell']").click
end

Then('I should be redirected to the buy hold sell page') do
  expect(page).to have_content("Buy Hold Sell")
end

Then('the buy hold sell description is shown') do
  expect(page).to have_content("Buy, hold and eventually sell")
end

When('I click on cio profiles link') do
  find('.menu', :text => 'SERIES').hover
  first("a[href='/series/cio']").click
end

Then('I should be redirected to the cio profiles page') do
  expect(page).to have_content("CIO Profiles")
end

When('I click on fund in focus link') do
  find('.menu', :text => 'SERIES').hover
  first("a[href='/series/fund-in-focus']").click
end

Then('I should be redirected to the fund in focus page') do
  expect(page).to have_content("Fund in Focus")
end

When('I click on podcasts series link') do
  find('.menu', :text => 'SERIES').hover
  first("a[href='/series/podcasts']").click
end

Then('I should be redirected to the podcasts series page') do
  expect(page).to have_content("Podcasts")
end

When('I click on top rated series funds series link') do
  find('.menu', :text => 'SERIES').hover
  first("a[href='https://topratedfundsseries.livewiremarkets.com/?utm_campaign=Top+Rated+Fund+Series&utm_medium=livewire+website&utm_source=engagement+campaign&utm_content=series+mega+menu']").click
end

Then('I should be redirected to the top rated series funds series page') do
  expect(page).to have_content("100 Top-Rated Funds Series")
end

Then('the top rated series funds series description is shown') do
  expect(page).to have_content("Get inside the heads of Australia's best Fund Managers. Find out how they are positioned, how they make decisions, and who’s got skin in the game.")
end

When('I click on rules of investing link') do
  page.evaluate_script('window.history.back()')
  find('.menu', :text => 'SERIES').hover
  first("a[href='/series/the_rules_of_investing']").click
end

Then('I should be redirected to the rules of investing page') do
  expect(page).to have_content("THE RULES OF INVESTING PODCAST")
end

Then('the rules of investing description is shown') do
  expect(page).to have_content("Livewire is Australia’s fastest-growing investment website, showcasing ideas, analyses and strategies from hundreds of the country’s most respected fund managers and investment professionals.")
end

When('I click on income series link') do
  page.evaluate_script('window.history.back()')
  find('.menu', :text => 'SERIES').hover
  first("a[href='https://incomeseries.livewiremarkets.com']").click
end

Then('I should be redirected to the income series page') do
  expect(page).to have_content("Income Series")
  page.evaluate_script('window.history.back()')
end
