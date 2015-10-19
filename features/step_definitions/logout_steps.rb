Given(/^the dashboard page$/) do
  step "the login page"
  step "I log in with proper credentials"
end

When(/^I click the Logout link$/) do
  click_on("Logout")
end

Then(/^I should see the home page$/) do
  expect(current_path).to eq "/logout"
end

When(/^I visit the dashboard$/) do
  visit("/dashboard")
end

Then(/^I should not see my username$/) do
  expect(page).to have_no_content("Your username is User.")
end
