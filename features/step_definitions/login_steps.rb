Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with (proper|incorrect) credentials$/) do |_situation|
  fill_in 'username', with: 'test'

  fill_in 'password', with: _situation == 'proper' ? 'test' : 'bad'
  click_button 'Login'
end

Then(/^I should see the (secret|error) page$/) do |_situation|
  expect(page).to have_content if _situation == 'secret' ? 'This is the secret page' : 'Your username & password did not match'
end
