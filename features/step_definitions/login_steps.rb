Given(/^the login page$/) do
  visit('http://localhost:4567')
end

When(/^I log in with username and password as "(.*?)"$/) do |credential|
  fill_in 'username', :with => credential
  fill_in 'password', :with => credential
  click_button 'Login'
end

Then(/^I should see the secret page with my my username "(.*?)"$/) do |username|
  expect(page).to have_content username
end
