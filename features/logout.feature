Feature: Logout Page
  In order to allow users to protect their accounts
  As an authenticated user
  I should to be able logout of my account

  Scenario: User logout
    Given a logged in user
    When I click logout
    Then I should see the home page