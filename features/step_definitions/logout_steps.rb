Given(/^that I've logged into the secret page$/) do
  visit '/'
  within("#session") do
    fill_in 'Username', :with => 'cchoi'
    fill_in 'Password', :with => 'cchoi'
  end
  click_button 'Login'
end

When(/^I click Logout$/) do
  click_link 'Logout'
end

Then(/^I should see the login page$/) do
  expect(current_path).to eq '/logout'
end

And(/^I should see the message "(.*?)"$/) do |text|
  page.should have_content text
end
