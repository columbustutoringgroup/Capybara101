And(/^I log out$/) do
	visit '/logout'
end

Then(/^I should see Login Page$/) do
	expect(page).to have_content("You have been logged out")
end
