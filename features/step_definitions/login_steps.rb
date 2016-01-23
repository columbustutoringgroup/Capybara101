Given(/^the login page$/) do
  visit '/'
end

Name = 'Super Max'

When(/^I log in with proper credentials$/) do
  fill_in('username', with: Name)
  fill_in('password', with: Name)

  click_button('Login')
end

Then(/^I should see the secret page$/) do

  expect(page).to have_content('This is the secret page.')
  expect(page).to have_content("Your username is #{Name}")

end

When(/^I log in with wrong credentials$/) do
  ExtraLetters = ' some letters'

  fill_in('username', with: Name + ExtraLetters)
  fill_in('password', with: Name)

  click_button 'Login'
end

When(/^I visit dashboard$/) do
  visit '/dashboard'
end

Then(/^I should see Forbidden!!!$/) do
  expect(page).to have_content("Forbidden!!!")
end

Then(/^I should see the error-ed home page$/) do
  expect(page).to have_content('Your username & password did not match')
  expect(page).to have_content('This is login page for users.')
  expect(page).to_not have_content("Your username is ")
end
