And(/^I press logout$/) do
  click_link "Logout"
end

Then(/^I should see the home page$/) do
  expect(current_path).to eq('/logout')
  expect(page).to have_content("This is login page")
end
