Given(/^the secret page$/) do
  step 'the login page'
  step 'I log in with proper credentials'
  step 'I should see the secret page'
end

When(/^I click logout$/) do
  click_link 'Logout'
end

Then(/^I see I'm on the home page, in logged out mode$/) do
  expect(page).to have_content('You have been logged out')
  expect(page).to have_content('This is login page for users.')
end
