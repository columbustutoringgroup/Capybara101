Feature: Login Page
  In order to keep out the bad guys
  As a user
  I want to have to login to see my private page

  Scenario: Authenticated User
    Given the login page
    When I log in with proper credentials
    Then I should see the secret page

  Scenario: Unauthenticated User
    Given the login page
    When I log in with improper credentials
    Then I should be on the login page
    And I should be informed of my improper credentials
