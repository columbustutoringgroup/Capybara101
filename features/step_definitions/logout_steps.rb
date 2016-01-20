Given(/^I am logged in$/) do
  visit '/'
  fill_in 'username', with: 'proper_cred'
  fill_in 'password', with: 'proper_cred'
  click_button 'Login'
end

When(/^I visit the secret page$/) do
  visit '/dashboard'
end

When(/^I log out$/) do
  click_link('Logout')
end

Then(/^I should see the home page with a logged out notification$/) do
  expect(page.current_path).to eq '/logout'
  page.should have_content('This is login page for users.')
  page.should have_content('You have been logged out')
end