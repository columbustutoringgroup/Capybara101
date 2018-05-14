Given(/^the dashboard page$/) do
  visit ('/')
  fill_in 'username', with: "JohnDoe"
  fill_in 'password', with: "JohnDoe"
  click_button 'Login'
  expect(page).to have_content("This is the secret page")
end

When(/^I click on the log out button$/) do
  click_link 'Logout'
end

Then(/^I should see the log in page$/) do
  expect(page).to have_link("Login")
end
