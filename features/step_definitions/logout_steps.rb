Given(/^that I have logged in$/) do
  visit '/'
  within("#session") do
    fill_in 'username', :with => 'sam'
    fill_in 'password', :with => 'sam'
  end
  click_button 'Login'
  expect(current_path).to eq('/dashboard')
end

When(/^I click the logout link$/) do
  click_link 'Logout'
end

Then(/^I should be at the login page$/) do
  expect(current_path).to eq('/logout')
end

And(/^I should see the logout message$/) do
  expect(page).to have_content('You have been logged out')
end
