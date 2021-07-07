Feature: Logout Page
  As a user that is already logged in
  I want to have to the option to log out

  Scenario: Authenticated User
    Given the dashboard page
    When I click on the log out button
    Then I should see the log in page
