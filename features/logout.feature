Feature: Logout
  In order to keep out the bad guys
  As a user
  I want to be able to logout to prevent access to my private page

  Scenario: Deauthenticated User
    Given the login page
    When I log in with proper credentials
    And I log out
    Then I should see the login page
    And I should not be able to visit the secret page
