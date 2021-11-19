When('I visit the fund listing page') do
  visit('https://develop.livewiremarkets.com/funds')
end

When('I click on a fund card') do
  # click_on "Got it"
  find('div.actions__ActionContainer-tw45oq-0.feAukJ').click
  find('div.styles__Name-gr9nsc-3.efTPZH',:text=>"Munro Concentrated Global Growth A").click
end

Then('I should be redirected to the fund profile page') do
  expect(page).to have_css('div.fund-modal__Header-sc-1hbhqx4-2.ejLiGs.modal-header')
end

Then('I can see the follow and contact buttons on the upper right') do
  expect(page).to have_css('[name="fund-follow-button"]')
  expect(page).to have_css('span.icon-lw.icon-lw-contact')
end

When('I click on the follow button') do
find('[name="fund-follow-button"]').click
sleep 2
end

Then('the button should turn into following with a check icon') do
  expect(page).to have_css('span.icon-full-size.icon-lw-user-check')
end

When('I click on the following button') do
  find('span.followed').click
end

Then('the button should turn into follow') do
  expect(page).to have_css('span.not-followed')
end

Then('I can see the fund logo, title, details and vitals') do
  expect(page).to have_css('div.logo__ImageContainer-sc-17n2lal-1.coepME')
  expect(page).to have_css('div.type__TypeContainer-sc-4wlxi2-0.CqrSi')
  expect(page).to have_css('p.name__Text-sc-19jherb-0.eMvbUy')
  expect(page).to have_content('Munro Concentrated Global Growth A')
  expect(page).to have_css('p.company__Text-parg0y-0.cgQijN')
  expect(page).to have_css('p.objective__Text-sc-13q4xfu-0.bCqzDQ')
  expect(page).to have_css('div.styles__Label-sc-11yf0z8-1.hZSAez',:text=>"INVESTMENT HORIZON")
  expect(page).to have_css('div.styles__Label-sc-11yf0z8-1.hZSAez',:text=>"MINIMUM INVESTMENT")
  expect(page).to have_css('div.styles__Label-sc-11yf0z8-1.hZSAez',:text=>"GROWTH SINCE INCEPTION")
  expect(page).to have_css('div.styles__Value-sc-11yf0z8-2.growth-since-inception-fact__Values-hl2hec-0.cGQtnf.eGAvGv')
  expect(page).to have_css('div.styles__Label-sc-11yf0z8-1.hZSAez',:text=>"MANAGEMENT FEE")
  expect(page).to have_css('div.styles__Value-sc-11yf0z8-2.fee__Values-sc-1dtt8rm-0.cGQtnf.juxtVp')
  expect(page).to have_css('div.styles__Label-sc-11yf0z8-1.hZSAez',:text=>"ACTUAL PERFORMANCE FEE")
  expect(page).to have_css('div.code__Text-sc-16a307a-1.dNSKEe')
  expect(page).to have_css('span.meta__GenDate-m18oy6-1.fcJzhr')
end

When('I scroll down to the fund information section') do
  page.execute_script('window.scrollBy(0,500)')
end

Then('I can see the featured wires section') do
  expect(page).to have_css('div.styles__SectionTitle-mwvbty-3.featured-wires__Title-vbpy7f-1.dMShhj.btYiXC',:text=>"FEATURED WIRES")
  expect(page).to have_css('[name="featured-wires"]')
end

Then('the fund information section should display') do
  expect(page).to have_css('div.styles__SectionTitle-mwvbty-3.dMShhj')
  expect(page).to have_css('[name="fund-information"]')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'FUND NAME')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'FUND ASSET CLASS')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'CURRENCY')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'MINIMUM INVESTMENT')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'INVESTMENT HORIZON')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'GEOGRAPHICAL FOCUS')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'APIR')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'ISIN')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'FUND SIZE')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'LEGAL STRUCTURE')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'DOMICILE')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'INCEPTION DATE')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'LIT')
  expect(page).to have_css('div.hoc-single-info__Container-j68l2v-0.idporu',:text=>'MORE INFORMATION')
  expect(page).to have_css('a.more-info__Anchor-sc-19u3f36-0.ehWliQ',:text=>'Product Disclosure Statement')
end

When('I scroll down to the fund performance section') do
  page.execute_script("window.scrollBy(0,500)")
end

Then('the fund performance section should display') do
  expect(page).to have_css('div',:text=>'FUND PERFORMANCE')
  expect(page).to have_css('span.period',:text=>'1 MONTH')
  expect(page).to have_css('span.period',:text=>'1 YEAR')
  expect(page).to have_css('div.name__Container-sc-1cgsuj1-0.hba-dpi',:text=>'Munro Concentrated Global Growth A')
  expect(page).to have_css('p.regular',:text=>'Trailing month end returns as of 19 Aug 2021')
  expect(page).to have_css('p.bold',:text=>'Fund performance after fees')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'PERIOD')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'RETURN')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'1 Month')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'3 Months')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'6 Months')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'1 Year')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'2 Yearsp.a.')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'3 Yearsp.a.')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'5 Yearsp.a.')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'10 Yearsp.a.')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'Since Inceptionp.a.')
  expect(page).to have_css('table.returns__Container-sc-1d14ca0-0.kbWByR',:text=>'Feb 2020 (1+ year)')
  expect(page).to have_css('div.details__Fees-sc-1fcaq6i-1.dntBFI',:text=>'Past performance is not a guarantee of future results.')
  expect(page).to have_css('div.details__Fees-sc-1fcaq6i-1.dntBFI',:text=>'Performance data has been provided by Morningstar.')
end

When('I scroll down to the fees and pricing section') do
  page.execute_script "window.scrollBy(0,500)"
end

Then('the fees and pricing should display') do
  expect(page).to have_css('div.styles__SectionTitle-mwvbty-3.dMShhj',:text=>'FEES & PRICING')
  expect(page).to have_css('span.fee-title',:text=>'PERFORMANCE FEE')
  expect(page).to have_css('div.performance-fee-charged')
  expect(page).to have_css('div.styles__Title-sc-1qux5b6-3.idBPUA',:text=>'Performance Fee Details')
  expect(page).to have_css('span.fee-title',:text=>'PERFORMANCE FEE METHODOLOGY')
  expect(page).to have_css('div.performance-fee-methodology__Container-sc-1u0hffe-0.enGtuJ')
  expect(page).to have_css('div.styles__Title-sc-1qux5b6-3.idBPUA',:text=>'Pricing')
  expect(page).to have_css('span.icon-lw-external-link')
  expect(page).to have_css('span',:text=>'Check the current share price')
  expect(page).to have_css('p.message__Text-ct5wmw-1.bxaxDJ',:text=>'Fee data has been provided by Morningstar, it may not include all costs being charged on your investment. For a full overview of fees charged you should review the  ')
  expect(page).to have_css('a',:text=>'Product Disclosure Statement')
end

When('I click the contact button') do
  find('span.icon-lw.icon-lw-contact').click
end

Then('it should scroll down to the enquiries section') do
  expect(page).to have_css('div.enquiry__Container-eaxb4k-0.jhSptI')
end
