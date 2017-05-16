Given(/^the login page$/) do
  visit '/'
end

UserPass = 'Wes'

When(/^I log in with proper credentials$/) do
  fill_in('username', with: UserPass)
  fill_in('password', with: UserPass)

  click_button('Login')
end

Then(/^I should see the secret page$/) do
  expect(page).to have_content('This is the secret page.')
  expect(page).to have_content("Your username is #{UserPass}.")
end

WrongPass = 'Wess'

When(/^I log in with improper credentials$/) do
  fill_in('username', with: UserPass)
  fill_in('password', with: WrongPass)

  click_button('Login')
end

Then(/^I should see the error message$/) do
  expect(page).to have_content('Your username & password did not match')
end

When(/^I visit secret page with no credentials$/) do
  visit '/dashboard'
end

Then(/^I should see the login page with error$/) do
  expect(page).to have_content('Access Denied: Please login to view page')
end
