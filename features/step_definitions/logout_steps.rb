Given(/^I'm logged in$/) do
  visit '/'
  fill_in 'username', :with => 'bob'
  fill_in 'password', :with => 'bob'
  click_button 'Login'
end

When(/^I visit the secret dashboard page$/) do
  visit '/dashboard'
  expect(page).to have_content 'This is the secret page'
end

And(/^I log out$/) do
  click_on('Logout')
end

Then(/^I should see the home page with a logged out message$/) do
  expect(page).to have_content 'You have been logged out'
end