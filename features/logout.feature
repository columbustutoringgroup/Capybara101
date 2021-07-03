Feature: Logout Page
  So that others can't see the secret page
  As a user
  I want to be able to log out after logging in

  Scenario: Authenticated User
    Given I am logged in
    When I log out
    Then I should see the "logout" page
    And I should see the message "You have been logged out"
    