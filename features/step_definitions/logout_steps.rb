Given(/^the secret page$/) do
  step 'the login page'
  step 'I log in with proper credentials'
  step 'I should see the secret page'
end

When(/^I log out$/) do
  click_link('Logout')
end

Then(/^I should see the login page with the logout message$/) do
  expect(page).to have_content("You have been logged out")
end
