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
  click_on '100 top rated funds series'
end

Then('I should be redirected to the top rated series funds series page') do
  expect(page).to have_content("100 Top-Rated Funds Series")
end

Then('I can see the top-rated fund series header') do
  expect(page).to have_css('img[src="https://global-uploads.webflow.com/60876aa7bd15a7293ec4b040/6088d8a63026bf43ecd6b8c8_TRF-Series-Logo-White.svg"]')
  expect(page).to have_content("Get inside the heads of Australia's best Fund Managers. Find out how they are positioned, how they make decisions, and who’s got skin in the game.")
  expect(page).to have_css('a.button.gold.w-button', :text=>'LEARN MORE')
  expect(page).to have_css('a.button.w-button', :text=>'VIEW THE LIST')
end

Then('I can see the discover Australia’s top-rated funds section') do
  expect(page).to have_css('h1.heading-6', :text=>'Discover Australia’s top-rated funds across each asset class')
  expect(page).to have_css('img[src="https://global-uploads.webflow.com/60876aa7bd15a7293ec4b040/60a607d45d2b3dcf79da7107_Frame%201742%20(2).png"]')
  expect(page).to have_css('h3.heading-5', :text=>'Skin in the game')
  expect(page).to have_css('div.paragraph', :text=>'Access the inner workings of the teams inside top rated funds. Their investment philosophy, how their teams make decisions on investments and which Fund Managers have ‘skin in the game’.')
  expect(page).to have_css('h3.heading-5', :text=>'New tools to discover funds')
  expect(page).to have_css('div.paragraph', :text=>'Looking to allocate funds to an asset class in your portfolio? Quickly find Australia’s top rated funds by each asset class, understand their fee structure and how they perform.')
  expect(page).to have_css('div.results-label')
  expect(page).to have_css('div.listings-headline', :text=>'Discover Managed Funds')
  expect(page).to have_css('div.search-subheading', :text=>"Detailed research and information available for Australia's leading managed funds")
  expect(page).to have_css('img[src="https://global-uploads.webflow.com/60876aa7bd15a7293ec4b040/60a732f3e4012579f10b08dd_Group%201745.png"]')
  expect(page).to have_css('h3.heading-5', :text=>'A more confident journey')
  expect(page).to have_css('div.paragraph', :text=>'An investment insights series which connects the dots throughout your journey of evaluating Australia’s top rated managed funds.')
  expect(page).to have_css('img[src="https://global-uploads.webflow.com/60876aa7bd15a7293ec4b040/60a0762bab0372003b6ec77d_Drives%20Icon.svg"]')
  expect(page).to have_css('h3.heading-5', :text=>'What drives their success')
  expect(page).to have_css('div.paragraph', :text=>'Get inside the head of Australia’s top rated fund managers and learn what you’ll need to succeed over the next decade.')
end

Then('I can see the register for the top rated funds section') do
  expect(page).to have_css('h1.heading-6.white', :text=>'Register for updates')
  expect(page).to have_css('div.wire-summary.grey.center', :text=>'Register for the Top Rated Funds Series to receive the series content direct to your inbox.')
  expect(page).to have_css('[id="Name-3"]')
  expect(page).to have_css('[id="email-2"]')
  expect(page).to have_css('[type="submit"]')
end

Then('the sitemap and footer and disclaimer') do
  expect(page).to have_css('a.footer-item.headline', :minimum=>4)
  expect(page).to have_css('a.footer-item', :minimum=>21)
  expect(page).to have_css('div.disclaimer.white-bg', :text=>"Livewire gives readers access to information and educational content provided by financial services professionals and companies (”Livewire Contributors”). Livewire does not operate under an Australian financial services licence and relies on the exemption available under section 911A(2)(eb) of the Corporations Act 2001 (Cth) in respect of any advice given. Any advice on this site is general in nature and does not take into consideration your objectives, financial situation or needs. Before making a decision please consider these and any relevant Product Disclosure Statement. Livewire has commercial relationships with some Livewire Contributors.")
  expect(page).to have_css('a[href="#"]', :text=>'Terms and Conditions')
  expect(page).to have_css('a[href="#"]', :text=>'Privacy')
  expect(page).to have_css('div.disclaimer', :text=>'©2021 Livewire Markets Pty Ltd. All rights reserved.Version 3.70.0')
end

When('I click on rules of investing link') do
  page.evaluate_script('window.history.back()')
  find('.menu', :text => 'SERIES').hover
  click_on 'the rules of investing'
end

Then('I should be redirected to the rules of investing page') do
  expect(page).to have_content("THE RULES OF INVESTING PODCAST")
end

Then('the rules of investing header is shown') do
  expect(page).to have_css('.stars')
  expect(page).to have_content("4.7 RATINGAPPLE PODCASTS")
  expect(page).to have_content("Livewire is Australia’s fastest-growing investment website, showcasing ideas, analyses and strategies from hundreds of the country’s most respected fund managers and investment professionals.")
  expect(page).to have_css('.latest-episode-link')
  expect(page).to have_css('.wire__Container-sc-1936k21-1.hMLinN')
  expect(page).to have_css('.wire-details')
  expect(page).to have_css('.wire-title__Header-sc-1ssvnwk-0.hsuYVW')
  expect(page).to have_css('.featuring')
end

Then('the first six episodes are shown with details') do
  expect(page).to have_content('6 PODCASTS')
  expect(page).to have_css('.wire__Container-sc-1plv4mz-0.eRbzIq', :minimum=>6)
  expect(page).to have_css('.listen', :minimum=>7)
end

When ('I click on listen to latest episode button') do
  click_on 'Listen to Latest Episode'
end

Then ('I should be redirected to the ROI series individual wire page') do
  expect(page).to have_content('The Rules of Investing')
