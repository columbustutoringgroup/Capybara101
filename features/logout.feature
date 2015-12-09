Feature: Log out
  In order to keep my information secure
  As a user
  I want to log out 

  Scenario: Logged in
    Given that I am logged in
    When I press log out
    Then I should return to the dashboard