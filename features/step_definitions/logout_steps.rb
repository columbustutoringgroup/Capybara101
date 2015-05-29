### private/secret page is not properly hidden you don't need to log in to reach it

Given(/^the private page$/) do
	visit '/'
	fill_in 'username', with: 'wow'
	fill_in 'password', with: 'wow'
	click_button 'Login'
end

When(/^I click logout link$/) do
	click_link('Logout')
end

Then(/^I should go back to home page$/) do
	expect(page).to have_content 'This is login page for users'
end