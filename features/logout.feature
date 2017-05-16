Feature: Logout Page
  In order to log out of the site when I'm finished.

  Scenario: Authenticated User
    Given I have logged in
    When I click logout
    Then I should see the login page
