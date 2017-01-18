Given(/^the user is logged in$/) do
  visit '/'
  fill_in 'username', :with => 'foobar'
  fill_in 'password', :with => 'foobar'
  click_button 'Login'
end

When(/^the user clicks the logout button$/) do
  click_link 'Logout'
end

Then(/^the user should be directed to the login page$/) do
  expect(current_path).to eq '/logout'
  expect(logged_in?).to be false
end
