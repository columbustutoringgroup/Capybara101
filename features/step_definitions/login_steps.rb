Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with proper credentials$/) do
  within('form') do
    fill_in 'username', :with => 'jonah'
    fill_in 'password', :with => 'jonah'
  end
  click_button "Login"
end

Then(/^I should see the secret page$/) do
  expect(current_path).to eq '/dashboard'
end
