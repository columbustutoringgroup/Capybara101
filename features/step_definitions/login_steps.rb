Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with proper credentials$/) do
  fill_in 'username', :with => 'myusername@mydomain.com'
  fill_in 'password', :with => 'myusername@mydomain.com'
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  expect(current_path).to eq('/dashboard')
end
