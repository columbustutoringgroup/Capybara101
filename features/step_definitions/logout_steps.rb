Given(/^the secret page$/) do
  visit 'http://localhost:4567'
  login
end

When(/^I click the logout button$/) do
  find('a[href="/logout"]').click
end

Then(/^I should be notified I have logged out.$/) do
  page.should have_content 'You have been logged out'
end
