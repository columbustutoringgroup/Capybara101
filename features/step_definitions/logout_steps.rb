Given(/^I am a logged in user$/) do
  steps %Q{
  Given the login page
  When I log in with proper credentials
  }
end

Given(/^the logout page$/) do
  visit '/logout'
end

When(/^I visit my secret page$/) do
  visit '/dashboard'
end

Then(/^I should not see my information$/) do
  expect(page).not_to have_content('myusername@mydomain.com')
end
