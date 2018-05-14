before :each do
    User.make(username: 'password', password: 'password')
  end

When(/^I click on the "(.*?)" button$/) do |arg1|
  within("#session") do
    click_link('/logout')
  end
end

Then(/^I am logged out of my account$/) do
  within("#session") do
    session.clear
  end
end

Then(/^I should see the logout page$/) do
  visit '/logout'
end
