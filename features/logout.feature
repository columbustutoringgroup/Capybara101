#Add your codez here
Feature: Logout
  As a logged in user
  I want to be able to log out

  Scenario: Authenticated User
    Given I am logged in
    When I click logout
    Then I should be logged out
