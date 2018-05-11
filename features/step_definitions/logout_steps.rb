Given(/^I am a logged in user$/) do
  visit '/'
  fill_in 'username', with: 'credentials'
  fill_in 'password', with: 'credentials'
  click_button 'Login'
end

When(/^I click logout$/) do
  click_link 'Logout'
end

Then(/^I should see the login page$/) do
  expect(page).to have_content 'This is login page for users.'
end
