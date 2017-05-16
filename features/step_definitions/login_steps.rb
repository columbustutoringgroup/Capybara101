user = "jholm"

Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with proper credentials$/) do
  fill_in('username', with: user)
  fill_in('password', with: user)
  click_button('Login')
end

Then(/^I should see the secret page$/) do
  expect(page).to have_content("Your username is #{user}.")
  expect(page).to have_content("Your info")
end

When(/^I log in without proper credentials$/) do
  fill_in('username', with: user)
  fill_in('password', with: "password")
  click_button('Login')
end

Then(/^I should see the error message$/) do
  expect(page).to have_content("Your username & password did not match")
end

When(/^I log in with no credentials$/) do
  visit '/dashboard'
end

Then(/^I should see the error message for no credentials$/) do
  expect(page).to have_content("Please sign in to view this page")
end
