Given(/^I am logged in$/) do
  visit '/'
  step "I log in with proper credentials"
end

When(/^I visit the dashboard$/) do
  visit '/dashboard'
end

When(/^I select logout$/) do
  click_link 'Logout'
end

Then(/^I should see the homepage with a logout message$/) do
  expect(page).to have_content 'You have been logged out'
end
