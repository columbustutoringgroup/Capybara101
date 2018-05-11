Given(/^that a user has logged in with the correct credentials$/) do
  visit('/')
  fill_in('username', with: 'user')
  fill_in('password', with: 'user')
  click_button('Login')
end

When(/^a user logs out$/) do
  click_link('Logout')
end

Then(/^a logout message is displayed$/) do
  expect(page).to have_content 'You have been logged out'
end

Then(/^the user is now on login page$/) do
  expect(page).to have_content 'This is login page for users.'
end
