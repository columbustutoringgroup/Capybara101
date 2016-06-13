Feature: Logout Page
  As a user
  After I have correctly logged in
  I want to have to logout

  Scenario: Logout
    Given the login page
    When I log in with proper credentials
    When I logout
    Then I should see the logout page
