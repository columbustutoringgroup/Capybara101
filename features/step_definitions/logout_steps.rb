Given(/^the logged in dashboard page$/) do
  visit('/')
  within("#session") do
    fill_in 'username', with: "leah"
    fill_in 'password', with: "leah"
  end
  click_button 'Login'
end

When(/^I logout$/) do
  click_link 'Logout'
end

Then(/^I should see the logout page$/) do
  current_path.should== '/logout'
end
