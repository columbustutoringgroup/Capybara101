Given(/^the login page$/) do
  visit '/'
  pending
end

When(/^I log in with proper credentials$/) do
  fill_in 'username', with: 'credentials'
  fill_in 'password' with: 'credentials'
  click_button('Login')
  pending
end

Then(/^I should see the secret page$/) do
  expect(page.current_path).to eq('/dashboard')
  pending
end
