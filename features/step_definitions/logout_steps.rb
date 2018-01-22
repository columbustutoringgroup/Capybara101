Given(/^A logged-in user$/) do
  visit '/'
  fill_in 'username', with: 'admin'
  fill_in 'password', with: 'admin'
  click_button 'Login'
end

When(/^I select the logout option$/) do
  click_link 'Logout'
end

Then(/^I should see the login page$/) do
  expect(page).to have_content 'You have been logged out'
  expect(page).to have_content 'This is login page for users.'
end