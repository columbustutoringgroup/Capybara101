#Add your codez here
Given(/^I am logged in$/) do
  step 'the login page'
  step 'I log in with proper credentials'
end

When(/^I click logout$/) do
  click_link 'Logout'
end

Then(/^I should be logged out$/) do
  expect(page).to have_content 'You have been logged out'
end
