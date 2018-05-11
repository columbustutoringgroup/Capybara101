Feature: Login Page
  In order to keep out the bad guys
  As a user
  I want to have to login to see my private page

  Scenario: Authenticated User
    Given the login page
    When I log in with proper credentials
    Then I should see the secret page

  Scenario: Invalid Credentials
    Given the login page
    When I log in with the improper credentials
    Then I should recieve an error message
