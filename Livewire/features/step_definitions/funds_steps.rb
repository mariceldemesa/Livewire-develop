When('I click on funds tab') do
  find_link("Funds").click
  sleep(2)
end

  Then('I should be redirected to the Funds listing page') do
    expect(page).to have_content("Discover Funds")
    sleep(2)
  end

  Then('a tooltip on asset class is shown') do
  expect(find('div.styles__Title-sc-1i78qyp-2.gwWIAO').text).to eql("Filter by Asset Class")
end

Then('with the tooltip message is displayed correctly') do
  expect(find('div.styles__Description-sc-1i78qyp-3.hMJkT').text).to eql("Filter funds by selecting one or more asset classes, then clicking Apply.")
end

  When('I search for {string} from the search field') do |string|
    find('[type="text"]').click
    find('[type="text"]').set(string)
  end

  Then('I should see the {string} funds') do |string|
    expect(page).to have_content("Munro")
  end

  When('I click the clear button') do
    find(:css, "div.MuiInputAdornment-root.clear-icon.MuiInputAdornment-positionEnd").click
    sleep(5)
  end

  Then('The fund listing shows all funds again') do
    expect(page).to have_content("LOAD MORE RESULTS")
  end

  When('I click the asset class filter') do
    find(:css, "div.styles__DropdownContainer-vmdpc9-0.common__SDropdownContainer-sc-1l3qgen-0.eotJzs.eSGxuV").click
  end

  When('select alternative assets checkbox') do
    first(:css, "span.option__Label-sc-1h73wrr-1.kyPTsj").click
  end

  When('click apply') do
    find(:css, "button.common__Button-sc-2puui0-1.desktop__SButton-mjuf0s-3.bVFwjK.gchlNe").click
  end

  Then('all funds with alternative assets asset class are shown') do
    expect(page).to have_content("Alternative Assets")
  end

  When('I filter fixed income - australian') do
    find(:css, "div.styles__DropdownContainer-vmdpc9-0.common__SDropdownContainer-sc-1l3qgen-0.eotJzs.eSGxuV").click
    first(:css, "span.option__Label-sc-1h73wrr-1.kyPTsj").click
    find(:xpath, "(//span[text()='Fixed Income - Australian'])").click
    find(:css, "button.common__Button-sc-2puui0-1.desktop__SButton-mjuf0s-3.bVFwjK.gchlNe").click
    sleep 3
end

Then('all funds with fixed income - australian asset class are shown') do
  expect(page).to have_content("Australian Fixed Income")
end

When('I filter fixed income - global') do
  find(:css, "div.styles__DropdownContainer-vmdpc9-0.common__SDropdownContainer-sc-1l3qgen-0.eotJzs.eSGxuV").click
  find(:xpath, "(//span[text()='Fixed Income - Australian'])").click
  find(:xpath, "(//span[text()='Fixed Income - Global'])").click
  find(:css, "button.common__Button-sc-2puui0-1.desktop__SButton-mjuf0s-3.bVFwjK.gchlNe").click
end

Then('all funds with fixed income - global asset class are shown') do
  expect(page).to have_content("Global Fixed Income")
end

When('I filter multi-asset') do
  find(:css, "div.styles__DropdownContainer-vmdpc9-0.common__SDropdownContainer-sc-1l3qgen-0.eotJzs.eSGxuV").click
  find(:xpath, "(//span[text()='Fixed Income - Global'])").click
  find(:xpath, "(//span[text()='Multi Asset'])").click
  find(:css, "button.common__Button-sc-2puui0-1.desktop__SButton-mjuf0s-3.bVFwjK.gchlNe").click
end

Then('all funds with multi-asset asset class are shown') do
  expect(page).to have_content("Multi-Asset")
end

When('I filter proper - australian') do
  find(:css, "div.styles__DropdownContainer-vmdpc9-0.common__SDropdownContainer-sc-1l3qgen-0.eotJzs.eSGxuV").click
  find(:xpath, "(//span[text()='Multi Asset'])").click
  find(:xpath, "(//span[text()='Property - Australian'])").click
  find(:css, "button.common__Button-sc-2puui0-1.desktop__SButton-mjuf0s-3.bVFwjK.gchlNe").click
