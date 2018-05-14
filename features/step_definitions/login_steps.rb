before :each do
    User.make(username: 'password', password: 'password')
  end

Given(/^the login page$/) do
  visit '/index'
end

When(/^I log in with proper credentials$/) do
  within("#session") do
    expect(user.username).to eq(user.password)
  end
end

Then(/^I should see the secret page$/) do
  visit '/dashboard'
end
