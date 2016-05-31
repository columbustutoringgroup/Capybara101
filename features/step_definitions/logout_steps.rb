When(/^I log out$/) do
  click_link('Logout')
end

Then(/^I should successfully log out$/) do
  expect(page).to have_content('You have been logged out')
end
