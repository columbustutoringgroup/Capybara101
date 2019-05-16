Feature: Logout Page
  In order to keep out the bad guys
  As a user
  I want to be able to logout

  Scenario: Authenticated User
    Given the user logging out
    When I log out
    Then I should see the log out page
