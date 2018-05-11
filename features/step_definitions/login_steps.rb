Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with proper credentials$/) do
  fill_in 'username', with: 'credentials'
  fill_in 'password', with: 'credentials'
  click_button 'Login'
end

When(/^I log in with improper credentials$/) do
  fill_in 'username', with: 'improper'
  fill_in 'password', with: 'credentials'
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  expect(page).to have_content 'This is the secret page.'
end

Then(/^I should be on the login page$/) do
  expect(page).to have_content 'This is login page for users.'
end

Then(/^I should be informed of my improper credentials$/) do
  expect(page).to have_content 'Your username & password did not match'
end
