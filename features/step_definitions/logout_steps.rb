Given(/^the dashboard page$/) do
  visit '/'
  within('form') do
    fill_in 'username', :with => 'jonah'
    fill_in 'password', :with => 'jonah'
  end
  click_button "Login"
  expect(current_path).to eq '/dashboard'
end

When(/^I click the logout button$/) do
  click_on('Logout')
end

Then(/^I should see the login page$/) do
  expect(current_path).to eq '/logout'
end
