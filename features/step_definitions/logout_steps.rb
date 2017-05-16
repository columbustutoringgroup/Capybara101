Given(/^I have logged in$/) do
  visit '/'
  @username = 'gwadej'
  fill_in 'username', with: @username
  fill_in 'password', with: @username
  click_button 'Login'
end

When(/^I click logout$/) do
  click_link('Logout')
end

Then(/^I should see the login page$/) do
  expect(page).to have_content 'You have been logged out'
end
