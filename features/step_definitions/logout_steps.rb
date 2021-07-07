Given(/^the dashboard$/) do
  visit('/')
  step 'I log in with proper credentials'
end

When(/^I log out$/) do
  click_link 'Logout'
end

Then(/^I should see the logout page$/) do
  expect(page.current_path).to eq '/logout'
end
