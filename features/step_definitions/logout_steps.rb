#Add your codez here

Given(/^the dashboard$/) do # make sure we're logged in
  visit('/')

  fill_in 'username', :with => 'test'
  fill_in 'password', :with => 'test'
  click_button 'Login'
end

When(/^I log out$/) do
  click_link 'Logout'
end

Then(/^I should see the home page$/) do
  expect(page).to have_content('This is login page for users.')
end