end

Then('all funds with proper - australian asset class are shown') do
  expect(page).to have_content("Australian Property")
end

When('I filter fixed proper - global') do
  find(:css, "div.styles__DropdownContainer-vmdpc9-0.common__SDropdownContainer-sc-1l3qgen-0.eotJzs.eSGxuV").click
  find(:xpath, "(//span[text()='Property - Australian'])").click
  find(:xpath, "(//span[text()='Property - Global'])").click
  find(:css, "button.common__Button-sc-2puui0-1.desktop__SButton-mjuf0s-3.bVFwjK.gchlNe").click
end

Then('all funds with proper - global asset class are shown') do
  expect(page).to have_content("Global Property")
end

When('I filter fixed shares - australian') do
  find(:css, "div.styles__DropdownContainer-vmdpc9-0.common__SDropdownContainer-sc-1l3qgen-0.eotJzs.eSGxuV").click
  find(:xpath, "(//span[text()='Property - Global'])").click
  find(:xpath, "(//span[text()='Shares - Australian'])").click
  find(:css, "button.common__Button-sc-2puui0-1.desktop__SButton-mjuf0s-3.bVFwjK.gchlNe").click
end

Then('all funds with shares - australian asset class are shown') do
  expect(page).to have_content("Australian Shares")
end

When('I filter fixed shares - global') do
  find(:css, "div.styles__DropdownContainer-vmdpc9-0.common__SDropdownContainer-sc-1l3qgen-0.eotJzs.eSGxuV").click
  find(:xpath, "(//span[text()='Shares - Australian'])").click
  find(:xpath, "(//span[text()='Shares - Global'])").click
  find(:css, "button.common__Button-sc-2puui0-1.desktop__SButton-mjuf0s-3.bVFwjK.gchlNe").click
end

Then('all funds with shares - global asset class are shown') do
  expect(page).to have_content("Global Shares")
end

When('I filter managed fund') do
  find('a[href="/funds"]').click
  first('.icon-lw-chevron-down').click
  find('div.MuiChip-root.jss21.jss22').click
  find_button('Apply').click
end

Then('all managed funds are displayed in the result') do
  expect(page).to have_content("MANAGED FUND")
  expect(page).to have_no_content("ETF")
  expect(page).to have_no_content("LIC")
  expect(page).to have_no_content("LIT")
  end

When('I filter ETF') do
  first('.icon-lw-chevron-down').click
  find('div.MuiContainer-root.jss44.jss50.MuiContainer-maxWidthLg').click
  find_button('Apply').click
end

Then('all ETFs are displayed in the result') do
  expect(page).to have_no_content("MANAGED FUND")
  expect(page).to have_content("ETF")
  expect(page).to have_no_content("LIC")
  expect(page).to have_no_content("LIT")
end

When('I filter LIC') do
  first('.icon-lw-chevron-down').click
  find('div.MuiContainer-root.jss69.jss78.MuiContainer-maxWidthLg').click
  find_button('Apply').click
end

Then('all LIC funds are displayed in the result') do
  expect(page).to have_no_content("MANAGED FUND")
  expect(page).to have_no_content("ETF")
  expect(page).to have_no_content("LIC")
  expect(page).to have_no_content("LIT")
end

When('there is no result found and I click the reset search button') do
  find('button.no-results__Button-sc-4481ar-4.douzlS').click
  sleep 2
  find('button.view-more').click
  page.execute_script "window.scrollBy(0,500)"
  sleep 2
  page.execute_script "window.scrollBy(0,500)"
  sleep 2
  page.execute_script "window.scrollBy(0,500)"
  sleep 2
end

Then('all the funds are displayed') do
  expect(page).to have_content("MANAGED FUND")
  expect(page).to have_content("ETF")
  expect(page).to have_content("LIT")
end

When('I filter LIT') do
  first('.icon-lw-chevron-down').click
  find('div.MuiContainer-root.jss94.jss106.MuiContainer-maxWidthLg').click
  find_button('Apply').click
  sleep 2
end

Then('all LIT funds are displayed in the result') do
  expect(page).to have_no_content("MANAGED FUND")
  expect(page).to have_content("LIT")
end
