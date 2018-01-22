Given(/^the login page$/) do
  visit 'https://localhost:4567'
end

When(/^I log in with username and password "(.*?)"$/) do |arg1|
  fill_in 'username', with: arg1
  fill_in 'password', with: arg1
  click_button('Login')
end

Then(/^I should see the secret page as "(.*?)"$/) do |arg1|
  page.should have_content("This is the secret page.")
  page.should have_content("Your username is #{arg1}.")
end
