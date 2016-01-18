Given(/^the secret page$/) do
  within("#session") do
    current_path.should == 'dashboard'
  end
end

When(/^I click the logout button$/) do
  within("#session") do
    click_button "Logout"
  end
end

Then(/^I should see the logout page$/) do
  within("#session") do
    current_path.should == 'logout'
  end
end
