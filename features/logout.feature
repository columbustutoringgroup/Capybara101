Feature: Logout Page
  In order to keep out the bad guys
  As a user
  I want to have to be able to log out and return to the home page

  Scenario: Unauthenticated User
    Given the dashboard page
    When I click logout
    Then I should see the logout page
