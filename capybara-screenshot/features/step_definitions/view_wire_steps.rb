When('I visit a wire') do
  visit "https://develop.livewiremarkets.com/wires/a-wire-with-image-primary-image-videos-cards-and-more"
end

Then('I should be redirected to the individual wire that I navigated') do
  expect(page).to have_content("A wire with image, primary image, videos, cards and more")
  expect(page).to have_css('div.medium-insert-images')
  expect(page).to have_css('.medium-insert-images')
  expect(page).to have_css('span.count', :minimum=>8)
  expect(page).to have_css('span.icon-lw.icon-lw-views', :minimum=>2)
  expect(page).to have_css('span.icon-lw.icon-lw-engagements', :minimum=>2)
  expect(page).to have_css('span.icon-lw.icon-lw-wire-like', :minimum=>2)
  expect(page).to have_css('span.icon-lw.icon-lw-comment', :minimum=>2)
  expect(page).to have_css('span.icon-lw.icon-lw-embed')
  expect(page).to have_css('span.icon-lw.icon-lw-email')
  expect(page).to have_css('span.icon-lw.icon-lw-twitter')
  expect(page).to have_css('span.icon-lw.icon-lw-linkedin')
  expect(page).to have_css('img.avatar__Img-t0g1gl-0.drsJfO')
  expect(page).to have_css('.micro-profile-author-name', :minimum=>2)
  expect(page).to have_css('.micro-profile-organization', :minimum=>2)
  expect(page).to have_css('[name="profile-follow-button-on-sidebar"]', :minimum=>1)
  expect(page).to have_css('.keyword-item', :maximum=>5)
  expect(page).to have_css('.stock-code-item', :maximum=>5)
  expect(page).to have_css('section.micro-profile__Contributor-kbt5g3-1.icTmQV')
  expect(page).to have_css('section.expertise__Container-kfkbuo-0.fJoGFr.micro-profile-areas-of-expertise')
  expect(page).to have_content('DISCLAIMER', :maximum=>1)
  expect(page).to have_css('div.desktop-variant__Body-sc-1skinxb-1.ehDUMt')
  expect(page).to have_css('form.comment-form__Form-sc-1wqik4s-0.lfkhEF.wire-remote.has-validation-callback')
  expect(page).to have_css('article.comment__Article-q7sgd3-0.hpTpzr.comment')
  expect(page).to have_css('div.contributor-like')
  expect(page).to have_css('form.comment-form__Form-sc-1wqik4s-0.lfkhEF.wire-remote.has-validation-callback')
  expect(page).to have_css('p.disclaimer__Paragraph-zeowmb-1.fslUYa')
end

When('I click the comment icon') do
first('span.icon-lw.icon-lw-comment').click
end

Then('I should be redirected to the comment section of the wire') do
  expect(page).to have_content("COMMENTS")
  expect(page).to have_css('form.comment-form__Form-sc-1wqik4s-0.lfkhEF.wire-remote.has-validation-callback')
  sleep(5)
  visit "https://develop.livewiremarkets.com/feeds/latest"
end
