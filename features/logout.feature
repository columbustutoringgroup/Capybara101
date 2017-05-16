Feature: Logout Page

    Scenario: Authenticated User
      Given the dashboard page
      When I click the logout button
      Then I should see the login page
