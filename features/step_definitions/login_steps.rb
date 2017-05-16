Given(/^the login page$/) do
  visit 'http://localhost:4567'
end

When(/^I log in with proper credentials$/) do
  login
end

Then(/^I should see the secret page$/) do
  page.should have_content('This is the secret page.')
end
