Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with proper credentials$/) do
  fill_in 'username', with: 'user'
  fill_in 'password', with: 'user'
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  expect(page).to have_content 'This is the secret page. Your username is user.'
end
