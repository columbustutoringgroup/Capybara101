Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with proper credentials$/) do
  fill_in 'username', with: 'a_username'
  fill_in 'password', with: 'a_username'
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  expect(page.current_path).to eq '/dashboard'
  expect(page).to have_content 'a_username'
end
