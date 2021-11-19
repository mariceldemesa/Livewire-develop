When('I navigate the about livewire from the menu') do
  first("span.icon-lw.icon-lw-ellipsis").click
  sleep 2
  first('a[href="/company/home"]').click
end

Then('I should be redirected to the company homepage') do
  expect(page).to have_title("Investing & Market Trading Insights in Australia | Livewire")
end

Then('can see the page title {string}') do |string|
  expect(page).to have_content("Make confident investment decisions through leading market insights and analysis")
end

Then('purpose section {string}') do |string|
  page.execute_script 'window.scrollBy(0,300)'
  sleep 2
  page.execute_script 'window.scrollBy(0,300)'
  sleep 2
  page.execute_script 'window.scrollBy(0,300)'
  sleep 2
  expect(page).to have_content("Livewire is changing the way investors discover investments")
end

Then('with purpose description {string}') do |string|
  expect(find('.gIEYTH').text).to eql("We are levelling the playing field by giving all investors access to high-value investment insights, commentary and analysis from Australia’s leading money managers.")
  #binding.pry
end

Then('the purpose image is displayed') do
  expect(page).to have_css('img[src="https://d3gsupuse2luvd.cloudfront.net/assets/corporate/homepage/purpose-8721df65b6406c7b21c2a1a3d05a92a7299819bff58744f3227af2126789275c.png"]')
end

Then('contributors section title {string}') do |string|
  expect(find('.kbnMMb').text).to eql("Who contributes to Livewire")
end

Then('with contibutors section description {string}') do |string|
  expect(find('.gzutDs').text).to eql("We showcase investment ideas, analysis and strategies from hundreds of Australia’s most credible fund managers and investment professionals – all on the one platform")
end

Then('the auto scroll list of contributors are shown') do
  expect(page).to have_css("div.contributors__AutoScrollContainer-e2dkg0-7.bYwacg")
end

Then('the features section is shown') do
  expect(page).to have_css('div.styles__PaddedContainer-sc-1ekjlbj-3.features__Container-frmqat-0.fxxOYa.iLLiLC')
end

Then('from australian fund managers section is shown') do
  expect(page).to have_css('div.styles__PaddedContainer-sc-1ekjlbj-3.investors__Container-sc-8d80qd-0.fxxOYa.oploD')
end

Then('our story section is shown') do
  expect(page).to have_css('div.our-story__Container-sc-9fm44q-0.liARtn')
end

Then('sitemap is shown') do
  expect(page).to have_css('div.styles__PaddedContainer-sc-1ekjlbj-3.site-map__Container-sc-18k45b1-0.fxxOYa.cCloWC')
end
