Given(/^the login page$/) do
  visit 'http://localhost:4567/'
end

When(/^I login with username and password (.*?)$/) do |credentials|
  fill_in 'username', :with => credentials
  fill_in 'password', :with => credentials
  click_button 'Login'
end

Then(/^I should see the secret page with username (.*?) shown$/) do |credentials|
  page.should have_content(credentials)
end
