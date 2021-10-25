Feature: As a user I should be able access all the pages and links in Livewire website

  Scenario: Sign in and then navigate all pages and links
    Given I am on a homepage
    When I click Sign In
    Then I should be redirected to the sign in page
    When I fill in "email" with "qa_editor@livewiremarkets.com"
    And I fill in "password" with "test1234"
    And I click the Sign in button
    Then I should see latest wires page displaying all published wires

# #WRITE A WIRE
#     When I open the write a wire page
#     Then I should be able to see the micro profile
#     And the select contributor section
#     When I try to change the contributor
#     Then the contributor is changed successfully
#     When I assign a category, enter a keyword, category, and other details
#     Then the category, enter a keyword, category, and other details are shown
#
# #BOOKMARKS
#     When I go to an individual wire
#     Then a tooltip should show
#     When I click the got it button
#     Then the tooltip closes
#     And I click the bookmarks icon
#     Then it should show removed from saved wires hover text
#     When I click the bookmark button on the navbar
#     Then it should redirect to the saved wires page
#     And my saved wire should be shown
#     When I click the see all saved wires button at the bottom
#     And scroll up to the bottom of the page
#     Then I should see the text you have seen all the results
#     When I go back to the individual wire
#     Then the bookmark icon is still ticked
#
# # INDIVIDUAL WIRE
#     When I visit a wire
#     Then I should be redirected to the individual wire that I navigated
#     When I click the comment icon
#     Then I should be redirected to the comment section of the wire
#
# # CONTRIBUTORS
#     When I click on contributors tab
#     Then I should be redirected to the Contributors page
#     When I click on the view all link
#     Then I should be redirected to the who you are following page
#     When I click on contributors link
#     Then I should be redirected to the Contributor profile page
#     When I click on equities
#     Then I should be redirected to the experts in equities page
#     When I click on australian equities
#     Then I should be redirected to the experts in australian equities page
#     When I click on global equities
#     Then I should be redirected to the experts in global equities page
#
# # FUNDS page
#     When I click on funds tab
#     Then I should be redirected to the Funds listing page
#     And a tooltip on asset class is shown
#     And with the tooltip message is displayed correctly
#     When I click the got it button
#     Then the tooltip closes
#     When I search for "munro" from the search field
#     Then I should see the "munro" funds
#     When I click the clear button
#     Then The fund listing shows all funds again
#     When I click the asset class filter
#     And select alternative assets checkbox
#     And click apply
#     Then all funds with alternative assets asset class are shown
#     When I filter fixed income - australian
#     Then all funds with fixed income - australian asset class are shown
#     When I filter fixed income - global
#     Then all funds with fixed income - global asset class are shown
#     When I filter multi-asset
#     Then all funds with multi-asset asset class are shown
#     When I filter proper - australian
#     Then all funds with proper - australian asset class are shown
#     When I filter fixed proper - global
#     Then all funds with proper - global asset class are shown
#     When I filter fixed shares - australian
#     Then all funds with shares - australian asset class are shown
#     When I filter fixed shares - global
#     Then all funds with shares - global asset class are shown
#     When I filter managed fund
#     Then all managed funds are displayed in the result
#     When I filter ETF
#     Then all ETFs are displayed in the result
#     When I filter LIC
#     Then all LIC funds are displayed in the result
#     When there is no result found and I click the reset search button
#     Then all the funds are displayed
#     When I filter LIT
#     Then all LIT funds are displayed in the result

