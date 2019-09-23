Feature: Logout functionality
  When I want to end my session
  I should be able to logout

Scenario: User logs out
  Given user secret page with credentials "admin"
  When I click on "Logout"
  Then I should be redirected to logout page with a message "You have been logged out"
