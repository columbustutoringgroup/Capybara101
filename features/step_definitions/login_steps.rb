Given(/^the login page$/) do
  visit('/')
end

When(/^I log in with proper credentials$/) do
  fill_in('username', :with => "Admin")
  fill_in('password', :with => "Admin")
  click_button('Login')
end

Then(/^I should see the secret page$/) do
  url = URI.parse(current_url)
  expect(url.path).to eq('/dashboard')
end