# # FUND PROFILE page
#     When I visit the fund listing page
#     And I click on a fund card
#     Then I should be redirected to the fund profile page
#     And I can see the follow and contact buttons on the upper right
#     When I click on the follow button
#     Then the button should turn into following with a check icon
#     When I click on the following button
#     Then the button should turn into follow
#     Then I can see the fund logo, title, details and vitals
#     And I can see the featured wires section
#     When I scroll down to the fund information section
#     Then the fund information section should display
#     When I scroll down to the fund performance section
#     Then the fund performance section should display
#     When I scroll down to the fees and pricing section
#     Then the fees and pricing should display
#     When I click the contact button
#     Then it should scroll down to the enquiries section
#
# # CONTRIBUTOR'S PROFILE page
#       When I visit a contributors profile page
#       Then I should be able to see the featured wires
#       And the latest wires
#       When I click the view more button
#       Then seven more wires should show
#       When I click the view all wires button
#       # Then it should redirect me to the search results for contributor page
#       And mentions section
#       When I click on view all on mentions section
#       Then more wires will be shown
#       And invest with sandbox technology section
#       And about section
#       And enquiries section
#       When I click the contact button in the enquiries section
#       Then the enquiry form should open
#
#
#
# #CATEGORIES
#       When I hover on categories from the navbar
#       Then I should be able to see the navbar expansion
#       And the asset allocation category
#       And the commodities category
#       And the daily report category
#       And the education category
#       And the equities category
#       And the fixed income category
#       And the funds category
#       And the investment theme category
#       And the macro category
#       And the politics category
#       And the property category
#       And the shares category
#       When I click on asset allocation
#       Then I should be redirected to the asset allocation page
#       And the asset allocation description is shown
#       When I click on commodities
#       Then I should be redirected to the commodities page
#       And the commodities description is shown
#       When I click on daily report
#       Then I should be redirected to the daily report page
#       And the daily report description is shown
#       When I click on education
#       Then I should be redirected to the education page
#       And the education description is shown
#       When I click on equities category
#       Then I should be redirected to the equities page
#       And the equities description is shown
#       When I click on fixed income
#       Then I should be redirected to the fixed income page
#       And the fixed income description is shown
#       When I click on funds
#       Then I should be redirected to the funds page
#       And the funds description is shown
#       When I click on investment theme
#       Then I should be redirected to the investment theme page
#       And the investment theme description is shown
#       When I click on macro
#       Then I should be redirected to the macro page
#       And the macro description is shown
#       When I click on politics
#       Then I should be redirected to the politics page
#       And the politics description is shown
#       When I click on property
#       Then I should be redirected to the property page
#       And the property description is shown
#       When I click on shares
#       Then I should be redirected to the shares page
#       And the shares description is shown
#
# #SERIES
      When I hover on series from the navbar
      Then I should be able to see the series navbar expansion
      And the buy hold sell series
      And the cio profiles series
      And the fund in focus series
      And the podcasts series
      And the top rated series funds series
      And the rules of investing series
      And the income series
      When I click on buy hold sell link
      Then I should be redirected to the buy hold sell page
      And the buy hold sell description is shown
      When I click on cio profiles link
      Then I should be redirected to the cio profiles page
      When I click on fund in focus link
      Then I should be redirected to the fund in focus page
      When I click on podcasts series link
      Then I should be redirected to the podcasts series page
      When I click on top rated series funds series link
      Then I should be redirected to the top rated series funds series page
      And I can see the top-rated fund series header
      And I can see the discover Australia’s top-rated funds section
      And I can see the register for the top rated funds section
      And the sitemap and footer and disclaimer
      When I click on rules of investing link
      Then I should be redirected to the rules of investing page
      And the rules of investing header is shown
      And the first six episodes are shown with details
      When I click on listen to latest episode button
      Then I should be redirected to the ROI series individual wire page
      When I click anywhere within the primary image
      Then I should be redirected to the ROI series individual wire page
      When I click the listen button
      Then I should be redirected to the ROI series individual wire page
      When I click the show more button
      Then the other ROI series wires should show
      When I click on income series link
      Then I should be redirected to the income series page
      And I can see the income series header
      And I can see the discover section
      And I can see the feature wires section
      And I can see the education section
      And I can see the latest feeds
      And I can see the register for updates section
      And the sitemap and footer

# #SEARCH
      When I click the search button
      And enter "livewire markets"
      And select in Why invest in emerging markets
      Then I should be redirected to the search results for wire
      When I click the see all results button and scroll down 6x
      Then I can see the you have seen all the results text
      When I select the organisation - livewire markets
      Then I should be redirected to the search results for organisation
      When I select the contributor - albert kelley
      Then I should be redirected to the search results for contributor
      When I select the company - asx limited
      Then I should be redirected to the search results for listed company
      When I click the follow button
      Then it will show following
      When I click the following button
      Then it will show follow
      When I click the see all results button and scroll down up to the bottom
      Then I can see the you have seen all the results text
      When I search for keyword
      And I select the keyword from the dropdown
      Then it should redirect me to the search results for keyword

#LIKES
      When I go the latest page
      And click the like button of a wire
      Then the like button should turn into grey
      When I click on the like icon on the navbar
      Then I should be redirected to the likes page
      And the wire that I liked is shown
      When I unlike the wire
      Then the grey button turns white
      And when I click the like icon again
      Then the wire I unliked is no longer shown
      And trending on livewire is on the right pane

#NOTIFICATIONS
      When I click on notifications icon on the navbar
      Then I should be able to see the notifications modal
      When I click the see all link
      Then I should be redirected to the notifications page

#MY PROFILE
      When I click on my name on the navbar
      Then I should be redirected to my profile page
      And I can see the manage my wires button
      And edit my profile button
      And followers count
      And wires count
      And views count
      And contributor since date
      And featured wires section
      And the latest wires section
      And mentions section
      And about editor section
      When I click on manage my wires
      Then I should be redirected to the my wires page
      When I click on my profiles button
      Then I should be redirected to the personal details page
      When I click the view more link on the latest wires section
      Then more wires will show and I should be able to see the view all wires button
      When I click the view all wires button
      Then I should be redirected to the search results for contributor
      And the latest tab is selected
      When I go back to my profile page and click the view all on mentions section
      Then one to three more wires should display

#MY WIRES
      When I navigate to my wires page
      Then I should be redirected to my wires page
      And I can see the published tab
      And drafts tab
      And comments tab
      When I click on a menu button on the right side of the wire
      Then I should see the add to editors picks
      When I click on it
      Then the editors pick modal should open
      When I click on save
      Then the wire should show on the editors pick section on the latest page
      When I click on edit wire
      Then the edit page of the wire should open
      When I go back to my wires and go to drafts page
      Then my draft wires are shown
      When I comment on a wire then I go back to my wires > comments
      Then my comment should be shown
      When I remove the wire from the editors picks
      Then the wire should not be shown in editors picks

#COMPANY
      When I navigate the about livewire from the menu
      Then I should be redirected to the company homepage
      And can see the page title "Make confident investment decisions through leading market insights and analysis"
      And purpose section "Livewire is changing the way investors discover investments"
      And with purpose description "We are levelling the playing field by giving all investors access to high-value investment insights, commentary and analysis from Australia’s leading money managers."
      And the purpose image is displayed
      And contributors section title "Who contributes to Livewire"
      And with contibutors section description "We showcase investment ideas, analysis and strategies from hundreds of Australia’s most credible fund managers and investment professionals – all on the one platform"
      And the features section is shown
      And from australian fund managers section is shown
      And our story section is shown
      And sitemap is shown
