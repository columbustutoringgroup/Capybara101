Given(/^the login page$/) do
	visit '/'
end

When(/^I log in with proper credentials$/) do
	fill_in "username", with: "robert"
	fill_in "password", with: "robert"
	click_button "Login"
end

Then(/^I should see the secret page$/) do
	expect(page).to have_content("Capybara Secret Site")
end
