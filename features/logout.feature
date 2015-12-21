Feature: Logout Page
  In order to logout
  As a user
  I want to have to click logout
  And go to home page

  Scenario: On Secret Page
    Given the secret page
    When I click logout
    Then I see I'm on the home page, in logged out mode
