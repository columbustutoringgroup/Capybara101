Given(/^the login page$/) do
  visit '/'
end

Name = 'Super Max'

When(/^I log in with proper credentials$/) do
  page.find_by_id('username').set Name
  page.find_by_id('password').set Name

  val = page.find_by_id('username').value
  expect(val).to eq Name

  val = page.find_by_id('password').value
  expect(val).to eq Name

  page.find_by_id('login').click
end

Then(/^I should see the secret page$/) do

  page.should have_content('This is the secret page.')
  page.should have_content("Your username is #{Name}")

end

When(/^I log in with wrong credentials$/) do
  ExtraLetters = ' some letters'

  page.find_by_id('username').set Name + ExtraLetters
  page.find_by_id('password').set Name

  val = page.find_by_id('username').value
  expect(val).to eq Name + ExtraLetters

  val = page.find_by_id('password').value
  expect(val).to eq Name

  page.find_by_id('login').click
end

When(/^I visit dashboard$/) do
  visit '/dashboard'
end

Then(/^I should see Forbidden!!!$/) do
  page.should have_content("Forbidden!!!")
end

Then(/^I should see the error-ed home page$/) do
  page.should have_content('Your username & password did not match')
  page.should have_content('This is login page for users.')
  page.should_not have_content("Your username is ")
end
