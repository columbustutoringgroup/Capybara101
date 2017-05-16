Given(/^the login page$/) do
  #put your code here
  visit '/'
  expect(page).to have_content 'Capybara Secret Site'
end

When(/^I log in with proper credentials$/) do
  #put your code here
  fill_in 'username', :with => 'joe'
  fill_in 'password', :with => 'joe'
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  #put your code here
  expect(page).to have_content 'This is the secret page'
end
