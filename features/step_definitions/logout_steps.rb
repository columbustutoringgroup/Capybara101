Given(/^a logged in page$/) do
  step "the login page"
  step "I log in with proper credentials"
  step "I should see the secret page"
end

When(/^I logout$/) do
  click_link_or_button 'Logout'
end

Then(/^I should see logged out message$/) do
  expect(page).to have_content 'You have been logged out'
end
