Given(/^the login page$/) do
  visit('/')
end

When(/^I log in with proper credentials$/) do
  fill_in('username', with: 'User')
  fill_in('password', with: 'User')
  click_button('Login')
end

Then(/^I should see the secret page$/) do
  expect(current_path).to eq '/dashboard'
  expect(page).to have_content('Your username is User')
end

When(/^I log in with improper credentials$/) do
  fill_in('username', with: 'User')
  fill_in('password', with: 'Wrong Password')
  click_button('Login')
end

Then(/^I should see the login page with error message$/) do
  expect(current_path).to eq '/login'
  expect(page).to have_content('Your username & password did not match')
end
