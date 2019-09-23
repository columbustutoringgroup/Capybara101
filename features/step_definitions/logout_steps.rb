Given (/^user secret page with credentials "(.*?)"$/) do |credentails|
  steps %{
    Given the login page
    When I log in with username and password as "#{credentails}"
    Then I should see the secret page with my my username "#{credentails}"
  }
end

When (/^I click on "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should be redirected to logout page with a message "(.*?)"$/) do |message|
  expect(page).to have_content message
end
