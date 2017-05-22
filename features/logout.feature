Feature: Logout Page
  In order to leave the site securely
  As a user
  I want to log out and leave the dashboard

  Scenario: Logout Authenticated User
    Given the dashboard
    When I log out
    Then I should see the logout page
