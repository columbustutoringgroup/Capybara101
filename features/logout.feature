Feature: Logout
  As a user
  In order to protect my private information
  I want to be able to log out

  Scenario: Logged In
    Given that I have logged in
    When I click the logout link
    Then I should be at the login page
    And I should see the logout message
