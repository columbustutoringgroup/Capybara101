Given /^(.*) is logged in$/ do |name|
  steps %Q{
  	Given the user #{name} exists
  	Given I log in as #{name}
  }
end

When(/^I am on the secret page$/) do
	visit '/dashboard'
end

When(/^I click the logout button$/) do
  url = URI.parse(current_url)
  expect(url).to assert_current_path("http://localhost:4567/logout", url: true )
end

Then(/^I should return to the login page$/) do
	expect(page).to have_content('You have been logged out.')
end