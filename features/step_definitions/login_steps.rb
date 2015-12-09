Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with proper credentials$/) do
  within("#session") do
    fill_in 'username', :with => 'bryon'
    fill_in 'password', :with => 'bryon'
  end
  click_button "Login"
end

Then(/^I should see the secret page$/) do
  current_path.should == "/dashboard"
end
