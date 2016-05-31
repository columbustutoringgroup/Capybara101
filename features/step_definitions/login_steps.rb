Given(/^the login page$/) do
  visit('/')
end

When(/^I log in with proper credentials$/) do
  expect(page).to have_content('This is login page for users.')
  fill_in('username', :with => 'John')
  fill_in('password', :with => 'John')
  click_button('Login')
end

Then(/^I should see the secret page$/) do
  expect(page).to have_content('This is the secret page.')
end
