Given(/^a logged in user$/) do 
	visit '/'
	fill_in 'username', with: 'credentials'
    fill_in 'password', with: 'credentials'
    click_button('Login')
end

When(/^clicking Logout$/) do 
	click_link('Logout')
end

Then(/^I should see the logout page$/) do
	expect(page.current_path).to eq('/logout')
end
