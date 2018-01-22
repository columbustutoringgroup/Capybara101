Given(/^the secret page reached via credentials of (.*?)$/) do |credentials|
  step 'the login page'
  step 'I login with username and password #{credentials}'
  step 'I should see the secret page with username #{credentials} shown'
end

When(/^I click Logout$/) do
  click_link 'Logout'
end

Then(/^I should see the login page with the message "(.*?)" shown$/) do |message|
  page.should have_content(message)
end
