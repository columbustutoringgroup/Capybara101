Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with proper credentials$/) do
  within("#session") do
    fill_in 'Username', :with => 'cchoi'
    fill_in 'Password', :with => 'cchoi'
  end
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  expect(current_path).to eq '/dashboard'
end

And(/^I should see the content "(.*?)"$/) do |text|
  within("#session") do
    page.should have_content text
  end
end
