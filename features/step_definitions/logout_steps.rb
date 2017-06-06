Given(/I am authenticated/) do
  visit('/')
  step("I log in with the username 'Test' and the password 'Test'")
end

When(/I see the secret page/) do
  visit('/dashboard')
end

When(/I press logout/) do
  click_link('Logout')
end

Then(/I should see the logout page/) do
  expect(page.current_path).to eq '/logout'
end