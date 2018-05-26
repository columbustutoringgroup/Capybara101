

Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with proper credentials$/) do
  fill_in('username', with: 'testing')
  fill_in('password', with: 'testing')
  click_button('Login')
end

Then(/^I should see the secret page$/) do
  expect(page).to have_content("This is the secret page.")
end


When(/^I log in with the improper credentials$/) do
  fill_in('username', with: 'testing2')
  fill_in('password', with: 'testing')
  click_button('Login')
end

Then(/^I should receive an error message$/) do
  expect(page).to have_content("Your username & password did not match")
end
