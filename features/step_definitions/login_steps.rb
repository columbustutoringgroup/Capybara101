Given(/^the login page$/) do
    visit '/'
    expect(page.body).to include("Capybara Secret Site")
end

When(/^I log in with proper credentials$/) do
  within("#session") do
    fill_in 'username', with: 'example'
    fill_in 'password', with: 'example'
  end
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  expect(page.body).to include("This is the secret page.")
end