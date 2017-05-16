Feature: Login Page
  In order to keep out the bad guys
  As a user
  I want to have to login to see my private page

  Scenario: Authenticated User
    Given the login page
    When I enter proper credentials
    And I log in
    Then I should see the secret page

  Scenario: Bad Guy Attempt
    Given the login page
    When I enter improper credentials
    And I log in
    Then I should see another login page

  Scenario: Error Messaging
    Given the login page
    When I enter improper credentials
    And I log in
    Then I should see an error message
