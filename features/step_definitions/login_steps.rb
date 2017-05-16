Given(/^the login page$/) do
  #put your code here
  visit '/'
end

When(/^I log in with proper credentials$/) do
  #put your code here

  # this block has no effect... why?
  within 'form' do
    fill_in 'username', with: 'Vasntath'
    fill_in 'password', with: 'Vasntath'
    click_button 'Login'
  end

  fill_in 'username', with: MagicStrings.username
  fill_in 'password', with: MagicStrings.password
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  #put your code here
  expect(page.find 'h1').to have_content 'Capybara Secret Site'
  expect(page).to have_content MagicStrings.username
end
