Given(/^the login page$/) do
  visit('/')
end

When(/^I enter proper credentials$/) do
  fill_in 'username', with: "leah"
  fill_in 'password', with: "leah"
end

When(/^I enter improper credentials$/) do
  fill_in 'username', with: "fred"
  fill_in 'password', with: "bob"
end

When(/^I log in$/) do
    click_button 'Login'
end

Then (/^I should see the secret page$/) do
  page.source.should have_selector('p', text: 'This is the secret page.')
end

Then (/^I should see another login page$/) do
  current_path.should== '/login'
end

Then (/^I should see an error message$/) do
  page.source.should have_selector('small', text: 'Your username & password did not match')
end
