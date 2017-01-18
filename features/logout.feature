Feature: Logout Page
  In order to keep out the bad guys
  As a user
  I want to be able to logout when signed in

  Scenario: Authenticated User
    Given the logged in dashboard page
    When I logout
    Then I should see the logout page
