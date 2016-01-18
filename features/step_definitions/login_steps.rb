Given(/^the login page$/) do
  within("#session") do
    container = first('.container')
    container.should_not == nil
  end
end

When(/^I log in with proper credentials$/) do
  within("#session") do
    fill_in 'username', :with => 'test'
    fill_in 'password', :with => 'test'
    click_button "Login"
  end
end

Then(/^I should see the secret page$/) do
  within("#session") do
    current_path.should == 'dashboard'
  end
end
