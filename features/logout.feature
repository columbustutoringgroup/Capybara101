Feature: Logout
  In order to secure my stuff
  As a user
  I want to log out to hide my private page

  Background:
    Given the login page
    When I log in with proper credentials

  Scenario: Authenticated User
    Given I am on the secret page
    When I press the logout button
    Then I should be on the login page
    And I should see the logout text
