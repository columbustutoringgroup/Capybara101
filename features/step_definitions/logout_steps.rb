Given(/^the dashboard page$/) do
  visit("/")
  fill_in("username", :with => "User")
  fill_in("password", :with => "User")
  click_button("Login")
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
