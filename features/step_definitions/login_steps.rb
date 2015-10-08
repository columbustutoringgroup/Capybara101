Given(/^the login page$/) do
  visit('/')
end

When(/^I log in with proper credentials$/) do
  fill_in('username', with: "Admin")
  fill_in('password', with: "Admin")
  click_button('Login')
end

Then(/^I should see the secret page$/) do
  url = URI.parse(current_url)
  expect(url.path).to eq('/dashboard')
  expect(page.has_content?("Your username is Admin")).to be true
end


When(/^I log in with invalid credentials$/) do
  fill_in('username', with: "Admin")
  fill_in('password', with: "Wrong Password")
  click_button('Login')
end

Then(/^I should see the login page with an error message$/) do
  url = URI.parse(current_url)
  expect(url.path).to eq('/login')
  expect(page.has_content?("Your username & password did not match")).to be true
end