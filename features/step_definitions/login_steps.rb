Given(/^the login page$/) do
  visit '/'
  expect(page).to have_content 'This is login page for users'
end

When(/^I log in with username of "(.*?)" and password of "(.*?)"$/) do |username, password|
  @username = username
  login(username, password)
end

Then(/^I should see the secret page$/) do
  expect(page.current_path).to eq '/dashboard'
  expect(page).to have_content 'This is the secret page.'
  expect(page).to have_content "Your username is #{ @username }."
end

def login(username, password)
  visit '/'
  fill_in 'username', :with => username
  fill_in 'password', :with => password
  click_button 'Login'
end
