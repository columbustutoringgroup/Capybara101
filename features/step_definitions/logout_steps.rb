And 'I log out' do
  click_link 'Logout'
end

Then 'I should see the login page' do
  expect(page).to have_content 'This is login page for users.'
end

# This will fail because the secret page is not properly hidden.
And 'I should not be able to visit the secret page' do
  visit '/dashboard'
  expect(page.status_code).to be_between(400, 499)
end
