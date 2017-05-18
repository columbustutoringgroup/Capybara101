Feature: Logout Page
  In order to keep my privacy
  As a user
  I want to have to logout to keep my page secure

  Scenario: Log out User
    Given I am on the secret page
    When I click the logout button
    Then I should return to the login page