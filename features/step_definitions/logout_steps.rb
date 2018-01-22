Given(/^that "(.*?)" is logged in$/) do |arg1|
  visit 'https://localhost:4567'
  fill_in 'username', with: arg1
  fill_in 'password', with: arg1
  click_button('Login')
  page.should have_content("This is the secret page.")
  page.should have_content("Your username is #{arg1}.")
end

When(/^they click the 'Logout' link$/) do
  click_link('Logout')
end

Then(/^they should be logged out$/) do
  expect(current_path).to eq '/logout'
  page.should have_content('You have been logged out')
end
