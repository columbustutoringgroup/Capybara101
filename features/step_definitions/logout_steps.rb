Given(/^I am logged in$/) do
  login('test', 'test')
end

When(/^I log out$/) do
  logout
end

Then(/^I should see the "(.*?)" page$/) do |path|
  expect(page.current_path).to eq "/#{ path }"
end

Then(/^I should see the message "(.*?)"$/) do |message|
  expect(page).to have_content message
end

def logout
  click_link 'Logout'
end
