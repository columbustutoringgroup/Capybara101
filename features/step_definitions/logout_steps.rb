Given(/^that I am logged in$/) do
  visit '/'
  within("#session") do
    fill_in 'username', :with => 'bryon'
    fill_in 'password', :with => 'bryon'
  end
  click_button "Login"
  current_path.should == "/dashboard"
end

When(/^I press log out$/) do
  click_link "Logout"
end

Then(/^I should return to the dashboard$/) do
  current_path.should == "/logout"
end