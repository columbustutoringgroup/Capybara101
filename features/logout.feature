Feature: Logout Page
  In order to keep my page secret after using
  As a user that is logged in
  I want to log out from my private page

  Scenario: Authenticated User
    Given the secret page
    When I log out
    Then I should see the login page with logout message
