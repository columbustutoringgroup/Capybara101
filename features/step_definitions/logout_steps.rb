Given(/^A logged-in user$/) do
  step("the login page")
  step("I log in with proper credentials")
end

When(/^I select the logout option$/) do
  click_link 'Logout'
end

Then(/^I should see the login page$/) do
  expect(page).to have_content 'You have been logged out'
  expect(page).to have_content 'This is login page for users.'
end