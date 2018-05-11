Feature: Logout Page
  In order to sign out
  As a user
  I want to be able to logout

  Scenario: Logged In
    Given I am a logged in user
    When I click logout
    Then I should see the login page
