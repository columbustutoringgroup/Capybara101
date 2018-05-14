Given(/^the login page$/) do
  visit ('/')
end

When(/^I log in with proper credentials$/) do
  fill_in 'username', with: "JohnDoe"
  fill_in 'password', with: "JohnDoe"
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  expect(page).to have_content("This is the secret page.")
  expect(page).to have_content("Your username is JohnDoe")
end
