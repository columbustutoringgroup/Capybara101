Given(/^the login page$/) do
  visit('/')
end

When(/^I log in with proper credentials$/) do
  fill_in 'username', with: 'user'
  fill_in 'password', with: 'user'
  click_button 'Login'
end

When(/^I log in without proper credentials$/) do
  fill_in 'username', with: 'user'
  fill_in 'password', with: 'pass'
  click_button 'Login'
end

When(/^I log in with no credentials$/) do
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  expect(page.current_path).to eq '/dashboard'
end

Then(/^I should see the login page$/) do
  expect(page.current_path).to eq '/login'
end

Then(/^I should get a notice that my credentials are invalid$/) do
  expect(page).to have_selector('small', text: 'Your username & password did not match')
end
