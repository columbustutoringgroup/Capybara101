Given(/^the secret page$/) do
    visit '/'
    expect(page.body).to include("Capybara Secret Site")
    within("#session") do
    fill_in 'username', with: 'example'
    fill_in 'password', with: 'example'
  end
  click_button 'Login'
  expect(page.body).to include("This is the secret page.")  
end

When(/^I log out$/) do
    click_link 'Logout' 
end

Then(/^I should not see the secret page$/) do
  expect(page.body).not_to include("This is the secret page.")
  expect(page.body).to include("This is login page for users.")    
end