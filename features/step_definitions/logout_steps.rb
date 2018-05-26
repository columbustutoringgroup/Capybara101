Given(/^I log in with correct credentials$/) do
  visit '/'
  fill_in('username', with: 'testing')
  fill_in('password', with: 'testing')
  click_button('Login')
end

When(/^I click on the "(.*?)" button$/) do |arg1|
  click_link('Logout')
end

Then(/^I should see the logout page$/) do
  expect(page).to have_content("You have been logged out")
end
