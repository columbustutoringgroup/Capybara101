Given(/^the user is loged in$/) do
  visit '/'
  fill_in 'username', with: 'credentials'
  fill_in 'password' with: 'credentials'
  click_button('Login')
  pending
end

When(/^I log in with proper credentials$/) do
  click_button('Logout')
  pending
end

Then(/^I should see the secret page$/) do
  expect(page.current_path).to eq('/logout')
  pending
end
