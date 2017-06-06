Given(/^the login page$/) do
  visit('/')
end

When(/^I log in with the username '([\w\d_\-&$%]*)' and the password '([\w\d_\-&$%]*)'/) do |username, password|
  fill_in('username', with: username)
  fill_in('password', with: password)
  click_button('Login')
end

When(/^I visit '([\/\w\-+%&=]+)'/) do |location|
  visit(location)
end

When(/^I go home/) do
  click_link('Home')
end

Then(/^I should be in '([\/\w\-+%&=]+)'/) do |location|
  expect(page.current_path).to eq location
end

Then(/^I should see '(.+)'/) do |content|
  expect(page).to have_content content
end

Then(/^I should see my username: '([\w\d_\-&$%]+)'/) do |username|
  expect(page).to have_content "username is #{username}"
end

