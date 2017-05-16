Feature: Logout
  In order to protect our account
  As a user
  I want to be able to log out

  Scenario: Authenticated user logout
    Given the dashboard page
    When I click the Logout link
    Then I should see the home page
    When I visit the dashboard
    Then I should not see my username
