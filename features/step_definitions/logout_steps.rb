#Add your codez here
Given 'a logged in user' do
  within("#session") do
    visit '/dashboard'
  end
end

When 'I click logout' do
  within("#session") do
    click_link 'Logout'
  end
end

Then 'I should see the home page' do
  visit '/logout'
end