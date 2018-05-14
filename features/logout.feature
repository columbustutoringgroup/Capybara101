Feature: Logout Page
  In order to keep out the bad guys
  As a user
  I want to logout to avoid access of my private page

  Scenario: Authenticated User
    Given the login page
    When I log in with proper credentials
    And I log out
    Then I should see Login Page