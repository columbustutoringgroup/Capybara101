Given(/^the dashboard page$/) do
  visit ('/')
  step 'I log in with proper credentials'
  expect(page).to have_content("This is the secret page")
end

When(/^I click on the log out button$/) do
  click_link 'Logout'
end

Then(/^I should see the log in page$/) do
  expect(page).to have_link("Login")
end
