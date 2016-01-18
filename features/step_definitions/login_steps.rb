Given(/^the login page$/) do
  #put your code here
  visit '/'
end

When(/^I log in with proper credentials$/) do
  #put your code here
  fill_in 'username', with: 'rmaiya'
  fill_in 'password', with: 'rmaiya'
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  #put your code here
  expect(page).to have_content 'This is the secret page.'
end
