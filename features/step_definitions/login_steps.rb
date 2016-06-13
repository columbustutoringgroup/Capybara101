Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with (proper|incorrect) credentials$/) do |_situation|
  fill_in 'username', with: 'test'

  fill_in 'password', with: _situation == 'proper' ? 'test' : 'bad'
  click_button 'Login'
end
