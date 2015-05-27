Given(/^I am on the secret page$/) do
  visit('/dashboard')
end

When(/^I press the logout button$/) do
  click_on("Logout")
end

Then(/^I should be on the login page$/) do
  expect(page).to have_content("This is login page for users.")
end

Then(/^I should see the logout text$/) do
  expect(page).to have_content("You have been logged out")
end
