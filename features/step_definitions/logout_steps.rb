Given /^I am logged in$/ do
  visit '/'
  fill_in 'username', :with => 'Me'
  fill_in 'password', :with => 'Me'
  click_button 'Login'
end

Given /^I am on my dashboard$/ do
  visit '/dashboard'
end

When /^I click log out$/ do
  visit '/logout'
end

Then /^I should see the index page$/ do
  expect(page).to have_content 'This is login page for users.'
end

Then /^I should not have access to the secret page$/ do
  visit '/dashboard'

  expect(page).to have_content 'This is login page for users.'
  expect(current_path).to eq '/'
end

