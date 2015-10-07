Given(/^the private page with authenticated user$/) do
  step "the login page"
  step "I log in with proper credentials"
end

When(/^I log out$/) do
  click_link('Logout')
end

Then(/^I should see the logout page$/) do
  url = URI.parse(current_url)
  expect(url.path).to eq('/logout')
  expect(page.has_content?("You have been logged out")).to be true
end

When(/^I go to the private page$/) do
  visit('/dashboard')
end

Then(/^I should not see my private information$/) do
  expect(page.has_content?("Your username is Admin")).to be false
end