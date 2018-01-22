Feature: Logout Page
  Once I am done using the site
  As a user
  I want to logout

Scenario: Authenticated User
  Given a logged in page
  When I logout
  Then I should see logged out message
