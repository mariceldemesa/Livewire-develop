When('I hover on categories from the navbar') do
  find('.menu', :text => 'CATEGORIES').hover
end

Then('I should be able to see the navbar expansion') do
  expect(page).to have_css("div.application-navbar-sub-navigation")
end

Then('the asset allocation category') do
  expect(page).to have_link("asset allocation", :href=>"/categories/asset-allocation")
end

Then('the commodities category') do
  expect(page).to have_link("commodities", :href=>"/categories/commodities")
end

Then('the daily report category') do
  expect(page).to have_link("daily report", :href=>"/categories/daily-report")
end

Then('the education category') do
  expect(page).to have_link("education", :href=>"/categories/education")
end

Then('the equities category') do
  expect(page).to have_link("equities", :href=>"/categories/equities")
end

Then('the fixed income category') do
  expect(page).to have_link("fixed income", :href=>"/categories/fixed-income")
end

Then('the funds category') do
  expect(page).to have_link("funds", :href=>"/categories/funds")
end

Then('the investment theme category') do
  expect(page).to have_link("investment theme", :href=>"/categories/investment-theme")
end

Then('the macro category') do
  expect(page).to have_link("macro", :href=>"/categories/macro")
end

Then('the politics category') do
  expect(page).to have_link("politics", :href=>"/categories/politics")
end

Then('the property category') do
  expect(page).to have_link("property", :href=>"/categories/property")
end

Then('the shares category') do
  expect(page).to have_link("shares", :href=>"/categories/shares")
end

When('I click on asset allocation') do
  first("a[href='/categories/asset-allocation']").click
end

Then('I should be redirected to the asset allocation page') do
  expect(page).to have_content("Asset Allocation")
end

Then('the asset allocation description is shown') do
  expect(page).to have_content("The multi-asset perspective, covering trends across key asset classes and relative weightings between them.")
end

When('I click on commodities') do
  find('.menu', :text => 'CATEGORIES').hover
  first("a[href='/categories/commodities']").click
end

Then('I should be redirected to the commodities page') do
  expect(page).to have_content("Commodities")
end

Then('the commodities description is shown') do
  expect(page).to have_content("From iron ore to coal, gold to copper, and oil to gas; understand the commodities forming the bedrock of the Australian economy.")
end

When('I click on daily report') do
  find('.menu', :text => 'CATEGORIES').hover
  first("a[href='/categories/daily-report']").click
end

Then('I should be redirected to the daily report page') do
  expect(page).to have_content("Daily Report")
end

Then('the daily report description is shown') do
  expect(page).to have_content("Tune in for a daily download from investing professionals ‘in the trenches’ who summarise key events each market day.")
end

When('I click on education') do
  find('.menu', :text => 'CATEGORIES').hover
  first("a[href='/categories/education']").click
end

Then('I should be redirected to the education page') do
  expect(page).to have_content("Education")
end

Then('the education description is shown') do
  expect(page).to have_content("Professional investors distill techniques to improve and simplify investing.")
end

When('I click on equities category') do
  find('.menu', :text => 'CATEGORIES').hover
  first("a[href='/categories/equities']").click
end

Then('I should be redirected to the equities page') do
  expect(page).to have_content("Equities")
end

Then('the equities description is shown') do
  expect(page).to have_content("Listed stock commentary covering small-caps to big-caps, growth to income, domestic to global, and momentum to deep value.")
end

When('I click on fixed income') do
    find('.menu', :text => 'CATEGORIES').hover
    first("a[href='/categories/fixed-income']").click
end

Then('I should be redirected to the fixed income page') do
  expect(page).to have_content("Fixed Income")
end

Then('the fixed income description is shown') do
  expect(page).to have_content("The core of any good portfolio, learn about the key themes and opportunities in fixed interest.")
end

When('I click on funds') do
  find('.menu', :text => 'CATEGORIES').hover
  first("a[href='/categories/funds']").click
end

Then('I should be redirected to the funds page') do
  expect(page).to have_content("Funds")
end

Then('the funds description is shown') do
  expect(page).to have_content("Discover listed and unlisted funds with expertise across the full spectrum of markets.")
end

When('I click on investment theme') do
  find('.menu', :text => 'CATEGORIES').hover
  first("a[href='/categories/investment-theme']").click
end

Then('I should be redirected to the investment theme page') do
  expect(page).to have_content("Investment Theme")
end

Then('the investment theme description is shown') do
  expect(page).to have_content("Discover investing themes that create deep, long-term investing opportunities.")
end

When('I click on macro') do
  find('.menu', :text => 'CATEGORIES').hover
  first("a[href='/categories/macro']").click
end

Then('I should be redirected to the macro page') do
  expect(page).to have_content("Macro")
end

Then('the macro description is shown') do
  expect(page).to have_content("Understand the fast-changing domestic and global economic forces under the tectonic plates driving our markets.")
end

When('I click on politics') do
  find('.menu', :text => 'CATEGORIES').hover
  first("a[href='/categories/politics']").click
end

Then('I should be redirected to the politics page') do
  expect(page).to have_content("Politics")
end

Then('the politics description is shown') do
  expect(page).to have_content("The name that we use to describe the collection of all the things that exist in space.")
end

When('I click on property') do
  find('.menu', :text => 'CATEGORIES').hover
  first("a[href='/categories/property']").click
end

Then('I should be redirected to the property page') do
  expect(page).to have_content("property")
end

Then('the property description is shown') do
  expect(page).to have_content("Hear from industry experts on what is really driving property markets today, and what you could expect ahead.")
end

When('I click on shares') do
  find('.menu', :text => 'CATEGORIES').hover
  first("a[href='/categories/shares']").click
end

Then('I should be redirected to the shares page') do
  expect(page).to have_content("Shares")
end

Then('the shares description is shown') do
  expect(page).to have_content("All about shares")
end