end

When ('I click anywhere within the primary image') do
  page.evaluate_script('window.history.back()')
  find('.wire__Container-sc-1936k21-1.hMLinN').click
end

When('I click the listen button') do
  page.evaluate_script('window.history.back()')
  click_on 'Listen'
end

When('I click the show more button') do
  page.evaluate_script('window.history.back()')
  click_on 'show more'
end

Then('the other ROI series wires should show') do
  expect(page).to have_css('.wire__Container-sc-1plv4mz-0.eRbzIq', :minimum=>7)
  expect(page).to have_css('.listen', :minimum=>8)
end

When('I click on income series link') do
  page.evaluate_script('window.history.back()')
  find('.menu', :text => 'SERIES').hover
  click_on 'income series'
end

Then('I should be redirected to the income series page') do
  expect(page).to have_content("Income Series")
end

Then('I can see the income series header') do
  expect(page).to have_css('img[src="https://global-uploads.webflow.com/600e43e218b456a758dace32/613ad3dbe15d233d89926301_income-series-logo-horizontal.svg"]')
  expect(page).to have_content("SOLVING THE\nINCOME PUZZLE")
  expect(page).to have_content('Welcome to Livewire’s Income Series 2021! The objective of the series is to help you learn about a diverse range of income-producing asset classes and see how the experts build income-focused portfolios.')
  expect(page).to have_css('a.cta-button.gold.outline.w-button', :text=>'LEARN MORE')
  expect(page).to have_css('a.cta-button.gold.w-button', :text=>'VIEW THE LIST')
  expect(page).to have_css('div.form-wrapper-2', :text=>'REGISTER NOW FOR FIRST ACCESS TO SERIES CONTENT')
  expect(page).to have_css('[id="name"]')
  expect(page).to have_css('[id="email"]')
  expect(page).to have_css('[type="submit"]')
end

Then('I can see the discover section') do
  expect(page).to have_css('h1.heading-11.display', :text=>"Discover the best income focused funds, ETFs and LICs/LITs ")
  expect(page).to have_css('div.text-block-5', :text=>'Looking to allocate funds, LICs, LITs or ETFs to an asset class in your portfolio? Quickly find income-generating funds by asset class, understand their fee structure and see how they perform.')
  expect(page).to have_css('a[href="https://www.livewiremarkets.com/funds/?series=income_series"]', :text=>'VIEW THE FULL LIST')
  expect(page).to have_css('img[src="https://global-uploads.webflow.com/600e43e218b456a758dace32/61405397cd5bd06fdbcc9eb9_Group%201745%20(1).png"]')
end

Then('I can see the feature wires section') do
  expect(page).to have_css('h3.heading-4', :text=>'FEATURED WIRES')
  expect(page).to have_css('a.wire-large-image.w-inline-block')
  expect(page).to have_css('h1.heading-11.large')
  expect(page).to have_css('div.wire-summary')
  expect(page).to have_css('div.features-wires-item.w-dyn-item', :minimum=>3)
  expect(page).to have_css('a.featured-wire-image.w-inline-block', :minimum=>3)
  expect(page).to have_css('h1.feature-wire-title')
end

And('I can see image ad') do
  # expect(page).to have_css('div.section.ad.tablet')
  # expect(page).to have_css('div.section.ad.mobile')
  expect(page).to have_css('div.section.ad.desktop', :minimum=>2)
end

Then('I can see the education section') do
  expect(page).to have_css('h3.uppercase.left-align.section-header')
  expect(page).to have_css('div.education-content-wrapper', :minimum=>13)
  expect(page).to have_css('div.education-title', :minimum=>13)
  expect(page).to have_css('div.education-by', :minimum=>13)
  expect(page).to have_css('div.sponser-wrapper', :minimum=>13)
end

Then('I can see the latest feeds') do
  expect(page).to have_css('h3.uppercase.left-align.section-header', :text=>'LATEST')
  expect(page).to have_css('div.published-at-date')
  expect(page).to have_css('div.category-name', :text=>'INCOME SERIES', :minimum=>17)
  expect(page).to have_css('h1.feed-item-headline', :minimum=>17)
  expect(page).to have_css('p.feed-wire-description', :minimum=>17)
end

Then('I can see the register for updates section') do
  expect(page).to have_css('h1.heading-15.white', :text=>'Register for updates')
  expect(page).to have_css('p.white', :text=>'Register for the Top Rated Funds Series to receive the series content direct to your inbox.')
  expect(page).to have_css('div.form-block-4.w-form')
  expect(page).to have_css('[placeholder="Full Name"]')
  expect(page).to have_css('[placeholder="Email"]')
  expect(page).to have_css('[type="submit"]')
end

Then('the sitemap and footer') do
  expect(page).to have_css('a.footer-item.headline', :minimum=>4)
  expect(page).to have_css('a.footer-item', :minimum=>21)
  expect(page).to have_css('div.disclaimer-2.white-bg', :text=>"Livewire gives readers access to information and educational content provided by financial services professionals and companies (”Livewire Contributors”). Livewire does not operate under an Australian financial services licence and relies on the exemption available under section 911A(2)(eb) of the Corporations Act 2001 (Cth) in respect of any advice given. Any advice on this site is general in nature and does not take into consideration your objectives, financial situation or needs. Before making a decision please consider these and any relevant Product Disclosure Statement. Livewire has commercial relationships with some Livewire Contributors.")
  expect(page).to have_css('a[href="#"]', :text=>'Terms and Conditions')
  expect(page).to have_css('a[href="#"]', :text=>'Privacy')
  expect(page).to have_css('div.disclaimer-2', :text=>'©2021 Livewire Markets Pty Ltd. All rights reserved.Version 3.70.0')
end
